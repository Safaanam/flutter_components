import 'package:flutter/material.dart';
import 'package:flutter_components/feedback/utils.dart';

class ReachUs extends StatefulWidget {
  const ReachUs({Key? key}) : super(key: key);

  @override
  _ReachUsState createState() => _ReachUsState();
}

class _ReachUsState extends State<ReachUs> {

  TextEditingController t1 = TextEditingController();
  TextEditingController t2 = TextEditingController();
  String name = '';
  String message = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Reach Us"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              const Padding(
                padding:
                EdgeInsets.symmetric(vertical: 14.0, horizontal: 13),
                child: Text(
                  "Leave us a message, and we'll get in contact with you as soon as possible. ",
                  style: TextStyle(
                    fontSize: 17.5,
                    height: 1.3,
                  ),
                  textAlign: TextAlign.justify,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              ///name section
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextField(
                  onChanged: (val) {
                    if (val.isNotEmpty) name = val;
                  },
                  controller: t1,
                  decoration: InputDecoration(
                    fillColor: const Color(0xffe6e6e6),
                    filled: true,
                    contentPadding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                    hintText: 'Your name',
                    hintStyle: const TextStyle(
                        color: Colors.blueGrey,),
                    border: OutlineInputBorder(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(12),
                      ),
                      borderSide: BorderSide(color: Colors.grey.shade400),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(12),
                      ),
                      borderSide: BorderSide(color: Colors.grey.shade400),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(12),
                      ),
                      borderSide: BorderSide(color: Colors.grey.shade400),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.0001,
              ),
              ///message section
              Padding(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  onChanged: (val) {
                    if (val.isNotEmpty) message = val;
                  },
                  textAlign: TextAlign.start,
                  controller: t2,
                  decoration: InputDecoration(
                    fillColor: const Color(0xffe6e6e6),
                    filled: true,
                    contentPadding:
                    const EdgeInsets.symmetric(vertical: 35, horizontal: 20),
                    hintText: 'Your message',
                    hintStyle: const TextStyle(
                      color: Colors.blueGrey,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(17),
                      ),
                      borderSide: BorderSide(color: Colors.grey.shade400),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(17),
                      ),
                      borderSide: BorderSide(color: Colors.grey.shade400),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(17),
                      ),
                      borderSide: BorderSide(color: Colors.grey.shade400),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              ///submit
              Card( margin: const EdgeInsets.symmetric(horizontal: 10.0),
                color: Colors.green[300],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      t1.clear();
                      t2.clear();
                      Utils.openEmail(
                        toEmail: 'example123@gmail.com',
                        subject: name,
                        body: message,
                      );
                    });
                  },
                  child: ListTile(
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        const Center(
                            child: Icon(
                              Icons.send,
                              color: Colors.white,
                            )),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.03,
                        ),
                        const Center(
                            child: Text(
                              "Send",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.white,),
                            )),
                      ],
                    ),
                  ),
                ),
              ),
            ]
        ),
      ),
    );
  }
}
