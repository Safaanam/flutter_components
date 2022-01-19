import 'package:flutter/material.dart';
import 'package:flutter_components/encrypt_package/encyrpt_data.dart';

class EncryptionUI extends StatefulWidget {
  const EncryptionUI({Key? key}) : super(key: key);

  @override
  _EncryptionUIState createState() => _EncryptionUIState();
}

class _EncryptionUIState extends State<EncryptionUI> {
  TextEditingController? _controller1 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amberAccent[100],
      appBar: AppBar(
        title: const Text("Encrypt and Decrypt Data"),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(top:10,bottom: 10),
          child: _buildAESBody(),
        ),
      ),
    );
  }

  Widget _buildAESBody() {
    return Container(
      height: 280,
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.only(left: 10,right: 10),
      child: Card(
        elevation: 2,
        child:  Container(
          padding: const EdgeInsets.only(left: 15,right: 15,top:
          15,bottom: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextField(
                controller: _controller1,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter Text',
                ),
              ),
              const SizedBox(height: 30),
              Text("EncryptText : ${EncryptData.encrypted!=null?EncryptData.encrypted?.base64:''}",
                maxLines: 2,
                style:const TextStyle(
                    color: Colors.black,
                    fontSize: 16
                ),
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 10,),
              Expanded(
                child: Text("DecryptText : ${EncryptData.decrypted!=null?EncryptData.decrypted:''}",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style:const TextStyle(
                        color: Colors.black,
                        fontSize: 16
                    )
                ),
              ),
              const SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blue, // background
                      onPrimary: Colors.white,
                    ),
                    onPressed: () {
                      setState(() {
                        EncryptData.encryptAES(_controller1!.text);
                      });
                    },
                    child: const Text('Encryption'),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blue, // background
                      onPrimary: Colors.white,
                    ),
                    onPressed: () {
                      setState(() {
                        EncryptData.decryptAES(_controller1!.text);
                      });
                    },
                    child: const Text('Decryption'),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

}
