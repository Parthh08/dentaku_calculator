import 'package:dentaku/widgets/numbers_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int firstNum = 0;
  int secNum = 0;
  String history = '';
  String textToDisplay = '';
  String res = '';
  String operation = '';

  void btnOnclick(String btnval) {
    setState(() {
      if (btnval == 'C') {
        textToDisplay = '';
      } else if (btnval == 'AC') {
        textToDisplay = '';
        firstNum = 0;
        secNum = 0;
        res = '';
        history = '';
        operation = '';
      } else if (btnval == '+' ||
          btnval == '-' ||
          btnval == 'X' ||
          btnval == '/') {
        firstNum = int.parse(textToDisplay);
        res = '';
        operation = btnval;
        history = textToDisplay + operation;
        textToDisplay = '';
      } else if (btnval == '=') {
        secNum = int.parse(textToDisplay);
        switch (operation) {
          case '+':
            res = (firstNum + secNum).toString();
            break;
          case '-':
            res = (firstNum - secNum).toString();
            break;
          case 'X':
            res = (firstNum * secNum).toString();
            break;
          case '/':
            if (secNum != 0) {
              res = (firstNum / secNum).toString();
            } else {
              res = 'Error';
            }
            break;
        }
        if (res != 'Error') {
          history = firstNum.toString() + operation + secNum.toString();
        } else {
          history = '';
        }
        textToDisplay = res;
      } else {
        if (res == '') {
          // Only update textToDisplay if result is not calculated yet
          textToDisplay += btnval;
        }
      }
    });
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Dentaku',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: Scaffold(
          backgroundColor: Colors.black,
          // appBar: AppBar(
          //   title: const Center(child: Text('Dentaku')),
          // ),
          body: SingleChildScrollView(
            child: SizedBox(
              height: MediaQuery.of(context).orientation == Orientation.portrait ? MediaQuery.of(context).size.height : MediaQuery.of(context).size.width,
              child: Flex(
                direction: Axis.vertical,
                mainAxisAlignment: MainAxisAlignment.end,
                mainAxisSize: MainAxisSize.min,
                children: [

                  Padding(
                    padding: const EdgeInsets.only(right: 12),
                    child: Container(
                      alignment: Alignment.center,
                      child: Text(
                        history,
                        style: GoogleFonts.rubik(
                          fontSize: 24,
                          color: const Color(0xFF222831),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12),
                    child: Container(
                      alignment: Alignment.center,
                      child: Text(
                        textToDisplay,
                        style: GoogleFonts.rubik(
                          fontSize: 48,
                          color: const Color(0xFFEEEEEE),
                        ),
                      ),
                    ),
                  ),
                  Divider(
                    thickness: 1,
                    color: Color(0xFF222831),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      NumbersButton(
                        text: '-',
                        tcolor: const Color(0xFFEEEEEE),
                        bgcolor: const Color(0xff76abaea),
                        callback: btnOnclick,
                      ),
                      NumbersButton(
                        text: '/',
                        tcolor: const Color(0xFFEEEEEE),
                        bgcolor: const Color(0xff76abaea),
                        callback: btnOnclick,
                      ),
                      NumbersButton(
                        text: 'AC',
                        tcolor: const Color(0xFFEEEEEE),
                        bgcolor: const Color(0xff76abaea),
                        callback: btnOnclick,
                      ),
                      NumbersButton(
                        text: 'C',
                        tcolor: const Color(0xFFEEEEEE),
                        bgcolor: const Color(0xff76abaea),
                        callback: btnOnclick,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      NumbersButton(
                        text: '1',
                        tcolor: const Color(0xFFEEEEEE),
                        bgcolor: const Color(0xFF222831),
                        callback: btnOnclick,
                      ),
                      NumbersButton(
                        text: '2',
                        tcolor: const Color(0xFFEEEEEE),
                        bgcolor: const Color(0xFF222831),
                        callback: btnOnclick,
                      ),
                      NumbersButton(
                        text: '3',
                        tcolor: const Color(0xFFEEEEEE),
                        bgcolor: const Color(0xFF222831),
                        callback: btnOnclick,
                      ),
                      NumbersButton(
                        text: 'X',
                        tcolor: const Color(0xFFEEEEEE),
                        bgcolor: const Color(0xff76abaea),
                        callback: btnOnclick,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      NumbersButton(
                        text: '4',
                        tcolor: const Color(0xFFEEEEEE),
                        bgcolor: const Color(0xFF222831),
                        callback: btnOnclick,
                      ),
                      NumbersButton(
                        text: '5',
                        tcolor: const Color(0xFFEEEEEE),
                        bgcolor: const Color(0xFF222831),
                        callback: btnOnclick,
                      ),
                      NumbersButton(
                        text: '6',
                        tcolor: const Color(0xFFEEEEEE),
                        bgcolor: const Color(0xFF222831),
                        callback: btnOnclick,
                      ),
                      NumbersButton(
                        text: '+',
                        tcolor: const Color(0xFFEEEEEE),
                        bgcolor: const Color(0xff76abaea),
                        callback: btnOnclick,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      NumbersButton(
                        text: '7',
                        tcolor: const Color(0xFFEEEEEE),
                        bgcolor: const Color(0xFF222831),
                        callback: btnOnclick,
                      ),
                      NumbersButton(
                        text: '8',
                        tcolor: const Color(0xFFEEEEEE),
                        bgcolor: const Color(0xFF222831),
                        callback: btnOnclick,
                      ),
                      NumbersButton(
                        text: '9',
                        tcolor: const Color(0xFFEEEEEE),
                        bgcolor: const Color(0xFF222831),
                        callback: btnOnclick,
                      ),
                      NumbersButton(
                        text: '=',
                        tcolor: const Color(0xFFEEEEEE),
                        bgcolor: const Color(0xff76abaea),
                        callback: btnOnclick,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
