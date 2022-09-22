import 'package:flutter_test/flutter_test.dart';
import 'package:kazinow/provider/from_currencies_provider.dart';

void main() {
  FromCurrencyProvider? fromCurrencyProvider;
  String selectedfromcurrency;
  String selectedfromimage;
  setUp(() {
    fromCurrencyProvider = FromCurrencyProvider();
  });
  test('test From currency selected', () {
    fromCurrencyProvider!.selectFromCurrency(2);
    expect(fromCurrencyProvider!.selectedfromcurrency, 'EUR');
  });
  test('test From image selected', () {
    fromCurrencyProvider!.selectFromCurrency(3);
    expect(fromCurrencyProvider!.selectedfromimage, 'aus.jpg');
  });
}
