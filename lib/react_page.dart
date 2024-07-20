import 'package:another_xlider/another_xlider.dart';
import 'package:another_xlider/models/handler.dart';
import 'package:another_xlider/models/handler_animation.dart';
import 'package:another_xlider/models/trackbar.dart';
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
         child:
         FlutterSlider(values: [_lowervalue],
           min: 0,
           max: 10,
           trackBar: FlutterSliderTrackBar(
            inactiveTrackBar: BoxDecoration(
              color:Colors.redAccent
            ),
            activeTrackBar: BoxDecoration(
              color: Colors.yellowAccent
            ),
            
           ),
           handler: FlutterSliderHandler(
            child: Material(
              type: MaterialType.canvas,
              color: Colors.white,elevation: 3.0,

            )
           ),
           handlerAnimation: FlutterSliderHandlerAnimation(
            curve:Curves.elasticOut,
            duration: Duration(milliseconds: 700),
            scale: 1.4
           ),
           onDragging:(handlerIndex, lowerValue, upperValue) {
             _lowervalue =lowerValue;
             _uppervalue=upperValue;
             if(lowerValue>=2.0 && lowerValue<4.0){
              imgUrl='lib/images/shy.png';
              emotion='its not good';
             }
             else if(
              lowerValue>=4.0 && lowerValue<6.0
             ){
              imgUrl='lib/images/shocked.png';
              emotion='Im Shocked';
             }
              else if(
              lowerValue>=6.0 && lowerValue<8.0
             ){
              imgUrl='lib/images/happy.jpeg';
              emotion='Im Shocked';
             }
              else if(
              lowerValue>=8.0 && lowerValue<=10.0
             ){
              imgUrl='lib/images/good.png';
              emotion='Im Good';
             }
             else{
              imgUrl='lib/images/saad.png';
              emotion='Im Sad';
             }
             setState(() {
               
             });
           },
           
           ) ,
           
           /* Slider(
          allowedInteraction:SliderInteraction.tapOnly ,
          activeColor: Colors.yellowAccent,
          inactiveColor: const Color.fromARGB(255, 255, 68, 68),
          onChanged: (value){
          setState(() {
            _lowervalue =value.toDouble();
          });
         }, value:_lowervalue.toDouble(),
         min: 0,
         max:10),*/
         
            ),

           // Text('curent mood :'+ _lowervalue.toString()),
            
           

        
          ],
        ),
      ),
    );

  }
}