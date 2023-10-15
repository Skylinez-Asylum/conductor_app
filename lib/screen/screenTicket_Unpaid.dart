import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';

class TicketsUnpaid extends StatelessWidget {
  const TicketsUnpaid({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(mainAxisAlignment: MainAxisAlignment.start,
        children: [Container(height: 30,),
          Row(children: [Spacer(),
          MaterialButton(onPressed: (){},child: Icon(Icons.menu,size: 20,),
                                       color: Color.fromRGBO(104, 176, 171, 1),shape: CircleBorder(),)
          ]),
          Container(height: 20,),
          Expanded(child: Container(height:100,
           decoration: BoxDecoration(color: Color.fromRGBO(250, 243, 221, 1),
           borderRadius: BorderRadius.only(topLeft: Radius.circular(41),topRight: Radius.circular(41))),
           child: Column(children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30,horizontal: 20),
              child: Row(children: [Text("22 October"),
                     Spacer(),
                     ToggleSwitch(minWidth: 55,minHeight: 26,cornerRadius: 10,
                     activeFgColor: Colors.white,
                     inactiveBgColor: Colors.grey,
                     inactiveFgColor: Colors.white,
                     totalSwitches: 2,
                     labels: ['FN', 'AF'],
                     activeBgColors: [[Color.fromRGBO(104, 176, 171, 1)],[Color.fromRGBO(104, 176, 171, 1)]]
                     )
                      ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(children: [DateBox(),Spacer(),DateBox(),Spacer(),DateBox(),Spacer(),DateBox(),Spacer(),DateBox()],),
            ),
            Container(height: 10,),
            Expanded(child: Container(height: 100,
            decoration: BoxDecoration(color:Color.fromRGBO(104, 176, 171, 1),
            borderRadius:BorderRadius.only(topLeft: Radius.circular(50),topRight: Radius.circular(50)) ),
            child: Column(
              children: [Container(height: 10,),
                PaidTable(),
              ],
            ),
            
            
            ))



           ],)
           
           
           ,))
   



        ],),
      ),
    );
  }

}

class PaidTable extends StatelessWidget {
  const PaidTable({super.key});

  @override
  Widget build(BuildContext context) {
    return DataTable(
      columns: const <DataColumn>[
        DataColumn(
          label: Expanded(
            child: Text(
              'SI NO',
              style: TextStyle(fontStyle: FontStyle.italic,fontSize: 12),
            ),
          ),
        ),
        DataColumn(
          label: Expanded(
            child: Text(
              'TNO',
              style: TextStyle(fontStyle: FontStyle.italic),
            ),
          ),
        ),
        DataColumn(
          label: Expanded(
            child: Text(
              'NAME',
              style: TextStyle(fontStyle: FontStyle.italic),
            ),
          ),
        ),
        DataColumn(
          label: Expanded(
            child: Text(
              'STATUS',
              style: TextStyle(fontStyle: FontStyle.italic),
            ),
          ),
        ),
      ],
      rows: const <DataRow>[
        DataRow(
          cells: <DataCell>[
            DataCell(Text('1')),
            DataCell(Text('321567')),
            DataCell(Text('Student')),
            DataCell(Text("PAID"))
          ],
        ),
        
        
      ],
    ); 
  }
}


class DateBox extends StatelessWidget {
  const DateBox({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox.fromSize(
  size: Size(70, 90), // button width and height
    child: Material(borderRadius: BorderRadius.circular(15),
      color: Color.fromRGBO(104, 176, 171, 1), // button color
      child: InkWell(
        splashColor: Colors.green, // splash color
        onTap: () {}, // button pressed
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('M',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color:Color.fromRGBO(250, 243, 221, 1) ),), // icon
            Text("18",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),), // text
          ],
        ),
      ),
    ),
  
);
  }
}