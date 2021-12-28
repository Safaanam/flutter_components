import 'package:flutter/material.dart';
import 'package:money_converter/Currency.dart';
import 'package:money_converter/money_converter.dart';

/// using the package money_converter from pub.dev

class CurrencyConversion extends StatefulWidget {
  const CurrencyConversion({Key? key}) : super(key: key);

  @override
  _CurrencyConversionState createState() => _CurrencyConversionState();
}

class _CurrencyConversionState extends State<CurrencyConversion> {
  String usdToInr = '0';

  // call function to convert
  Future<String> getAmounts() async {
    var usdConvert = await MoneyConverter.convert(
        Currency(Currency.USD, amount: 1), Currency(Currency.INR));
    usdToInr = usdConvert.toString();
    return usdToInr;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Currency Conversion"),
      ),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:  [
              const SizedBox(height: 15,),
              const Text("Conversion from USD to INR: ",
              style: TextStyle(fontSize: 25,
                  fontWeight: FontWeight.bold),),
              const SizedBox(height: 15,),
               FutureBuilder <String>(
                 future: getAmounts(),
                   builder: (BuildContext context, AsyncSnapshot<String> snapshot)
                   {
                     if(snapshot.connectionState == ConnectionState.waiting){
                       return  const CircularProgressIndicator();
                     }else{
                       if (snapshot.hasError) {
                         return Text('Error: ${snapshot.error}');
                       } else {
                         return Text('${snapshot.data}',
                           style: const TextStyle(fontSize: 25,
                               fontWeight: FontWeight.bold),);
                       }
                     }
                   }
               ),
            ],
          )
      ),
    );
  }
}
