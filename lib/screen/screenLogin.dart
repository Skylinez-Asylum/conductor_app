import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  var media,h,v;
  var _value=-1;
  @override
  Widget build(BuildContext context) {
    media = MediaQuery.of(context).size;
    v=media.height;
    h=media.width;
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Column(mainAxisAlignment: MainAxisAlignment.start,
          
          children: [
          Container(width: 390,height: 198,),  
          Text("LOGIN",style: GoogleFonts.istokWeb(
            textStyle: TextStyle(color: Color.fromRGBO(104, 176, 171, 1),
            fontSize: 25,fontWeight: FontWeight.normal,height: 1)
          )
        ),
        Container(width: 390,height: 40,),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10,horizontal:20),
          child: TextField(decoration: InputDecoration(
            border: OutlineInputBorder(),
            prefixIcon: Icon(Icons.person) ,
            hintText: 'Conductors Name',
          ),),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 20),
          child: TextField(decoration: InputDecoration(border: OutlineInputBorder(),
          hintText: "Phone No",
          prefixIcon: Icon(Icons.phone)),),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical:15,horizontal: 20 ),
          child: DropdownButtonFormField(value: _value,items: [
            DropdownMenuItem(child: Text("Bus"),value: -1,),
            DropdownMenuItem(child: Text("Bus 1"),value:1),
            DropdownMenuItem(child: Text("Bus 2"),value:2)
          ], onChanged: (v){},
          decoration: InputDecoration(prefixIcon: Icon(Icons.directions_bus_sharp),border: OutlineInputBorder()),),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: SizedBox(width: 150,height: 40,
            child: ElevatedButton(onPressed: (){}, child: Text("ENTER"),
            style: ElevatedButton.styleFrom(
              backgroundColor: Color.fromRGBO(104, 176, 171, 1),
              elevation: 3,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
            ),),
          ),
        ),
        Container(width: 390,height: 150),
        TextButton(onPressed: (){},child: Text("Create an Account"),
        style: TextButton.styleFrom(primary: Color.fromRGBO(80, 80, 80, 1),
        textStyle: TextStyle(decoration: TextDecoration.underline,
        fontWeight: FontWeight.bold)),
        ),

        ElevatedButton(onPressed: (){}, child: Icon(Icons.ac_unit))
         
        


        
        ],
          
        ),
      ));
  }
}
