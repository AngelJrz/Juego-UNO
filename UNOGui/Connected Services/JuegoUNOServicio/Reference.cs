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
        
        [global::System.ComponentModel.BrowsableAttribute(false)]
        public System.Runtime.Serialization.ExtensionDataObject ExtensionData {
            get {
                return this.extensionDataField;
            }
            set {
                this.extensionDataField = value;
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
    [System.Runtime.Serialization.DataContractAttribute(Name="ResultadoRegistro", Namespace="http://schemas.datacontract.org/2004/07/UNO.Contratos.RegistrarJugador")]
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
    }
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public interface IRegistrarJugadorCallback {
        
        [System.ServiceModel.OperationContractAttribute(IsOneWay=true, Action="http://tempuri.org/IRegistrarJugador/NotificarRegistro")]
        void NotificarRegistro(UNOGui.JuegoUNOServicio.ResultadoRegistro resultado);
        
        [System.ServiceModel.OperationContractAttribute(IsOneWay=true, Action="http://tempuri.org/IRegistrarJugador/NotificarEnvioClave")]
        void NotificarEnvioClave();
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
    }
}