   M S B A M L   `   `   `  ���� Q  MDynamo.Boekingssysteem, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullQ-clr-namespace:Dynamo.Boekingssysteem.ControlsDynamo.Boekingssysteem.Controls  >    8Dynamo.Boekingssysteem.View.Beheerder.BeheerderOverzicht   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35U QWPFToolkit, Version=3.5.40128.1, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     =dyn-clr-namespace:Dynamo.Boekingssysteem.Controls     Z VWPFToolkit.Extended, Version=1.6.0.0, Culture=neutral, PublicKeyToken=3e4669d2f30244f44xctk)http://schemas.xceed.com/wpf/xaml/toolkit    � 	Resources     
Beheerders �� Source �� Path��%-   &	        ��  �� $ AlleBeheerders�.��� $��4q� � ColumnDefinitions �� $
��Auto ��� $��* �.+��� $��0��$
��Auto��._�� $��
10,10,10,0q�$
��Auto��$
��Auto�� � RowDefinitions �� $��20 ��� $��* ��� $��40 �.+��� $��0��$)��#Ook inactieve beheerders laten zien��$��Right=� d� 	IsChecked �� $ ShowInactieveBeheerders� �� Mode$ TwoWay=��� $��1�� � DataContext# [    ListViewItemStyle#��[ $ �� IsSynchronizedWithCurrentItem$
 TrueY�H   BDynamo.Boekingssysteem.Controls.SelectorDoubleClickCommandBehavior	   HandleDoubleClick	 . ���� 
   TheCommandToRun
 �� $ DefaultCommand� �� View �� .P��� $
��Naam�� �� DisplayMemberBinding �� $
 Naam��� $��Adres�� �� $ Adres��� $��
Telefoon 1�� �� $ Telefoon��� $��
Telefoon 2�� �� $ Mobiel��� $��2��  CommandButtons#��[ $��Stretch=����� $ Commands��� $��1��$��1��$	��Top=�$	��Top=����� *CurrentViewModel+