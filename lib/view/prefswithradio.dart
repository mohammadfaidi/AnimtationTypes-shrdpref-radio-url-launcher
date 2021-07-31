import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher.dart';
class RadioWithShared extends StatefulWidget {

  @override
  _State createState() => _State();
}

class _State extends State<RadioWithShared> {
  @override
  SharedPreferences prefs;
  saveData(color)async{
    prefs = await SharedPreferences.getInstance();
    prefs.setInt("fav", color);

  }
  getData()async{
    prefs = await SharedPreferences.getInstance();
    setState(() {
          favColor = prefs.getInt("fav")??Colors.white.value;
        });
  }
  openUrl()async{
    await launch("https://pub.dev/");
  }
int favColor = Colors.white.value;
@override
void initSstate(){
  getData();
  super.initState();
}
 
  Widget build(BuildContext context) {
    return Scaffold(
          backgroundColor : Color(favColor),
      appBar: AppBar(
        title: Text("RadioWithShared"),
        centerTitle: true,
      ),
  body: Column(
    children: [
      SizedBox(height: 40,),
      ListTile(
        title: Text("Green"),
        leading: Radio(
          value: Colors.green.value,
          groupValue: favColor,
          onChanged: (val){
            setState(() {
                          favColor = val;
                          saveData(val);
                        });
          },
        ),
      ),

       ListTile(
        title: Text("Blue"),
        leading: Radio(
          value: Colors.blue.value,
          groupValue: favColor,
          onChanged: (val){
            setState(() {
                          favColor = val;
                          saveData(val);
                        });
          },
        ),
      ),
    ],

  ),
floatingActionButton: FloatingActionButton(
  onPressed: (){
openUrl();
  },
),
    );
    
  
      
    
  }
}