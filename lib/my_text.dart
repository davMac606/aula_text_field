// ignore_for_file: prefer_const_constructors, unnecessary_import, unused_import, implementation_imports

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyText extends StatefulWidget {
  const MyText({super.key});


  @override
  State<MyText> createState() => _MyTextState();
}

class _MyTextState extends State<MyText> {
    String result = '';
    double valor = 0;
    double valor1 = 0;
    double resultado = 0;
    TextEditingController cmpTxt = TextEditingController();
    TextEditingController cmpTxt1 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Text'),
        
      ),
      body: Center(
        child: Column(
        children: [
          TextField(
            controller: cmpTxt,
            onChanged: (value) {
          print(value);
            }, style: TextStyle(
              color: Color.fromARGB(255, 0, 0, 0),
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ), decoration: InputDecoration(
              labelText: 'Digite um número',
              filled: true,
              fillColor: Colors.grey[300],
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
            ),
          ),
          TextField(
            
            controller: cmpTxt1,
            onChanged: (value) {
          print(value);
            }, style: TextStyle(
              color: Color.fromARGB(255, 0, 0, 0),
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ), decoration: InputDecoration(
            
              labelText: 'Digite outro número',
              filled: true,
              fillColor: Colors.grey[300],
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
            ),
          ), Row(
            children: [
ElevatedButton(onPressed: () {
            setState(() {
            
              if (cmpTxt.text.isNotEmpty) {
              valor = double.parse(cmpTxt.text);
              valor1 = double.parse(cmpTxt1.text);
              resultado = valor + valor1;
              result = '$resultado';
              cmpTxt.clear();
              cmpTxt1.clear();
              } else {
                result = 'Campo vazio.';
              }
            });           
          }, child: Text('+')),
          ElevatedButton(onPressed: (() {
            setState(() {

              valor = double.parse(cmpTxt.text);
              valor1 = double.parse(cmpTxt1.text);
              resultado = valor - valor1;
                result = "$resultado";
              cmpTxt.clear();
              cmpTxt1.clear();
            });
            
            
          }), child: Text('-'),),
          ElevatedButton(onPressed: () {
            setState(() {

              if (cmpTxt.text.isNotEmpty) {
              valor = double.parse(cmpTxt.text);
              valor1 = double.parse(cmpTxt1.text);
              resultado = valor * valor1;
              result = "$resultado";
              cmpTxt.clear();
              cmpTxt1.clear();
              } else {
                result = 'Campo vazio.';
              }
            });           
          }, child: Text('x')),
          ElevatedButton(onPressed: () {
   
            setState(() {
              if (cmpTxt.text.isNotEmpty) {
              valor = double.parse(cmpTxt.text);
              valor1 = double.parse(cmpTxt1.text);
              resultado = valor/valor1;
              result = "$resultado";
              cmpTxt.clear();
              cmpTxt1.clear();
              } else {
                result = 'Campo vazio.';
              }
            });           
          }, child: Text('/')),
          ElevatedButton(onPressed: (() {
            cmpTxt.clear();
            cmpTxt1.clear();
            result = "";
            resultado = 0;
          }), child: Text('CE')),
            ],
          ),
          
           Text("Seu resultado é: $result"),
            
          ]),)
      );
  }
}