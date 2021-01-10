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

namespace UNOGui.Paginas
{
    /// <summary>
    /// Lógica de interacción para Partida.xaml
    /// </summary>
    public partial class Partida : Page
    {
        private List<Carta> miMazo = new List<Carta>();
        private int espacioEntreCartas = 0;
        private Carta cartaEnTablero;
        private Sala miSala;

        public Partida(Sala sala)
        {
            miSala = sala;
            InitializeComponent();
        }

        public void EntregarCartas(List<Carta> cartasDeMano)
        {
            miMazo.AddRange(cartasDeMano);
            Mostrarmano();
        }

        public void Mostrarmano()
        {
            manoJugador.Children.Clear();

            foreach (Carta carta in miMazo)
            {
                RenderizarImagen(carta);
            }
        }

        private void RenderizarImagen(Carta carta)
        {
            Image imagen = new Image();

            BitmapImage src = new BitmapImage();
            src.BeginInit();
            src.UriSource = new Uri(carta.Rutak__BackingField, UriKind.Relative);
            src.EndInit();

            imagen.Source = src;

            imagen.Stretch = Stretch.Uniform;
            imagen.Height = 110;
            imagen.VerticalAlignment = VerticalAlignment.Bottom;
            imagen.HorizontalAlignment = HorizontalAlignment.Left;
            imagen.Margin = new Thickness(espacioEntreCartas, 0, 0, 0);

            imagen.MouseLeftButtonUp += (s, ev) =>
            {
                if (Reglas.EsCartaValida(carta, cartaEnTablero))
                {
                    PartidaAdmin.ColocarCarta(carta, miSala);
                    miMazo.Remove(carta);
                    manoJugador.Children.Remove(imagen);
                    Mostrarmano();
                }
                else
                {
                    MessageBox.Show("La carta no es valida");
                }
            };

            Grid.SetRow(imagen, 0);
            Grid.SetColumn(imagen, 0);

            manoJugador.Children.Add(imagen);

            espacioEntreCartas += 30;
        }

        public void ActualizarCartaCentral(Carta nuevaCarta)
        {
            cartaEnTablero = nuevaCarta;

            BitmapImage src = new BitmapImage();
            src.BeginInit();
            src.UriSource = new Uri(nuevaCarta.Rutak__BackingField, UriKind.Relative);
            src.EndInit();
            cartaCentral.Source = src;
        }
    }
}
