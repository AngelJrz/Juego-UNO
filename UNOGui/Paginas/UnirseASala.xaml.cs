using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
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

                SalaAdmin.UnirseASala(salaAUnirse, jugador);
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
