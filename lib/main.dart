import 'package:flutter/material.dart';
import 'package:invoice_builder/screen/start_page.dart';
import 'package:invoice_builder/theme/theme_changer.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context)  => ChangeNotifierProvider(


    create: (context) => ThemeProvider(),


    builder: (context, _brightness) {
      final themeProvider = Provider.of<ThemeProvider>(context);
      return MaterialApp(
        title: 'My Flutter App',
        debugShowCheckedModeBanner: false,
        themeMode: themeProvider.themeMode,
        theme: MyThemes.lightTheme,
        darkTheme: MyThemes.darkTheme,
        // theme: ThemeData(primarySwatch:  MaterialColor(0xFFFFFFFF, {
        //   50:  Color(0xFFFFFFFF),
        //   100: Color(0xFFFFFFFF),
        //   200: Color(0xFFFFFFFF),
        //   300: Color(0xFFFFFFFF),
        //   400: Color(0xFFFFFFFF),
        //   500: Color(0xFFFFFFFF),
        //   600: Color(0xFFFFFFFF),
        //   700: Color(0xFFFFFFFF),
        //   800: Color(0xFFFFFFFF),
        //   900: Color(0xFFFFFFFF),
        // }),
        //     brightness: _brightness),
        home: Start_Page(),
      );
    },

  );
}
