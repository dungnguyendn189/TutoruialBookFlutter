import 'package:flutter/material.dart';
import 'package:fluttercookapp/recipe.dart';
import 'detail_cook.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Cook App'),
        ),
        body: SafeArea(
          child: ListView.builder(
            itemCount: Recipe.sample.length,
            itemBuilder: ((context, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailCook(
                        recipe: Recipe.sample[index],
                      ),
                    ),
                  );
                },
                child: cookAppCar(Recipe.sample[index]),
              );
            }),
          ),
        ),
      ),
    );
  }

  Widget cookAppCar(Recipe recipe) {
    return Padding(
      padding: EdgeInsets.only(top: 20, left: 20, right: 20),
      child: Column(
        children: [
          Container(
            height: 300,
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(recipe.imageUrl),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 3,
                    blurRadius: 7,
                    offset: Offset(0, 1),
                  ),
                ]),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            recipe.label,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ],
      ),
    );
  }
}
