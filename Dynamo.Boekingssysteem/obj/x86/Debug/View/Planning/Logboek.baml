   M S B A M L   `   `   `  ����Q  MDynamo.Boekingssysteem, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullQ-clr-namespace:Dynamo.Boekingssysteem.ControlsDynamo.Boekingssysteem.Controls  5      2    ,Dynamo.Boekingssysteem.View.Planning.Logboek   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35U QWPFToolkit, Version=3.5.40128.1, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      =dyn-clr-namespace:Dynamo.Boekingssysteem.Controls     5        � 	Resources  5
      E   ?Dynamo.Boekingssysteem.Controls.BooleanVisibilityValueConverter   BoolToVisible��%   &	          5   
   6F   5      .��5      3   -Dynamo.Boekingssysteem.Controls.AnimatedPanel  $	��680��6   $
��Left=�6'   $��2q�6B   .+�5   
      �� Orientation$ 
Horizontal=�6   $	��300��65   .+�5      ��   HeaderLabel#��[ 6   $
��Left=�6X   $	��200��6z   ��69   ��  �� Path$ Datum�6�   �� 5        NavigateButton#��[ 6   ��6=   �� *VorigeDag.Command+��6c   �� *VorigeDag.DisplayName+�� 5      #��[ 6   ��6=   �� *VolgendeDag.Command+��6e   �� *VolgendeDag.DisplayName+5        5   
   $ 
Horizontal=�6   $	��850��65   .+�5      �� $��	102,2,2,2q�6   $	��825��6�   $��80��6�    �� AcceptsReturn .  �� TextWrapping$
 Wrap=�6�   " �� VerticalScrollBarVisibility$
 Auto=�6�   ��6*   �� $ DagOpmerking� �� UpdateSourceTrigger$ PropertyChanged=�4   .Dynamo.Boekingssysteem.Controls.FocusExtension   	IsFocused 6q   �� $ InitialFocus�6  5        5   
   $ 
Horizontal=�6   $	��650��65   .+�5      ��   DescriptionLabel#��[ 6   $��Middag��6>   $
��Left=�6O   6t   �� 5      $	��200��6`   ��6   �� $ MiddagOpmerking�$ PropertyChanged=�6o   5      �� 5   
   ��5      �� $ Oefenruimte1Middag�y�5      �� $ Oefenruimte1MiddagVisible� �� 	Converter# [  �� 5   
   ��5      �� $ Oefenruimte2Middag�y�5       �� $ Oefenruimte2MiddagVisible�# [  �� 5"   
   ��5#      �� $ Oefenruimte3Middag�y�5$      �� $ Oefenruimte3MiddagVisible�# [    5&   
   $ 
Horizontal=�6   $	��650��65   .+�5'      �� #��[ 6   $��Avond��6>   $
��Left=�6N   6s   �� 5(      $	��200��6_   ��6   �� $ AvondOpmerking�$ PropertyChanged=�6n   5)      �� 5*   
   ��5+      �� $ Oefenruimte1Avond�y�5,      �� $ Oefenruimte1AvondVisible�# [  �� 5.   
   ��5/      �� $ Oefenruimte2Avond�y�50      �� $ Oefenruimte2AvondVisible�# [  �� 52   
   ��53      �� $ Oefenruimte3Avond�y�54      �� $ Oefenruimte3AvondVisible�# [  56      58      