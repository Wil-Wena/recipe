import 'package:flutter/material.dart';
import 'package:recipe/model/recipe.dart';
import 'package:recipe/pages/recipe_detail.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recipe'),
      ),
      body: ListView.builder(
        itemCount: Recipe.samples.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: (() {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return RecipeDetail(recipe: Recipe.samples[index]);
                  },
                ),
              );
            }),
            child: buildRecipeCard(Recipe.samples[index]),
          );
        },
      ),
    );
  }
}

Widget buildRecipeCard(Recipe recipe) {
  return Card(
    elevation: 8.0,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    child: Column(
      children: [
        Image(image: AssetImage(recipe.foodImg)),
        SizedBox(
          height: 14.0,
        ),
        Text(
          recipe.label,
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontFamily: 'Palatino',
              fontSize: 20),
        ),
      ],
    ),
  );
}
