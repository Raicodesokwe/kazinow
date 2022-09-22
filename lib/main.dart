import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kazinow/pages/home_page.dart';
import 'package:kazinow/pages/splash_screen.dart';
import 'package:kazinow/provider/from_currencies_provider.dart';
import 'package:kazinow/provider/to_currencies_provider.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => ToCurrencyProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => FromCurrencyProvider(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          fontFamily: 'grifterbold',
        ),
        debugShowCheckedModeBanner: false,
        home: SplashScreen(),
      ),
    );
  }
}
