using System;
using System.Windows;
using System.Windows.Input;

namespace Task1
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }

    }

    public class ItemMenu
    {
        public string Title { get; set; }
        public ICommand FunctionName { get; set; }
    }

    public class PopupEx : System.Windows.Controls.Primitives.Popup
    {
        protected override void OnOpened(EventArgs e)
        {
            var friend = this.PlacementTarget;
            friend.QueryCursor += friend_QueryCursor;

            base.OnOpened(e);
        }

        protected override void OnClosed(EventArgs e)
        {
            var friend = this.PlacementTarget;
            friend.QueryCursor -= friend_QueryCursor;

            base.OnClosed(e);
        }

        private void friend_QueryCursor(object sender, System.Windows.Input.QueryCursorEventArgs e)
        {
            this.HorizontalOffset += +0.1;
            this.HorizontalOffset += -0.1;
        }
    }
}
