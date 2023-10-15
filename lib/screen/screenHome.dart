import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
   HomeScreen({super.key});

  DateTime date = DateTime.now();
  var time = DateTime.now();
  var _value=-1;
  
  String x = "DEPARTING";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Column(mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(width: 390,height: 15,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
              child: Row( children: [Text("Name",style: GoogleFonts.istokWeb(fontSize: 19),),
                                     Spacer(),
                                     MaterialButton(onPressed: (){},child: Icon(Icons.menu,size: 20,),
                                     color: Color.fromRGBO(104, 176, 171, 1),shape: CircleBorder(),)],),
            ),
            Row(
              children: [
                Spacer(),
                Text('${time.hour}:',style: TextStyle(color: Color.fromRGBO(104, 176, 171, 1),fontSize: 68),),
                Text('${time.minute}',style: TextStyle(fontSize: 68,color: Color.fromRGBO(200,213, 185, 1)),),
                Spacer()
              ],
            ),
            
            Text('${time.weekday} ${time.day} ${time.month} ${time.year}',style: TextStyle(fontSize: 20),),
            Container(width: 390,height: 40,),
            SizedBox(width: 334,height: 62,
            child: ElevatedButton(onPressed: (){}, child: Text(x,style: TextStyle(fontSize: 18,letterSpacing: 2,
            fontWeight: FontWeight.bold),),
            style: ElevatedButton.styleFrom(
              backgroundColor: Color.fromRGBO(104, 176, 171, 1),
              elevation: 3,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
            ),),
          ),
          Container(height: 30,),
          Container(height: MediaQuery.of(context).size.height/1.75,
          decoration: BoxDecoration(color: Color.fromRGBO(104, 176, 171, 1),borderRadius: BorderRadius.circular(40)),
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
              child: Row(children: [TextButton(onPressed: (){}, child: Text("About Us"),
              style:TextButton.styleFrom(primary: Colors.white)),
              Spacer(),
              IconButton(onPressed: (){}, icon: Icon(Icons.more_horiz),color: Colors.white,iconSize: 30,)],),
            ),
            Container(height: 40,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(children: [
                Container(height: 189,width: 159,
               
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),
                 color: Color.fromRGBO(250, 243, 221, 1),),
                
                child: Column(crossAxisAlignment: CrossAxisAlignment.center,children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: IconButton(onPressed: (){}, icon: Icon(Icons.person_2_rounded,size: 75,)),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Text("CONDUCTOR"),
                  )
                ],),),
                Spacer(),
                Container(height: 189,width: 159,
               
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),
                 color: Color.fromRGBO(250, 243, 221, 1),),
                
                child: Column(crossAxisAlignment: CrossAxisAlignment.center,children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: IconButton(onPressed: (){}, icon: Icon(CupertinoIcons.tickets,size: 75,)),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: TextButton(onPressed: (){},child: Text("TICKETS"),
                    style: TextButton.styleFrom(primary: Colors.black,
                    textStyle: TextStyle(
                    fontWeight: FontWeight.bold)),
        ),
                  )
                ],),)
              ],),
            ),
            Container(height: 60,),
          ElevatedButton(onPressed: (){}, child: Icon(Icons.location_pin,color: Colors.black,),
          style: ElevatedButton.styleFrom(minimumSize: Size(350, 46)
            ,backgroundColor: Colors.white,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))) 


          )],
          
          ),)
          ],
        ),
      ),
    );
  }
}