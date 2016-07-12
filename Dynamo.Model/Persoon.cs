using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using Dynamo.Model.Base;

namespace Dynamo.Model
{
    public class Persoon : ModelBase
    {
        public override string GetKorteOmschrijving()
        {
            return string.Format("Naam = {0}", Naam);
        }

        public Persoon()
        {
            //Bands = new List<Band>();
        }

        [MaxLength(50)]
        public string Naam { get; set; }
        [MaxLength(50)]
        public string Adres { get; set; }
        [MaxLength(50)]
        public string Plaats { get; set; }
        [MaxLength(15)]
        public string Telefoon { get; set; }
        [MaxLength(50)]
        public string Email { get; set; }
        public virtual ICollection<Band> Bands { get; set; }
    }
}
