import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:xgas/scoped-model/main.dart';
import 'package:xgas/ui/screens/home_screen.dart';
import 'package:xgas/ui/screens/landing_screen.dart';

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  final MainModel _model = MainModel();
  bool _isAuthenticated = false;
  @override
  Widget build(BuildContext context) {
    return ScopedModel<MainModel>(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (BuildContext context) =>
              _isAuthenticated ? HomeScreen() : LandingScreen(),
          '/home': (BuildContext context) => HomeScreen()
        },
      ),
      model: _model,
    );
  }
}
