﻿using PropertyChanged;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CookBook.Model
{

    [ImplementPropertyChanged]
    public class Product
    {

        public string Name { get; set; }
        public double EnergyValue { get; set; }
        public double Protein { get; set; }
        public double Fats { get; set; }
        public double Carbs { get; set; }

    }
}
