   M S B A M L   `   `   `  ���� Q  MDynamo.Boekingssysteem, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullQ-clr-namespace:Dynamo.Boekingssysteem.ControlsDynamo.Boekingssysteem.Controls  7    1Dynamo.Boekingssysteem.View.Bericht.MemoOverzicht   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35U QWPFToolkit, Version=3.5.40128.1, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     =dyn-clr-namespace:Dynamo.Boekingssysteem.Controls       � 	Resources   	  Memos �� Source �� Path?   9Dynamo.Boekingssysteem.Controls.BoolToFontWeightConverter  fontWeightConverter��%;   &	        &	 "     ��  �� $ AlleBerichten�  .��� $��4q� � ColumnDefinitions �� $
��Auto ��� $��* �.+��� $��0��$
��Auto��._�� $��
10,10,10,0q�$
��Auto��$
��Auto�� � RowDefinitions �� $��* ��� $��40 �.+��� $��0�� � DataContext# [  $ �� IsSynchronizedWithCurrentItem$
 TrueY�H   BDynamo.Boekingssysteem.Controls.SelectorDoubleClickCommandBehavior   HandleDoubleClick . ����    TheCommandToRun �� $ DefaultCommand�	 �� View	 �� .P��� $��Datum��
 �� DisplayMemberBinding
 �� $ Datum��� $��Omschrijving��
 �� $ Titel��� $	��Van��
 �� $ AangemaaktDoor�����  �� 
TargetType" ��.���  �� Property � �� �� Value$ Stretch=���  � ��$ 14(���  �@��
IsSelected �� $ 
IsSelected� �� Mode$ TwoWay=� �� Triggers ]�  ]� 
Conditions ��  �� Property �@��AlternationIndex �� Value$ 0����  �@��
IsSelected . ./���  � ��  KleurSelecteren# �  ��  �� Binding �� $ IsBold� �� Value true.a���  � ��$
 Bold"��� $��1��  CommandButtons#��[ $��Stretch=����� $ Commands��� $��1��$��1��$	��Top=�$	��Top=����� *CurrentViewModel+