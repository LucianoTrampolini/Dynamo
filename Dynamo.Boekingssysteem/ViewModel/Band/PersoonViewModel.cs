using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Dynamo.Boekingssysteem.ViewModel.Base;

namespace Dynamo.Boekingssysteem.ViewModel.Band
{
    public class PersoonViewModel : EntityViewModel<Model.Persoon>
    {
        public PersoonViewModel(Model.Persoon persoon)
            : base(persoon)
        {
            if (persoon == null)
            {
                throw new ArgumentNullException("persoon");
            }
        }

        public string Naam
        {
            get { return _entity.Naam; }
            set
            {
                if (value == _entity.Naam)
                    return;

                _entity.Naam = value;

                base.OnPropertyChanged("Naam");
            }
        }

        public string Adres
        {
            get { return _entity.Adres; }
            set
            {
                if (value == _entity.Adres)
                    return;

                _entity.Adres = value;

                base.OnPropertyChanged("Adres");
            }
        }

        public string Plaats
        {
            get { return _entity.Plaats; }
            set
            {
                if (value == _entity.Plaats)
                    return;

                _entity.Plaats = value;

                base.OnPropertyChanged("Plaats");
            }
        }

        public string Telefoon
        {
            get { return _entity.Telefoon; }
            set
            {
                if (value == _entity.Telefoon)
                    return;

                _entity.Telefoon = value;

                base.OnPropertyChanged("Telefoon");
            }
        }

        public string Email
        {
            get { return _entity.Email; }
            set
            {
                if (value == _entity.Email)
                    return;

                _entity.Email = value;
                base.OnPropertyChanged("Email");
            }
        }
    }
}
