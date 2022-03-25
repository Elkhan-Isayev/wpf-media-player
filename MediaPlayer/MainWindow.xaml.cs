using Microsoft.Win32;
using System;
using System.IO;
using System.Windows;

namespace MediaPlayer
{
	/// <summary>
	/// Interaction logic for MainWindow.xaml
	/// </summary>
	public partial class MainWindow : Window
	{
		public MainWindow()
		{
			InitializeComponent();

			mediaElement1.MediaOpened += MediaElement1_MediaOpened1;
			Closed += MediaPlayer_Closed;
		}

		private void MediaPlayer_Closed(object sender, EventArgs e)
		{
			//MainWindow.PlayerKey = false;
		}

		private void Button_Click_1(object sender, RoutedEventArgs e)
		{
			mediaElement1.Play();
		}
		
		private void Button_Click_2(object sender, RoutedEventArgs e)
		{
			mediaElement1.Stop();
		}
		private void Button_Click_3(object sender, RoutedEventArgs e)
		{
			mediaElement1.Pause();
		}
		private void Button_Click_4(object sender, RoutedEventArgs e)
		{
			OpenFileDialog ofd = new OpenFileDialog();
			ofd.AddExtension = true;
			ofd.DefaultExt = "*.*";
			ofd.Filter = "Media Files (*.*)|*.*";
			ofd.ShowDialog();
			try
			{
				mediaElement1.Source = new Uri(ofd.FileName);
			}
			catch
			{
				new NullReferenceException("Error");
			}
			System.Windows.Threading.DispatcherTimer dispatcherTimer = new System.Windows.Threading.DispatcherTimer();
			dispatcherTimer.Tick += DispatcherTimer_Tick;
			dispatcherTimer.Interval = new TimeSpan(0, 0, 1);
			dispatcherTimer.Start();
		}
		private void DispatcherTimer_Tick(object sender, EventArgs e)
		{
			slider1.Value = mediaElement1.Position.TotalSeconds;
		}

		private void slider1_ValueChanged(object sender, RoutedPropertyChangedEventArgs<double> e)
		{
			TimeSpan ts = TimeSpan.FromSeconds(e.NewValue);
			mediaElement1.Position = ts;
		}

		private void slider2_ValueChanged(object sender, RoutedPropertyChangedEventArgs<double> e)
		{
			mediaElement1.Volume = slider2.Value;
		}

		private void MediaElement1_MediaOpened1(object sender, RoutedEventArgs e)
		{
			if (mediaElement1.NaturalDuration.HasTimeSpan)
			{
				TimeSpan ts = TimeSpan.FromMilliseconds(mediaElement1.NaturalDuration.TimeSpan.TotalMilliseconds);
				slider1.Maximum = ts.TotalSeconds;
			}
		}
	}
}
