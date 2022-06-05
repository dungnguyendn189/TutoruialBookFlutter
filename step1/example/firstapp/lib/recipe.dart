class Recipe {
  String label;
  String imageUrl;
  int servings;
  List<Ingredient> ingredients;
  Recipe(this.label, this.imageUrl, this.servings, this.ingredients);
  static List<Recipe> sample = [
    Recipe(
        'Spaghetti and Meatballs', 'assets/Spaghetti-and-Meatballs.jpeg', 4, [
      Ingredient(
        1,
        'box',
        'Spaghetti',
      ),
    ]),
    Recipe(
      'Tomato Soup',
      'assets/TomatoSoup.jpeg',
      2,
      [
        Ingredient(1, 'Can', 'Tomato Soup'),
      ],
    ),
    Recipe(
      'Grilled Cheese',
      'assets/Grilled Cheese.jpeg',
      24,
      [
        Ingredient(
          4,
          'cups',
          'flour',
        ),
        Ingredient(
          2,
          'cups',
          'sugar',
        ),
        Ingredient(
          0.5,
          'cups',
          'chocolate chips',
        ),
      ],
    ),
    Recipe('Chocolate Chip Cookies', 'assets/ChocolateChipCookies.jpeg', 1, [
      Ingredient(
        4,
        'oz',
        'nachos',
      ),
      Ingredient(
        3,
        'oz',
        'taco meat',
      ),
      Ingredient(
        0.5,
        'cup',
        'cheese',
      ),
      Ingredient(
        0.25,
        'cup',
        'chopped tomatoes',
      ),
    ]),
    Recipe('Taco Salad', 'assets/TacoSalad.jpeg', 1, [
      Ingredient(
        4,
        'oz',
        'nachos',
      ),
      Ingredient(
        3,
        'oz',
        'taco meat',
      ),
      Ingredient(
        0.5,
        'cup',
        'cheese',
      ),
      Ingredient(
        0.25,
        'cup',
        'chopped tomatoes',
      ),
    ]),
    Recipe(
      'Hawaiian Pizza',
      'assets/HawaiianPizza.jpeg',
      4,
      [
        Ingredient(
          1,
          'item',
          'pizza',
        ),
        Ingredient(
          1,
          'cup',
          'pineapple',
        ),
        Ingredient(
          8,
          'oz',
          'ham',
        ),
      ],
    ),
  ];
}

class Ingredient {
  double quantity;
  String measure;
  String name;
  Ingredient(
    this.quantity,
    this.name,
    this.measure,
  );
}
