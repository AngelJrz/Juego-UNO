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
    /// Lógica de interacción para Partida.xaml
    /// </summary>
    public partial class Partida : Page
    {
        private List<Carta> miMazo = new List<Carta>();
        List<ContenedorJugador> contenedoresJugador;
        private int espacioEntreCartas = 0;
        private Carta cartaEnTablero;
        private String miSala;

        public Partida(String sala)
        {
            miSala = sala;
            InitializeComponent();
        }

        public void EntregarCartas(List<Carta> cartasDeMano)
        {
            miMazo.AddRange(cartasDeMano);
            MostrarMano();
        }

        public void MostrarMano()
        {
            if (!Reglas.ElJugadorGano(miMazo))
            {
                manoJugador.Children.Clear();
                espacioEntreCartas = 0;

                foreach (Carta carta in miMazo)
                {
                    RenderizarImagen(carta);
                }
            }
            else
            {
                PartidaAdmin.AnunciarGanador(miSala);
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
                if (EsMiTurno())
                {
                    if (Reglas.EsCartaValida(carta, cartaEnTablero))
                    {
                        PartidaAdmin.ColocarCarta(carta, miSala);
                        miMazo.Remove(carta);
                        manoJugador.Children.Remove(imagen);
                        PartidaAdmin.ActualizarNumeroDeCartas(miSala, ObtenerMickname(), miMazo.Count.ToString());
                        PartidaAdmin.ActualizarPuntaje(miSala, ObtenerMickname(), carta.Numerok__BackingField);
                        MostrarMano();
                    }
                    else
                    {
                        new Mensaje {
                            TituloMensaje = "Carta no permitida",
                            Contenido = "La carta que seleccionaste no es valida"
                        }.ShowDialog();
                    }
                }
                else
                {
                    new Mensaje
                    {
                        TituloMensaje = "Accion no permitida",
                        Contenido = "Espera tu turno"
                    }.ShowDialog();
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

        public void AniadirCarta(Carta nuevaCarta)
        {
            miMazo.Add(nuevaCarta);
            MostrarMano();
            PartidaAdmin.ActualizarNumeroDeCartas(miSala, ObtenerMiNickname(), miMazo.Count.ToString());
        }

        public void MostrarMensajeGanador(String ganador)
        {
            MessageBox.Show("El ganador de la partida es " + ganador);
        }

        private void TomarCarta(object sender, RoutedEventArgs e)
        {
            String miNickname = ObtenerMiNickname();

            PartidaAdmin.TomarCarta(miSala, miNickname);
        }

        public void EstablecerJugadorEnTurno(String nickname)
        {
            turnoActual.Text = nickname;
        }

        private bool EsMiTurno()
        {
            String miNickname = ObtenerMiNickname();
            bool esMiTurno = false;

            if (turnoActual.Text.Equals(miNickname))
            {
                esMiTurno = true;
            }

            return esMiTurno;
        }

        public void PintarJungadores(Sala sala)
        {
            List<StackPanel> paneles = new List<StackPanel>
            {
                panel1,
                panel2,
                panel3,
                panel4
            };

            contenedoresJugador = new List<ContenedorJugador>();

            String miNickname = ObtenerMiNickname();

            int posicionJugador = sala.JugadoresEnSala.Keys.ToList().FindIndex(jugador => jugador.Nickname.Equals(miNickname));

            for (int i = 0; i < sala.JugadoresEnSala.Count; i++)
            {
                if (i != posicionJugador)
                {
                    contenedoresJugador.Add(new ContenedorJugador() { DataContext = sala.JugadoresEnSala.Keys.ToList().ElementAt(i) });
                }
            }

            for (int i = 0; i < contenedoresJugador.Count; i++)
            {
                    paneles.ElementAt(i).Children.Add(contenedoresJugador.ElementAt(i));
            }
        }

        private String ObtenerMiNickname()
        {
            MenuPrincipal ventanaJuego = Application.Current.Windows.OfType<MenuPrincipal>().SingleOrDefault();
            Jugador jugadorActual = ventanaJuego.DataContext as Jugador;
            String miNickname = jugadorActual.Nickname;

            return miNickname;
        }

        public void ActualizarNumeroCartas(String nickname, String numeroDeCartas)
        {
            foreach (ContenedorJugador contenedor in contenedoresJugador)
            {
                Jugador jugador = contenedor.DataContext as Jugador;

                if (jugador.Nickname.Equals(nickname))
                {
                    contenedor.numeroDeCartas.Text = numeroDeCartas;
                    break;
                }
            }
        }

        public void ActualizarPuntajeDeJugador(String nickname, int puntaje)
        {
            foreach (ContenedorJugador contenedor in contenedoresJugador)
            {
                Jugador jugador = contenedor.DataContext as Jugador;

                if (jugador.Nickname.Equals(nickname))
                {
                    int puntajeActual = int.Parse(contenedor.puntaje.Text);

                    contenedor.puntaje.Text = (puntajeActual + puntaje).ToString();
                    break;
                }
            }
        }
    }
}