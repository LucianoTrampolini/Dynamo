using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Dynamo.Boekingssysteem.ViewModel.Base;
using Dynamo.BoekingsSysteem.Base;
using System.Collections.ObjectModel;
using Dynamo.Common.Properties;
using Dynamo.BoekingsSysteem;
using Dynamo.Common;
using Dynamo.BL;
using Dynamo.BL.Enum;
using Dynamo.Boekingssysteem.ViewModel.Planning;
using System.Windows;
using Dynamo.Boekingssysteem.Controls;

namespace Dynamo.Boekingssysteem.ViewModel.Band
{
    public class EditBandViewModel : BandViewModel
    {
        private ObservableCollection<StamgegevenViewModel> _dagdelen;
        private ObservableCollection<OefenruimteViewModel> _oefenruimtes;
        private BandRepository bandRepository = new BandRepository();
        private Model.Contract _currentContract;
        private ObservableCollectionEx<PersoonViewModel> _bandLeden;
        
        private Model.Contract CurrentContract
        {
            get 
            {
                if (_currentContract == null && (GetEntity().Contracten == null || GetEntity().Contracten.Count() == 0))
                {
                    _currentContract = new Model.Contract();
                    _entity.Contracten.Add(_currentContract);
                }
                else
                {
                    _currentContract = GetEntity().Contracten.Last();
                }
                return _currentContract;
            }
        }
        
        private Model.Persoon CurrentBandLid
        {
            get
            {
                return (BandLeden.FirstOrDefault(b=>b.IsSelected) ?? BandLeden.First()).GetEntity();
            }
        }

        public bool IsNieuwContract
        {
            get { return CurrentContract.IsTransient(); }
        }

        public string ContractPer
        {
            get 
            {
                return CurrentContract.BeginContract.GetDynamoDatum();
            }
            set
            {
                if (value == CurrentContract.BeginContract.GetDynamoDatum())
                    return;

                if(CommonMethods.IsDynamoDatum(value))
                {
                    CurrentContract.BeginContract = CommonMethods.DynamoDatum2Datum(value);
                    base.OnPropertyChanged("ContractPer");
                }
            }
        }

        public string EindeContract
        {
            get { return CurrentContract.EindeContract.HasValue ? CurrentContract.EindeContract.Value.GetDynamoDatum() : string.Empty; }
            set
            {
                if (CurrentContract.EindeContract.HasValue == false || value != CurrentContract.EindeContract.Value.GetDynamoDatum())
                {
                    if (CommonMethods.IsDynamoDatum(value))
                    {
                        CurrentContract.EindeContract = CommonMethods.DynamoDatum2Datum(value);
                        OnPropertyChanged("EindeContract");
                    }
                }
            }
        }

        public List<KeyValuePair<int,string>> OefenDagen 
        {
            get { return CommonMethods.GetOefenDagenList(); }
        }

        public int OefenDag
        {
            get
            {
                return CurrentContract.Oefendag;
            }
            set
            {
                if (value == CurrentContract.Oefendag)
                    return;

                CurrentContract.Oefendag = value;

                base.OnPropertyChanged("OefenDag");
            }
        }

        public ObservableCollection<StamgegevenViewModel> Dagdelen 
        {
            get
            {
                if (_dagdelen == null)
                {
                    List<StamgegevenViewModel> alleDagdelen =
                        (from cust in bandRepository.GetStamGegevens(Stamgegevens.Dagdelen).Where(x => x.Id > 1)
                            select new StamgegevenViewModel(cust)).ToList();

                    _dagdelen = new ObservableCollection<StamgegevenViewModel>(alleDagdelen);
                }
                return _dagdelen;
            } 
        }

        public ObservableCollectionEx<PersoonViewModel> BandLeden
        {
            get
            {
                if (_bandLeden == null)
                {
                    List<PersoonViewModel> alleBandleden =
                        _entity.BandLeden.Select(b => new PersoonViewModel(b)).ToList();


                    _bandLeden = new ObservableCollectionEx<PersoonViewModel>(alleBandleden);
                }
                return _bandLeden;
            }
        }

        public int DagdeelId
        {
            get 
            {
                return CurrentContract.DagdeelId;
            }
            set
            {
                if (CurrentContract.DagdeelId == value)
                {
                    return;
                }
                CurrentContract.DagdeelId = value;
                CurrentContract.Dagdeel = Dagdelen.FirstOrDefault(x=>x.Id == value).GetEntity() as Model.Dagdeel;
                OnPropertyChanged("DagdeelId");
            }
        }

        public ObservableCollection<OefenruimteViewModel> Oefenruimtes
        {
            get
            {
                if (_oefenruimtes == null)
                {
                    List<OefenruimteViewModel> alleOefenruimtes =
                        (from oefenruimte in bandRepository.GetOefenruimtes()
                            select new OefenruimteViewModel(oefenruimte)).ToList();

                    _oefenruimtes = new ObservableCollection<OefenruimteViewModel>(alleOefenruimtes);
                }
                return _oefenruimtes;
            }
        }

        public int OefenruimteId
        {
            get 
            {
                return CurrentContract.OefenruimteId;
            }
            set
            {
                if (CurrentContract.OefenruimteId == value)
                {
                    return;
                }
                CurrentContract.OefenruimteId = value;
                CurrentContract.Oefenruimte = Oefenruimtes.FirstOrDefault(x => x.Id == value).GetEntity();
                OnPropertyChanged("OefenruimteId");
            }
        }

        public decimal MaandHuur
        {
            get
            {
                return CurrentContract.MaandHuur;
            }
            set
            {
                if (CurrentContract.MaandHuur == value)
                    return;

                CurrentContract.MaandHuur = value;

                OnPropertyChanged("MaandHuur");
            }
        }

        public decimal Borg
        {
            get
            {
                return CurrentContract.Borg;
            }
            set
            {
                if (CurrentContract.Borg == value)
                    return;

                CurrentContract.Borg = value;

                OnPropertyChanged("Borg");
            }
        }

        public int Backline
        {
            get
            {
                return CurrentContract.Backline;
            }
            set
            {
                if (CurrentContract.Backline == value)
                    return;

                CurrentContract.Backline = value;

                OnPropertyChanged("Backline");
            }
        }

        public int Microfoons
        {
            get
            {
                return CurrentContract.Microfoons;
            }
            set
            {
                if (CurrentContract.Microfoons == value)
                    return;

                CurrentContract.Microfoons = value;

                OnPropertyChanged("Microfoons");
            }
        }

        public int ExtraVersterkers
        {
            get
            {
                return CurrentContract.ExtraVersterkers;
            }
            set
            {
                if (CurrentContract.ExtraVersterkers == value)
                    return;

                CurrentContract.ExtraVersterkers = value;

                OnPropertyChanged("ExtraVersterkers");
            }
        }

        public bool Crash
        {
            get
            {
                return CurrentContract.Crash;
            }
            set
            {
                if (CurrentContract.Crash == value)
                    return;

                CurrentContract.Crash = value;

                OnPropertyChanged("Crash");
            }
        }

        public string CurrentBandLidNaam
        {
            get { return CurrentBandLid.Naam; }
            set
            {
                if (value == CurrentBandLid.Naam)
                    return;

                CurrentBandLid.Naam = value;

                base.OnPropertyChanged("CurrentBandLidNaam");
            }
        }

        public string CurrentBandLidAdres
        {
            get { return CurrentBandLid.Adres; }
            set
            {
                if (value == CurrentBandLid.Adres)
                    return;

                CurrentBandLid.Adres = value;

                base.OnPropertyChanged("CurrentBandLidAdres");
            }
        }

        public string CurrentBandLidPlaats
        {
            get { return CurrentBandLid.Plaats; }
            set
            {
                if (value == CurrentBandLid.Plaats)
                    return;

                CurrentBandLid.Plaats = value;

                base.OnPropertyChanged("CurrentBandLidPlaats");
            }
        }

        public string CurrentBandLidTelefoon
        {
            get { return CurrentBandLid.Telefoon; }
            set
            {
                if (value == CurrentBandLid.Telefoon)
                    return;

                CurrentBandLid.Telefoon = value;

                base.OnPropertyChanged("CurrentBandLidTelefoon");
            }
        }

        public string CurrentBandLidEmail
        {
            get { return CurrentBandLid.Email; }
            set
            {
                if (value == CurrentBandLid.Email)
                    return;

                CurrentBandLid.Email = value;
                base.OnPropertyChanged("CurrentBandLidEmail");
            }
        }

        public EditBandViewModel()
            :base(new Model.Band())
        {
            _entity.BandTypeId = 1;
            _entity.BandLeden.Add(new Model.Persoon());
        }

        public EditBandViewModel(Model.Band band)
            : base(band)
        {
            BandLeden.SelectedChanged += (s, e) => { ChangeBandLid(); };
        }

        private void ChangeBandLid()
        {
            base.OnPropertyChanged("CurrentBandLidNaam");
            base.OnPropertyChanged("CurrentBandLidAdres");
            base.OnPropertyChanged("CurrentBandLidPlaats");
            base.OnPropertyChanged("CurrentBandLidTelefoon");
            base.OnPropertyChanged("CurrentBandLidEmail");
        }

        protected override List<CommandViewModel> CreateCommands()
        {
            return new List<CommandViewModel>
            {
                new CommandViewModel(
                    StringResources.ButtonOpslaan,
                    new RelayCommand(param => this.Opslaan(), param=>this.KanOpslaan())),
                new CommandViewModel(
                    StringResources.ButtonNieuwContract,
                    new RelayCommand(param => this.NieuwContract(), param=>this.KanVernieuwen())),
                new CommandViewModel(
                    StringResources.ButtonAnnuleren,
                    CloseCommand)
            };
        }

        private bool KanVernieuwen()
        {
            return _entity.Contracten.Last().Id != 0;
        }

        private void NieuwContract()
        {
            if(!Helper.MeldingHandler.ShowMeldingOkCancel("Let op! Er wordt een nieuw contract klaar gezet op basis van het vorige. Het oude contract verloopt op het moment dat het nieuwe in gaat."))
            {
                //Geannuleerd...
                return;
            }

            var contract = CurrentContract;
            _entity.Contracten.Add(new Model.Contract
            {
                Backline = contract.Backline,
                BandId = _entity.Id,
                BeginContract = DateTime.Today,
                Borg=contract.Borg,
                Crash=contract.Crash,
                DagdeelId = contract.DagdeelId,
                ExtraVersterkers = contract.ExtraVersterkers,
                MaandHuur = contract.MaandHuur,
                Microfoons=contract.Microfoons,
                Oefendag=contract.Oefendag,
                OefenruimteId=contract.OefenruimteId
            });
            OnPropertyChanged("IsNieuwContract");
            OnPropertyChanged("ContractPer");
            OnPropertyChanged("EindeContract");
        }

        private bool KanOpslaan()
        {
            return !string.IsNullOrWhiteSpace(Naam) && DagdeelId > 0 && OefenDag > 0 && OefenruimteId > 0;
        }

        private void Opslaan()
        {
            bandRepository.Save(_entity);

            new WebIntegrationHelper().PushAllAsync();
            CloseCommand.Execute(null);
        }

        protected override void OnDispose()
        {
            bandRepository.Dispose();
        }
    }
}
