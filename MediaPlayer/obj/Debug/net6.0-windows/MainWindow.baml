   M S B A M L   `   `   `  ����F  BMediaPlayer, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null)clr-namespace:MediaPlayerMediaPlayer  5   	       MediaPlayer.MainWindow   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   +localclr-namespace:MediaPlayer     5   	     � Title$  Media Player��5   	   $��511.272��6   $	��525��6/   ��5
      �� 5   
    �� ImageSource$ img\wall.jpg��6   .��5      � .+�5   
   r� -   5        $��mediaElement1��5   v   $
��Left=�6   $	��325��62   $��	26,28,0,0q�6?   $	��Top=�6R   $	��464��6j    r� LoadedBehavior$ Manual=�6�   �� 5   
   -   5        $��slider1��5   p   $
��Left=�6   $��
26,373,0,0q�6,   $	��Top=�6@   $��27��6X   $	��464��6d   6   �� 5   
   -   5        $��slider2��5   �   $
��Left=�6   $��390,430,0,0q�6,   $	��Top=�6A   $��27��6Y   $	��100��6e    � Value$ 1Q�6q    � Maximum$ 1Q�6{   6�   �� 5   
   $��Volume��6   $
��Left=�6!   $��413,398,0,0q�6<   $	��Top=�6Q   $��27��6i   $��49��6u   �� 5   
   -   5        $
��Left=�5      $��230,406,0,0q�6,   $	��Top=�6A   $��59��6Y   $��51��6d    J� RenderTransformOrigin$ 0.515,0.027&�6p   .��5      �� $��img/start.png��6   5      �� 5   
   -   5        $
��Left=�5      $��159,405,0,0q�6,   $	��Top=�6A   $��53��6Y   $��51��6d   $ -0.233,0.517&�6p   .��5      �� $��img/restart.png��6   5      �� 5   
   -   5        $
��Left=�5      $��307,408,0,0q�6,   $	��Top=�6A   $��52��6Y   $��48��6d   .��5      �� $��img/stop.png��6   5      �� 5    
   -   5        $
��Left=�5       $��
26,408,0,0q�6-   $	��Top=�6A   $��55��6Y   $��49��6d   .��5!      �� $��img/folder.png��6   5"      5#      5$      