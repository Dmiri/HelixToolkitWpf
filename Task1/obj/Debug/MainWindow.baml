   M S B A M L   `   `   `  ����W  SHelixToolkit.Wpf, Version=2.8.0.0, Culture=neutral, PublicKeyToken=52aa3500039caf0dM8clr-namespace:HelixToolkit.Wpf;assembly=HelixToolkit.WpfHelixToolkit.Wpf  5   	   @ <Task1, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:Task1Task1 5   	   3clr-namespace:Task1.ViewModelsTask1.ViewModels 5   	      Task1.MainWindow   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   Fh8clr-namespace:HelixToolkit.Wpf;assembly=HelixToolkit.Wpf     5   	   %localclr-namespace:Task1     5   	   2localVMclr-namespace:Task1.ViewModels     5   	      CustomWindowStyle#��[  5
   	     � Title$  
MainWindow��5   	   $	��350��6   $	��525��6)   $	��200��65   $	��350��6E    � DataContext 5        Task1.ViewModels.MainVM  5   
    � 	Resources 5        
ButtonMemu �� Property �� Value  ButtonControlBar  SliderPopup �� 
TargetType  Task1.PopupEx  Name � 	StaysOpen � AllowsTransparency	 � PlacementTarget
 �� ElementName �� Padding �� CornerRadius �� Path �� StringFormat ]�Name ]� Thumb n�Name �� Triggers P� 
SourceName P� Property P� Value �� 
TargetName��%�  &	       &	 �     &	 v    �� 5   
   .�5      ��  � ��$
 Left=�6C   6R   �� 5       � ��$ 5q�60   6<   �� 5       � ��
 �����6C   �� 5       � ��
 �   �6D   �� 5       � ��$ 0 0 0 3q�68   6J   5      �� 5   
   .�5      ��  � ��$	 5 3q�6/   �� 5       � ��$	 5 2q�60   6>   �� 5       � ��
 �����6C   5      �� 5    
   " ��6.   .R�5!      � ���	#05000000.+�5"        $ 	InfoPopup��6$   $
��Auto��67   $
��Auto��6D   $	��Top=�6�    .  ��.   . 	 6R   �� $
 Thumb��.��5#      �� $ 2q�6!   $ 3��6-   ���	#fa5C5C5C._�5$      �� 
���   ���6;   �� $
 
PART_Track��$ Value�$ Z:{0:0}��6�   5%      5&      ]� 5'      $ 
PART_Track��6    5(      n� 5)      $ Thumb��6$   $��10��63   $��15��6>   5*      5,      5-       5.      P� 5/      $ Thumb��6    �@n�
IsDragging . . �50      �� $ 	InfoPopup��6.    � �� . 6E   51      P� 52      $ Thumb��6    �@n�
IsDragging .  . �53      �� $ 	InfoPopup��6/    � �� .  6F   54      56      58      .��59      �  � RowDefinitions 5:   
   �� 5;      $	��20* �6   �� 5<      $��* �6   $��40��6'    � ColumnDefinitions 5>   
   �� 5?      $��* �6   $	��100��6)   $	��150��68   �� 5@      $��5* �6   .+�5B   
   �� $��1��6   $��0��6$    K� ZIndex$ 1��61   $��
Loading...��5C      $��25(�6&    �� TextAlignment$ Center=�5D      $��Center=�6+   y�6F   �� *	IsLoading+�� 5E   
   $��0��6   $��0��6"   $��2��6/   
���   �$��0 0 3 0q�6U   ._�5F      �� ��6   �� *	ItemsMenu+��5G      �� 5H      .R�5I      �� #��[ 6!   ��5J   !   �� *Title+��5K   !   �� *FunctionName+5L      5N      5O      &    HelixToolkit.Wpf.HelixViewport3D  5Q   
   -   5        $��BlokContent3D��5Q      $��0��61   $��1��6>      ShowFrameRate .  !   RotateAroundMouseDownPoint .    ZoomExtentsWhenLoaded .    ZoomAroundMouseDownPoint .     CameraRotationMode$ 	Trackball=�5T          ShowViewCube  .  !   Children.! 5U         HelixToolkit.Wpf.SunLight  g� 5V      -   5        	Content3D��" g� Content" 5V   /   �� *	ViewModel+5W      �� 5Y   
   $��1��6   $��1��6"   $	��2 0q�6/   
���   �$��0 3 0 0q�5Z   &   ._�5[      �� # �� Orientation$# 
Horizontal=�6   .+�5\      �� #��[ 6   ��6C   �� *	LoadModel+.��6a   LOAD6g   �� 5]      #��[ 6   ��6C   �� *
ClearModel+.��6b   CLEAR6i   �� 5^      -   5        $��
ResizeMenu��5^      $# 
Horizontal=�6/   y�6H   �� *VisibleMotionControl+.+�5_      �� .+�5`      �� $��0 2 0 0q�6$   MIN Z6=   �� 5a      $��0 2 0 0q�6$   MAX Z6=   5b      �� 5c      $	��100��6!   $	��200��60   .+�5d      �� #��[ 6!   $��10 2 5 1q�5e      $ � Minimum$	$ -25Q�6/   % � Maximum$% -5Q�6=   $��Center=�5f      $��Stretch=�68   & � Value& 5g      �� *	MinValueZ+�� 5i      #��[ 6!   $��10 2 5 1q�5j      $$ 5Q�6/   $% 25Q�6;   $��Center=�5k      $��Stretch=�68   & 5l      �� *	MaxValueZ+5m      �� 5n      #��[ 6   ��6G   �� *Start+.��6a   START6h   �� 5o      #��[ 6   ��6G   �� *Stop+.��6`   STOP6f   5p      5q      5r      5s      5t      