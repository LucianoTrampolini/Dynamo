   M S B A M L   `   `   `  ����   Dynamo.Boekingssysteem.    (Dynamo.Boekingssysteem.View.FancyBalloon   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35U QWPFToolkit, Version=3.5.40128.1, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     \ XHardcodet.Wpf.TaskbarNotification, Version=1.0.3.0, Culture=neutral, PublicKeyToken=null)tb http://www.hardcodet.net/taskbar  -     >�Name$  me��$	��203��$	��326�� � 	Resources  
  FadeIn g� 	BeginTime �� 
TargetName �� TargetProperty O� KeyTime O� Value  HighlightCloseButton  FadeCloseButton  FadeBack  FadeOut��%�  &	        &	 �     &	 (    &	 �    &	 6    �� .��U� $ 00:00:00X�$
 grid��$ (UIElement.Opacity)�.\��� $ 00:00:00��$ 0Q��� $ 00:00:01��$
 0.95Q��� $ 00:00:03��$
 0.95Q��� .��U� $ 00:00:00X�$ imgClose��$ (UIElement.Opacity)�.\��� $ 00:00:00��$	 0.4Q��� $ 00:00:00.3000000��$ 1Q��� .��U� $ 00:00:00X�$ imgClose��$ (UIElement.Opacity)�.\��� $ 00:00:00��$ 1Q��� $ 00:00:00.3000000��$	 0.4Q��� .��U� $ 00:00:00X�$
 grid��$ (UIElement.Opacity)�.\��� $ 00:00:00��$ 1Q��� $ 00:00:00.3000000��$ 1Q��� -   .��U� $ 00:00:00X�$
 grid��$ (UIElement.Opacity)�.\��� $ 00:00:00��$ 1Q��� $ 00:00:00.3000000��$	 0.2Q� � Triggers :�  :� RoutedEvent$# tb:TaskbarIcon.BalloonShowing��.[��� -   	 ��Name$	 FadeIn_BeginStoryboard��#��[  :� $ Mouse.MouseEnter��
 :� 
SourceName$
 imgClose��.[��� -   $*	 $HighlightCloseButton_BeginStoryboard��#��[ :� $ Mouse.MouseLeave��$
 imgClose��.[��� -   $%	 FadeCloseButton_BeginStoryboard��#��[ :� $ Mouse.MouseEnter��.[���  �� BeginStoryboardName$ FadeIn_BeginStoryboard���� -   $	 FadeBack_BeginStoryboard1��#��[ :� $# tb:TaskbarIcon.BalloonClosing��.[��� -   $	 FadeOut_BeginStoryboard��#��[ .��� -    �Name$
 grid��.+��� $��Stretch=�$��5,5,5,5q�$��1,1,1,1q����	#FF997137 J� Effect 3  -System.Windows.Media.Effects.DropShadowEffect     Color$ 	#FF747474������  �� EndPoint$ 0.5,1&� �� 
StartPoint$ 0.5,0&�.���  � Color$ 	#FF4B4B4B�� � Offset$ 0Q�� $ 	#FF8F8F8F��$ 1Q��� $
��Left=�$��0,10,0,0q�$��99��$��/Images/WarningBig.png��$
��Fill=�$��97��$	��Top=��� $��18(�$��105,49.2,10,0q�$	��Top=����	#FFECAD25$
��Wrap=��� ���  �� Path$ BalloonText� �� ElementName$ me�� �� Mode$ Default=�F� ���	#FFFFFFFF �� Stretch$
 Fill=�$��105,38.2,34,0q�$	��Top=�$��5�����Ѐ����`����`	 J� SnapsToDevicePixels . ���� $ 	0.973,0.5&�$ 	0.005,0.5&�.��� $ 	#00ECAD25��$ 1Q�� $ 	#87ECAD25��$ 0Q��� $��15(�$��105,10,10,0q�$	��Top=�$
��23.2��$��Dynamo��$
��Wrap=����	#FFECAD25$
��Bold"��� -	    ��Name$ imgClose��$��Right=�$��	0,10,10,0q�$	��Top=�$��16��$��16��$��/Images/Close.png��$
��Fill=� J� Opacity$	 0.4Q� � ToolTip$ Close Balloon��