import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';
import 'package:powers/powers.dart';

const Color colorDark = Color(0xFF374352);
const Color colorLight = Color(0xFFe6eeff);

class Home_Page extends StatefulWidget {
  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  // const Home_Page({Key? key}) : super(key: key);
  @override

  bool darkMode = true;
  String equation = "0";
  String result = "0";
  String expression = "";
  double equationFontSize = 38.0;
  double resultFontSize = 48.0;
  String e = "2.7182818285";
  String pi = "3.14159265";

  buttonPressed(String buttonText){
    setState(() {
      // if (buttonText == "R"
      // // icon == Icon(Icons.backspace_outlined)
      // ){
      //   double equationFontSize = 48.0;
      //   double resultFontSize = 38.0;
      //   equation = equation.substring(0,equation.length - 1);
      //   if (equation == ""){
      //     equation = "0";
      //   }
      // }
      if (buttonText == "C"){
        equation = "0";
        result = "0";
        double equationFontSize = 38.0;
        double resultFontSize = 48.0;
      }
      else if (buttonText == "R"
      // icon == Icon(Icons.backspace_outlined)
      ){
        double equationFontSize = 48.0;
        double resultFontSize = 38.0;
        equation = equation.substring(0,equation.length - 1);
        if (equation == ""){
          equation = "0";
        }
      }
      else if(buttonText == 'e'){
        equationFontSize = 48.0;
        resultFontSize = 38.0;
        if (equation == "0"){
          equation = "e";
        }
        else {
          equation = equation + "e";
        }
        result = result + e;
      }
      else if(buttonText == '|x|'){
        equationFontSize = 48.0;
        resultFontSize = 38.0;
        if (equation == "0"){
          equation = "abs(";
        }
        else {
          equation = equation + "abs(";
        }
        // result = result + e;
      }
      else if(buttonText == '√'){
        equationFontSize = 48.0;
        resultFontSize = 38.0;
        if (equation == "0"){
          equation = "sqrt(";
        }
        else {
          equation = equation + "sqrt(";
        }
        // result = result + e;
        // abs     acos    asin    atan    ceil
        // cos     cosh    cot     coth    csc
        // csch    exp     floor   ln      log
        // round   sec     sech    sin     sinh
        // sqrt    tan     tanh
      }
      else if(buttonText == 'alog'){
        equationFontSize = 48.0;
        resultFontSize = 38.0;
        if (equation == "0"){
          equation = "antilog(";
        }
        else {
          equation = equation + "antilog(";
        }
        // result = result + e;
      }
      else if(buttonText == 'sin' || buttonText == 'cos' || buttonText == 'tan' || buttonText == 'log' || buttonText == 'ln' || buttonText == 'asin' || buttonText == 'acos' || buttonText == 'atan' || buttonText == 'alog' || buttonText == '√'){
        equationFontSize = 48.0;
        resultFontSize = 38.0;
        if (equation == "0"){
          equation = "$buttonText(";
        }
        else {
          equation = equation + "$buttonText(";
        }
        // result = result + e;
      }
      else if (buttonText == "="){
        double equationFontSize = 38.0;
        double resultFontSize = 48.0;

        expression = equation;
        expression = expression.replaceAll('x','*');
        expression = expression.replaceAll('/', '/');

        try{
          Parser p = new Parser();
          Expression exp = p.parse(expression);

          ContextModel cm = ContextModel();
          result = '${exp.evaluate(EvaluationType.REAL,cm)}';
        }catch(e){
          result = "Error";
        }

      }else {
        equationFontSize = 48.0;
        resultFontSize = 38.0;
        if (equation == "0") {
          equation = buttonText;
        }
        else {
          equation = equation + buttonText;
        }
      }
    });

  }

  buttonPressedI(String buttonText){
    setState(() {
      // if (buttonText == "R"
      // // icon == Icon(Icons.backspace_outlined)
      // ){
      //   double equationFontSize = 48.0;
      //   double resultFontSize = 38.0;
      //   equation = equation.substring(0,equation.length - 1);
      //   if (equation == ""){
      //     equation = "0";
      //   }
      // }
      if (buttonText == "C"){
        equation = "0";
        result = "0";
        double equationFontSize = 38.0;
        double resultFontSize = 48.0;

      }
      else if(buttonText == 'xⁿ'){
        equationFontSize = 48.0;
        resultFontSize = 38.0;
        if (equation == "0"){
          equation = '^(';
        }
        else {
          equation = equation + '^(';
        }
        // result = result + e;
      }
      else if(buttonText == '2ⁿ'){
        equationFontSize = 48.0;
        resultFontSize = 38.0;
        if (equation == "0"){
          equation = '2^(';
        }
        else {
          equation = equation + '2^(';
        }
        // result = result + e;
      }
      else if(buttonText == 'eⁿ'){
        equationFontSize = 48.0;
        resultFontSize = 38.0;
        if (equation == "0"){
          equation = "e^(";
        }
        else {
          equation = equation + "e^(";
        }
        // result = result + e;
      }
      else if(buttonText == '∛'){
        equationFontSize = 48.0;
        resultFontSize = 38.0;
        if (equation == "0"){
          equation = 'cbrt(';
        }
        else {
          equation = equation + 'cbrt(';
        }
        // result = result + e;
      }
      else if(buttonText == '𝝅'){
        equationFontSize = 48.0;
        resultFontSize = 38.0;
        if (equation == "0"){
          equation = pi;
        }
        else {
          equation = equation + pi;
        }
        result = result + pi;
      }
      else if(buttonText == 'sin' || buttonText == 'cos' || buttonText == 'tan' || buttonText == 'sinh' || buttonText == 'cosh' || buttonText == 'tanh'){
        equationFontSize = 48.0;
        resultFontSize = 38.0;
        if (equation == "0"){
          equation = "a$buttonText(";
        }
        else {
          equation = equation + "a$buttonText(";
        }
        // result = result + e;
      }
      else if (buttonText == "="){
        double equationFontSize = 38.0;
        double resultFontSize = 48.0;

        expression = equation;
        expression = expression.replaceAll('x','*');
        expression = expression.replaceAll('/', '/');

        try{
          Parser p = new Parser();
          Expression exp = p.parse(expression);

          ContextModel cm = ContextModel();
          result = '${exp.evaluate(EvaluationType.REAL,cm)}';
        }catch(e){
          result = "Error";
        }

      }
      else {
        equationFontSize = 48.0;
        resultFontSize = 38.0;
        if (equation == "0") {
          equation = buttonText;
        }
        else {
          equation = equation + buttonText;
        }
      }
    });

  }

  buttonPressed2(String buttonText){
    setState(() {
      buttonText = equation;
      equation = "$equation^(2)";
      buttonPressed("=");
      String ans = (int.parse(equation) * int.parse(equation)) as String;
      result = ans;
      double equationFontSize = 38.0;
      double resultFontSize = 48.0;
    });
  }

  buttonPressed3(String buttonText){
    setState(() {
      buttonText = equation;
      equation = "$equation^(3)";
      buttonPressed("=");
      String ans = (int.parse(equation) * int.parse(equation) * int.parse(equation)) as String;
      result = ans;
      double equationFontSize = 38.0;
      double resultFontSize = 48.0;
    });
  }

  buttonPressedF(String buttonText){
    setState(() {
      buttonText = equation;
      equation = "$equation!";
      buttonPressed("=");
      String ans = "1";
      for(int i = int.parse(buttonText); i > 0; i--){
        int a = int.parse(ans) * i;
        ans = a.toString();
      }
      result = ans;
      double equationFontSize = 38.0;
      double resultFontSize = 48.0;
    });
  }

  // buttonPressedS(String buttonText){
  //   setState(() {
  //     // buttonText = equation;
  //     equation = "$buttonText(";
  //     // buttonPressed("=");
  //     String ans = (int.parse(equation) * int.parse(equation)) as String;
  //     result = ans;
  //     double equationFontSize = 38.0;
  //     double resultFontSize = 48.0;
  //   });
  // }

  // buttonPressedY(String buttonText){
  //   setState(() {
  //     String buttonText2;
  //     buttonText = equation;
  //     equation = "$equation^(";
  //     if (equation == "0"){
  //       equation = buttonText;
  //     }
  //     equation = equation + buttonText;
  //     buttonPressed("=");
  //     String ans = "1";
  //     for(int i = 1; i <= int.parse(buttonText2); i++){
  //       ans = ans * (int.parse(equation)) as String;
  //     }
  //     result = ans;
  //     double equationFontSize = 38.0;
  //     double resultFontSize = 48.0;
  //   });
  // }

  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: darkMode ? colorDark : colorLight,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                          onTap : (){
                            setState(() {
                              darkMode ? darkMode = false : darkMode = true;
                            });
                          },
                          child: _switchMode()
                      ),
                      SizedBox(
                        height: 100,
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: SingleChildScrollView(
                          reverse: true,
                          scrollDirection: Axis.horizontal,
                          child: Text(equation, style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold, color: darkMode ? Colors.white : Colors.red),)
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('=', style: TextStyle(fontSize: 35, color: darkMode ? Colors.green : Colors.grey),),
                          Text(result, style: TextStyle(fontSize: 20, color: darkMode ? Colors.green : Colors.grey),)
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: TabBarView(
                      children: [
                        Container(
                          child: Column(
                            children: [
                              // Row(
                              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              //   children: [
                              //     _buttonOval(title: 'sin'),
                              //     _buttonOval(title: 'cos'),
                              //     _buttonOval(title: 'tan'),
                              //     _buttonOval(title: '%'),
                              //   ],
                              // ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  _buttonRounded(title : 'C', textColor: darkMode ? Colors.green : Colors.redAccent),
                                  _buttonRounded2(title : ' x²', textColor: darkMode ? Colors.green : Colors.redAccent),
                                  _buttonRounded(title : '%', textColor: darkMode ? Colors.green : Colors.redAccent),
                                  _buttonRounded(title : '/', textColor: darkMode ? Colors.green : Colors.redAccent),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  _buttonRounded(title : '7'),
                                  _buttonRounded(title : '8'),
                                  _buttonRounded(title : '9'),
                                  _buttonRounded(title : 'x', textColor: darkMode ? Colors.green : Colors.redAccent),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  _buttonRounded(title : '4'),
                                  _buttonRounded(title : '5'),
                                  _buttonRounded(title : '6'),
                                  _buttonRounded(title : '-', textColor: darkMode ? Colors.green : Colors.redAccent),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  _buttonRounded(title : '1'),
                                  _buttonRounded(title : '2'),
                                  _buttonRounded(title : '3'),
                                  _buttonRounded(title : '+', textColor: darkMode ? Colors.green : Colors.redAccent),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  _buttonRounded(title : '.'),
                                  _buttonRounded(title : '0'),
                                  _buttonRounded(title : 'R', icon: Icons.backspace_outlined, iconColor: darkMode ? Colors.green : Colors.redAccent, textColor: darkMode ? Colors.green : Colors.redAccent),
                                  _buttonRounded(title : '=', textColor: darkMode ? Colors.green : Colors.redAccent),
                                ],
                              ),

                            ],
                          ),
                        ),
                        Container(
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  _buttonOval(title: 'sin', textColor: darkMode ? Colors.green : Colors.redAccent),
                                  _buttonOval(title: 'cos', textColor: darkMode ? Colors.green : Colors.redAccent),
                                  _buttonOval(title: 'tan', textColor: darkMode ? Colors.green : Colors.redAccent),
                                  _buttonOval(title: 'log', textColor: darkMode ? Colors.green : Colors.redAccent),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  _buttonOval(title: 'asin', textColor: darkMode ? Colors.green : Colors.redAccent),
                                  _buttonOval(title: 'acos', textColor: darkMode ? Colors.green : Colors.redAccent),
                                  _buttonOval(title: 'atan', textColor: darkMode ? Colors.green : Colors.redAccent),
                                  _buttonOval(title: 'alog', textColor: darkMode ? Colors.green : Colors.redAccent),
                                ],
                              ),
                              SizedBox(height: 65,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  _buttonRounded(title: '('),
                                  _buttonRounded(title: ')'),
                                  _buttonRounded(title: '√'),
                                  _buttonRoundedcbrt(title: '∛'),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  _buttonRounded(title: 'ln'),
                                  _buttonRoundedF(title: 'x'),
                                  _buttonRounded(title: '|x|'),
                                  _buttonRoundedN(title: '2ⁿ'),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  _buttonRounded(title: 'e'),
                                  _buttonRoundedEN(title: 'eⁿ'),
                                  _buttonRounded3(title: 'x³'),
                                  _buttonRoundedXN(title: 'xⁿ'),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                  ),
                ),
                TabBar(
                  indicatorColor: darkMode ? Colors.green : Colors.redAccent,
                  tabs: [
                    Tab(
                      icon: Icon(
                        Icons.arrow_back_ios_new,
                        color: darkMode ? Colors.green : Colors.redAccent,
                      ),
                    ),
                    Tab(
                      icon: Icon(
                        Icons.arrow_forward_ios,
                        color: darkMode ? Colors.green : Colors.redAccent,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buttonRounded(
      {String? title,
        double padding = 17,
        IconData? icon, Color? iconColor,
        Color? textColor}){
    return TextButton(
      onPressed: () => buttonPressed(title!),
      child: Padding(
        padding: const EdgeInsets.all(0),
        child: NCon(darkMode: darkMode, child: Container(
          width: padding * 2,
          height: padding * 2,
          child: Center(child: title != null ? Text('$title', style: TextStyle(color: textColor != null ? textColor : darkMode ? Colors.white : Colors.black, fontSize: 30),) : Icon(icon, color: iconColor, size: 30)),
        ), borderRadius: BorderRadius.circular(10), padding: EdgeInsets.all(padding)),
      ),
    );
  }

  Widget _buttonRounded2(
      {String? title,
        double padding = 17,
        IconData? icon, Color? iconColor,
        Color? textColor}){
    return TextButton(
      onPressed: () => buttonPressed2(title!),
      child: Padding(
        padding: const EdgeInsets.all(0),
        child: NCon(darkMode: darkMode, child: Container(
          width: padding * 2,
          height: padding * 2,
          child: Center(child: title != null ? Text('$title', style: TextStyle(color: textColor != null ? textColor : darkMode ? Colors.white : Colors.black, fontSize: 30),) : Icon(icon, color: iconColor, size: 30)),
        ), borderRadius: BorderRadius.circular(10), padding: EdgeInsets.all(padding)),
      ),
    );
  }

  Widget _buttonRounded3(
      {String? title,
        double padding = 17,
        IconData? icon, Color? iconColor,
        Color? textColor}){
    return TextButton(
      onPressed: () => buttonPressed3(title!),
      child: Padding(
        padding: const EdgeInsets.all(0),
        child: NCon(darkMode: darkMode, child: Container(
          width: padding * 2,
          height: padding * 2,
          child: Center(child: title != null ? Text('$title', style: TextStyle(color: textColor != null ? textColor : darkMode ? Colors.white : Colors.black, fontSize: 30),) : Icon(icon, color: iconColor, size: 30)),
        ), borderRadius: BorderRadius.circular(10), padding: EdgeInsets.all(padding)),
      ),
    );
  }

  Widget _buttonRoundedN(
      {String? title,
        double padding = 17,
        IconData? icon, Color? iconColor,
        Color? textColor}){
    return TextButton(
      onPressed: () => buttonPressedI(title!),
      child: Padding(
        padding: const EdgeInsets.all(0),
        child: NCon(darkMode: darkMode, child: Container(
          width: padding * 2,
          height: padding * 2,
          child: Center(child: title != null ? Text('$title', style: TextStyle(color: textColor != null ? textColor : darkMode ? Colors.white : Colors.black, fontSize: 30),) : Icon(icon, color: iconColor, size: 30)),
        ), borderRadius: BorderRadius.circular(10), padding: EdgeInsets.all(padding)),
      ),
    );
  }

  Widget _buttonRoundedXN(
      {String? title,
        double padding = 17,
        IconData? icon, Color? iconColor,
        Color? textColor}){
    return TextButton(
      onPressed: () => buttonPressedI(title!),
      child: Padding(
        padding: const EdgeInsets.all(0),
        child: NCon(darkMode: darkMode, child: Container(
          width: padding * 2,
          height: padding * 2,
          child: Center(child: title != null ? Text('$title', style: TextStyle(color: textColor != null ? textColor : darkMode ? Colors.white : Colors.black, fontSize: 30),) : Icon(icon, color: iconColor, size: 30)),
        ), borderRadius: BorderRadius.circular(10), padding: EdgeInsets.all(padding)),
      ),
    );
  }

  Widget _buttonRoundedEN(
      {String? title,
        double padding = 17,
        IconData? icon, Color? iconColor,
        Color? textColor}){
    return TextButton(
      onPressed: () => buttonPressedI(title!),
      child: Padding(
        padding: const EdgeInsets.all(0),
        child: NCon(darkMode: darkMode, child: Container(
          width: padding * 2,
          height: padding * 2,
          child: Center(child: title != null ? Text('$title', style: TextStyle(color: textColor != null ? textColor : darkMode ? Colors.white : Colors.black, fontSize: 30),) : Icon(icon, color: iconColor, size: 30)),
        ), borderRadius: BorderRadius.circular(10), padding: EdgeInsets.all(padding)),
      ),
    );
  }

  Widget _buttonRoundedF(
      {String? title,
        double padding = 17,
        IconData? icon, Color? iconColor,
        Color? textColor}){
    return TextButton(
      onPressed: () => buttonPressedF(title!),
      child: Padding(
        padding: const EdgeInsets.all(0),
        child: NCon(darkMode: darkMode, child: Container(
          width: padding * 2,
          height: padding * 2,
          child: Center(child: title != null ? Text('$title!', style: TextStyle(color: textColor != null ? textColor : darkMode ? Colors.white : Colors.black, fontSize: 30),) : Icon(icon, color: iconColor, size: 30)),
        ), borderRadius: BorderRadius.circular(10), padding: EdgeInsets.all(padding)),
      ),
    );
  }

  Widget _buttonRoundedcbrt(
      {String? title,
        double padding = 17,
        IconData? icon, Color? iconColor,
        Color? textColor}){
    return TextButton(
      onPressed: () => buttonPressedI(title!),
      child: Padding(
        padding: const EdgeInsets.all(0),
        child: NCon(darkMode: darkMode, child: Container(
          width: padding * 2,
          height: padding * 2,
          child: Center(child: title != null ? Text('$title', style: TextStyle(color: textColor != null ? textColor : darkMode ? Colors.white : Colors.black, fontSize: 30),) : Icon(icon, color: iconColor, size: 30)),
        ), borderRadius: BorderRadius.circular(10), padding: EdgeInsets.all(padding)),
      ),
    );
  }

  Widget _buttonOval({String? title, double padding = 17, Color? textColor}){
    return TextButton(
      onPressed: () => buttonPressed(title!),
      child: Padding(padding: const EdgeInsets.all(0),
        child: NCon(
          darkMode: darkMode,
          borderRadius: BorderRadius.circular(10),
          padding: EdgeInsets.symmetric(horizontal: padding, vertical: padding / 2),
          child: Container(
            width: padding * 2,
            child: Center(
              child: Text('$title', style: TextStyle(color: textColor != null ? textColor : darkMode ? Colors.white : Colors.black, fontSize: 15, fontWeight: FontWeight.bold),),
            ),
          ),
        ),
      ),
    );
  }
  //
  // Widget _buttonOvalI({String? title, double padding = 17}){
  //   return TextButton(
  //     onPressed: () => buttonPressedI(title!),
  //     child: Padding(padding: const EdgeInsets.all(0),
  //       child: NCon(
  //         darkMode: darkMode,
  //         borderRadius: BorderRadius.circular(50),
  //         padding: EdgeInsets.symmetric(horizontal: padding, vertical: padding / 2),
  //         child: Container(
  //           width: padding * 2,
  //           child: Column(
  //             children: [
  //               Align(
  //                 alignment: Alignment.centerRight,
  //                 child: Text(
  //                   "-1",
  //                   style: TextStyle(
  //                     color: darkMode ? Colors.white : Colors.black, fontSize: 10, fontWeight: FontWeight.w500
  //                   ),
  //                 ),
  //               ),
  //               Center(
  //                 child: Text('$title', style: TextStyle(color: darkMode ? Colors.white : Colors.black, fontSize: 15, fontWeight: FontWeight.bold),),
  //               ),
  //             ],
  //           ),
  //         ),
  //       ),
  //     ),
  //   );
  // }
  //
  // Widget _buttonOvalE({String? title, double padding = 17}){
  //   return TextButton(
  //     onPressed: () => buttonPressedI(title!),
  //     child: Padding(padding: const EdgeInsets.all(0),
  //       child: NCon(
  //         darkMode: darkMode,
  //         borderRadius: BorderRadius.circular(50),
  //         padding: EdgeInsets.symmetric(horizontal: padding, vertical: padding / 2),
  //         child: Container(
  //           width: padding * 2,
  //           child: Column(
  //             children: [
  //               Align(
  //                 alignment: Alignment.centerRight,
  //                 child: Text(
  //                   "x   ",
  //                   style: TextStyle(
  //                       color: darkMode ? Colors.white : Colors.black, fontSize: 10, fontWeight: FontWeight.w500
  //                   ),
  //                 ),
  //               ),
  //               Center(
  //                 child: Text('$title', style: TextStyle(color: darkMode ? Colors.white : Colors.black, fontSize: 15, fontWeight: FontWeight.bold),),
  //               ),
  //             ],
  //           ),
  //         ),
  //       ),
  //     ),
  //   );
  // }
  //
  // Widget _buttonOval2({String? title, double padding = 17}){
  //   return TextButton(
  //     onPressed: () => buttonPressed2(title!),
  //     child: Padding(padding: const EdgeInsets.all(0),
  //       child: NCon(
  //         darkMode: darkMode,
  //         borderRadius: BorderRadius.circular(50),
  //         padding: EdgeInsets.symmetric(horizontal: padding, vertical: padding / 2),
  //         child: Container(
  //           width: padding * 2,
  //           child: Column(
  //             children: [
  //               Align(
  //                 alignment: Alignment.centerRight,
  //                 child: Text(
  //                   "2  ",
  //                   style: TextStyle(
  //                       color: darkMode ? Colors.white : Colors.black, fontSize: 10, fontWeight: FontWeight.w500
  //                   ),
  //                 ),
  //               ),
  //               Center(
  //                 child: Text('$title', style: TextStyle(color: darkMode ? Colors.white : Colors.black, fontSize: 15, fontWeight: FontWeight.bold),),
  //               ),
  //             ],
  //           ),
  //         ),
  //       ),
  //     ),
  //   );
  // }
  //
  // Widget _buttonOvalcbrt({String? title, double padding = 17}){
  //   return TextButton(
  //     onPressed: () => buttonPressedI(title!),
  //     child: Padding(padding: const EdgeInsets.all(0),
  //       child: NCon(
  //         darkMode: darkMode,
  //         borderRadius: BorderRadius.circular(50),
  //         padding: EdgeInsets.symmetric(horizontal: padding, vertical: padding / 2),
  //         child: Container(
  //           width: padding * 2,
  //           child: Column(
  //             children: [
  //               Align(
  //                 alignment: Alignment.centerLeft,
  //                 child: Text(
  //                   "3",
  //                   style: TextStyle(
  //                       color: darkMode ? Colors.white : Colors.black, fontSize: 10, fontWeight: FontWeight.w500
  //                   ),
  //                 ),
  //               ),
  //               Center(
  //                 child: Text('$title', style: TextStyle(color: darkMode ? Colors.white : Colors.black, fontSize: 15, fontWeight: FontWeight.bold),),
  //               ),
  //             ],
  //           ),
  //         ),
  //       ),
  //     ),
  //   );
  // }
  //
  // Widget _buttonOvalY({String? title, double padding = 17}){
  //   return Padding(padding: const EdgeInsets.all(10),
  //       child: NCon(
  //         darkMode: darkMode,
  //         borderRadius: BorderRadius.circular(50),
  //         padding: EdgeInsets.symmetric(horizontal: padding, vertical: padding / 2),
  //         child: Container(
  //           width: padding * 2,
  //           child: Column(
  //             children: [
  //               Align(
  //                 alignment: Alignment.centerRight,
  //                 child: Text(
  //                   "y  ",
  //                   style: TextStyle(
  //                       color: darkMode ? Colors.white : Colors.black, fontSize: 10, fontWeight: FontWeight.w500
  //                   ),
  //                 ),
  //               ),
  //               Center(
  //                 child: Text('$title', style: TextStyle(color: darkMode ? Colors.white : Colors.black, fontSize: 15, fontWeight: FontWeight.bold),),
  //               ),
  //             ],
  //           ),
  //         ),
  //       ),
  //   );
  // }
  //
  // Widget _buttonOvalX({String? title, double padding = 17}){
  //   return Padding(padding: const EdgeInsets.all(10),
  //     child: NCon(
  //       darkMode: darkMode,
  //       borderRadius: BorderRadius.circular(50),
  //       padding: EdgeInsets.symmetric(horizontal: padding, vertical: padding / 2),
  //       child: Container(
  //         width: padding * 2,
  //         child: Column(
  //           children: [
  //             Align(
  //               alignment: Alignment.centerRight,
  //               child: Text(
  //                 "x  ",
  //                 style: TextStyle(
  //                     color: darkMode ? Colors.white : Colors.black, fontSize: 10, fontWeight: FontWeight.w500
  //                 ),
  //               ),
  //             ),
  //             Center(
  //               child: Text('$title', style: TextStyle(color: darkMode ? Colors.white : Colors.black, fontSize: 15, fontWeight: FontWeight.bold),),
  //             ),
  //           ],
  //         ),
  //       ),
  //     ),
  //   );
  // }
  //
  // Widget _buttonOval3({String? title, double padding = 17}){
  //   return TextButton(
  //     onPressed: () => buttonPressed3(title!),
  //     child: Padding(padding: const EdgeInsets.all(0),
  //       child: NCon(
  //         darkMode: darkMode,
  //         borderRadius: BorderRadius.circular(50),
  //         padding: EdgeInsets.symmetric(horizontal: padding, vertical: padding / 2),
  //         child: Container(
  //           width: padding * 2,
  //           child: Column(
  //             children: [
  //               Align(
  //                 alignment: Alignment.centerRight,
  //                 child: Text(
  //                   "3  ",
  //                   style: TextStyle(
  //                       color: darkMode ? Colors.white : Colors.black, fontSize: 10, fontWeight: FontWeight.w500
  //                   ),
  //                 ),
  //               ),
  //               Center(
  //                 child: Text('$title', style: TextStyle(color: darkMode ? Colors.white : Colors.black, fontSize: 15, fontWeight: FontWeight.bold),),
  //               ),
  //             ],
  //           ),
  //         ),
  //       ),
  //     ),
  //   );
  // }
  //
  // Widget _buttonOvalF({String? title, double padding = 17}){
  //   return TextButton(
  //     onPressed: () => buttonPressedF(title!),
  //     child: Padding(padding: const EdgeInsets.all(0),
  //       child: NCon(
  //         darkMode: darkMode,
  //         borderRadius: BorderRadius.circular(50),
  //         padding: EdgeInsets.symmetric(horizontal: padding, vertical: padding / 2),
  //         child: Container(
  //           width: padding * 2,
  //           child: Column(
  //             children: [
  //               Center(
  //                 child: Text('$title !', style: TextStyle(color: darkMode ? Colors.white : Colors.black, fontSize: 15, fontWeight: FontWeight.bold),),
  //               ),
  //             ],
  //           ),
  //         ),
  //       ),
  //     ),
  //   );
  // }

  Widget _switchMode(){
    return NCon(
        darkMode: darkMode,
        child: Container(
          width: 70,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.wb_sunny, color: darkMode ? Colors.grey : Colors.redAccent,),
              Icon(Icons.nightlight_round, color: darkMode ? Colors.green : Colors.grey,)
            ],
          ),
        ),
        borderRadius: BorderRadius.circular(40),
        padding: EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 15
        )
    );
  }
}

class NCon extends StatefulWidget {
  final bool darkMode;
  final Widget child;
  final BorderRadius borderRadius;
  final EdgeInsetsGeometry padding;

  NCon({required this.darkMode, required this.child, required this.borderRadius, required this.padding});

  @override
  State<NCon> createState() => _NConState();
}

class _NConState extends State<NCon> {
  bool _isPressed = false;

  void _onPointerDown(PointerDownEvent event){
    setState(() {
      _isPressed = true;
    });
  }

  void _onPointerUp(PointerUpEvent event){
    setState(() {
      _isPressed = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    bool darkMode = widget.darkMode;
    return Listener(
      onPointerDown: _onPointerDown,
      onPointerUp: _onPointerUp,
      child: Container(
        padding: widget.padding,
        decoration: BoxDecoration(
            color: darkMode ? colorDark : colorLight,
            borderRadius: widget.borderRadius,
            boxShadow: _isPressed ? null : [
              BoxShadow(color: darkMode ? Colors.black54 : Colors.blueGrey.shade200, offset: Offset(4.0, 4.0), blurRadius: 12.0, spreadRadius: 1.0),
              BoxShadow(color: darkMode ? Colors.blueGrey.shade700 : Colors.white, offset: Offset(-4.0, -4.0), blurRadius: 12.0, spreadRadius: 1.0),
            ]
        ),
        child: widget.child,
      ),
    );
  }
}
