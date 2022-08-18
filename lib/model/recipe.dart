class Recipe {
  int servings;
  List<Ingredient> ingredients;
  String label;
  String foodImg;
  Recipe(this.label, this.foodImg, this.servings, this.ingredients);
  static List<Recipe> samples = [
    Recipe(
      'Fufu with light soup',
      'assets/fufu.jpg',
      3,
      [Ingredient(1, 'bowl of', 'Fufu with light soup')],
    ),
    Recipe(
      'Gob3',
      'assets/gobe.jpg',
      10,
      [Ingredient(1, 'bowl of', 'Gob3')],
    ),
    Recipe(
      'Jollof',
      'assets/jollof.jpg',
      5,
      [Ingredient(1, 'plate of', 'Jollof')],
    ),
    Recipe(
      'Kenkey',
      'assets/kenkey.jpg',
      20,
      [Ingredient(1, 'balls of', 'Kenkey')],
    ),
    Recipe(
      'TZ',
      'assets/tz.jpg',
      3,
      [Ingredient(1, 'bowl of', 'TZ')],
    ),
    Recipe(
      'Waakye',
      'assets/waakye.jpg',
      100,
      [Ingredient(1, 'plate of', 'Waakye')],
    )
  ];
}

class Ingredient {
  double quantity;
  String measure;
  String name;
  Ingredient(this.quantity, this.measure, this.name);
}
