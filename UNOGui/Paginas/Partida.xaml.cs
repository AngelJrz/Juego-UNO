using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using UNOGui.JuegoUNOServicio;
using UNOGui.Logica;
using UNOGui.Ventanas;

namespace UNOGui.Paginas
{
    /// <summary>
    /// Establece los comportamientos para 
    /// </summary>
    public partial class Partida : Page
    {
        private readonly List<Carta> miMazo = new List<Carta>();
        private List<ContenedorJugador> contenedoresJugador;
        private int espacioEntreCartas = 0;
        private Carta cartaEnTablero;
        private readonly String miSala;

        public Partida(String sala)
        {
            miSala = sala;
            InitializeComponent();
        }

        /// <summary>
        /// Muestra en pantalla las cartas entregadas al jugador
        /// </summary>
        /// <param name="cartasDeMano">Lista de las cartas entregadas</param>
        public void EntregarCartas(List<Carta> cartasDeMano)
        {
            miMazo.AddRange(cartasDeMano);
            MostrarMano();
        }

        private void MostrarMano()
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
                Jugador juadorGanador = new Jugador
                {
                    Nickname = ObtenerMiNickname(),
                    PuntajeTotal = ObtenerMiPuntaje()
                };

                try
                {
                    PartidaAdmin.AnunciarGanador(miSala, juadorGanador);
                }
                catch (EndpointNotFoundException)
                {
                    new Mensaje
                    {
                        TituloMensaje = Properties.Resources.ErrorServidor_TituloContenido,
                        Contenido = Properties.Resources.ErrorServidor_MensajeContenido
                    }.ShowDialog();
                }
                catch (TimeoutException)
                {
                    new Mensaje
                    {
                        TituloMensaje = Properties.Resources.ErrorServidor_TituloContenido,
                        Contenido = Properties.Resources.ErrorServidor_MensajeContenido
                    }.ShowDialog();
                }
                catch (CommunicationObjectFaultedException)
                {
                    new Mensaje
                    {
                        TituloMensaje = Properties.Resources.ErrorServidor_TituloContenido,
                        Contenido = Properties.Resources.ErrorServidor_MensajeContenido
                    }.ShowDialog();
                }
            }
        }

        private int ObtenerMiPuntaje()
        {
            return int.Parse(miPuntajeText.Text);
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
                        try
                        {
                            PartidaAdmin.ColocarCarta(carta, miSala);
                        }
                        catch (EndpointNotFoundException)
                        {
                            new Mensaje
                            {
                                TituloMensaje = Properties.Resources.ErrorServidor_TituloContenido,
                                Contenido = Properties.Resources.ErrorServidor_MensajeContenido
                            }.ShowDialog();
                        }
                        catch (TimeoutException)
                        {
                            new Mensaje
                            {
                                TituloMensaje = Properties.Resources.ErrorServidor_TituloContenido,
                                Contenido = Properties.Resources.ErrorServidor_MensajeContenido
                            }.ShowDialog();
                        }
                        catch (CommunicationObjectFaultedException)
                        {
                            new Mensaje
                            {
                                TituloMensaje = Properties.Resources.ErrorServidor_TituloContenido,
                                Contenido = Properties.Resources.ErrorServidor_MensajeContenido
                            }.ShowDialog();
                        }
                        
                        miMazo.Remove(carta);
                        manoJugador.Children.Remove(imagen);

                        try
                        {
                            PartidaAdmin.ActualizarNumeroDeCartas(miSala, ObtenerMiNickname(), miMazo.Count.ToString());
                            PartidaAdmin.ActualizarPuntaje(miSala, ObtenerMiNickname(), carta.Numerok__BackingField);
                        }
                        catch (EndpointNotFoundException)
                        {
                            new Mensaje
                            {
                                TituloMensaje = Properties.Resources.ErrorServidor_TituloContenido,
                                Contenido = Properties.Resources.ErrorServidor_MensajeContenido
                            }.ShowDialog();
                        }
                        catch (TimeoutException)
                        {
                            new Mensaje
                            {
                                TituloMensaje = Properties.Resources.ErrorServidor_TituloContenido,
                                Contenido = Properties.Resources.ErrorServidor_MensajeContenido
                            }.ShowDialog();
                        }
                        catch (CommunicationObjectFaultedException)
                        {
                            new Mensaje
                            {
                                TituloMensaje = Properties.Resources.ErrorServidor_TituloContenido,
                                Contenido = Properties.Resources.ErrorServidor_MensajeContenido
                            }.ShowDialog();
                        }
                        
                        ActualizarMiPuntaje(carta.Numerok__BackingField);
                        MostrarMano();
                    }
                    else
                    {
                        new Mensaje {
                            TituloMensaje = Properties.Resources.Partida_CartaNoPermitidaTitulo,
                            Contenido = Properties.Resources.Partida_CartaNoPermitidaMensaje
                        }.ShowDialog();
                    }
                }
                else
                {
                    new Mensaje
                    {
                        TituloMensaje = Properties.Resources.Partida_AccionNoPermitidaTitulo,
                        Contenido = Properties.Resources.Partida_AccionNoPermitidaMensaje
                    }.ShowDialog();
                }
            };

            Grid.SetRow(imagen, 0);
            Grid.SetColumn(imagen, 0);

            manoJugador.Children.Add(imagen);

            espacioEntreCartas += 30;
        }

        private void ActualizarMiPuntaje(int puntaje)
        {
            int nuevoPuntaje = int.Parse(miPuntajeText.Text) + puntaje;

            miPuntajeText.Text = nuevoPuntaje.ToString();
        }

        /// <summary>
        /// Actualiza la imagen de la carta central
        /// </summary>
        /// <param name="nuevaCarta">Nueva carta a mostrar</param>
        public void ActualizarCartaCentral(Carta nuevaCarta)
        {
            cartaEnTablero = nuevaCarta;

            BitmapImage src = new BitmapImage();
            src.BeginInit();
            src.UriSource = new Uri(nuevaCarta.Rutak__BackingField, UriKind.Relative);
            src.EndInit();
            cartaCentral.Source = src;
        }

        /// <summary>
        /// Añade una carta a la mano del jugador
        /// </summary>
        /// <param name="nuevaCarta">Nueva carta a añadir</param>
        public void AniadirCarta(Carta nuevaCarta)
        {
            miMazo.Add(nuevaCarta);
            MostrarMano();

            try
            {
                PartidaAdmin.ActualizarNumeroDeCartas(miSala, ObtenerMiNickname(), miMazo.Count.ToString());
            }
            catch (EndpointNotFoundException)
            {
                new Mensaje
                {
                    TituloMensaje = Properties.Resources.ErrorServidor_TituloContenido,
                    Contenido = Properties.Resources.ErrorServidor_MensajeContenido
                }.ShowDialog();
            }
            catch (TimeoutException)
            {
                new Mensaje
                {
                    TituloMensaje = Properties.Resources.ErrorServidor_TituloContenido,
                    Contenido = Properties.Resources.ErrorServidor_MensajeContenido
                }.ShowDialog();
            }
            catch (CommunicationObjectFaultedException)
            {
                new Mensaje
                {
                    TituloMensaje = Properties.Resources.ErrorServidor_TituloContenido,
                    Contenido = Properties.Resources.ErrorServidor_MensajeContenido
                }.ShowDialog();
            }
        }

        /// <summary>
        /// Muestra en pantalla el nombre del usuario ganador
        /// </summary>
        /// <param name="ganador">Nombre del usuario ganador</param>
        public void MostrarMensajeGanador(String ganador)
        {
            new Mensaje
            {
                Title = Properties.Resources.Partida_GanadorMensajeTitulo,
                TituloMensaje = Properties.Resources.Partida_GanadorMensajeTitulo,
                Contenido = $"{Properties.Resources.Partida_GanadorMensajeContenido} {ganador}"
            }.ShowDialog();

            TerminarPartida();
        }

        private void TerminarPartida()
        {
            Juego ventanaJuego = Application.Current.Windows.OfType<Juego>().SingleOrDefault();
            MenuPrincipal ventanaMenu = Application.Current.Windows.OfType<MenuPrincipal>().SingleOrDefault();
            ventanaJuego.Close();
            ventanaMenu.Show();
        }

        private void TomarCarta(object sender, RoutedEventArgs e)
        {
            String miNickname = ObtenerMiNickname();

            try
            {
                PartidaAdmin.TomarCarta(miSala, miNickname);
            }
            catch (EndpointNotFoundException)
            {
                new Mensaje
                {
                    TituloMensaje = Properties.Resources.ErrorServidor_TituloContenido,
                    Contenido = Properties.Resources.ErrorServidor_MensajeContenido
                }.ShowDialog();
            }
            catch (TimeoutException)
            {
                new Mensaje
                {
                    TituloMensaje = Properties.Resources.ErrorServidor_TituloContenido,
                    Contenido = Properties.Resources.ErrorServidor_MensajeContenido
                }.ShowDialog();
            }
            catch (CommunicationObjectFaultedException)
            {
                new Mensaje
                {
                    TituloMensaje = Properties.Resources.ErrorServidor_TituloContenido,
                    Contenido = Properties.Resources.ErrorServidor_MensajeContenido
                }.ShowDialog();
            }
        }

        /// <summary>
        /// Actualiza el nombre del jugador en turno en la pantalla
        /// </summary>
        /// <param name="nickname">Nombre del jugador en turno</param>
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

        /// <summary>
        /// Coloca los graficos de cada jugador de la sala en la pantalla del usuario
        /// </summary>
        /// <param name="sala">Sala donde se encuentra el jugador</param>
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
                    contenedoresJugador.Add(new ContenedorJugador() { DataContext = sala.JugadoresEnSala.Keys.ElementAt(i) });
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

        /// <summary>
        /// Actualiza el numero de cartas de un usuario en particular
        /// </summary>
        /// <param name="nickname">Nickname del jugador a actualizar</param>
        /// <param name="numeroDeCartas">Nuevo numero de cartas con las que cuenta</param>
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

        /// <summary>
        /// Actualiza el puntaje de un usuario en particular
        /// </summary>
        /// <param name="nickname">Nickname del jugador a actualizar</param>
        /// <param name="puntaje">Nuevo puntaje con el que cuenta</param>
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

        private void SalirDePartida(object sender, RoutedEventArgs e)
        {
            try
            {
                SalaAdmin.SalirDeSala(miSala, ObtenerMiNickname());
            }
            catch (EndpointNotFoundException)
            {
                new Mensaje
                {
                    TituloMensaje = Properties.Resources.ErrorServidor_TituloContenido,
                    Contenido = Properties.Resources.ErrorServidor_MensajeContenido
                }.ShowDialog();
            }
            catch (TimeoutException)
            {
                new Mensaje
                {
                    TituloMensaje = Properties.Resources.ErrorServidor_TituloContenido,
                    Contenido = Properties.Resources.ErrorServidor_MensajeContenido
                }.ShowDialog();
            }
            catch (CommunicationObjectFaultedException)
            {
                new Mensaje
                {
                    TituloMensaje = Properties.Resources.ErrorServidor_TituloContenido,
                    Contenido = Properties.Resources.ErrorServidor_MensajeContenido
                }.ShowDialog();
            }
        }

        /// <summary>
        /// Lógica para sacar al jugador de la página Partida.
        /// </summary>
        /// <param name="nickname">Nickname del jugador a sacar</param>
        public void SacarJugador(string nickname)
        {
            foreach (ContenedorJugador contenedor in contenedoresJugador)
            {
                Jugador jugador = contenedor.DataContext as Jugador;

                if (jugador.Nickname.Equals(nickname))
                {
                    contenedor.Visibility = Visibility.Collapsed;
                    contenedoresJugador.Remove(contenedor);
                    break;
                }
            }
        }
    }
}