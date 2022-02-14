import 'package:flutter/material.dart';

void main (){
  runApp(const Custom_Painter(),);
}
 // ignore: camel_case_types
 class Custom_Painter extends StatelessWidget {
   const Custom_Painter({Key? key}) : super(key: key);
 
   @override
   Widget build(BuildContext context) {
     return const MaterialApp(
       home: polygon_method(),
     );
   }
 }
 
 // ignore: camel_case_types
 class polygon_method extends StatelessWidget {
   const polygon_method({Key ?key}) : super(key: key);
 
   @override
   Widget build(BuildContext context) {
     return  Scaffold(
       appBar: AppBar(
         backgroundColor: Colors.pinkAccent,
         title:  const Text("Let's Draw a Polygon",
           style: TextStyle(
             fontSize: 25,
             color: Colors.white,
           ),
         ),
         centerTitle: true,
       ),
       body: CustomPaint(
         painter: ShapePainter(),
         child: Container(),

       ),
     );
   }
 }

 class ShapePainter extends CustomPainter{
  @override
   void paint(Canvas canvas, Size size){
    final paint = Paint()
        ..color = Colors.pink
        ..strokeWidth = 5
        ..strokeCap = StrokeCap.round;

        final x = Offset(size.width *1/4, size.height*2/4 );
        final y = Offset(size.width *3/4, size.height*3/4);
        final rect = Rect.fromPoints(x,y);
    canvas.drawRect(rect, paint);

  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {

    return false;
  }


 }