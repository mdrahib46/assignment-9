import 'dart:convert';

import 'package:assignment_9/stylePage.dart';
import 'package:http/http.dart';
import 'class.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String myApi =
      'https://api.weatherapi.com/v1/current.json?key=f79f1ab3fa1b46ceae5151004230907&q=bangladesh&aqi=no';
  @override
  void initState(){
    super.initState();
    getWeatherData();
  }

  getWeatherData() async{
  //  Required
  // Api, cal get method, url should convert to uri
    Response response = await get(Uri.parse(myApi));
    // print(response.body);
    // print(response.statusCode);

    final Map<String, dynamic> decodeResponse = jsonDecode(response.body);
    print(decodeResponse['location'].length);
    print(decodeResponse['location']);

    decodeResponse['location'].forEach((e) {



    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF5130A8),
      appBar: AppBar(
        backgroundColor: const Color(0xFF7C51FE),
        title: const Text('Flutter Weather', style: TextStyle(fontSize: 22)),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.settings)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.add)),
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: 70),
              Text(
                'Dhaka',
                style: cityNameHeader,
              ),
              const SizedBox(height: 10),
              Text(
                'Updated: 10:15',
                style: currentTime,
              ),
              const SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                Icon(Icons.map, size: 60, color: Colors.white,),
                Text('35°', style: tempTxtStyle,)

              ],),
              const SizedBox(height: 10),
              Text(
                'Thunderstorm',
                style: weatherCondition,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
