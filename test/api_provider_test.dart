import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';
import 'package:kazinow/api/api_provider.dart';
import 'package:kazinow/model/currency_change_model.dart';

void main() {
  final dio = Dio();
  final dioAdapter = DioAdapter(dio: dio);
  var baseUrl;
  var baseUrlTwo;
  var apikey;
  final CurrencyChangeModel currencychangeModel = CurrencyChangeModel();
  setUp(() {
    dio.httpClientAdapter = dioAdapter;
    baseUrl = "https://api.apilayer.com/fixer/convert";
    apikey = "gByViC7Oq7SOTMIDODocEK3kurAwPAA7";
  });
  group('Currency converter test', () {
    test('Success case', () async {
      dioAdapter.onGet(
        baseUrl,
        (request) => request.reply(200, {'message': 'Success!'}),
        data: Matchers.any,
        queryParameters: {"apikey": apikey},
        headers: {},
      );
      final service = ApiProvider(
        dio,
      );

      final response =
          await service.convertCurrency(to: 'GBP', from: 'USD', amount: '500');

      expect(response, isA());
    });
    test('Failure case', () async {
      dioAdapter.onGet(
        baseUrl,
        (request) => request.throws(
            400,
            DioError(
                requestOptions: RequestOptions(
              path: baseUrl,
            ))),
        data: Matchers.any,
        queryParameters: {"apikey": apikey},
        headers: {},
      );
      final service = ApiProvider(
        dio,
      );

      final response =
          await service.convertCurrency(to: 'GBP', from: 'USD', amount: '500');

      expect(response, isA());
    });
  });
}
