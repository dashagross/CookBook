using System;

namespace CookBook
{
    public class TestRecipe
    {
        public string Name { get; set; }

        public TimeSpan Duration { get; set; }

        public double EnergyValue { get; set; }

        public double Protein { get; set; }

        public double Fats { get; set; }

        public double Carbs { get; set; }

        public string Ingredient { get; set; }

        public string ConciseDescription { get; set; }
    }
}
