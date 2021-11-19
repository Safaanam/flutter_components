import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class AppRating extends StatefulWidget {
  const AppRating({Key? key}) : super(key: key);

  @override
  _AppRatingState createState() => _AppRatingState();
}

class _AppRatingState extends State<AppRating> {
  double rating = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("App Rating"),
      ),
      body: Center(
        child: TextButton(
          child: const Text("click to show dialog"),
          onPressed: () => showRating(),
        ),
      ),
    );
  }

  Widget buildRating() => RatingBar.builder(
        minRating: 1,
        itemBuilder: (context, _) => const Icon(
          Icons.star,
          color: Colors.amber,
        ),
        onRatingUpdate: (rating) => setState(() {
          this.rating = rating;
        }),
        updateOnDrag: true,
      );

  void showRating() => showDialog(
      context: context,
      builder: (context) => AlertDialog(
            title: const Text("Rate This App"),
            content: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  "Please leave a star rating",
                  style: TextStyle(fontSize: 20),
                ),
                const SizedBox(
                  height: 32,
                ),
                buildRating(),
              ],
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text(
                  "OK",
                  style: TextStyle(fontSize: 20),
                ),
              )
            ],
          ));
}
