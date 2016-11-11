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
        public RecipeViewModel RecipeViewModel { get; set; }

        public ProductViewModel ProductViewModel { get; set; }

        public MainWindow()
        {
            RecipeViewModel = new RecipeViewModel();
            ProductViewModel = new ProductViewModel();
            InitializeComponent();
        }
    }
}
