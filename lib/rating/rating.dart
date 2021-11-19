import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Rating extends StatefulWidget {
  const Rating({Key? key}) : super(key: key);

  @override
  _RatingState createState() => _RatingState();
}

class _RatingState extends State<Rating> {
  double rating = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ratings"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RatingBar.builder(
              minRating: 1,
              itemBuilder: (context, _) => const Icon(Icons.star, color: Colors.amber,),
              onRatingUpdate: (rating) => setState(() {this.rating = rating;}),
              updateOnDrag: true,
            ),
            const SizedBox(height: 10,),
            Text('Rating: $rating'),

          ],
        )
      ),
    );
  }
}
