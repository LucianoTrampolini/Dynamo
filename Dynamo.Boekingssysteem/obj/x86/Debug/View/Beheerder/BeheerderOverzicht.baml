   M S B A M L   `   `   `  ����Q  MDynamo.Boekingssysteem, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullQ-clr-namespace:Dynamo.Boekingssysteem.ControlsDynamo.Boekingssysteem.Controls  5      >    8Dynamo.Boekingssysteem.View.Beheerder.BeheerderOverzicht   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35U QWPFToolkit, Version=3.5.40128.1, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      =dyn-clr-namespace:Dynamo.Boekingssysteem.Controls     5      Z VWPFToolkit.Extended, Version=1.6.0.0, Culture=neutral, PublicKeyToken=3e4669d2f30244f44xctk)http://schemas.xceed.com/wpf/xaml/toolkit  5        � 	Resources  5         
Beheerders �� Source �� Path��%H   &	        �� 5
   
    5      �� $ AlleBeheerders�5      5      .��5      � $��4q�6    � ColumnDefinitions 5   
   �� 5      $
��Auto �6   �� 5      $��* �6   .+�5   
   �� $��0��5      $
��Auto��5      ._�5      � $��
10,10,10,0q�6   $
��Auto��6'   $
��Auto��65    � RowDefinitions 5      �� 5      $��20 �6$   �� 5      $��* �6$   �� 5      $��40 �6$   .+�5"      �� $��0��6   $)��#Ook inactieve beheerders laten zien��6+   $��Right=�6�    d� 	IsChecked 6Y   �� $ ShowInactieveBeheerders� �� Mode$ TwoWay=�6�   �� 5#      $��1��5$       � DataContext# [  5%        ListViewItemStyle#��[ 5&      $ �� IsSynchronizedWithCurrentItem$
 TrueY�5(      H   BDynamo.Boekingssysteem.Controls.SelectorDoubleClickCommandBehavior	   HandleDoubleClick	 . ��5'      �� 
   TheCommandToRun
 5*      �� $ DefaultCommand� �� View 5,      �� 5-      .P�5.      �� $
��Naam��5/   !    �� DisplayMemberBinding 50   !   �� $
 Naam��� 52      $��Adres��53   !    54   !   �� $ Adres��� 56      $��
Telefoon 1��57   !    58   !   �� $ Telefoon��� 5:      $��
Telefoon 2��5;   !    5<   !   �� $ Mobiel��� 5>      $��Email��5?   !    5@   !   �� $ Email�5B      5D      �� 5F      $��2��6!     CommandButtons#��[ 5H      $��Stretch=�5I      ��5G      �� $ Commands�5I      5L      5M      �� 5O   
   $��1��5P      $��1��6   $	��Top=�5R      $	��Top=�5S      ��5Q      �� *CurrentViewModel+5S      5V      5W      