import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(      
    theme: ThemeData(primarySwatch: Colors.lightBlue),
    home: Homepage(),
  ));

}

class Homepage extends StatefulWidget{
  @override
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<Homepage>{
  var count = 0;

  void restore() {
    count = 0;
     setState(() {
          
        });
  }

  void increment(){
    count++;
    print(count);
    setState(() {
          
        });
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text('Contador')),
      body: Center( 
        child: Text(
          "$count",
           textAlign: TextAlign.center,
           style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 128)
           )
      ),
      floatingActionButton:Stack(
      children: <Widget>[
        Padding(padding: EdgeInsets.only(left:31),
        child: Align(
          alignment: Alignment.bottomLeft,
          child: FloatingActionButton(
            onPressed: (){
              restore();
            },
            child: Icon(Icons.settings_backup_restore),),
        ),),

        Align(
          alignment: Alignment.bottomRight,
          child: FloatingActionButton(
            onPressed: (){
             increment();
            },
          child: Icon(Icons.add),),
        ),
      ],
    )
  );
  }
}