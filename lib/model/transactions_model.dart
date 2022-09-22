class TransactionModel {
  final String? flag;
  final String? name;
  final String? phone;
  final String? amount;
  final String? initials;

  TransactionModel(
      {required this.flag,
      required this.name,
      required this.phone,
      required this.initials,
      required this.amount});
}

List<TransactionModel> transactions = [
  TransactionModel(
      flag: 'namibia.png',
      name: 'Sebete Shabalala',
      phone: '+254345678987',
      initials: 'SS',
      amount: '\$143.25'),
  TransactionModel(
      flag: 'uk.png',
      name: 'John Doe',
      initials: 'JD',
      phone: '+447842678987',
      amount: '\$203'),
  TransactionModel(
      flag: 'zimbabwe.png',
      name: 'Strive Masiyiwa',
      initials: 'SM',
      phone: '+224642678987',
      amount: '\$33.98'),
  TransactionModel(
      flag: 'namibia.png',
      name: 'Herero Fwamba',
      phone: '+233925698987',
      initials: 'HF',
      amount: '\$93.25'),
  TransactionModel(
      flag: 'usflag.jpg',
      name: 'Collard Green',
      initials: 'CG',
      phone: '+444842678987',
      amount: '\$63.67'),
  TransactionModel(
      flag: 'germany.png',
      name: 'Ehrich Juncker',
      initials: 'EJ',
      phone: '+452842678987',
      amount: '€63.67'),
  TransactionModel(
      flag: 'germany.png',
      name: 'Kamau Ngunjiri',
      initials: 'KN',
      phone: '+254742678987',
      amount: 'Ksh.500.67'),
  TransactionModel(
      flag: 'zimbabwe.png',
      name: 'Sabo Fwalala',
      initials: 'SF',
      phone: '+224642678987',
      amount: '\$330.98'),
  TransactionModel(
      flag: 'namibia.png',
      name: 'Inde Kwacha',
      phone: '+294345678987',
      initials: 'IK',
      amount: '\$43.25'),
];
