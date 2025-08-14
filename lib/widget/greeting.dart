import 'package:flutter/material.dart';

class GrettingTimeWidget extends StatelessWidget{
  const GrettingTimeWidget({super.key});

  String greeting(){
    final time = DateTime.now().hour;
    if(time < 12){
      return "Selamat Pagi";
    }else if(time < 16){
      return "Selamat Siang";
    }else if(time < 18){
      return "Selamat Sore";
    } else{
      return "Good Night";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Text(greeting(),
    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 28.0, color: Colors.white),);
  }
}