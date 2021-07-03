import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_cubit_1/cubit/action_cubit.dart';
import 'package:flutter_cubit_1/screens/secondpage.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ColorCubit, Color>(
      builder: (context, color) {
        return Scaffold(
          appBar: AppBar(
            title: Text("FAM Training Cubit 1"),
            // backgroundColor: Colors.pink[900],
            backgroundColor: color,
          ),
          body: Container(
            // alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {
                    // Get.to(
                    //   () => SecondPage(),
                    //   transition: Transition.cupertino,
                    // );
                    Navigator.push(
                      context,
                      CupertinoPageRoute(
                        builder: (context) => SecondPage(),
                      ),
                    );
                  },
                  child: Text("Change Color here"),
                ),
                BlocBuilder<CountercubitCubit, int>(
                  builder: (context, state) {
                    return Text(
                      state.toString(),
                      style: GoogleFonts.lato(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                      ),
                    );
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        // primary: Colors.pink[900],
                        primary: color,
                      ),
                      onPressed: () {
                        context.read<CountercubitCubit>().increment();
                      },
                      child: SizedBox(
                        height: 60,
                        width: 100,
                        child: Center(
                          child: Text(
                            "+",
                            style: GoogleFonts.lato(
                              fontSize: 50,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        // primary: Colors.pink[900],
                        primary: color,
                      ),
                      onPressed: () {
                        context.read<CountercubitCubit>().decrement();
                      },
                      child: SizedBox(
                        height: 60,
                        width: 100,
                        child: Center(
                          child: Text(
                            "-",
                            style: GoogleFonts.lato(
                              fontSize: 50,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
