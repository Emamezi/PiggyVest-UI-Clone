import 'package:flutter/material.dart';
import 'package:practiceapp/utils/styles.dart';
import 'package:practiceapp/views/account_view.dart';
import 'package:practiceapp/views/home_view.dart';
import 'package:practiceapp/views/invest_view.dart';
import 'package:practiceapp/views/savings_view.dart';
import 'package:provider/provider.dart';
import './widgets/wrapper.dart';
import 'notifier/dark_theme_provider.dart';
// import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  DarkThemeProvider themeChangeProvider = DarkThemeProvider();
  @override
  void initState() {
    super.initState();
    getCurrentAppTheme();
  }

//Get apptheme saved on the device
  void getCurrentAppTheme() async {
    themeChangeProvider.darkTheme =
        await themeChangeProvider.darkThemePreference.getDarkTheme();
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => themeChangeProvider,
        ),
      ],
      child: Consumer<DarkThemeProvider>(
          builder: (BuildContext context, value, Widget child) {
        return MaterialApp(
          title: 'Flutter PiggyVest',
          theme: Styles.themeData(themeChangeProvider.getTheme, context),
          home: Wrapper(),
          routes: {
            InvestView.routeName: (ctx) => InvestView(),
            AccountView.routeName: (ctx) => AccountView(),
            SavingsView.routeName: (ctx) => SavingsView(),
            HomeView.routeName: (ctx) => HomeView(),
          },
        );
      }),
    );
  }
}

// MaterialApp(
//       title: 'Flutter PiggyVest',
//       // theme: Styles.themeData(themeChangeProvider.darkTheme, context),
//       home: Wrapper(),
//       routes: {
//         InvestView.routeName: (ctx) => InvestView(),
//       },
//     );
