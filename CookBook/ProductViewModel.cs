using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CookBook
{
    public class ProductViewModel
    {
        private ObservableCollection<TestProduct> m_Products;
        public ObservableCollection<TestProduct> Products
        {
            get { return m_Products; }
            set { m_Products = value; }
        }

        public ProductViewModel()
        {
            Products = new ObservableCollection<TestProduct>()
            {
                new TestProduct
                {
                    Name = "Молоко 1,5%",
                    Type = "Молочные продукты",
                    EnergyValue = 150,
                    Protein = 10,
                    Fats = 5,
                    Carbs = 5
                },
                new TestProduct
                {
                    Name = "Яблоки Семеренко",
                    Type = "Фрукты",
                    EnergyValue = 100,
                    Protein = 5,
                    Fats = 2,
                    Carbs = 7
                },
                new TestProduct
                {
                    Name = "Курица филе грудки",
                    Type = "Птица",
                    EnergyValue = 70,
                    Protein = 25,
                    Fats = 0,
                    Carbs = 0
                },
                new TestProduct
                {
                    Name = "Вино белое сухое",
                    Type = "Алкоголь",
                    EnergyValue = 115,
                    Protein = 0,
                    Fats = 0,
                    Carbs = 7
                }
            };

            /*
             * <CheckBox  Content="Meat And Fish"/>
                            <CheckBox  Content="Milk Goods"/>
                            <CheckBox  Content="Vegetables"/>
                            <CheckBox  Content="Fruits"/>
                            <CheckBox  Content="Spices"/>
                            <CheckBox  Content="Cereals"/>
                            <CheckBox  Content="Eggs"/>
                            <CheckBox  Content="Candies"/>
                            <CheckBox  Content="Groceries"/>
                            <CheckBox  Content="Alchohol"/>
             */
        }
    }
}
