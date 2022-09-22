import 'package:flutter_test/flutter_test.dart';
import 'package:kazinow/bloc/currency_converter_bloc.dart';
import 'package:kazinow/model/currency_change_model.dart';

void main() {
  CurrencyConverterBloc? currencyConverterBloc;
  CurrencyChangeModel? currencyChangeModel;
  setUp(() {
    currencyConverterBloc = CurrencyConverterBloc();
    currencyChangeModel = CurrencyChangeModel();
  });
  test('test bloc', () async {
    final store = currencyConverterBloc!.getCurrencyConverterModelSubject
        .add(currencyChangeModel!);
    expect(currencyConverterBloc!.getCurrencyConverterModelSubject, isA());
  });
}
