import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:crypto/crypto.dart';
import 'package:flutter/services.dart';
import 'package:flutter_components/crypto_hashing/setting_list.dart';

enum Algorithm {
  SHA1,
  SHA224,
  SHA256,
  SHA384,
  SHA512,
  SHA512224,
  SHA512256,
  MD5
}

class crypto extends StatefulWidget {
  const crypto({Key? key}) : super(key: key);

  @override
  _cryptoState createState() => _cryptoState();
}

class _cryptoState extends State<crypto> {
  final String _secret = 'This is a secret';
  final String _key = 'p@ssw0rd';
  bool _withHmac = false;

  final _secretController = TextEditingController();
  final _keyController = TextEditingController();

  final Map<Algorithm, String> _algorithmMap = {
    Algorithm.SHA1: 'SHA-1',
    Algorithm.SHA224: 'SHA-224',
    Algorithm.SHA256: 'SHA-256',
    Algorithm.SHA384: 'SHA-384',
    Algorithm.SHA512: 'SHA-512',
    Algorithm.SHA512224: 'SHA-512224',
    Algorithm.SHA512256: 'SHA-512256',
    Algorithm.MD5: 'MD5'
  };

  @override
  void initState() {
    _secretController.text = _secret;
    _keyController.text = _key;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("crypto hashing"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Stack(
            children: [
              SettingList(
                children: <Widget>[
                  Align(
                    alignment: Alignment.centerLeft,
                    heightFactor: 1.5,
                    child: Text('Sentence',
                        style: Theme.of(context).textTheme.headline6),
                  ),
                  TextField(
                    cursorColor: Theme.of(context).primaryColor,
                    decoration: InputDecoration(
                      border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(4))),
                      hintText: 'Type something',
                      focusColor: Theme.of(context).primaryColor,
                      hoverColor: Theme.of(context).colorScheme.secondary.withAlpha(50),
                      filled: true,
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Theme.of(context).primaryColor)),
                    ),
                    controller: _secretController,
                    onChanged: (value) => {
                      setState(() {}),
                    },
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  CheckboxListTile(
                    title: const Text("With HMAC"),
                    value: _withHmac,
                    onChanged: (newValue) {
                      setState(() {
                        _withHmac = newValue!;
                      });
                    },
                    controlAffinity: ListTileControlAffinity.leading,
                  ),
                  if (_withHmac)
                    Align(
                      alignment: Alignment.centerLeft,
                      heightFactor: 1.5,
                      child: Text('Key',
                          style: Theme.of(context).textTheme.headline6),
                    ),
                  if (_withHmac)
                    TextField(
                      cursorColor: Theme.of(context).primaryColor,
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(4))),
                        hintText: 'Type something',
                        focusColor: Theme.of(context).primaryColor,
                        hoverColor: Theme.of(context).colorScheme.secondary.withAlpha(50),
                        filled: true,
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Theme.of(context).primaryColor)),
                      ),
                      controller: _keyController,
                      onChanged: (value) => {
                        setState(() {}),
                      },
                    ),
                  const SizedBox(
                    height: 32,
                  ),
                  Column(
                    children: [
                      for (MapEntry algorithm in _algorithmMap.entries)
                        SizedBox(
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6.0),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ListTile(
                                title: Text(_withHmac
                                    ? 'HMAC + ' + algorithm.value!
                                    : algorithm.value!),
                                subtitle:
                                    Text(_hashValue(algorithm.key).toString()),
                                trailing: IconButton(
                                  icon: const Icon(Icons.copy),
                                  tooltip: 'copy hash value',
                                  onPressed: () {
                                    Clipboard.setData(ClipboardData(
                                        text: _hashValue(algorithm.key)
                                            .toString()));
                                    final snackBar = SnackBar(
                                        content: Text(
                                            'Copied ${_hashValue(algorithm.key).toString()} to clipboard'),
                                        backgroundColor:
                                            Theme.of(context).primaryColor);
                                    ScaffoldMessenger.of(context)
                                        .showSnackBar(snackBar);
                                  },
                                ),
                              ),
                            ),
                          ),
                        ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Digest _hashValue(Algorithm algorithm) {
    var bytes = utf8.encode(_secretController.text); // data being hashed
    var key = utf8.encode(_keyController.text); // data being hashed
    switch (algorithm) {
      case Algorithm.SHA1:
        return _withHmac ? Hmac(sha1, key).convert(bytes) : sha1.convert(bytes);
      case Algorithm.SHA224:
        return _withHmac
            ? Hmac(sha224, key).convert(bytes)
            : sha224.convert(bytes);
      case Algorithm.SHA256:
        return _withHmac
            ? Hmac(sha256, key).convert(bytes)
            : sha256.convert(bytes);
      case Algorithm.SHA384:
        return _withHmac
            ? Hmac(sha384, key).convert(bytes)
            : sha384.convert(bytes);
      case Algorithm.SHA512:
        return _withHmac
            ? Hmac(sha512, key).convert(bytes)
            : sha512.convert(bytes);
      case Algorithm.SHA512224:
        return _withHmac
            ? Hmac(sha512224, key).convert(bytes)
            : sha512224.convert(bytes);
      case Algorithm.SHA512256:
        return _withHmac
            ? Hmac(sha512256, key).convert(bytes)
            : sha512256.convert(bytes);
      case Algorithm.MD5:
        return _withHmac ? Hmac(md5, key).convert(bytes) : md5.convert(bytes);
      default:
        return Digest(bytes);
    }
  }
}
