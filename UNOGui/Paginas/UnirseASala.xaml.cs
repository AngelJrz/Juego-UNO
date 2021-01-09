using System.ServiceModel;
using System.Windows;
using System.Windows.Controls;
using UNOGui.JuegoUNOServicio;
using UNOGui.Logica;
using UNOGui.Ventanas;

namespace UNOGui.Paginas
{
    /// <summary>
    /// Lógica de interacción para UnirseASala.xaml
    /// </summary>
    public partial class UnirseASala : Page
    {
        public UnirseASala()
        {
            InitializeComponent();
        }

        private void Unirse(object sender, RoutedEventArgs e)
        {
            if (CamposCompletos())
            {
                Sala salaAUnirse = new Sala
                {
                    Id = nombreSala.Text,
                    Contraseña = contrasenia.Password
                };

                var jugador = Window.GetWindow(this).DataContext as Jugador;

                try
                {
                    SalaAdmin.UnirseASala(salaAUnirse, jugador);
                }
                catch (EndpointNotFoundException)
                {
                    new Mensaje
                    {
                        TituloMensaje = Properties.Resources.ErrorServidor_TituloContenido,
                        Contenido = Properties.Resources.ErrorServidor_MensajeContenido
                    }.ShowDialog();
                }

                LimpiarCampos();
            }
            else
            {
                new Mensaje
                {
                    TituloMensaje = Properties.Resources.CamposIncompletosTitulo,
                    Contenido = Properties.Resources.UnirseSala_CamposIncompletosMensaje
                }.ShowDialog();
            }
        }

        private void LimpiarCampos()
        {
            nombreSala.Text = "";
            contrasenia.Password = "";
        }

        private bool CamposCompletos()
        {
            return (nombreSala.Text.Trim() != "" && contrasenia.Password.Trim() != "");
        }
    }
}
