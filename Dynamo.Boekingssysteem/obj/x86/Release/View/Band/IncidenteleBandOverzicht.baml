   M S B A M L   `   `   `  ���� Q  MDynamo.Boekingssysteem, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullQ-clr-namespace:Dynamo.Boekingssysteem.ControlsDynamo.Boekingssysteem.Controls  ?    9Dynamo.Boekingssysteem.View.Band.IncidenteleBandOverzicht   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35U QWPFToolkit, Version=3.5.40128.1, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     =dyn-clr-namespace:Dynamo.Boekingssysteem.Controls       � 	Resources   	  Bands �� Source �� Path��%(   &	        ��  �� $ 	AlleBands�.��� $��4q� � ColumnDefinitions �� $
��Auto ��� $��* �.+��� $��0��$
��Auto��._�� $��
10,10,10,0q�$
��Auto��$
��Auto�� � RowDefinitions �� $
��320* ��� $��40 �.+��� $��0�� � DataContext# [    ListViewItemStyle#��[ $ �� IsSynchronizedWithCurrentItem$
 TrueY�H   BDynamo.Boekingssysteem.Controls.SelectorDoubleClickCommandBehavior   HandleDoubleClick . ����    TheCommandToRun �� $ DefaultCommand�	 �� View	 �� .P��� $
��Naam��
 �� DisplayMemberBinding
 �� $
 Naam��� $��Telefoon��
 �� $ Telefoon��� $��1��  CommandButtons#��[ $��Stretch=����� $ Commands��� $��2��._��� ���� *CurrentViewModel+