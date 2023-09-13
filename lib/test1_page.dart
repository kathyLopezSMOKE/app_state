import 'package:flutter/material.dart';
class Test1Page extends StatefulWidget {
  const Test1Page({super.key});

  @override
  State<Test1Page> createState() => _Test1PageState();
}

class _Test1PageState extends State<Test1Page> {
List<Map<String,dynamic>> data=[
  {'id':1,'nombre':'auto modelo 1','image':'assets/images/auto1.jpg'},
  {'id':2,'nombre':'auto modelo 2','image':'assets/images/auto2.jpg'},
  {'id':3,'nombre':'auto modelo 3','image':'assets/images/auto3.jpg'},
  {'id':4,'nombre':'auto modelo 4','image':'assets/images/auto4.jpg'},
  {'id':5,'nombre':'auto modelo 5','image':'assets/images/auto5.jpg'},
  //{'id':6,'nombre':'auto modelo 6','image':'assets/images/auto6.jpg'},
];
int index=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("carrusel de imagenes"),
      ),
      body: Column(
        
        children: [
          Text(
            '${data[index]['nombre']}',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10.0,),
          Image.asset(
            data[index]['image'],
            width: double.infinity,
            height: 300,
            fit: BoxFit.cover,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                onPressed: (){
                 index--;
                 setState(() {});
                }, 
                child: Text("anterior"),
              ),
              ElevatedButton(
                onPressed: (){
                  index++;
                  setState(() {});
                },
                 child: Text("siguiente"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}