﻿//------------------------------------------------------------------------------
// <auto-generated>
//     Este código fue generado por una herramienta.
//     Versión de runtime:4.0.30319.42000
//
//     Los cambios en este archivo podrían causar un comportamiento incorrecto y se perderán si
//     se vuelve a generar el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace UNOGui.JuegoUNOServicio {
    using System.Runtime.Serialization;
    using System;
    
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Runtime.Serialization", "4.0.0.0")]
    [System.Runtime.Serialization.DataContractAttribute(Name="Jugador", Namespace="http://schemas.datacontract.org/2004/07/UNO.Dominio")]
    [System.SerializableAttribute()]
    public partial class Jugador : object, System.Runtime.Serialization.IExtensibleDataObject, System.ComponentModel.INotifyPropertyChanged {
        
        [System.NonSerializedAttribute()]
        private System.Runtime.Serialization.ExtensionDataObject extensionDataField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private string ClaveValidacionField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private string ContraseñaField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private string CorreoElectronicoField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private int ExperienciaField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private string NicknameField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private int NivelField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private int PartidasGanadasField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private int PartidasJugadasField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private int PuntajeTotalField;
        
        [global::System.ComponentModel.BrowsableAttribute(false)]
        public System.Runtime.Serialization.ExtensionDataObject ExtensionData {
            get {
                return this.extensionDataField;
            }
            set {
                this.extensionDataField = value;
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public string ClaveValidacion {
            get {
                return this.ClaveValidacionField;
            }
            set {
                if ((object.ReferenceEquals(this.ClaveValidacionField, value) != true)) {
                    this.ClaveValidacionField = value;
                    this.RaisePropertyChanged("ClaveValidacion");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public string Contraseña {
            get {
                return this.ContraseñaField;
            }
            set {
                if ((object.ReferenceEquals(this.ContraseñaField, value) != true)) {
                    this.ContraseñaField = value;
                    this.RaisePropertyChanged("Contraseña");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public string CorreoElectronico {
            get {
                return this.CorreoElectronicoField;
            }
            set {
                if ((object.ReferenceEquals(this.CorreoElectronicoField, value) != true)) {
                    this.CorreoElectronicoField = value;
                    this.RaisePropertyChanged("CorreoElectronico");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public int Experiencia {
            get {
                return this.ExperienciaField;
            }
            set {
                if ((this.ExperienciaField.Equals(value) != true)) {
                    this.ExperienciaField = value;
                    this.RaisePropertyChanged("Experiencia");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public string Nickname {
            get {
                return this.NicknameField;
            }
            set {
                if ((object.ReferenceEquals(this.NicknameField, value) != true)) {
                    this.NicknameField = value;
                    this.RaisePropertyChanged("Nickname");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public int Nivel {
            get {
                return this.NivelField;
            }
            set {
                if ((this.NivelField.Equals(value) != true)) {
                    this.NivelField = value;
                    this.RaisePropertyChanged("Nivel");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public int PartidasGanadas {
            get {
                return this.PartidasGanadasField;
            }
            set {
                if ((this.PartidasGanadasField.Equals(value) != true)) {
                    this.PartidasGanadasField = value;
                    this.RaisePropertyChanged("PartidasGanadas");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public int PartidasJugadas {
            get {
                return this.PartidasJugadasField;
            }
            set {
                if ((this.PartidasJugadasField.Equals(value) != true)) {
                    this.PartidasJugadasField = value;
                    this.RaisePropertyChanged("PartidasJugadas");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public int PuntajeTotal {
            get {
                return this.PuntajeTotalField;
            }
            set {
                if ((this.PuntajeTotalField.Equals(value) != true)) {
                    this.PuntajeTotalField = value;
                    this.RaisePropertyChanged("PuntajeTotal");
                }
            }
        }
        
        public event System.ComponentModel.PropertyChangedEventHandler PropertyChanged;
        
        protected void RaisePropertyChanged(string propertyName) {
            System.ComponentModel.PropertyChangedEventHandler propertyChanged = this.PropertyChanged;
            if ((propertyChanged != null)) {
                propertyChanged(this, new System.ComponentModel.PropertyChangedEventArgs(propertyName));
            }
        }
    }
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Runtime.Serialization", "4.0.0.0")]
    [System.Runtime.Serialization.DataContractAttribute(Name="ResultadoRegistro", Namespace="http://schemas.datacontract.org/2004/07/UNO.Contratos.AdministrarJugador")]
    public enum ResultadoRegistro : int {
        
        [System.Runtime.Serialization.EnumMemberAttribute()]
        RegistroExitoso = 1,
        
        [System.Runtime.Serialization.EnumMemberAttribute()]
        ErrorRegistro = 2,
        
        [System.Runtime.Serialization.EnumMemberAttribute()]
        UsuarioYaExiste = 3,
        
        [System.Runtime.Serialization.EnumMemberAttribute()]
        CorreoYaExiste = 4,
    }
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Runtime.Serialization", "4.0.0.0")]
    [System.Runtime.Serialization.DataContractAttribute(Name="ResultadoLogin", Namespace="http://schemas.datacontract.org/2004/07/UNO.Contratos.Login")]
    public enum ResultadoLogin : int {
        
        [System.Runtime.Serialization.EnumMemberAttribute()]
        NoExisteNickname = 1,
        
        [System.Runtime.Serialization.EnumMemberAttribute()]
        ContraseñaIncorrecta = 2,
        
        [System.Runtime.Serialization.EnumMemberAttribute()]
        ExisteJugador = 3,
        
        [System.Runtime.Serialization.EnumMemberAttribute()]
        SesionIniciada = 4,
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Runtime.Serialization", "4.0.0.0")]
    [System.Runtime.Serialization.DataContractAttribute(Name="Sala", Namespace="http://schemas.datacontract.org/2004/07/UNO.Contratos.LogicaJuego")]
    [System.SerializableAttribute()]
    public partial class Sala : object, System.Runtime.Serialization.IExtensibleDataObject, System.ComponentModel.INotifyPropertyChanged {
        
        [System.NonSerializedAttribute()]
        private System.Runtime.Serialization.ExtensionDataObject extensionDataField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private string ContraseñaField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private string CreadaPorField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private bool EnJuegoField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private string IdField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private System.Collections.Generic.Dictionary<UNOGui.JuegoUNOServicio.Jugador, object> JugadoresEnSalaField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private int NumeroTotalDeJugadoresField;
        
        [global::System.ComponentModel.BrowsableAttribute(false)]
        public System.Runtime.Serialization.ExtensionDataObject ExtensionData {
            get {
                return this.extensionDataField;
            }
            set {
                this.extensionDataField = value;
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public string Contraseña {
            get {
                return this.ContraseñaField;
            }
            set {
                if ((object.ReferenceEquals(this.ContraseñaField, value) != true)) {
                    this.ContraseñaField = value;
                    this.RaisePropertyChanged("Contraseña");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public string CreadaPor {
            get {
                return this.CreadaPorField;
            }
            set {
                if ((object.ReferenceEquals(this.CreadaPorField, value) != true)) {
                    this.CreadaPorField = value;
                    this.RaisePropertyChanged("CreadaPor");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public bool EnJuego {
            get {
                return this.EnJuegoField;
            }
            set {
                if ((this.EnJuegoField.Equals(value) != true)) {
                    this.EnJuegoField = value;
                    this.RaisePropertyChanged("EnJuego");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public string Id {
            get {
                return this.IdField;
            }
            set {
                if ((object.ReferenceEquals(this.IdField, value) != true)) {
                    this.IdField = value;
                    this.RaisePropertyChanged("Id");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public System.Collections.Generic.Dictionary<UNOGui.JuegoUNOServicio.Jugador, object> JugadoresEnSala {
            get {
                return this.JugadoresEnSalaField;
            }
            set {
                if ((object.ReferenceEquals(this.JugadoresEnSalaField, value) != true)) {
                    this.JugadoresEnSalaField = value;
                    this.RaisePropertyChanged("JugadoresEnSala");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public int NumeroTotalDeJugadores {
            get {
                return this.NumeroTotalDeJugadoresField;
            }
            set {
                if ((this.NumeroTotalDeJugadoresField.Equals(value) != true)) {
                    this.NumeroTotalDeJugadoresField = value;
                    this.RaisePropertyChanged("NumeroTotalDeJugadores");
                }
            }
        }
        
        public event System.ComponentModel.PropertyChangedEventHandler PropertyChanged;
        
        protected void RaisePropertyChanged(string propertyName) {
            System.ComponentModel.PropertyChangedEventHandler propertyChanged = this.PropertyChanged;
            if ((propertyChanged != null)) {
                propertyChanged(this, new System.ComponentModel.PropertyChangedEventArgs(propertyName));
            }
        }
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Runtime.Serialization", "4.0.0.0")]
    [System.Runtime.Serialization.DataContractAttribute(Name="Carta", Namespace="http://schemas.datacontract.org/2004/07/UNO.Dominio")]
    [System.SerializableAttribute()]
    public partial class Carta : object, System.Runtime.Serialization.IExtensibleDataObject, System.ComponentModel.INotifyPropertyChanged {
        
        [System.NonSerializedAttribute()]
        private System.Runtime.Serialization.ExtensionDataObject extensionDataField;
        
        private UNOGui.JuegoUNOServicio.ColoresCartas Colork__BackingFieldField;
        
        private UNOGui.JuegoUNOServicio.EfectosCarta Efectok__BackingFieldField;
        
        private int Numerok__BackingFieldField;
        
        private string Rutak__BackingFieldField;
        
        [global::System.ComponentModel.BrowsableAttribute(false)]
        public System.Runtime.Serialization.ExtensionDataObject ExtensionData {
            get {
                return this.extensionDataField;
            }
            set {
                this.extensionDataField = value;
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute(Name="<Color>k__BackingField", IsRequired=true)]
        public UNOGui.JuegoUNOServicio.ColoresCartas Colork__BackingField {
            get {
                return this.Colork__BackingFieldField;
            }
            set {
                if ((this.Colork__BackingFieldField.Equals(value) != true)) {
                    this.Colork__BackingFieldField = value;
                    this.RaisePropertyChanged("Colork__BackingField");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute(Name="<Efecto>k__BackingField", IsRequired=true)]
        public UNOGui.JuegoUNOServicio.EfectosCarta Efectok__BackingField {
            get {
                return this.Efectok__BackingFieldField;
            }
            set {
                if ((this.Efectok__BackingFieldField.Equals(value) != true)) {
                    this.Efectok__BackingFieldField = value;
                    this.RaisePropertyChanged("Efectok__BackingField");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute(Name="<Numero>k__BackingField", IsRequired=true)]
        public int Numerok__BackingField {
            get {
                return this.Numerok__BackingFieldField;
            }
            set {
                if ((this.Numerok__BackingFieldField.Equals(value) != true)) {
                    this.Numerok__BackingFieldField = value;
                    this.RaisePropertyChanged("Numerok__BackingField");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute(Name="<Ruta>k__BackingField", IsRequired=true)]
        public string Rutak__BackingField {
            get {
                return this.Rutak__BackingFieldField;
            }
            set {
                if ((object.ReferenceEquals(this.Rutak__BackingFieldField, value) != true)) {
                    this.Rutak__BackingFieldField = value;
                    this.RaisePropertyChanged("Rutak__BackingField");
                }
            }
        }
        
        public event System.ComponentModel.PropertyChangedEventHandler PropertyChanged;
        
        protected void RaisePropertyChanged(string propertyName) {
            System.ComponentModel.PropertyChangedEventHandler propertyChanged = this.PropertyChanged;
            if ((propertyChanged != null)) {
                propertyChanged(this, new System.ComponentModel.PropertyChangedEventArgs(propertyName));
            }
        }
    }
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Runtime.Serialization", "4.0.0.0")]
    [System.Runtime.Serialization.DataContractAttribute(Name="ColoresCartas", Namespace="http://schemas.datacontract.org/2004/07/UNO.Dominio")]
    public enum ColoresCartas : int {
        
        [System.Runtime.Serialization.EnumMemberAttribute()]
        Rojo = 1,
        
        [System.Runtime.Serialization.EnumMemberAttribute()]
        Amarillo = 2,
        
        [System.Runtime.Serialization.EnumMemberAttribute()]
        Verde = 3,
        
        [System.Runtime.Serialization.EnumMemberAttribute()]
        Azul = 4,
        
        [System.Runtime.Serialization.EnumMemberAttribute()]
        Negro = 5,
    }
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Runtime.Serialization", "4.0.0.0")]
    [System.Runtime.Serialization.DataContractAttribute(Name="EfectosCarta", Namespace="http://schemas.datacontract.org/2004/07/UNO.Dominio")]
    public enum EfectosCarta : int {
        
        [System.Runtime.Serialization.EnumMemberAttribute()]
        SinEfecto = 0,
        
        [System.Runtime.Serialization.EnumMemberAttribute()]
        Cancelar = 10,
        
        [System.Runtime.Serialization.EnumMemberAttribute()]
        Reversa = 20,
        
        [System.Runtime.Serialization.EnumMemberAttribute()]
        TomaDos = 30,
        
        [System.Runtime.Serialization.EnumMemberAttribute()]
        TomaCuatro = 40,
        
        [System.Runtime.Serialization.EnumMemberAttribute()]
        MultiColor = 50,
    }
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Runtime.Serialization", "4.0.0.0")]
    [System.Runtime.Serialization.DataContractAttribute(Name="ResultadoUnionSala", Namespace="http://schemas.datacontract.org/2004/07/UNO.Contratos.LogicaJuego")]
    public enum ResultadoUnionSala : int {
        
        [System.Runtime.Serialization.EnumMemberAttribute()]
        NoExisteId = 1,
        
        [System.Runtime.Serialization.EnumMemberAttribute()]
        ContraseñaIncorrecta = 2,
        
        [System.Runtime.Serialization.EnumMemberAttribute()]
        NoHayCupo = 3,
        
        [System.Runtime.Serialization.EnumMemberAttribute()]
        UnionExitosa = 4,
        
        [System.Runtime.Serialization.EnumMemberAttribute()]
        EnJuego = 5,
    }
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ServiceModel.ServiceContractAttribute(ConfigurationName="JuegoUNOServicio.IRegistrarJugador", CallbackContract=typeof(UNOGui.JuegoUNOServicio.IRegistrarJugadorCallback))]
    public interface IRegistrarJugador {
        
        [System.ServiceModel.OperationContractAttribute(IsOneWay=true, Action="http://tempuri.org/IRegistrarJugador/RegistrarJugador")]
        void RegistrarJugador(UNOGui.JuegoUNOServicio.Jugador jugador);
        
        [System.ServiceModel.OperationContractAttribute(IsOneWay=true, Action="http://tempuri.org/IRegistrarJugador/RegistrarJugador")]
        System.Threading.Tasks.Task RegistrarJugadorAsync(UNOGui.JuegoUNOServicio.Jugador jugador);
        
        [System.ServiceModel.OperationContractAttribute(IsOneWay=true, Action="http://tempuri.org/IRegistrarJugador/VerificarClave")]
        void VerificarClave(string clave);
        
        [System.ServiceModel.OperationContractAttribute(IsOneWay=true, Action="http://tempuri.org/IRegistrarJugador/VerificarClave")]
        System.Threading.Tasks.Task VerificarClaveAsync(string clave);
        
        [System.ServiceModel.OperationContractAttribute(IsOneWay=true, Action="http://tempuri.org/IRegistrarJugador/CancelarRegistro")]
        void CancelarRegistro();
        
        [System.ServiceModel.OperationContractAttribute(IsOneWay=true, Action="http://tempuri.org/IRegistrarJugador/CancelarRegistro")]
        System.Threading.Tasks.Task CancelarRegistroAsync();
        
        [System.ServiceModel.OperationContractAttribute(IsOneWay=true, Action="http://tempuri.org/IRegistrarJugador/EnviarClaveDeNuevo")]
        void EnviarClaveDeNuevo();
        
        [System.ServiceModel.OperationContractAttribute(IsOneWay=true, Action="http://tempuri.org/IRegistrarJugador/EnviarClaveDeNuevo")]
        System.Threading.Tasks.Task EnviarClaveDeNuevoAsync();
    }
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public interface IRegistrarJugadorCallback {
        
        [System.ServiceModel.OperationContractAttribute(IsOneWay=true, Action="http://tempuri.org/IRegistrarJugador/NotificarRegistro")]
        void NotificarRegistro(UNOGui.JuegoUNOServicio.ResultadoRegistro resultado);
        
        [System.ServiceModel.OperationContractAttribute(IsOneWay=true, Action="http://tempuri.org/IRegistrarJugador/NotificarResultadoClave")]
        void NotificarResultadoClave(bool claveValida);
        
        [System.ServiceModel.OperationContractAttribute(IsOneWay=true, Action="http://tempuri.org/IRegistrarJugador/NotificarCancelacionRegistro")]
        void NotificarCancelacionRegistro();
        
        [System.ServiceModel.OperationContractAttribute(IsOneWay=true, Action="http://tempuri.org/IRegistrarJugador/NotificarEnvioDeClave")]
        void NotificarEnvioDeClave();
    }
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public interface IRegistrarJugadorChannel : UNOGui.JuegoUNOServicio.IRegistrarJugador, System.ServiceModel.IClientChannel {
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public partial class RegistrarJugadorClient : System.ServiceModel.DuplexClientBase<UNOGui.JuegoUNOServicio.IRegistrarJugador>, UNOGui.JuegoUNOServicio.IRegistrarJugador {
        
        public RegistrarJugadorClient(System.ServiceModel.InstanceContext callbackInstance) : 
                base(callbackInstance) {
        }
        
        public RegistrarJugadorClient(System.ServiceModel.InstanceContext callbackInstance, string endpointConfigurationName) : 
                base(callbackInstance, endpointConfigurationName) {
        }
        
        public RegistrarJugadorClient(System.ServiceModel.InstanceContext callbackInstance, string endpointConfigurationName, string remoteAddress) : 
                base(callbackInstance, endpointConfigurationName, remoteAddress) {
        }
        
        public RegistrarJugadorClient(System.ServiceModel.InstanceContext callbackInstance, string endpointConfigurationName, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(callbackInstance, endpointConfigurationName, remoteAddress) {
        }
        
        public RegistrarJugadorClient(System.ServiceModel.InstanceContext callbackInstance, System.ServiceModel.Channels.Binding binding, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(callbackInstance, binding, remoteAddress) {
        }
        
        public void RegistrarJugador(UNOGui.JuegoUNOServicio.Jugador jugador) {
            base.Channel.RegistrarJugador(jugador);
        }
        
        public System.Threading.Tasks.Task RegistrarJugadorAsync(UNOGui.JuegoUNOServicio.Jugador jugador) {
            return base.Channel.RegistrarJugadorAsync(jugador);
        }
        
        public void VerificarClave(string clave) {
            base.Channel.VerificarClave(clave);
        }
        
        public System.Threading.Tasks.Task VerificarClaveAsync(string clave) {
            return base.Channel.VerificarClaveAsync(clave);
        }
        
        public void CancelarRegistro() {
            base.Channel.CancelarRegistro();
        }
        
        public System.Threading.Tasks.Task CancelarRegistroAsync() {
            return base.Channel.CancelarRegistroAsync();
        }
        
        public void EnviarClaveDeNuevo() {
            base.Channel.EnviarClaveDeNuevo();
        }
        
        public System.Threading.Tasks.Task EnviarClaveDeNuevoAsync() {
            return base.Channel.EnviarClaveDeNuevoAsync();
        }
    }
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ServiceModel.ServiceContractAttribute(ConfigurationName="JuegoUNOServicio.ILogin", CallbackContract=typeof(UNOGui.JuegoUNOServicio.ILoginCallback))]
    public interface ILogin {
        
        [System.ServiceModel.OperationContractAttribute(IsOneWay=true, Action="http://tempuri.org/ILogin/IniciarSesion")]
        void IniciarSesion(string nickname, string contraseña);
        
        [System.ServiceModel.OperationContractAttribute(IsOneWay=true, Action="http://tempuri.org/ILogin/IniciarSesion")]
        System.Threading.Tasks.Task IniciarSesionAsync(string nickname, string contraseña);
        
        [System.ServiceModel.OperationContractAttribute(IsOneWay=true, Action="http://tempuri.org/ILogin/CerrarSesion")]
        void CerrarSesion(string nickname);
        
        [System.ServiceModel.OperationContractAttribute(IsOneWay=true, Action="http://tempuri.org/ILogin/CerrarSesion")]
        System.Threading.Tasks.Task CerrarSesionAsync(string nickname);
    }
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public interface ILoginCallback {
        
        [System.ServiceModel.OperationContractAttribute(IsOneWay=true, Action="http://tempuri.org/ILogin/NotificarResultadoLogin")]
        void NotificarResultadoLogin(UNOGui.JuegoUNOServicio.ResultadoLogin resultado);
        
        [System.ServiceModel.OperationContractAttribute(IsOneWay=true, Action="http://tempuri.org/ILogin/ObtenerJugadoresTop")]
        void ObtenerJugadoresTop(System.Collections.Generic.List<UNOGui.JuegoUNOServicio.Jugador> jugadoresTop);
    }
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public interface ILoginChannel : UNOGui.JuegoUNOServicio.ILogin, System.ServiceModel.IClientChannel {
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public partial class LoginClient : System.ServiceModel.DuplexClientBase<UNOGui.JuegoUNOServicio.ILogin>, UNOGui.JuegoUNOServicio.ILogin {
        
        public LoginClient(System.ServiceModel.InstanceContext callbackInstance) : 
                base(callbackInstance) {
        }
        
        public LoginClient(System.ServiceModel.InstanceContext callbackInstance, string endpointConfigurationName) : 
                base(callbackInstance, endpointConfigurationName) {
        }
        
        public LoginClient(System.ServiceModel.InstanceContext callbackInstance, string endpointConfigurationName, string remoteAddress) : 
                base(callbackInstance, endpointConfigurationName, remoteAddress) {
        }
        
        public LoginClient(System.ServiceModel.InstanceContext callbackInstance, string endpointConfigurationName, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(callbackInstance, endpointConfigurationName, remoteAddress) {
        }
        
        public LoginClient(System.ServiceModel.InstanceContext callbackInstance, System.ServiceModel.Channels.Binding binding, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(callbackInstance, binding, remoteAddress) {
        }
        
        public void IniciarSesion(string nickname, string contraseña) {
            base.Channel.IniciarSesion(nickname, contraseña);
        }
        
        public System.Threading.Tasks.Task IniciarSesionAsync(string nickname, string contraseña) {
            return base.Channel.IniciarSesionAsync(nickname, contraseña);
        }
        
        public void CerrarSesion(string nickname) {
            base.Channel.CerrarSesion(nickname);
        }
        
        public System.Threading.Tasks.Task CerrarSesionAsync(string nickname) {
            return base.Channel.CerrarSesionAsync(nickname);
        }
    }
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ServiceModel.ServiceContractAttribute(ConfigurationName="JuegoUNOServicio.IPerfil", CallbackContract=typeof(UNOGui.JuegoUNOServicio.IPerfilCallback))]
    public interface IPerfil {
        
        [System.ServiceModel.OperationContractAttribute(IsOneWay=true, Action="http://tempuri.org/IPerfil/BuscarJugador")]
        void BuscarJugador(string nickname);
        
        [System.ServiceModel.OperationContractAttribute(IsOneWay=true, Action="http://tempuri.org/IPerfil/BuscarJugador")]
        System.Threading.Tasks.Task BuscarJugadorAsync(string nickname);
    }
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public interface IPerfilCallback {
        
        [System.ServiceModel.OperationContractAttribute(IsOneWay=true, Action="http://tempuri.org/IPerfil/ObtenerInformacionJugador")]
        void ObtenerInformacionJugador(UNOGui.JuegoUNOServicio.Jugador jugador);
    }
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public interface IPerfilChannel : UNOGui.JuegoUNOServicio.IPerfil, System.ServiceModel.IClientChannel {
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public partial class PerfilClient : System.ServiceModel.DuplexClientBase<UNOGui.JuegoUNOServicio.IPerfil>, UNOGui.JuegoUNOServicio.IPerfil {
        
        public PerfilClient(System.ServiceModel.InstanceContext callbackInstance) : 
                base(callbackInstance) {
        }
        
        public PerfilClient(System.ServiceModel.InstanceContext callbackInstance, string endpointConfigurationName) : 
                base(callbackInstance, endpointConfigurationName) {
        }
        
        public PerfilClient(System.ServiceModel.InstanceContext callbackInstance, string endpointConfigurationName, string remoteAddress) : 
                base(callbackInstance, endpointConfigurationName, remoteAddress) {
        }
        
        public PerfilClient(System.ServiceModel.InstanceContext callbackInstance, string endpointConfigurationName, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(callbackInstance, endpointConfigurationName, remoteAddress) {
        }
        
        public PerfilClient(System.ServiceModel.InstanceContext callbackInstance, System.ServiceModel.Channels.Binding binding, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(callbackInstance, binding, remoteAddress) {
        }
        
        public void BuscarJugador(string nickname) {
            base.Channel.BuscarJugador(nickname);
        }
        
        public System.Threading.Tasks.Task BuscarJugadorAsync(string nickname) {
            return base.Channel.BuscarJugadorAsync(nickname);
        }
    }
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ServiceModel.ServiceContractAttribute(ConfigurationName="JuegoUNOServicio.IAdministrarJuego", CallbackContract=typeof(UNOGui.JuegoUNOServicio.IAdministrarJuegoCallback))]
    public interface IAdministrarJuego {
        
        [System.ServiceModel.OperationContractAttribute(IsOneWay=true, Action="http://tempuri.org/IAdministrarJuego/CrearSala")]
        void CrearSala(UNOGui.JuegoUNOServicio.Sala nuevaSala, UNOGui.JuegoUNOServicio.Jugador jugador);
        
        [System.ServiceModel.OperationContractAttribute(IsOneWay=true, Action="http://tempuri.org/IAdministrarJuego/CrearSala")]
        System.Threading.Tasks.Task CrearSalaAsync(UNOGui.JuegoUNOServicio.Sala nuevaSala, UNOGui.JuegoUNOServicio.Jugador jugador);
        
        [System.ServiceModel.OperationContractAttribute(IsOneWay=true, Action="http://tempuri.org/IAdministrarJuego/UnirseASala")]
        void UnirseASala(UNOGui.JuegoUNOServicio.Sala salaAUnirse, UNOGui.JuegoUNOServicio.Jugador jugador);
        
        [System.ServiceModel.OperationContractAttribute(IsOneWay=true, Action="http://tempuri.org/IAdministrarJuego/UnirseASala")]
        System.Threading.Tasks.Task UnirseASalaAsync(UNOGui.JuegoUNOServicio.Sala salaAUnirse, UNOGui.JuegoUNOServicio.Jugador jugador);
        
        [System.ServiceModel.OperationContractAttribute(IsOneWay=true, Action="http://tempuri.org/IAdministrarJuego/SalirDeSala")]
        void SalirDeSala(string idSala, string nickname);
        
        [System.ServiceModel.OperationContractAttribute(IsOneWay=true, Action="http://tempuri.org/IAdministrarJuego/SalirDeSala")]
        System.Threading.Tasks.Task SalirDeSalaAsync(string idSala, string nickname);
        
        [System.ServiceModel.OperationContractAttribute(IsOneWay=true, Action="http://tempuri.org/IAdministrarJuego/IniciarPartida")]
        void IniciarPartida(string idSala);
        
        [System.ServiceModel.OperationContractAttribute(IsOneWay=true, Action="http://tempuri.org/IAdministrarJuego/IniciarPartida")]
        System.Threading.Tasks.Task IniciarPartidaAsync(string idSala);
    }
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public interface IAdministrarJuegoCallback {
        
        [System.ServiceModel.OperationContractAttribute(IsOneWay=true, Action="http://tempuri.org/IAdministrarJuego/NotificarCreacionDeSala")]
        void NotificarCreacionDeSala(UNOGui.JuegoUNOServicio.Sala salaCreada);
        
        [System.ServiceModel.OperationContractAttribute(IsOneWay=true, Action="http://tempuri.org/IAdministrarJuego/NotificarUnionASala")]
        void NotificarUnionASala(UNOGui.JuegoUNOServicio.ResultadoUnionSala resultado);
        
        [System.ServiceModel.OperationContractAttribute(IsOneWay=true, Action="http://tempuri.org/IAdministrarJuego/ActualizarSala")]
        void ActualizarSala(System.Collections.Generic.List<string> jugadores);
        
        [System.ServiceModel.OperationContractAttribute(IsOneWay=true, Action="http://tempuri.org/IAdministrarJuego/ObtenerInformacionDeSala")]
        void ObtenerInformacionDeSala(UNOGui.JuegoUNOServicio.Sala sala);
        
        [System.ServiceModel.OperationContractAttribute(IsOneWay=true, Action="http://tempuri.org/IAdministrarJuego/AgregarNuevoJugador")]
        void AgregarNuevoJugador(UNOGui.JuegoUNOServicio.Jugador nuevoJugador);
        
        [System.ServiceModel.OperationContractAttribute(IsOneWay=true, Action="http://tempuri.org/IAdministrarJuego/SacarJugador")]
        void SacarJugador(UNOGui.JuegoUNOServicio.Jugador jugadorASacar);
        
        [System.ServiceModel.OperationContractAttribute(IsOneWay=true, Action="http://tempuri.org/IAdministrarJuego/NotificarSalidaDeSala")]
        void NotificarSalidaDeSala();
        
        [System.ServiceModel.OperationContractAttribute(IsOneWay=true, Action="http://tempuri.org/IAdministrarJuego/NotificarEliminacionDeSala")]
        void NotificarEliminacionDeSala();
        
        [System.ServiceModel.OperationContractAttribute(IsOneWay=true, Action="http://tempuri.org/IAdministrarJuego/EliminarCreador")]
        void EliminarCreador();
        
        [System.ServiceModel.OperationContractAttribute(IsOneWay=true, Action="http://tempuri.org/IAdministrarJuego/NotificarInicioPartida")]
        void NotificarInicioPartida(UNOGui.JuegoUNOServicio.Sala sala);
        
        [System.ServiceModel.OperationContractAttribute(IsOneWay=true, Action="http://tempuri.org/IAdministrarJuego/ObtenerMazo")]
        void ObtenerMazo(System.Collections.Generic.List<UNOGui.JuegoUNOServicio.Carta> mazoDeJugador);
    }
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public interface IAdministrarJuegoChannel : UNOGui.JuegoUNOServicio.IAdministrarJuego, System.ServiceModel.IClientChannel {
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public partial class AdministrarJuegoClient : System.ServiceModel.DuplexClientBase<UNOGui.JuegoUNOServicio.IAdministrarJuego>, UNOGui.JuegoUNOServicio.IAdministrarJuego {
        
        public AdministrarJuegoClient(System.ServiceModel.InstanceContext callbackInstance) : 
                base(callbackInstance) {
        }
        
        public AdministrarJuegoClient(System.ServiceModel.InstanceContext callbackInstance, string endpointConfigurationName) : 
                base(callbackInstance, endpointConfigurationName) {
        }
        
        public AdministrarJuegoClient(System.ServiceModel.InstanceContext callbackInstance, string endpointConfigurationName, string remoteAddress) : 
                base(callbackInstance, endpointConfigurationName, remoteAddress) {
        }
        
        public AdministrarJuegoClient(System.ServiceModel.InstanceContext callbackInstance, string endpointConfigurationName, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(callbackInstance, endpointConfigurationName, remoteAddress) {
        }
        
        public AdministrarJuegoClient(System.ServiceModel.InstanceContext callbackInstance, System.ServiceModel.Channels.Binding binding, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(callbackInstance, binding, remoteAddress) {
        }
        
        public void CrearSala(UNOGui.JuegoUNOServicio.Sala nuevaSala, UNOGui.JuegoUNOServicio.Jugador jugador) {
            base.Channel.CrearSala(nuevaSala, jugador);
        }
        
        public System.Threading.Tasks.Task CrearSalaAsync(UNOGui.JuegoUNOServicio.Sala nuevaSala, UNOGui.JuegoUNOServicio.Jugador jugador) {
            return base.Channel.CrearSalaAsync(nuevaSala, jugador);
        }
        
        public void UnirseASala(UNOGui.JuegoUNOServicio.Sala salaAUnirse, UNOGui.JuegoUNOServicio.Jugador jugador) {
            base.Channel.UnirseASala(salaAUnirse, jugador);
        }
        
        public System.Threading.Tasks.Task UnirseASalaAsync(UNOGui.JuegoUNOServicio.Sala salaAUnirse, UNOGui.JuegoUNOServicio.Jugador jugador) {
            return base.Channel.UnirseASalaAsync(salaAUnirse, jugador);
        }
        
        public void SalirDeSala(string idSala, string nickname) {
            base.Channel.SalirDeSala(idSala, nickname);
        }
        
        public System.Threading.Tasks.Task SalirDeSalaAsync(string idSala, string nickname) {
            return base.Channel.SalirDeSalaAsync(idSala, nickname);
        }
        
        public void IniciarPartida(string idSala) {
            base.Channel.IniciarPartida(idSala);
        }
        
        public System.Threading.Tasks.Task IniciarPartidaAsync(string idSala) {
            return base.Channel.IniciarPartidaAsync(idSala);
        }
    }
}
