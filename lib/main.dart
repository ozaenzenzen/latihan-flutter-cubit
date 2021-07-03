import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_cubit_1/cubit/countercubit_cubit.dart';
import 'package:flutter_cubit_1/screens/home.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<CountercubitCubit>(
          create: (context) => CountercubitCubit(),
        ),
        BlocProvider<ColorCubit>(
          create: (context) => ColorCubit(),
        ),
      ],
      child: MaterialApp(
        home: Home(),
        title: "FAM Cubit Training",
        debugShowCheckedModeBanner: false,
        // defaultTransition: Transition.cupertino,
        theme: ThemeData(
            pageTransitionsTheme: PageTransitionsTheme(builders: {
          TargetPlatform.android: CupertinoPageTransitionsBuilder()
        })),
      ),
    );
  }
}
