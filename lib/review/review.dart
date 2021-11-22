import 'package:flutter/material.dart';

class Review extends StatefulWidget {
  const Review({Key? key}) : super(key: key);

  @override
  _ReviewState createState() => _ReviewState();
}

class _ReviewState extends State<Review> {
  String comment = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Review"),
      ),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10,right: 10),
                child: TextFormField(
                  maxLines: 3,
                  maxLength: 100,
                  onChanged: (comment) => setState(() => this.comment = comment),
                  decoration: InputDecoration(
                    hintText: 'Write Comment...',
                    border: const OutlineInputBorder(),
                    counterText: '${comment.length.toString()}/100 character(s)'
                  ),
                  ),
                ),
              ElevatedButton(onPressed: () {print("comment: $comment");},
                  child: const Text("Submit"))
            ],
          ),
      ),
    );
  }
}
