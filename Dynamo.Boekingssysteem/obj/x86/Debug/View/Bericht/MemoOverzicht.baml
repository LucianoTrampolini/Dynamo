   M S B A M L   `   `   `  ����Q  MDynamo.Boekingssysteem, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullQ-clr-namespace:Dynamo.Boekingssysteem.ControlsDynamo.Boekingssysteem.Controls  5      7    1Dynamo.Boekingssysteem.View.Bericht.MemoOverzicht   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35U QWPFToolkit, Version=3.5.40128.1, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      =dyn-clr-namespace:Dynamo.Boekingssysteem.Controls     5        � 	Resources  5       	  Memos �� Source �� Path?   9Dynamo.Boekingssysteem.Controls.BoolToFontWeightConverter  fontWeightConverter��%d   &	        &	 =     �� 5   
    5
      �� $ AlleBerichten�5        5   
   6F   5      .��5      � $��4q�6    � ColumnDefinitions 5   
   �� 5      $
��Auto �6   �� 5      $��* �6   .+�5   
   �� $��0��5   	   $
��Auto��5   	   ._�5      � $��
10,10,10,0q�6   $
��Auto��6'   $
��Auto��65    � RowDefinitions 5      �� 5      $��* �6$   �� 5      $��40 �6$   .+�5      �� $��0��5        � DataContext# [  5!      $ �� IsSynchronizedWithCurrentItem$
 TrueY�5$      H   BDynamo.Boekingssysteem.Controls.SelectorDoubleClickCommandBehavior   HandleDoubleClick . ��5#      ��    TheCommandToRun 5&      �� $ DefaultCommand�	 �� View	 5(      �� 5)      .P�5*      �� $��Datum��5+      
 �� DisplayMemberBinding
 5,      �� $ Datum��� 50      $��Omschrijving��51      
 52      �� $ Titel��� 54      $	��Van��55      
 56      �� $ AangemaaktDoor�59      ��5;      �� 5<       �� 
TargetType" ��6    .�5=      ��  �� Property � �� �� Value$ Stretch=�6K   �� 5>       � ��$ 14(�69   �� 5?       �@��
IsSelected 6;   �� $ 
IsSelected� �� Mode$ TwoWay=� �� Triggers 5@      ]� 5A   "    ]� 
Conditions 5B   &   �� 5C   *    �� Property �@��AlternationIndex �� Value$ 0��6]   �� 5D   *    �@��
IsSelected . 6J   ./�5F   &   ��  � ��  KleurSelecteren# �  6C   5G   #   �� 5H   "    �� Binding 6.   �� $ IsBold� �� Value true6N   .a�5I   &   ��  � ��$
 Bold"�6C   5J   #   5L      5N      �� 5R      $��1��6!     CommandButtons#��[ 5T      $��Stretch=�5U      ��5S      �� $ Commands�5U      5Y      5Z      �� 5\   
   $��1��5]      $��1��6   $	��Top=�5_      $	��Top=�5`      ��5^      �� *CurrentViewModel+5`      5b      5c      