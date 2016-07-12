using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Dynamo.BL;
using Dynamo.Boekingssysteem.ViewModel.Base;
using Dynamo.Common;

namespace Dynamo.Boekingssysteem.ViewModel.Planning
{
    public class BoekingViewModel:EntityViewModel<Model.Boeking>
    {
        public string Opmerking
        {
            get { return _entity.Opmerking; }
            set
            {
                if (value == _entity.Opmerking)
                {
                    return;
                }
                _entity.Opmerking = value;
                OnPropertyChanged("Opmerking");
            }
        }
        public string BandNaam
        {
            get { return _entity.BandNaam; }
        }

        public BoekingViewModel(Model.Boeking boeking) 
            : base(boeking) 
        { }

        private string _aangemaaktDoor;
        public string AangemaaktDoor
        {
            get 
            {
                if (string.IsNullOrEmpty(_aangemaaktDoor))
                {
                    using (var repo = new BeheerderRepository())
                    {
                        _aangemaaktDoor = repo.Load(_entity.AangemaaktDoorId.GetValueOrDefault(1)).Naam;
                    }
                }

                return _aangemaaktDoor;
            }
        }

        public string AangemaaktOp
        {
            get { return _entity.Aangemaakt.GetDynamoDatum(); }
        }

        private string _gewijzigdDoor;
        public string GewijzigdDoor
        {
            get
            {
                if (string.IsNullOrEmpty(_gewijzigdDoor) && _entity.GewijzigdDoorId.HasValue)
                {
                    using (var repo = new BeheerderRepository())
                    {
                        var beheerder = repo.Load(_entity.GewijzigdDoorId.GetValueOrDefault(0));
                        _gewijzigdDoor = beheerder == null ? string.Empty : beheerder.Naam;
                    }
                }

                return _gewijzigdDoor;
            }
        }

        public string GewijzigdOp
        {
            get { return _entity.Gewijzigd.GetDynamoDatum(); }
        }

        //Puur om de datum waarop is geboekt weer te geven. Zit eigenlijk in het planning object...
        public string Datum
        {
            get;
            set;
        }
    }
}
