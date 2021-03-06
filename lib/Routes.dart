import 'package:flutter/material.dart';
import 'alertbox.dart';
 void main(){
   runApp(new MaterialApp(home: new Application()));
 }
 class Application extends StatefulWidget {

   @override
   _ApplicationState createState() => _ApplicationState();
 }

 class _ApplicationState extends State<Application> {
   @override
   Widget build(BuildContext context) {
     return new Scaffold(
       appBar: new AppBar(title: new Text('Drawer'),),
       drawer: new Drawer(
         child: new ListView(
           children: <Widget>[
             new UserAccountsDrawerHeader(
                 accountName: new Text('PAUL GIKONYO'),
                 accountEmail: new Text ('paulgikonyo100@gmail.com'),
                 currentAccountPicture: new CircleAvatar(
                   backgroundColor: Colors.black26,
                   child: new Text('M'),
                 ),
             decoration: new BoxDecoration(color: Colors.orange),
             
            ),
               new ListTile(
               title: new Text('Page 1'),
               trailing: new Icon(Icons.arrow_forward),
               onTap: ()=> Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context)=>new op('page1'))),
               ),
              new ListTile(
               title: new Text('Page 2'),
               trailing: new Icon(Icons.arrow_forward),
               onTap: ()=> Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context)=>new op('page2'))),
              ),

             new ListTile(
              title: new Text('Close'),
               trailing: new Icon(Icons.close),
               onTap: (){Navigator.pop(context);},

           ),
           ],
       )
      ),
     );
   }
 }
