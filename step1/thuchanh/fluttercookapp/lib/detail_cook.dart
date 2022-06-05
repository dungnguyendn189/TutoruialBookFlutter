import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:fluttercookapp/recipe.dart';

class DetailCook extends StatefulWidget {
  const DetailCook({Key? key, required this.recipe}) : super(key: key);
  final Recipe recipe;
  @override
  State<DetailCook> createState() => _detailCookState();
}

class _detailCookState extends State<DetailCook> {
  int _currentValue = 1;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.recipe.label),
        ),
        body: Column(
          children: [
            Container(
              height: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(widget.recipe.imageUrl),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView.builder(
                    itemCount: widget.recipe.ingredients.length,
                    itemBuilder: (context, index) {
                      final listingredients = widget.recipe.ingredients;
                      return Text(
                        '${listingredients[index].measure} ${listingredients[index].name}, ${listingredients[index].quantity * _currentValue}',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      );
                    }),
              ),
            ),
            Slider(
                value: _currentValue.toDouble(),
                min: 1,
                max: 10,
                divisions: 9,
                label: '${_currentValue * widget.recipe.servings} Serving',
                onChanged: (valueslide) {
                  setState(() {
                    _currentValue = valueslide.round();
                  });
                }),
          ],
        ),
      ),
    );
  }
}
