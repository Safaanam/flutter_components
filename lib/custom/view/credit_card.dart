import 'package:flutter/material.dart';
import 'package:flutter_components/custom/widget/credit_card_widget.dart';

class CreditCardsPage extends StatelessWidget {
  const CreditCardsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Cards View"),),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const BuildCreditCard(
                  color: Color(0xFFeaafc8),
                  cardExpiration: "08/2022",
                  cardHolder: "SAFA ANAM",
                  cardNumber: "3546 7532 XXXX XXXX"),
              const SizedBox(
                height: 15,
              ),
              const BuildCreditCard(
                  color: Color(0xFFffd452),
                  cardExpiration: "05/2024",
                  cardHolder: "SAFA ANAM",
                  cardNumber: "9874 4785 XXXX XXXX"),
              const SizedBox(
                height: 15,
              ),
              const BuildCreditCard(
                  color: Color(0xFFFF416C),
                  cardExpiration: "09/2026",
                  cardHolder: "SAFA ANAM",
                  cardNumber: "4364 8925 XXXX XXXX"),
              buildAddCardButton(
                icon: const Icon(Icons.add),
                color: const Color(0xFF081603),
              )
            ],
          ),
        ),
      ),
    );
  }

  Container buildAddCardButton({
    required Icon icon,
    required Color color,
  }) {
    return Container(
      margin: const EdgeInsets.only(top: 24.0),
      alignment: Alignment.center,
      child: FloatingActionButton(
        elevation: 2.0,
        onPressed: () {
          print("Add a credit card");
        },
        backgroundColor: color,
        mini: false,
        child: icon,
      ),
    );
  }
}
