import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import '../utils/color_contrasts.dart' as my_colors;

class ErrorPage extends StatelessWidget {
  final Widget _exceptionPageName;
  const ErrorPage({Key? key, required Widget exceptionPageName}):
        _exceptionPageName = exceptionPageName,
        super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: my_colors.Palette.pink,
        title: Text("Exception in ${_exceptionPageName}!"), leading: Image.asset('assets/cloud_logo.png')),
      backgroundColor:my_colors.Palette.brown,
      body: Center(
        child: Column(
        children: [
          Container(
            child: Image.asset('assets/error.jpg')),
            SizedBox(height: 100),
            Expanded(child: Text("Oops!\nSomething went wrong with \n ${_exceptionPageName}",
                textAlign: TextAlign.center ,
                style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold, fontFamily: 'Exo 2',)),),
            SizedBox(height: 50),
            ElevatedButton(onPressed: () => toMainScreen(context, _exceptionPageName),
                child: const Text("Return",
                                  style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold, fontFamily: 'Exo 2',))),
        ]
      ),
      )
    );
  }
}

Future<void> toMainScreen(context, Widget exceptionPage) async {
  Navigator.push(context,
      MaterialPageRoute(builder: (context) => exceptionPage));

}