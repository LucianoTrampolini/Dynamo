   M S B A M L   `   `   `  ����Q  MDynamo.Boekingssysteem, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullQ-clr-namespace:Dynamo.Boekingssysteem.ControlsDynamo.Boekingssysteem.Controls  5      4    .Dynamo.Boekingssysteem.View.Band.BandOverzicht   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35U QWPFToolkit, Version=3.5.40128.1, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      =dyn-clr-namespace:Dynamo.Boekingssysteem.Controls     5        � 	Resources  5       	  Bands �� Source �� Path��%C   &	        �� 5   
    5
      �� $ 	AlleBands�5      5      .��5      � $��4q�6    � ColumnDefinitions 5   
   �� 5      $
��Auto �6   �� 5      $��* �6   .+�5   
   �� $��0��5   	   $
��Auto��5   	   ._�5      � $��
10,10,10,0q�6   $
��Auto��6'   $
��Auto��65    � RowDefinitions 5      �� 5      $��* �6$   �� 5      $��40 �6$   .+�5      �� $��0��5        � DataContext# [  5!        ListViewItemStyle#��[ 5"      $ �� IsSynchronizedWithCurrentItem$
 TrueY�5$      H   BDynamo.Boekingssysteem.Controls.SelectorDoubleClickCommandBehavior   HandleDoubleClick . ��5#      ��    TheCommandToRun 5&      �� $ DefaultCommand�	 �� View	 5)      �� 5*      .P�5+      �� $
��Naam��5,   !   
 �� Width$	
 200��5.   !    �� DisplayMemberBinding 5-   !   �� $
 Naam�5.   !   �� 50      $��Contactpersoon��51   !    52   !   �� $ Contactpersoon��� 54      $��Telefoon��55   !    56   !   �� $ Telefoon�58      5:      �� 5>      $��1��6!     CommandButtons#��[ 5@      $��Stretch=�5A      ��5?      �� $ Commands�5A      5E      5F      �� 5H      $��1��5I      $��1��6   $	��Top=�5K      $	��Top=�5L      ��5J      �� *CurrentViewModel+5L      5N      5O      