   M S B A M L   `   `   `  ����B  >WpfApp2, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:WpfApp2WpfApp2  5   	       WpfApp2.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   'localclr-namespace:WpfApp2     5   	     � Title$  
MainWindow��5   	   $	��450��6   $	��800��6)    � 	Resources 5	         ItemTemplate � Orientation'  !System.Windows.VisualStateManager   VisualStateGroups%  System.Windows.VisualStateGroup   Transitions%  System.Windows.VisualTransition   GeneratedDuration   States   System.Windows.VisualState   
Storyboard �� TargetProperty	 �� 
TargetName9  3System.Windows.Media.Animation.EasingDoubleKeyFrame
 O� KeyTime O� Value �Name d� 	IsChecked � Value��%�  &	        �� 5
   
   .R�5      � $ Vertical=�6   $	��800��6/    5        5      VisualStateGroup�� 5        5      $ 0:0:0.5D�6/   . 5        VisualState��6&     5      VisualState1��. 5      �� .��5   "   U� $ (FrameworkElement.Width)�6@   $
	 grid��6u   .\�5   &     $
 0��6;   $	 800Q�6G   5   #   5      5      5      .+�5      � $
 grid��6   $��170.097��6%   .+�5      �� $��0,0,0,94.338q�65   ��6    �� *age+65   �� 5      $��0,15.24,0,79.239q�6<    6   �� *gender+6<   �� 5      $
��Left=�63   $
��Auto��6N   $��64��6\   $��106.097,10,0,35.578q�6g   ��6   �� *pic+6g   �� 5      $��0,94.338,0,-0.001q�66   ��6    �� *name+66   � 5       $
��Left=�6"   $��14.156��6=   $��10,59.844,0,0q�6M   $	��Top=�6d   $��96.097��6|    6�   �� *age+5!      5"      5#      5$      .��5%      �  � DataContext 6   ��   SampleDataSource �� Source# [ .+�5&   
   �� -   5         ��Name$ listBox��5&      $
��Left=�6#   #���   6>   $��46.458,0,0,10q�6�   $	��200��6�   ���	#FFE0D2D2��6l   �� *
Collection+��5'      �� 5(       �� EndPoint$ 0.5,1&�6&    �� 
StartPoint$ 0.5,0&�67   .��5)      �  � Color$ Black��6#    � Offset$ 0Q�61   � 5*      $ White��6#   $ 1Q�61   5+      5-      � 5.   
   $$��380.096,147.028,157.904,71.972q�6I    6   �� *SelectedItem+ �� ElementName$ listBox�� � ColumnDefinitions 5/      �� 50      $	��19* �6#   �� 51      $
��108* �6#   .+�53      �� $
��Left=�6   $	��Top=�63   $	��100��6K   $	��age��6W   $��2��6b   �� 54      $
��Left=�6-   $	��Top=�6H   $	��150��6`   $��65.899,0,0,0q�6l   $��1��6�   ��6   �� *age+6�   �� 55      $
��Left=�6   $	��Top=�63   $	��100��6K   $��0,19.24,0,0q�6W   $��gender��6l   $��2��6z   �� 56      $
��Left=�64   $	��Top=�6O   $��65.899,19.31,0,0q�6g   $��1��6�    6   �� *gender+6�   �� 57      $
��Left=�6   $	��Top=�63   $	��100��6K   $��0,38.48,0,0q�6W   $
��name��6l   $��2��6x   �� 58      $
��Left=�6.   $	��Top=�6I   $	��150��6a   $��65.899,38.48,0,0q�6m   $��1��6�   ��6   �� *name+6�   �� 59      $
��Left=�6   $	��Top=�63   $	��100��6K   $��0,100.1,0,0q�6W   $	��pic��6l   $��2��6w   �� 5:      $
��Left=�6+   $	��Top=�6F   $	��100��6^   $	��100��6j   $��65.899,57.72,0,0q�6w   $��1��6�   ��6   �� *pic+6�   5;      5=      5>      