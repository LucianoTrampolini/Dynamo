   M S B A M L   `   `   `  ����Q  MDynamo.Boekingssysteem, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullQ-clr-namespace:Dynamo.Boekingssysteem.ControlsDynamo.Boekingssysteem.Controls  5      ?    9Dynamo.Boekingssysteem.View.Planning.LogboekWeekOverzicht   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35U QWPFToolkit, Version=3.5.40128.1, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      =dyn-clr-namespace:Dynamo.Boekingssysteem.Controls     5      .��5	      � $
��Auto��6   $
��Auto��6   $
��1000��6&   $
��1500��67     � ColumnDefinitions  5
   
   �� 5      $	��180 �6   �� 5      $��* �6   $	��800��6)    � RowDefinitions 5   
   �� 5      $��60 �6   �� 5      $��* �6   .+�5   
   ��  �� Orientation$ 
Horizontal=�6   $��2��6.   .+�5      ��    NavigateButton#��[  6   $
��Left=�6=   ��6X   ��  �� Path$ VorigeWeek.DisplayName���6�   �� $ VorigeWeek.Command��� 5      $��Center=�6   $��Stretch=�64   $��80��6R   .+�5      ��   HeaderLabel#��[ 6   ��6=   �� $
 Week��� 5      #��[ 6   ��6=   �� $
 Jaar�5      �� 5      #��[  6   $��Right=�6=   ��6Y   �� $ VolgendeWeek.DisplayName���6�   �� $ VolgendeWeek.Command��� 5      #��[  6   $��50��6=   $��Right=�6H   ��6d   �� $ DezeWeek.DisplayName���6�   �� $ DezeWeek.Command�5      �� 5   
   $��1��5        DagenTemplate#��[ 5!        PlanningColumnStyle#��[ 5"      ��5       �� $ Dagen�5"      �� 5'   
   $��1��5(      $��1��5)        LogboekOpmerkingenTemplate#��[ 5+      #��[ 5,      ��5*      �� $ Opmerkingen�5,      50      51      