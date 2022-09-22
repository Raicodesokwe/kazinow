import 'package:kazinow/bloc/base_bloc.dart';
import 'package:kazinow/model/currency_change_model.dart';
import 'package:rxdart/rxdart.dart';

class CurrencyConverterBloc extends BaseBloc {
  final getCurrencyConverterModelSubject =
      PublishSubject<CurrencyChangeModel>();
  Stream<CurrencyChangeModel> get getCurrencyConverterStream =>
      getCurrencyConverterModelSubject.stream;
  @override
  void dispose() {
    // TODO: implement dispose
    getCurrencyConverterModelSubject.close();

    super.dispose();
  }

  Future currencyConverter({String? to, String? from, String? amount}) async {
    CurrencyChangeModel response =
        await repository.convertCurrency(to: to, from: from, amount: amount);
    getCurrencyConverterModelSubject.sink.add(response);
    return response;
  }
}
