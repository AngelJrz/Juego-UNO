using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Windows;
using System.Threading.Tasks;
using UNOGui.JuegoUNOServicio;
using UNOGui.Ventanas;
using UNOGui.Paginas;
using VerificarCodigo = UNOGui.Paginas.VerificarCodigo;
using RecuperacionCuenta = UNOGui.Paginas.RecuperacionCuenta;

namespace UNOGui.Logica
{
    public class RecuperarCuentaCallback : IRecuperarCuentaCallback
    {
        private readonly Principal ventanaPrincipal = Application.Current.Windows.OfType<Principal>().SingleOrDefault();
        public void NotificarEnvioClave(bool resultado)
        {
            if (resultado)
            {
                ventanaPrincipal.Navigate(new VerificarCodigo());
            }
            else
            {
                MessageBox.Show("No se pudo enviar la clave");
            }
        }

        public void NotificarResultadoRecuperacion(bool recuperada)
        {
            if (recuperada)
            {
                MessageBox.Show("Contraseña actualizada");
                ventanaPrincipal.Navigate(new Login());
            }
            else
            {
                MessageBox.Show("No se pudo actualizar la contraseña");
            }
        }

        public void NotificarResultadoVerificación(bool resultado)
        {
            if (resultado)
            {
                ventanaPrincipal.Navigate(new RecuperacionCuenta());
            }
            else
            {
                MessageBox.Show("La clave introducida es incorrecta");
            }
        }
    }
}
