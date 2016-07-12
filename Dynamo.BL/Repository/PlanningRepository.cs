using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Linq.Expressions;
using Dynamo.Common.Constants;
using Dynamo.Model;
using Dynamo.BL.ResultMessages;
using Dynamo.Common;
using Dynamo.BL.BusinessRules.Planning;

namespace Dynamo.BL
{
    public class PlanningRepository : RepositoryBase<Model.Planning>
    {
        public PlanningRepository()
        { }

        public PlanningRepository(IDynamoContext context)
            : base(context)
        { }

        public override Planning Load(int Id)
        {
            return currentContext.Planning.Single(planning=> planning.Id == Id);
        }

        protected override void HandleComplexPropertyChanges(Model.Base.ModelBase entityBase)
        {
            var entity = entityBase as Model.Planning;
            if (entity == null)
            {
                return;
            }
            var planningsDag = currentContext.PlanningsDagen.FirstOrDefault(x => x.Datum == entity.Datum);
            var planning = currentContext.Planning.FirstOrDefault(x => x.Id == entity.Id && x.Id > 0);

            if (planningsDag == null)
            {
                planningsDag = new PlanningsDag
                {
                    Datum = entity.Datum,
                    Planningen = new List<Planning> { entity }
                };
                HandleChanges(planningsDag);
                currentContext.PlanningsDagen.Add(planningsDag);
            }
            else if (entity.IsTransient())
            {
                planningsDag.Planningen.Add(entity);
            }
             
            if (planning != null && entity.Boekingen.Any(b => b.IsTransient()))
            {
                planning.Boekingen.Add(entity.Boekingen.First(b => b.IsTransient()));
            }

            foreach (var boeking in entity.Boekingen)
            {
                HandleChanges(boeking);
                if (boeking.BandId == 0 && boeking.Band != null)
                {
                    HandleChanges(boeking.Band);
                }
            }
        }

        public override List<Model.Planning> Load(Expression<Func<Model.Planning, bool>> expression)
        {
            return currentContext.Planning
                .Include(x=>x.Boekingen)//.Include("Boekingen.Band").Include("Dagdeel").Include("Oefenruimte")
                .Where(expression).ToList();
        }

        public List<Model.Band> GetBands()
        {
            return new BandRepository(currentContext).Load(x => x.Verwijderd == false).OrderBy(x => x.Naam).ToList();
        }

        public List<Model.Gesloten> LoadGesloten(DateTime dateTime)
        {
            return new GeslotenRepository(currentContext).Load(x => x.Verwijderd == false && x.DatumVan <= dateTime && (x.DatumTot.HasValue == false || x.DatumTot.Value >= dateTime));
        }

        public List<BandBoekingOverzichtMessage> GetBandBoekingOverzicht(Model.Band band)
        {
            var returnValue = new List<BandBoekingOverzichtMessage>();
            var list = currentContext.Boekingen.Where(boeking => boeking.BandId == band.Id).OrderByDescending(x => x.DatumGeboekt).ToList();
            foreach (var boeking in list)
            {
                //var boeking = item.Boekingen.First(b=>b.BandId==band.Id);

                returnValue.Add(new BandBoekingOverzichtMessage { Datum = boeking.DatumGeboekt.GetDynamoDatum(), Opmerking = boeking.Opmerking });
            }
            return returnValue;
        }

        public string GetHuidigeBand(int planningId)
        {
            var huidigeBoeking = GetHuidigeBoeking(planningId);

            return huidigeBoeking == null ? string.Empty : huidigeBoeking.BandNaam;
        }

        public Boeking GetHuidigeBoeking(int planningId)
        {
            var planning = Load(planningId);
            return planning.Boekingen.OrderByDescending(x => x.Id).FirstOrDefault(x => x.DatumAfgezegd == null && !x.Verwijderd); ;
        }

        public void VullenPlanningsDagen()
        {
            using (var br = new VullenPlanningsdagen(currentContext))
            {
                br.Execute();
            }
        }
    }
}
