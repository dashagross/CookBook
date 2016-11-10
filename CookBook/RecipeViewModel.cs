using System;
using System.Collections.ObjectModel;

namespace CookBook
{
    public class RecipeViewModel
    {
        private ObservableCollection<Recipe> m_Recipes;
        public ObservableCollection<Recipe> Recipes
        {
            get { return m_Recipes; }
            set { m_Recipes = value; }
        }

        public RecipeViewModel()
        {
            Recipes = new ObservableCollection<Recipe>()
            {
                /*new Recipe
                {
                    Name = "Блины",
                    Duration = new TimeSpan(0, 30, 0),
                    EnergyValue = 300,
                    Protein = 10,
                    Fats = 10,
                    Carbs = 25,
                    Ingredient = "Яйцо куриное, Мука, Молоко",
                    ConciseDescription = "Тонкие нежирные блинчики."
                },
                new Recipe
                {
                    Name = "Летний салат",
                    Duration = new TimeSpan(0, 15, 0),
                    EnergyValue = 100,
                    Protein = 5,
                    Fats = 0,
                    Carbs = 5,
                    Ingredient = "Помидоры розовые, Огурцы тепличные, Перец болгарский",
                    ConciseDescription = "Быстрый и вкусный салат, хорошо подходит к жаренному мясу."
                },
                new Recipe
                {
                    Name = "Гуляш из говядины",
                    Duration = new TimeSpan(1, 30, 0),
                    EnergyValue = 200,
                    Protein = 25,
                    Fats = 5,
                    Carbs = 7,
                    Ingredient = "Говядина, Лук репчатый, Мука пшеничная, Томатная паста, Соль, Чеснок",
                    ConciseDescription = "Отличное второе блюдо, очень простое в приготовлении, можно подавать с пастой или рисом."
                }*/
            };
        }
    }
}
