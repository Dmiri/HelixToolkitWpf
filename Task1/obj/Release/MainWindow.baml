   M S B A M L   `   `   `  ���� W  SHelixToolkit.Wpf, Version=2.8.0.0, Culture=neutral, PublicKeyToken=52aa3500039caf0dM8clr-namespace:HelixToolkit.Wpf;assembly=HelixToolkit.WpfHelixToolkit.Wpf  @ <Task1, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:Task1Task1 3clr-namespace:Task1.ViewModelsTask1.ViewModels    Task1.MainWindow   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     Fh8clr-namespace:HelixToolkit.Wpf;assembly=HelixToolkit.Wpf     %localclr-namespace:Task1     2localVMclr-namespace:Task1.ViewModels        CustomWindowStyle#��[    � Title$  
MainWindow��$	��350��$	��525��$	��200��$	��350�� � DataContext   Task1.ViewModels.MainVM   � 	Resources   
ButtonMemu �� Property �� Value  ButtonControlBar  SliderPopup �� 
TargetType  Task1.PopupEx  Name � 	StaysOpen � AllowsTransparency	 � PlacementTarget
 �� ElementName �� Padding �� CornerRadius �� Path �� StringFormat ]�Name ]� Thumb n�Name �� Triggers P� 
SourceName P� Property P� Value �� 
TargetName��%�  &	       &	 �     &	 �     �� .���  � ��$
 Left=���  � ��$ 5q���  � ��
 �������  � ��
 �   ���  � ��$ 0 0 0 3q��� .���  � ��$	 5 3q���  � ��$	 5 2q���  � ��
 ������� " ��.R�� ���	#05000000.+�  $ 	InfoPopup��$
��Auto��$
��Auto��$	��Top=� .  ��.   . 	 �� $
 Thumb��.���� $ 2q�$ 3�����	#fa5C5C5C._��� 
���   ����� $
 
PART_Track��$ Value�$ Z:{0:0}��]� $ 
PART_Track�� n� $ Thumb��$��10��$��15�� P� $ Thumb�� �@n�
IsDragging . . ��� $ 	InfoPopup�� � �� . P� $ Thumb�� �@n�
IsDragging .  . ��� $ 	InfoPopup�� � �� .  .���  � RowDefinitions �� $	��20* ��� $��* �$��40�� � ColumnDefinitions �� $��* �$	��100��$	��150���� $��5* �.+��� $��1��$��0�� K� ZIndex$ 1��$��
Loading...��$��25(� �� TextAlignment$ Center=�$��Center=�y��� *	IsLoading+�� $��0��$��0��$��2��
���   �$��0 0 3 0q�._��� ���� *	ItemsMenu+���� .R��� #��[ ���� *Title+���� *FunctionName+&    HelixToolkit.Wpf.HelixViewport3D  -   $��BlokContent3D��$��0��$��1��   ShowFrameRate .  !   RotateAroundMouseDownPoint .    ZoomExtentsWhenLoaded .    ZoomAroundMouseDownPoint .     CameraRotationMode$ 	Trackball=�    ShowViewCube  .  !   Children.!    HelixToolkit.Wpf.SunLight  g� -   	Content3D��" g� Content" �� *	ViewModel+�� $��1��$��1��$	��2 0q�
���   �$��0 3 0 0q�._��� # �� Orientation$# 
Horizontal=�.+��� #��[ ���� *	LoadModel+.��LOAD�� #��[ ���� *
ClearModel+.��CLEAR�� -   $��
ResizeMenu��$# 
Horizontal=�y��� *VisibleMotionControl+.+��� .+��� $��0 2 0 0q�MIN Z�� $��0 2 0 0q�MAX Z�� $	��100��$	��200��.+��� #��[ $��10 2 5 1q�$ � Minimum$	$ -25Q�% � Maximum$% -5Q�$��Center=�$��Stretch=�& � Value& �� *	MinValueZ+�� #��[ $��10 2 5 1q�$$ 5Q�$% 25Q�$��Center=�$��Stretch=�& �� *	MaxValueZ+�� #��[ ���� *Start+.��START�� #��[ ���� *Stop+.��STOP