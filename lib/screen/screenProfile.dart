import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(backgroundColor: Color.fromRGBO(104, 176, 171, 1),
      body: Column(mainAxisAlignment: MainAxisAlignment.start,
       children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 25),
          child: Row(children: [TextButton(onPressed: (){}, child: Text("Edit Profile"),
          style: TextButton.styleFrom(primary: Colors.white,textStyle: TextStyle(fontWeight:FontWeight.bold )),)],),
        ),          
      Container(
        width: 113,
        height: 113,
        decoration: BoxDecoration(
          color : Color.fromRGBO(255, 255, 255, 1),
      borderRadius : BorderRadius.all(Radius.elliptical(113, 113)),)
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text("NAME",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white),),
      ),
      Container(height: 50,),
      Container(height: MediaQuery.of(context).size.height/1.65,
      decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.only(topLeft: Radius.circular(40),topRight: Radius.circular(40))),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Column(children: [
          Container(height: 40,),
          Row(children: [Icon(Icons.phone),Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text("Phone No",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Color.fromRGBO(104, 176, 171, 1)),),
          )],),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: Row(
              children: [
                Text("+91 XXXXX XXXXXX"),
              ],
            ),
          ),
          Container(height: 30,),
          Row(children: [Icon(Icons.person_2_sharp),Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text("Age",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Color.fromRGBO(104, 176, 171, 1)),),
          )],),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: Row(
              children: [
                Text("XX"),
              ],
            ),
          ),
          Container(height: 30,),
          Row(children: [Icon(Icons.home),Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text("Address",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Color.fromRGBO(104, 176, 171, 1)),),
          )],),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: Row(
              children: [
                Text("XXXXXXXX XXXXXXXX XXXX"),
              ],
            ),
          ),
          Container(height: 30,)
          ,Row(children: [Icon(Icons.mail),Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text("Email",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Color.fromRGBO(104, 176, 171, 1)),),
          )],),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: Row(
              children: [
                Text("XXXXXXXXXXX@XXXX.XXX"),
              ],
            ),
          )
        ],
        ),
      ),
      )

       ],),),
    );
  }
}