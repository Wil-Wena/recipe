import 'package:flutter/material.dart';
import 'package:recipe/model/recipe.dart';

class RecipeDetail extends StatefulWidget {
  final Recipe recipe;
  RecipeDetail({Key? key, required this.recipe}) : super(key: key);

  @override
  _RecipeDetailState createState() {
    // TODO: implement createState
    return _RecipeDetailState();
  }
}

int _slideVal = 1;

class _RecipeDetailState extends State<RecipeDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.recipe.label)),
      body: SafeArea(
          child: Column(
        children: [
          SizedBox(
            height: 300,
            width: double.infinity,
            child: Image(
              image: AssetImage(widget.recipe.foodImg),
            ),
          ),
          const SizedBox(
            height: 4,
          ),
          Text(
            widget.recipe.label,
            style: const TextStyle(fontSize: 18),
          ),
          Expanded(
              child: ListView.builder(
            padding: EdgeInsets.all(7.0),
            itemCount: widget.recipe.ingredients.length,
            itemBuilder: (BuildContext context, int index) {
              final ingredient = widget.recipe.ingredients[index];
              return Text(
                  '${ingredient.quantity * _slideVal} ${ingredient.measure} ${ingredient.name}');
            },
          )),
          Slider(
            min: 1,
            max: 10,
            divisions: 10,
            label: '${_slideVal * widget.recipe.servings} servings',
            value: _slideVal.toDouble(),
            onChanged: (newValue) {
              setState(() {
                _slideVal = newValue.round();
              });
            },
            activeColor: Colors.green,
            inactiveColor: Colors.grey,
          )
        ],
      )),
    );
  }
}
