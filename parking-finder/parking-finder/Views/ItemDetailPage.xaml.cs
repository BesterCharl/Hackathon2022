using parking_finder.ViewModels;
using System.ComponentModel;
using Xamarin.Forms;

namespace parking_finder.Views
{
    public partial class ItemDetailPage : ContentPage
    {
        public ItemDetailPage()
        {
            InitializeComponent();
            BindingContext = new ItemDetailViewModel();
        }
    }
}