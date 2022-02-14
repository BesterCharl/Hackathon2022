using parking_finder.ViewModels;
using parking_finder.Views;
using System;
using System.Collections.Generic;
using Xamarin.Forms;

namespace parking_finder
{
    public partial class AppShell : Xamarin.Forms.Shell
    {
        public AppShell()
        {
            InitializeComponent();
            Routing.RegisterRoute(nameof(ItemDetailPage), typeof(ItemDetailPage));
            Routing.RegisterRoute(nameof(NewItemPage), typeof(NewItemPage));
        }

    }
}
