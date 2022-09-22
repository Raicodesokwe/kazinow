import 'package:dio/dio.dart';
import 'package:kazinow/model/currency_change_model.dart';

class ApiProvider {
  String baseUrl = "https://api.apilayer.com/fixer/convert";
  String apikey = "";
  Response? response;
  Dio dio = Dio();
  ApiProvider(this.dio) {
    dio = Dio();

    /// Dependency Injection
    dio.options.baseUrl;
  }

  //for api helper testing only
  ApiProvider.test(this.dio);
  Future<CurrencyChangeModel> convertCurrency(
      {String? to, String? from, String? amount}) async {
    try {
      final result = await dio.get('$baseUrl?to=$to&from=$from&amount=$amount',
          queryParameters: {"apikey": apikey});
      print('The result is $result');
      if (result.statusCode != 200) throw Exception();
      return CurrencyChangeModel.fromJson(result.data);
    } on DioError catch (e) {
      // TODO
      throw Exception();
    }
  }
}
