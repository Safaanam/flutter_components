import 'package:flutter_components/api/models/rates_model.dart';
import 'package:flutter_components/api/utils/keys.dart';
import 'package:http/http.dart' as http;

Future<RatesModel> fetchrates() async {
  var response = await http.get(Uri.parse(
      baseUrl + key + '/latest/USD'));
  final result = ratesModelFromJson(response.body);
  return result;
}

String convertusd(Map exchangeRates, String usd, String currency) {
  String output =
  ((exchangeRates[currency] * double.parse(usd)).toStringAsFixed(2))
      .toString();
  return output;
}

String convertany(Map exchangeRates, String amount, String currencybase,
    String currencyfinal) {
  String output = (double.parse(amount) /
      exchangeRates[currencybase] *
      exchangeRates[currencyfinal])
      .toStringAsFixed(2)
      .toString();

  return output;
}

