import'package:flutter/material.dart';


class ReactPage extends StatefulWidget {
  const ReactPage({super.key});

  @override
  State<ReactPage> createState() => _ReactPageState();
}

class _ReactPageState extends State<ReactPage> {
  double _lowervalue= 0;
  double _uppervalue=10;
  String imgUrl='lib/images/saad.png';
  String emotion='not so good !';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[300],
      appBar: AppBar(
        title:Text('Reaction Bar !😎'),
        centerTitle: true,
        backgroundColor: Colors.brown[400],
      ),
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("How is your reaction today ?",style:TextStyle(
              fontSize: 25,
              color: Colors.black,
              fontWeight: FontWeight.bold
            ),),
            const SizedBox(height: 10,),

            Image.asset(imgUrl,height: 300,width: 400,),
            const SizedBox(height: 10,),

            Text(emotion,style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold
            ),),

            Padding(padding: EdgeInsets.all(15),
           // child: FlutterSlider(values:[_lowervalue],
           // min:0.0,
           // max:10,
         //   trackBsr
            ),
            


        
          ],
        ),
      ),
    );

  }
}