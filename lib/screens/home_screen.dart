import 'package:flutter/material.dart';
import '../models/recipe.dart';
import 'details_screen.dart';

class HomeScreen extends StatelessWidget {
  
  final List<Recipe> recipes = [
    Recipe(
      name: "Spinach Dip",
      ingredients: "Spinach, cream cheese, sour cream, garlic, mozzarella, Parmesan cheese",
      instructions: "1. Preheat oven to 375°F\n2. Mix all ingredients in a bowl\n3. Transfer to a baking dish and bake for 20 minutes\n4. Serve warm with chips or bread",
    ),
    Recipe(
      name: "Caesar Salad",
      ingredients: "Romaine lettuce, croutons, Parmesan cheese, Caesar dressing, chicken (optional)",
      instructions: "1. Chop romaine lettuce\n2. Add croutons and Parmesan cheese\n3. Toss with Caesar dressing\n4. Top with grilled chicken if desired",
    ),
    Recipe(
      name: "Loaded Potato Soup",
      ingredients: "Potatoes, bacon, cheddar cheese, green onions, heavy cream, butter, chicken broth",
      instructions: "1. Cook bacon until crispy and set aside\n2. Sauté onions in butter, then add chicken broth and potatoes\n3. Simmer until potatoes are tender\n4. Stir in cream, cheese, and bacon\n5. Serve topped with green onions and extra cheese",
    ),
    Recipe(
      name: "Teriyaki Glazed Salmon",
      ingredients: "Salmon fillets, soy sauce, honey, garlic, ginger, sesame seeds",
      instructions: "1. Mix soy sauce, honey, garlic, and ginger for marinade\n2. Marinate salmon for 30 minutes\n3. Sear salmon in a pan or bake at 400°F for 12 minutes\n4. Garnish with sesame seeds and serve",
    ),
    Recipe(
      name: "Garlic Mashed Potatoes",
      ingredients: "Potatoes, garlic, butter, milk, salt, pepper",
      instructions: "1. Boil potatoes until soft\n2. Sauté garlic in butter\n3. Mash potatoes with garlic, butter, and milk\n4. Season with salt and pepper",
    ),
    Recipe(
      name: "Lemon Zest Grilled Asparagus",
      ingredients: "Asparagus, olive oil, lemon zest, salt, pepper",
      instructions: "1. Toss asparagus with olive oil, lemon zest, salt, and pepper\n2. Grill over medium heat for 5-7 minutes, turning occasionally\n3. Serve hot",
    ),
    Recipe(
      name: "Red Velvet Cheesecake",
      ingredients: "Cream cheese, sugar, cocoa powder, red food coloring, eggs, graham cracker crust",
      instructions: "1. Preheat oven to 325°F\n2. Beat cream cheese, sugar, cocoa, and eggs\n3. Add red food coloring and mix\n4. Pour into crust and bake for 45 minutes\n5. Chill before serving",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("My Recipe Book")),
      body: ListView.builder(
        itemCount: recipes.length,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: ListTile(
              title: Text(recipes[index].name, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailsScreen(recipe: recipes[index]),
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
