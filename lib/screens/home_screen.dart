import 'package:flutter/material.dart';
import '../models/my_recipe.dart';
import 'details_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<MyRecipe> recipes = [
      MyRecipe(
        name: 'Spinach Dip',
        ingredients: [
          '1 cup fresh spinach, chopped',
          '1/2 cup cream cheese',
          '1/2 cup sour cream',
          '1/4 cup grated Parmesan cheese',
          '1 clove garlic, minced',
          'Salt and pepper to taste',
        ],
        instructions: 'Mix all ingredients together. Heat in a saucepan over medium heat until melted and creamy. Serve warm with chips or bread.',
      ),
      MyRecipe(
        name: 'Caesar Salad',
        ingredients: [
          '1 head romaine lettuce, chopped',
          '1/4 cup grated Parmesan cheese',
          '1/2 cup Caesar dressing',
          '1/2 cup croutons',
          '1 tsp black pepper',
        ],
        instructions: 'Toss romaine lettuce with Caesar dressing. Add Parmesan cheese, croutons, and black pepper. Serve immediately.',
      ),
      MyRecipe(
        name: 'Loaded Potato Soup',
        ingredients: [
          '4 large potatoes, diced',
          '4 cups chicken broth',
          '1 cup heavy cream',
          '1/2 cup cheddar cheese, shredded',
          '4 slices bacon, cooked and crumbled',
          'Salt and pepper to taste',
        ],
        instructions: 'Boil potatoes in chicken broth until tender. Blend slightly for a creamy texture. Stir in cream, cheese, and bacon. Simmer for 5 minutes and serve warm.',
      ),
      MyRecipe(
        name: 'Teriyaki Glazed Salmon',
        ingredients: [
          '2 salmon fillets',
          '1/4 cup teriyaki sauce',
          '1 tbsp honey',
          '1 tsp minced ginger',
          '1 tsp sesame oil',
          '1/2 tsp black pepper',
        ],
        instructions: 'Marinate salmon in teriyaki sauce, honey, ginger, and sesame oil for 30 minutes. Grill or bake at 375°F for 15-20 minutes until cooked through.',
      ),
      MyRecipe(
        name: 'Garlic Mashed Potatoes',
        ingredients: [
          '4 large potatoes, peeled and diced',
          '4 cloves garlic, minced',
          '1/2 cup milk',
          '1/4 cup butter',
          'Salt and pepper to taste',
        ],
        instructions: 'Boil potatoes and garlic until tender. Drain and mash with butter and milk until creamy. Add salt and pepper to taste.',
      ),
      MyRecipe(
        name: 'Lemon Zest Grilled Asparagus',
        ingredients: [
          '1 bunch asparagus',
          '1 tbsp olive oil',
          '1 tsp lemon zest',
          '1/2 tsp salt',
          '1/4 tsp black pepper',
        ],
        instructions: 'Toss asparagus with olive oil, lemon zest, salt, and pepper. Grill for 5-7 minutes until tender.',
      ),
      MyRecipe(
        name: 'Red Velvet Cheesecake',
        ingredients: [
          '1 1/2 cups crushed chocolate cookies',
          '3 tbsp melted butter',
          '16 oz cream cheese, softened',
          '1 cup sugar',
          '2 eggs',
          '1/4 cup cocoa powder',
          '1 tsp vanilla extract',
          '1 tbsp red food coloring',
        ],
        instructions: 'Mix crushed cookies and melted butter, press into a baking dish. Beat cream cheese, sugar, eggs, cocoa, vanilla, and food coloring until smooth. Pour over crust and bake at 350°F for 45 minutes.',
      ),
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Recipe Book')),
      body: ListView.builder(
        itemCount: recipes.length,
        itemBuilder: (context, index) {
          final recipe = recipes[index];
          return Card(
            margin: const EdgeInsets.all(10),
            child: ListTile(
              title: Text(recipe.name, style: const TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text('${recipe.ingredients.length} ingredients'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailsScreen(recipe: recipe),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
