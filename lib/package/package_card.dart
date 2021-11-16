import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CardPage extends StatelessWidget {
  const CardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[500],
      appBar: AppBar(
        title: const Text("Cards page"),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: AlwaysScrollableScrollPhysics(),
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              CreditCardWidget(
                cardNumber: "9324 5643 8727 0962",
                cardBgColor: const Color(0xFFDA4453),
                obscureCardNumber: true,
                obscureCardCvv: true,
                labelCardHolder: 'CARD HOLDER',
                labelExpiredDate: 'MM/YY',
                expiryDate: "08/2024",
                cardHolderName: "SAFA ANAM",
                cvvCode: "001",
                cardType: CardType.mastercard,
                showBackView: false,
                isHolderNameVisible: true,
                onCreditCardWidgetChange: (creditCardBrand) {},
              ),
              CreditCardWidget(
                cardNumber: "6624 4343 5437 0123",
                obscureCardNumber: true,
                obscureCardCvv: true,
                labelCardHolder: 'CARD HOLDER',
                labelExpiredDate: 'MM/YY',
                expiryDate: "03/2023",
                cardHolderName: "SAFA ANAM",
                cvvCode: "021",
                cardType: CardType.visa,
                showBackView: false,
                isHolderNameVisible: true,
                onCreditCardWidgetChange: (creditCardBrand) {},
                glassmorphismConfig: Glassmorphism.defaultConfig(),
              ),
              CreditCardWidget(
                cardNumber: "4455 6923 5912 3452",
                obscureCardNumber: true,
                obscureCardCvv: true,
                labelCardHolder: 'CARD HOLDER',
                labelExpiredDate: 'MM/YY',
                expiryDate: "05/2028",
                cardHolderName: "SAFA ANAM",
                cvvCode: "927",
                cardType: CardType.americanExpress,
                showBackView: false,
                isHolderNameVisible: true,
                onCreditCardWidgetChange: (creditCardBrand) {},
                glassmorphismConfig: Glassmorphism(
                  blurX: 10.0,
                  blurY: 10.0,
                  gradient: const LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: <Color>[
                      Color(0xFF355C7D),
                      Color(0xFF6C5B7B),
                      Color(0xFFC06C84)
                    ],
                  ),
                ),
              ),
              CreditCardWidget(
                cardNumber: "1234 5678 9101 1121",
                obscureCardNumber: true,
                obscureCardCvv: true,
                labelCardHolder: 'CARD HOLDER',
                labelExpiredDate: 'MM/YY',
                expiryDate: "03/2022",
                cardHolderName: "SAFA ANAM",
                cvvCode: "496",
                cardType: CardType.discover,
                showBackView: false,
                isHolderNameVisible: true,
                onCreditCardWidgetChange: (creditCardBrand) {},
                glassmorphismConfig: Glassmorphism(
                  blurX: 20.0,
                  blurY: 20.0,
                  gradient: const LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: <Color>[
                      Color(0xFFfdeff9),
                      Color(0xFFec38bc),
                      Color(0xFF7303c0),
                      Color(0xFF03001e)
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
