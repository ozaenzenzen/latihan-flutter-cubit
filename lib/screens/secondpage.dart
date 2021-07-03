import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_cubit_1/cubit/countercubit_cubit.dart';
import 'package:google_fonts/google_fonts.dart';

class SecondPage extends StatefulWidget {
  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ColorCubit, Color>(
      builder: (context, color) {
        return Scaffold(
            appBar: AppBar(
              title: Text("Second Page"),
              backgroundColor: color,
              // backgroundColor: Colors.pink[900],
            ),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Text(
                    "Change the Color",
                    style: GoogleFonts.lato(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          context.read<ColorCubit>().changeColor(Colors.pink);
                        },
                        child: Container(
                          height: 30,
                          width: 30,
                          color: Colors.pink[900],
                        ),
                      ),
                      SizedBox(width: 20),
                      GestureDetector(
                        onTap: () {
                          context.read<ColorCubit>().changeColor(Colors.blue);
                        },
                        child: Container(
                          height: 30,
                          width: 30,
                          color: Colors.blue,
                        ),
                      ),
                      SizedBox(width: 20),
                      GestureDetector(
                        onTap: () {
                          context.read<ColorCubit>().changeColor(Colors.red);
                        },
                        child: Container(
                          height: 30,
                          width: 30,
                          color: Colors.red,
                        ),
                      ),
                      SizedBox(width: 20),
                      GestureDetector(
                        onTap: () {
                          context.read<ColorCubit>().changeColor(Colors.green);
                        },
                        child: Container(
                          height: 30,
                          width: 30,
                          color: Colors.green,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ));
      },
    );
  }
}
