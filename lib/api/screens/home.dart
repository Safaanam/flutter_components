import 'package:flutter/material.dart';
import 'package:flutter_components/api/components/anyToAny.dart';
import 'package:flutter_components/api/components/usdToAny.dart';
import 'package:flutter_components/api/functions/fetch_rates.dart';
import 'package:flutter_components/api/models/pair_conversions.dart';
import 'package:flutter_components/api/models/rates_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  //Initial Variables
  late Future<RatesModel> result;
  late Future<PairConv> converted;
  final formkey = GlobalKey<FormState>();


  //Getting RatesModel and All Currencies
  @override
  void initState() {
    super.initState();
    setState(() {
      result = fetchrates();
      converted = fetchcurrencies();
    });
  }


  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(appBar: AppBar(title: const Text('Home Page'),),
      body: Container(
        height: h,
        width: w,
        padding: const EdgeInsets.all(10),
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/currency.png'),
                fit: BoxFit.cover)),
        child: SingleChildScrollView(
          child: Form(
            key: formkey,
            child: FutureBuilder<RatesModel>(
              future: result,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(child: CircularProgressIndicator());
                }
                return Center(
                  child: FutureBuilder<PairConv>(
                      future: converted,
                      builder: (context, currSnapshot) {
                        if (currSnapshot.connectionState ==
                            ConnectionState.waiting) {
                          return const Center(child: CircularProgressIndicator());
                        }
                        return Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            UsdToAny(
                              currencies: currSnapshot.data!.conversionRate  ,
                              rates: snapshot.data!.conversionRates,
                            ),
                            AnyToAny(
                              currencies: currSnapshot.data!.conversionRate,
                              rates: snapshot.data!.conversionRates,
                            ),
                          ],
                        );
                      }),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
