using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace CookBook
{
    public partial class MainWindow : Window
    {
        public RecipeViewModel ViewModel { get; set; }

        public MainWindow()
        {
            ViewModel = new RecipeViewModel();
            InitializeComponent();
        }
    }
}
