   M S B A M L   `   `   `  ����Q  MDynamo.Boekingssysteem, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullQ-clr-namespace:Dynamo.Boekingssysteem.ControlsDynamo.Boekingssysteem.Controls  5      /    )Dynamo.Boekingssysteem.View.Band.EditBand   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35U QWPFToolkit, Version=3.5.40128.1, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      =dyn-clr-namespace:Dynamo.Boekingssysteem.Controls     5        � 	Resources  5
       	  Leden �� Source �� Path��%C   &	        �� 5   
    5      �� $ 	BandLeden�5      5      .��5      ��   SubItemBorder#��[ 6   ._�5   
   3   -Dynamo.Boekingssysteem.Controls.AnimatedPanel  $��0q�6   $	��620��6'    �� Orientation$ 
Horizontal=�66   .+�5        $��5q�6    $	��300��6+   .+�5        $ 
Horizontal=�6$   .+�5      ��   DescriptionLabel#��[ 6   $
��Naam��6F   6W   �� 5      $	��190��6t   ��6   �� $
 Naam�4   .Dynamo.Boekingssysteem.Controls.FocusExtension   	IsFocused 69   �� $ InitialFocus�6�   5        5      $ 
Horizontal=�6$   .+�5      �� #��[ 6   $��Contract per��6F   6_   �� 5      $	��190��6@   ��6   �� $ ContractPer�{�6L   �� $ IsNieuwContract�6y   5        5      $ 
Horizontal=�6$   .+�5       �� #��[ 6   $��Einde contract��6F   6a   �� 5!      $	��190��6f   ��6   �� $ EindeContract� �� UpdateSourceTrigger$ PropertyChanged=�6t   5"        5#      $ 
Horizontal=�6$   .+�5$      �� #��[ 6   $��Oefendag��6F   6[   �� 5%       �� DisplayMemberPath$ Value��6G    �� SelectedValuePath$	 Key��6a   $	��190��6�   ��6   �� $ 
OefenDagen� �� SelectedValue 6y   �� $ OefenDag�{�6�   �� $ IsNieuwContract�5&        5'      $ 
Horizontal=�6$   .+�5(      �� #��[ 6   $��Dagdeel��6F   6Z   �� 5)      $ Omschrijving��6E   $ Id��6f   $	��190��6�   ��6   �� $ Dagdelen� 6}   �� $ 	DagdeelId�{�6�   �� $ IsNieuwContract�5*        5+      $ 
Horizontal=�6$   .+�5,      �� #��[ 6   $��Oefenruimte��6F   6^   �� 5-      $
 Naam��6I   $ Id��6b   $	��190��6�   ��6   �� $ Oefenruimtes� 6y   �� $ OefenruimteId�{�6�   �� $ IsNieuwContract�5.        5/      $ 
Horizontal=�6$   .+�50      �� #��[ 6   $��	MaandHuur��6F   6\   4   .Dynamo.Boekingssysteem.Controls.DecimalTextBox  51      $��80��6I   ��6)   �� $ 	MaandHuur�6I   52        53      $ 
Horizontal=�6$   .+�54      �� #��[ 6   $
��Borg��6F   6W     55      $��80��6D   ��6)   �� $
 Borg�6D   56        57      $ 
Horizontal=�6$   .+�58      �� #��[ 6   $��Backline��6F   6[   4   .Dynamo.Boekingssysteem.Controls.IntegerTextBox  59      $��80��6H   ��6)   �� $ Backline�6H   5:        5;      $ 
Horizontal=�6$   .+�5<      �� #��[ 6   $��Kasten��6F   6Y     5=      $��80��6F   ��6)   �� $ Kasten�6F   5>        5?      $ 
Horizontal=�6$   .+�5@      �� #��[ 6   $��
Microfoons��6F   6]     5A      $��80��6J   ��6)   �� $ 
Microfoons�6J   5B        5C      $ 
Horizontal=�6$   .+�5D      �� #��[ 6   $��Extra versterkers��6F   6d     5E      $��80��6P   ��6)   �� $ ExtraVersterkers�6P   5F        5G      $ 
Horizontal=�6$   .+�5H      �� #��[ 6   $��Crash��6F   6X   �� 5I      	 d� 	IsChecked	 6   �� $ Crash�5J      5K        5M      $��5q�6    $	��300��6+   .+�5O      �� $��0��5P      
 � DataContext#
 [  5Q        ListViewItemStyle#��[ 5R      $ �� IsSynchronizedWithCurrentItem$
 TrueY�5T      ��5S      ��  �� View 5W      �� 5X      .P�5Y      �� $
��Naam��5Z   !    �� Width$	 200��5\   !    �� DisplayMemberBinding 5[   !   �� $
 Naam�5\   !   �� 5^      $��Telefoon��5_   !    5`   !   �� $ Telefoon�5b      5d      �� 5e        HeaderLabel#��[ 6   $��Contactpersoon 1��6=   $��28��6X   $	��250��6d   $��Center=�6p   6�     5f      $ 
Horizontal=�6$   .+�5g      �� #��[ 6   $
��Naam��6F   6W   �� 5h      $	��190��6G   ��6   �� $ CurrentBandLidNaam�6U   5i        5j      $ 
Horizontal=�6$   .+�5k      �� #��[ 6   $��Adres��6F   6X   �� 5l      $	��190��6H   ��6   �� $ CurrentBandLidAdres�6V   5m        5n      $ 
Horizontal=�6$   .+�5o      �� #��[ 6   $��Plaats��6F   6Y   �� 5p      $	��190��6I   ��6   �� $ CurrentBandLidPlaats�6W   5q        5r      $ 
Horizontal=�6$   .+�5s      �� #��[ 6   $��Telefoon��6F   6[   �� 5t      $	��190��6K   ��6   �� $ CurrentBandLidTelefoon�6Y   5u        5v      $ 
Horizontal=�6$   .+�5w      �� #��[ 6   $��Email��6F   6X   �� 5x      $	��190��6H   ��6   �� $ CurrentBandLidEmail�6V   5y      5{        5|      $ 
Horizontal=�6    $��5q�69   .+�5}      �� #��[ 6   $��Opmerkingen��6B   6Z   �� 5~      $	��500��6<   $	��100��6H    �� AcceptsReturn .  �� TextWrapping$
 Wrap=�6j   ��6   �� $ Opmerkingen�6�   5        5�      .+�5�      �� $��2,0,2,0q�5�      ��5�      �� $ CurrentViewModel�5�        5�      $��Stretch=�6    .+�5�      ��   CommandButtons#��[ 5�      $��Right=�5�      ��5�      �� $ Commands�5�      5�      5�      5�      5�      