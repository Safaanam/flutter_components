class WorldCurrencies {
  late String currencyCode;
  late String currencyName;

  WorldCurrencies({
    required this.currencyCode,
    required this.currencyName
  });
}

final List<WorldCurrencies> allWorldCurrencies = [
  ///starting from A
  WorldCurrencies(currencyCode: 'AED', currencyName: 'United Arab Emirates Dirham'),
  WorldCurrencies(currencyCode: 'ALL', currencyName: "Albanian Lek"),
  WorldCurrencies(currencyCode: 'AMD', currencyName: "Armenian Dram"),
  WorldCurrencies(currencyCode: 'ANG', currencyName: "Netherlands Antillean Guilder"),
  WorldCurrencies(currencyCode: 'AOA', currencyName: 'Angolan Kwanza'),
  WorldCurrencies(currencyCode: "ARS", currencyName: "Argentine Peso"),
  WorldCurrencies(currencyCode: "AUD", currencyName: "Australian Dollar"),
  WorldCurrencies(currencyCode: "AWG", currencyName: "Aruban Florin"),
  WorldCurrencies(currencyCode: "AZN", currencyName: "Azerbaijani Manat"),
  ///starting from B
  WorldCurrencies(currencyCode: "BAM", currencyName: "Bosnia and Herzegovina Convertible Mark"),
  WorldCurrencies(currencyCode: "BBD", currencyName: "Barbados Dollar"),
  WorldCurrencies(currencyCode: "BDT", currencyName: "Bangladeshi Taka"),
  WorldCurrencies(currencyCode: "BGN", currencyName: "Bulgarian Lev"),
  WorldCurrencies(currencyCode: "BHD", currencyName: "Bahraini Dinar"),
  WorldCurrencies(currencyCode: "BIF", currencyName: "Burundian Franc"),
  WorldCurrencies(currencyCode: "BMD", currencyName: "Bermudian Dollar"),
  WorldCurrencies(currencyCode: "BND", currencyName: "Brunei Dollar"),
  WorldCurrencies(currencyCode: "BOB", currencyName: "Bolivian Boliviano"),
  WorldCurrencies(currencyCode: "BRL", currencyName: "Brazilian Real"),
  WorldCurrencies(currencyCode: "BSD", currencyName: "Bahamian Dollar"),
  WorldCurrencies(currencyCode: "BTN", currencyName: "Bhutanese Ngultrum"),
  WorldCurrencies(currencyCode: "BWP", currencyName: "Botswana Pula"),
  WorldCurrencies(currencyCode: "BYN", currencyName: "Belarusian Ruble"),
  WorldCurrencies(currencyCode: "BZD", currencyName: "Belize Dollar"),
  ///starting from C
  WorldCurrencies(currencyCode: "CAD", currencyName: "Canadian Dollar"),
  WorldCurrencies(currencyCode: "CDF", currencyName: "Congolese Franc"),
  WorldCurrencies(currencyCode: "CHF", currencyName: "Swiss Franc"),
  WorldCurrencies(currencyCode: "CLP", currencyName: "Chilean Peso"),
  WorldCurrencies(currencyCode: "CNY", currencyName: "Chinese Renminbi"),
  WorldCurrencies(currencyCode: "COP", currencyName: "Colombian Peso"),
  WorldCurrencies(currencyCode: "CRC", currencyName: "Costa Rican Colon"),
  WorldCurrencies(currencyCode: "CUC", currencyName: "Cuban Convertible Peso"),
  WorldCurrencies(currencyCode: "CUP", currencyName: "Cuban Peso"),
  WorldCurrencies(currencyCode: "CVE", currencyName: "Cape Verdean Escudo"),
  WorldCurrencies(currencyCode: "CZK", currencyName: "Czech Koruna"),
  ///starting from D
  WorldCurrencies(currencyCode: "DJF", currencyName: "Djiboutian Franc"),
  WorldCurrencies(currencyCode: "DKK", currencyName: "Danish Krone"),
  WorldCurrencies(currencyCode: "DOP", currencyName: "Dominican Peso"),
  WorldCurrencies(currencyCode: "DZD", currencyName: "Algerian Dinar"),
  ///starting from E
  WorldCurrencies(currencyCode: "EGP", currencyName: "Egyptian Pound"),
  WorldCurrencies(currencyCode: "ERN", currencyName: "Eritrean Nakfa"),
  WorldCurrencies(currencyCode: "ETB", currencyName: "Ethiopian Birr"),
  WorldCurrencies(currencyCode: "EUR", currencyName: "Euro"),
  ///starting from F
  WorldCurrencies(currencyCode: "FJD", currencyName: "Fiji Dollar"),
  WorldCurrencies(currencyCode: "FKP", currencyName: "Falkland Islands Pound"),
  WorldCurrencies(currencyCode: "FOK", currencyName: "Faroese Kr\u00f3na"),
  ///starting from G
  WorldCurrencies(currencyCode: "GBP", currencyName: "Pound Sterling"),
  WorldCurrencies(currencyCode: "GEL", currencyName: "Georgian Lari"),
  WorldCurrencies(currencyCode: "GGP", currencyName: "Guernsey Pound"),
  WorldCurrencies(currencyCode: "GHS", currencyName: "Ghanaian Cedi"),
  WorldCurrencies(currencyCode: "GIP", currencyName: "Gibraltar Pound"),
  WorldCurrencies(currencyCode: "GMD", currencyName: "Gambian Dalasi"),
  WorldCurrencies(currencyCode: "GNF", currencyName: "Guinean Franc"),
  WorldCurrencies(currencyCode: "GTQ", currencyName: "Guatemalan Quetzal"),
  WorldCurrencies(currencyCode: "GYD", currencyName: "Guyanese Dollar"),
  ///starting from H
  WorldCurrencies(currencyCode: "HKD", currencyName: "Hong Kong Dollar"),
  WorldCurrencies(currencyCode: "HNL", currencyName: "Honduran Lempira"),
  WorldCurrencies(currencyCode: "HRK", currencyName: "Croatian Kuna"),
  WorldCurrencies(currencyCode: "HTG", currencyName: "Haitian Gourde"),
  WorldCurrencies(currencyCode: "HUF", currencyName: "Hungarian Forint"),
  ///starting from I
  WorldCurrencies(currencyCode: "IDR", currencyName: "Indonesian Rupiah"),
  WorldCurrencies(currencyCode: "ILS", currencyName: "Israeli New Shekel"),
  WorldCurrencies(currencyCode: "IMP", currencyName: "Manx Pound"),
  WorldCurrencies(currencyCode: "INR", currencyName: "Indian Rupee"),
  WorldCurrencies(currencyCode: "IQD", currencyName: "Iraqi Dinar"),
  WorldCurrencies(currencyCode: "IRR", currencyName: "Iranian Rial"),
  WorldCurrencies(currencyCode: "ISK", currencyName: "Icelandic Kr\u00f3na"),
  ///starting from J
  WorldCurrencies(currencyCode: "JMD", currencyName: "Jamaican Dollar"),
  WorldCurrencies(currencyCode: "JOD", currencyName: "Jordanian Dinar"),
  WorldCurrencies(currencyCode: "JPY", currencyName: "Japanese Yen"),
  ///starting from K
  WorldCurrencies(currencyCode: "KES", currencyName: "Kenyan Shilling"),
  WorldCurrencies(currencyCode: "KGS", currencyName: "Kyrgyzstani Som"),
  WorldCurrencies(currencyCode: "KHR", currencyName: "Cambodian Riel"),
  WorldCurrencies(currencyCode: "KID", currencyName: "Kiribati Dollar"),
  WorldCurrencies(currencyCode: "KMF", currencyName: "Comorian Franc"),
  WorldCurrencies(currencyCode: "KRW", currencyName: "South Korean Won"),
  WorldCurrencies(currencyCode: "KWD", currencyName: "Kuwaiti Dinar"),
  WorldCurrencies(currencyCode: "KYD", currencyName: "Cayman Islands Dollar"),
  WorldCurrencies(currencyCode: "KZT", currencyName: "Kazakhstani Tenge"),
  ///starting from L
  WorldCurrencies(currencyCode: "LAK", currencyName: "Lao Kip"),
  WorldCurrencies(currencyCode: "LBP", currencyName: "Lebanese Pound"),
  WorldCurrencies(currencyCode: "LKR", currencyName: "Sri Lanka Rupee"),
  WorldCurrencies(currencyCode: "LRD", currencyName: "Liberian Dollar"),
  WorldCurrencies(currencyCode: "LSL", currencyName: "Lesotho Loti"),
  WorldCurrencies(currencyCode: "LYD", currencyName: "Libyan Dinar"),
  ///starting from M
  WorldCurrencies(currencyCode: "MAD", currencyName: "Moroccan Dirham"),
  WorldCurrencies(currencyCode: "MDL", currencyName: "Moldovan Leu"),
  WorldCurrencies(currencyCode: "MGA", currencyName: "Malagasy Ariary"),
  WorldCurrencies(currencyCode: "MKD", currencyName: "Macedonian Denar"),
  WorldCurrencies(currencyCode: "MMK", currencyName: "Burmese Kyat"),
  WorldCurrencies(currencyCode: "MNT", currencyName: "Mongolian T\u00f6gr\u00f6g"),
  WorldCurrencies(currencyCode: "MOP", currencyName: "Macanese Pataca"),
  WorldCurrencies(currencyCode: "MRU", currencyName: "Mauritanian Ouguiya"),
  WorldCurrencies(currencyCode: "MUR", currencyName: "Mauritian Rupee"),
  WorldCurrencies(currencyCode: "MVR", currencyName: "Maldivian Rufiyaa"),
  WorldCurrencies(currencyCode: "MWK", currencyName: "Malawian Kwacha"),
  WorldCurrencies(currencyCode: "MXN", currencyName: "Mexican Peso"),
  WorldCurrencies(currencyCode: "MYR", currencyName: "Malaysian Ringgit"),
  WorldCurrencies(currencyCode: "MZN", currencyName: "Mozambican Metical"),
  ///starting from N
  WorldCurrencies(currencyCode: "NAD", currencyName: "Namibian Dollar"),
  WorldCurrencies(currencyCode: "NGN", currencyName: "Nigerian Naira"),
  WorldCurrencies(currencyCode: "NIO", currencyName: "Nicaraguan C\u00f3rdoba"),
  WorldCurrencies(currencyCode: "NOK", currencyName: "Norwegian Krone"),
  WorldCurrencies(currencyCode: "NPR", currencyName: "Nepalese Rupee"),
  WorldCurrencies(currencyCode: "NZD", currencyName: "New Zealand Dollar"),
  ///starting from O
  WorldCurrencies(currencyCode: "OMR", currencyName: "Omani Rial"),
  ///starting from P
  WorldCurrencies(currencyCode: "PAB", currencyName: "Panamanian Balboa"),
  WorldCurrencies(currencyCode: "PEN", currencyName: "Peruvian Sol"),
  WorldCurrencies(currencyCode: "PGK", currencyName: "Papua New Guinean Kina"),
  WorldCurrencies(currencyCode: "PHP", currencyName: "Philippine Peso"),
  WorldCurrencies(currencyCode: "PKR", currencyName: "Pakistani Rupee"),
  WorldCurrencies(currencyCode: "PLN", currencyName: "Polish Z\u0142oty"),
  WorldCurrencies(currencyCode: "PYG", currencyName: "Paraguayan Guaran\u00ed"),
  ///starting from Q
  WorldCurrencies(currencyCode: "QAR", currencyName: "Qatari Riyal"),
  ///starting from R
  WorldCurrencies(currencyCode: "RON", currencyName: "Romanian Leu"),
  WorldCurrencies(currencyCode: "RSD", currencyName: "Serbian Dinar"),
  WorldCurrencies(currencyCode: "RUB", currencyName: "Russian Ruble"),
  WorldCurrencies(currencyCode: "RWF", currencyName: "Rwandan Franc"),
  ///starting from S
  WorldCurrencies(currencyCode: "SAR", currencyName: "Saudi Riyal"),
  WorldCurrencies(currencyCode: "SBD", currencyName: "Solomon Islands Dollar"),
  WorldCurrencies(currencyCode: "SCR", currencyName: "Seychellois Rupee"),
  WorldCurrencies(currencyCode: "SDG", currencyName: "Sudanese Pound"),
  WorldCurrencies(currencyCode: "SEK", currencyName: "Swedish Krona"),
  WorldCurrencies(currencyCode: "SGD", currencyName: "Singapore Dollar"),
  WorldCurrencies(currencyCode: "SHP", currencyName: "Saint Helena Pound"),
  WorldCurrencies(currencyCode: "SLL", currencyName: "Sierra Leonean Leone"),
  WorldCurrencies(currencyCode: "SOS", currencyName: "Somali Shilling"),
  WorldCurrencies(currencyCode: "SRD", currencyName: "Surinamese Dollar"),
  WorldCurrencies(currencyCode: "SSP", currencyName: "South Sudanese Pound"),
  WorldCurrencies(currencyCode: "STN", currencyName: "S\u00e3o Tom\u00e9 and Pr\u00edncipe Dobra"),
  WorldCurrencies(currencyCode: "SYP", currencyName: "Syrian Pound"),
  WorldCurrencies(currencyCode: "SZL", currencyName: "Eswatini Lilangeni"),
  ///starting from T
  WorldCurrencies(currencyCode: "THB", currencyName: "Thai Baht"),
  WorldCurrencies(currencyCode: "TJS", currencyName: "Tajikistani Somoni"),
  WorldCurrencies(currencyCode: "TMT", currencyName: "Turkmenistan Manat"),
  WorldCurrencies(currencyCode: "TND", currencyName: "Tunisian Dinar"),
  WorldCurrencies(currencyCode: "TOP", currencyName: "Tongan Pa\u02bbanga"),
  WorldCurrencies(currencyCode: "TRY", currencyName: "Turkish Lira"),
  WorldCurrencies(currencyCode: "TTD", currencyName: "Trinidad and Tobago Dollar"),
  WorldCurrencies(currencyCode: "TVD", currencyName: "Tuvaluan Dollar"),
  WorldCurrencies(currencyCode: "TWD", currencyName: "New Taiwan Dollar"),
  WorldCurrencies(currencyCode: "TZS", currencyName: "Tanzanian Shilling"),
  ///starting from U
  WorldCurrencies(currencyCode: "UAH", currencyName: "Ukrainian Hryvnia"),
  WorldCurrencies(currencyCode: "UGX", currencyName: "Ugandan Shilling"),
  WorldCurrencies(currencyCode: "USD", currencyName: "United States Dollar"),
  WorldCurrencies(currencyCode: "UYU", currencyName: "Uruguayan Peso"),
  WorldCurrencies(currencyCode: "UZS", currencyName: "Uzbekistani So'm"),
  ///starting from V
  WorldCurrencies(currencyCode: "VES", currencyName: "Venezuelan Bol\u00edvar Soberano"),
  WorldCurrencies(currencyCode: "VND", currencyName: "Vietnamese \u0110\u1ed3ng"),
  WorldCurrencies(currencyCode: "VUV", currencyName: "Vanuatu Vatu"),
  ///starting from W
  WorldCurrencies(currencyCode: "WST", currencyName: "Samoan T\u0101l\u0101"),
  ///starting from X
  WorldCurrencies(currencyCode: "XAF", currencyName: "Central African CFA Franc"),
  WorldCurrencies(currencyCode: "XCD", currencyName: "East Caribbean Dollar"),
  WorldCurrencies(currencyCode: "XDR", currencyName: "Special Drawing Rights"),
  WorldCurrencies(currencyCode: "XOF", currencyName: "West African CFA franc"),
  WorldCurrencies(currencyCode: "XPF", currencyName: "CFP Franc"),
  ///starting from Y
  WorldCurrencies(currencyCode: "YER", currencyName: "Yemeni Rial"),
  ///starting from Z
  WorldCurrencies(currencyCode: "ZAR", currencyName: "South African Rand"),
  WorldCurrencies(currencyCode: "ZMW", currencyName: "Zambian Kwacha")

];
