using PropertyChanged;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CookBook.Model
{
    [ImplementPropertyChanged]
    public class Ingredient
    {
        public double Amount { get; set; }
    }
}
