import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String numero = '';
  double num = 0;
  String operacao = '';
  double resultado = 0;

  void recebe(String tecla) {
    switch (tecla) {
      case '0':
        setState(() {
          numero += tecla;
        });
        break;

      case '<X':
        setState(() {
          numero = numero.substring(0, numero.length - 1);
        });
        break;

      case '1':
        setState(() {
          numero += tecla;
        });
        break;

      case '2':
        setState(() {
          numero += tecla;
        });
        break;

      case '3':
        setState(() {
          numero += tecla;
        });
        break;

      case '4':
        setState(() {
          numero += tecla;
        });
        break;

      case '5':
        setState(() {
          numero += tecla;
        });
        break;

      case '6':
        setState(() {
          numero += tecla;
        });
        break;

      case '7':
        setState(() {
          numero += tecla;
        });
        break;

      case '8':
        setState(() {
          numero += tecla;
        });
        break;

      case '9':
        setState(() {
          numero += tecla;
        });
        break;

      case 'AC':
        setState(() {
          numero = '0';
        });
        break;

      case '+':
        setState(() {
          operacao = '+';
          //print(numero);
          num = double.parse(numero);
          numero = '0';
        });
        break;

      case '-':
        setState(() {
          operacao = '-';
          num = double.parse(numero);
          numero = '0';
        });
        break;

      case 'x':
        setState(() {
           operacao = 'x';
        num = double.parse(numero);
        numero = '0';
        });
       
        break;

      case '/':

      setState(() {
        operacao = '/';
        num = double.parse(numero);
        numero = '0';
        

      });
      break;
        
      case '=':
        String resultadoS = '';

        if (operacao == '+') {
          resultado = num + double.parse(numero);
          resultadoS = resultado.toString();
          numero = resultadoS;
          setState(() {
            numero = resultadoS;
          });
        } else if (operacao == '-') {
          resultado = num - double.parse(numero);
          resultadoS = resultado.toString();

          numero = resultadoS;
          setState(() {
            numero = resultadoS;
          });
        } else if (operacao == 'x') {
          resultado = num * double.parse(numero);
          resultadoS = resultado.toString();

          numero = resultadoS;
          setState(() {
            numero = resultadoS;
          });

        } else if (operacao == '/') 
        {
          resultado = num / double.parse(numero);
          resultadoS = resultado.toString();

          setState(() {
            numero = resultadoS;
          });
        }

        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              'Calculadora',
              style: TextStyle(fontSize: 30),
            ),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  numero,
                  style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () {
                    recebe('AC');
                  },
                  child: Text('AC'),
                ),
                Text(''),
                Text(''),
                GestureDetector(
                  onTap: () {
                    recebe('<X');
                  },
                  child: Image.asset(
                    'assets/images/backspace.png',
                    width: 40,
                    height: 30,
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                //7
                GestureDetector(
                  onTap: () {
                    recebe('7');
                  },
                  child: Text('7'),
                ),
                GestureDetector(
                  onTap: () {
                    recebe('8');
                  },
                  child: Text('8'),
                ),
                GestureDetector(
                  onTap: () {
                    recebe('9');
                  },
                  child: Text('9'),
                ),
                GestureDetector(
                  onTap: () {
                    recebe('/');
                  },
                  child: Text('/'),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () {
                    recebe('4');
                  },
                  child: Text('4'),
                ),
                GestureDetector(
                  onTap: () {
                    recebe('5');
                  },
                  child: Text('5'),
                ),
                GestureDetector(
                  onTap: () {
                    recebe('6');
                  },
                  child: Text('6'),
                ),
                GestureDetector(
                  onTap: () {
                    recebe('x');
                  },
                  child: Icon(
                    Icons.clear_outlined,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () {
                    recebe('1');
                  },
                  child: Text('1'),
                ),
                GestureDetector(
                  onTap: () {
                    recebe('2');
                  },
                  child: Text('2'),
                ),
                GestureDetector(
                  onTap: () {
                    recebe('3');
                  },
                  child: Text('3'),
                ),
                GestureDetector(
                  onTap: () {
                    recebe('-');
                  },
                  child: Icon(
                    Icons.remove_circle_outlined,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () {
                    recebe('0');
                  },
                  child: Text('0'),
                ),
                Text('.'),
                GestureDetector(
                    onTap: () {
                      recebe('=');
                    },
                    child: Text('=')),
                GestureDetector(
                  onTap: () {
                    recebe('+');
                    //print('+');
                  },
                  child: Image.asset(
                    'assets/images/adi.png',
                    width: 40,
                    height: 30,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
