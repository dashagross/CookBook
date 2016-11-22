using PropertyChanged;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CookBook.Model
{

    [ImplementPropertyChanged]
    class Recipe
    {

        public string Title { get; set; }
        public TimeSpan CookingTime { get; set; }
        public int PortionCount { get; set; }
        public string CookingMethod { get; set; }

    }
}
