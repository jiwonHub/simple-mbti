import 'package:flutter/material.dart';
import 'package:flutter_mbti_real/presentation/main_screen.dart';
import 'package:flutter_mbti_real/presentation/main_viewmodel.dart';
import 'package:provider/provider.dart';

import 'data/repository/mbti_repository_impl.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: TextTheme(
          bodyText1: TextStyle(fontFamily: 'bit_font'),
          bodyText2: TextStyle(fontFamily: 'bit_font'),
        ),
        useMaterial3: true,
      ),
      home: ChangeNotifierProvider(
        create: (_) => MainViewModel(impl: MbtiRepositoryImpl()),
        child: const MainScreen(),
      ),
    );
  }
}