import 'package:flutter/material.dart';

class Test2Page extends StatefulWidget {
  const Test2Page({super.key});

  @override
  State<Test2Page> createState() => _Test2PageState();
}

class _Test2PageState extends State<Test2Page> {
  bool isTitleBold=true;
  bool justify=false;
 double valueRedSlider=0;
  double valueGreenSlider=0;
   double valueBlueSlider=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Estilos"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Text(
              "Pokemon",
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: 
                isTitleBold==true? FontWeight.bold:FontWeight.normal,//operador ternario que trabaj dentro de la variable
              ),
            ),
            Text("But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain", 
            textAlign: 
            justify? TextAlign.justify:TextAlign.start,
            style: TextStyle(
              color: Color.fromRGBO(valueRedSlider.toInt(), valueGreenSlider.toInt(), valueBlueSlider.toInt(), 1),
            ),
            ),
            /*
            Checkbox(
              value: isTitleBold, 
              onChanged:(bool? value){
                isTitleBold=value!;
                print(value);
                setState(() {});
              }
            ),*/
            CheckboxListTile(
              title: Text("Litle bold"),
              subtitle: Text("pon el teto en negrita"),
              value: isTitleBold, 
              onChanged:(bool? value){
                isTitleBold=value!;
                print(value);
                setState(() {});}
            ),
            CheckboxListTile(
              title: Text("Descrpcion Justify"),
              subtitle: Text("Justifica el texto"),
              value: justify, 
              onChanged:(bool? value){
                justify=value!;
                print(value);
                setState(() {});}
            ),
            Slider(
              min: 0,
              max: 255,
              value: valueRedSlider,
              onChanged: (value){
                print(value);
                valueRedSlider=value;
                setState(() {});
              },
            ),
            Slider(
              min: 0,
              max: 255,
              value: valueGreenSlider,
              onChanged: (value){
                print(value);
                valueGreenSlider=value;
                setState(() {});
              },
            ),
            Slider(
              min: 0,
              max: 255,
              value: valueBlueSlider,
              onChanged: (value){
                print(value);
                valueBlueSlider=value;
                setState(() {});
              },
            ),
          ],
        ),
      ),
    );
  }
}