using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Dynamo.BL.Base;
using Dynamo.Model;

namespace Dynamo.BL.BusinessRules.Planning
{
    public class VullenPlanningsdagen :IDisposable
    {
        private PlanningRepository _planningRepository = null;
        private InstellingRepository _instellingRepository = null;

        public VullenPlanningsdagen(IDynamoContext context)
        {
            _planningRepository = new PlanningRepository(context);
            _planningRepository.AdminModus = true;
            _instellingRepository = new InstellingRepository(context);
        }

        public void Execute()
        {
            var aantalWekenVooruit = _instellingRepository.Load(0).WekenVooruitBoeken;
            var datumEinde = DateTime.Today.AddDays(aantalWekenVooruit * 7);
            var datumBegin = DateTime.Today;

            while (datumEinde >= datumBegin)
            {
                for (int dagdeel = 2; dagdeel <= 3; dagdeel++)
                {
                    for (int oefenruimte = 1; oefenruimte <= 3; oefenruimte++)
                    {
                        var planning = _planningRepository.Load(x => x.Datum == datumEinde && x.DagdeelId == dagdeel && x.OefenruimteId == oefenruimte).FirstOrDefault();
                        if (planning == null)
                        {
                            planning = new Model.Planning
                            {
                                Datum = datumEinde,
                                DagdeelId = dagdeel,
                                OefenruimteId = oefenruimte,
                                Beschikbaar = true
                            };

                            _planningRepository.Save(planning);
                        }
                    }
                }

                datumEinde = datumEinde.AddDays(-1);
            }
        }

        public void Dispose()
        {
            _planningRepository.Dispose();
            _instellingRepository.Dispose();
        }
    }
}
