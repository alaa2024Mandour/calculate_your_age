import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
Color mainColor =Colors.deepPurpleAccent;

/*============Age TextInput Component==============*/
Widget DefultDataInput({
  required String label,
  required String hintText,
  required TextEditingController controller,
  required Function onTap,
})=>Expanded(
  child: Column(
    mainAxisSize: MainAxisSize.min,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
          "$label".toUpperCase(),
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 12,
          letterSpacing: 2,
          color: Colors.black54,
        ),
      ),
      SizedBox(height: 15,),
      TextFormField(
        controller:controller ,
        keyboardType:TextInputType.number,
        onTap: (){
          onTap();
        },
        decoration: InputDecoration(
          hintText: "$hintText",
          border: OutlineInputBorder(),
        ),
      )
    ],
  ),
);


/*============Age Result Component==============*/
Widget Result({
  required String text,
})=>  Padding(
  padding: const EdgeInsets.only(bottom: 10.0),
  child:   Row(
    children: [
      Text(
        "--",
        style: TextStyle(
          fontSize: 70,
          fontWeight: FontWeight.bold,
          color: mainColor,
        ),
      ),
      SizedBox(width:10,),
      Text(
        "$text".toLowerCase(),
        style: TextStyle(
          fontSize: 50,
          fontWeight: FontWeight.w900,
        ),
      ),
    ],
  ),
);