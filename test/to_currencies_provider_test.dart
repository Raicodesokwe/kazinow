import 'package:flutter_test/flutter_test.dart';
import 'package:kazinow/provider/from_currencies_provider.dart';
import 'package:kazinow/provider/to_currencies_provider.dart';

void main() {
  ToCurrencyProvider? toCurrencyProvider;
  String selectedtocurrency;
  String selectedtoimage;
  setUp(() {
    toCurrencyProvider = ToCurrencyProvider();
  });
  test('test To currency selected', () {
    toCurrencyProvider!.selectToCurrency(2);
    expect(toCurrencyProvider!.selectedtocurrency, 'EUR');
  });
  test('test To image selected', () {
    toCurrencyProvider!.selectToCurrency(3);
    expect(toCurrencyProvider!.selectedtoimage, 'aus.jpg');
  });
}
