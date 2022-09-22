import 'package:dio/dio.dart';
import 'package:kazinow/model/currency_change_model.dart';

import 'api_provider.dart';

class ApiRepository {
  final apiProvider = ApiProvider(Dio());
  Future<CurrencyChangeModel> convertCurrency(
          {String? to, String? from, String? amount}) =>
      apiProvider.convertCurrency(to: to, from: from, amount: amount);
}
