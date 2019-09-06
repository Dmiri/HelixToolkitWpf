// system
using Microsoft.Win32;
using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using System.Windows.Media;
using System.Windows.Media.Media3D;
using System.Windows.Input;
using System.Windows;
using System.Threading;
using System.Windows.Threading;
// references
using Prism.Commands;
using Prism.Mvvm;
using HelixToolkit.Wpf;

namespace Task1.ViewModels
{
    public class MainVM : BindableBase
    {
        public MainVM()
        {
            //init
            MaxValueZ = 5;
            MinValueZ = -25;

            //Menu
            VisibleMotionControl = Visibility.Hidden;
            IsLoading = Visibility.Hidden;
            ItemsMenu = new List<ItemMenu>();
            ItemsMenu.Add(new ItemMenu
            {
                Title = "Task 3",
                FunctionName = Task3
            });
            ItemsMenu.Add(new ItemMenu
            {
                Title = "Task 4",
                FunctionName = Task4
            });
            ItemsMenu.Add(new ItemMenu
            {
                Title = "Task 5",
                FunctionName = Task5
            });
            //--------------------

            Model = SetModel();
            ViewModel = Model;
        }


        //===========================================================
        public List<ItemMenu> ItemsMenu { get; private set; }

        public int MaxValueZ { get; set; }

        public int MinValueZ { get; set; }

        //-----------------------------------------------------------
        private Visibility isLoading;
        public Visibility IsLoading
        {
            get => isLoading;
            private set
            {
                SetProperty(ref this.isLoading, value);
            }
        }

        private Visibility visibleMotionControl;
        public Visibility VisibleMotionControl
        {
            get => visibleMotionControl;
            private set
            {
                SetProperty(ref this.visibleMotionControl, value);
                //this.OnPropertyChanged(() => this.TickerSymbol);//-if need binding with other element
            }
        }

        private Model3D viewModel;
        public Model3D ViewModel
        {
            get => viewModel;
            private set
            {
                SetProperty(ref this.viewModel, value);
            }
        }

        //-----------------------------------------------------------
        private bool statusMotion;
        private static Model3D Model;
        private Model3D Box;

        public ICommand LoadModel =>
            new DelegateCommand(() =>
            {
                IsLoading = Visibility.Visible;
                string FileName = OpenFileDialog();
                if (FileName != null)
                {
                    Model = SetModel(FileName);
                    ViewModel = Model;
                }
                IsLoading = Visibility.Hidden;
            });

        public ICommand ClearModel =>
            new DelegateCommand<object>((sender) =>
            {
                ViewModel = Model = null;
            });

        public ICommand Task3 =>
            new DelegateCommand(() =>
            {
                VisibleMotionControl = Visibility.Hidden;
                ViewModel = Model;
            });

        public ICommand Task4 =>
            new DelegateCommand(() =>
            {
                VisibleMotionControl = Visibility.Hidden;
                ViewModel = BBox();
            });

        public ICommand Task5 =>
            new DelegateCommand(() =>
            {
                VisibleMotionControl = Visibility.Visible;
                ViewModel = Model;
            });

        public ICommand Start =>
            new DelegateCommand(() =>
            {
                statusMotion = true;

                Task.Factory.StartNew(
                    () => MotionModel(new Vector3D(0, 0, 0.1), 25),
                    TaskCreationOptions.LongRunning);
            });

        public ICommand Stop =>
            new DelegateCommand(() =>
            {
                statusMotion = false;
            });


        public Model3D SetModel(string FileName = null)
        {
            if(FileName != null)
            {
                try
                {
                    var modelGroup = new Model3DGroup();
                    ModelImporter import = new ModelImporter();
                    return import.Load(FileName);
                }
                catch (Exception e)
                {
                    MessageBox.Show(e.Message);
                    return null;
                }
            }
            else
            {
                // Create a model group
                var modelGroup = new Model3DGroup();
                // Create a mesh builder and add a box to it
                var meshBuilder = new MeshBuilder(false, false);
                meshBuilder.AddBox(new Point3D(0, 0, 1), 1, 2, 0.5);
                meshBuilder.AddBox(new Rect3D(0, 0, 1.2, 0.5, 1, 0.4));

                // Create a mesh from the builder (and freeze it)
                var mesh = meshBuilder.ToMesh(true);

                // Create some materials
                var greenMaterial = MaterialHelper.CreateMaterial(Colors.Green);
                var insideMaterial = MaterialHelper.CreateMaterial(Colors.Yellow);

                // Add 1 model to the group (using the same mesh, that's why we had to freeze it)
                modelGroup.Children.Add(new GeometryModel3D { Geometry = mesh, Material = greenMaterial, BackMaterial = insideMaterial });
                Model = modelGroup;
                return modelGroup;
            }
        }


        public string OpenFileDialog()
        {
            string FilePath;
            try
            {
                OpenFileDialog openFileDialog = new OpenFileDialog();
                openFileDialog.Filter = "3D (*.obj)|*.obj";
                if (openFileDialog.ShowDialog() == true)
                {
                    FilePath = openFileDialog.FileName;
                    return FilePath;
                }
                return null;
            }
            catch (Exception e)
            {
                throw e;
            }
        }


        public Model3D BBox()
        {
            DiffuseMaterial materialBoxFront = new DiffuseMaterial(new SolidColorBrush(Color.FromArgb(50, 255, 255, 255)));
            DiffuseMaterial materialBoxBack = new DiffuseMaterial(new SolidColorBrush(Color.FromArgb(150, 230, 230, 230)));

            var axesMeshBuilder = new MeshBuilder(true, true);
            axesMeshBuilder.AddBox(Model.Bounds);
            var modelGroup = new Model3DGroup();
            modelGroup.Children.Add(Model);
            modelGroup.Children.Add(
                new GeometryModel3D
                {
                    Geometry = axesMeshBuilder.ToMesh(),
                    Material = materialBoxFront,
                    BackMaterial = materialBoxBack,
                });
            Box = modelGroup;

            return modelGroup;
        }


        private void MotionModel(Vector3D vector, int delay = 40)
        {
           double route = vector.Z;
           while (statusMotion)
            {
                DispatcherOperation dispatcher = ViewModel.Dispatcher.BeginInvoke(
                    DispatcherPriority.Normal,
                    new Action(delegate ()
                   {
                        double curentZ = ViewModel.Transform.Value.OffsetZ;
                       if (MaxValueZ < curentZ)
                       {
                           if(route > 0)
                           route = route * -1;
                       }
                       else if (MinValueZ > curentZ)
                       {
                           if (route < 0)
                               route = route * -1;
                       }
                        ViewModel.Transform = new TranslateTransform3D(
                                vector.X,
                                vector.Y,
                                curentZ + route
                                );
                   }));
                Thread.Sleep(delay);
            }
            return;
        }

    }
}