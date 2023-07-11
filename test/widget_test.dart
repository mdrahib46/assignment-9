// import 'dart:convert';
//
// import 'package:assignment_9/stylePage.dart';
// import 'package:http/http.dart';
// // import 'class.dart';
// import 'package:flutter/material.dart';
//
// class HomePage extends StatefulWidget {
//   const HomePage({Key? key}) : super(key: key);
//
//   @override
//   State<HomePage> createState() => _HomePageState();
// }
//
// class _HomePageState extends State<HomePage> {
//   String myApi =
//       'https://api.weatherapi.com/v1/current.json?key=f79f1ab3fa1b46ceae5151004230907&q=bangladesh&aqi=no';
//
//   String data;
//
//   @override
//   void initState(){
//     super.initState();
//     getWeatherData();
//   }
//
//   getWeatherData() async{
//     //  Required
//     // Api, cal get method, url should convert to uri
//     Response response = await get(Uri.parse(myApi));
//     // print(response.body);
//     // print(response.statusCode);
//
//     // final Map<String, dynamic> decodeResponse = jsonDecode(response.body);
//     //
//     // final Map<String, dynamic> data1 = jsonDecode(decodeResponse['location']);
//
//     final String json = '{"name": "John Doe", "age": 30, "country": "USA"}';
//     data = jsonDecode(json);
//
//     // print(decodeResponse['location'].length);
//     // print(decodeResponse['location']);
//     //
//     // var currentLocation = decodeResponse['location']['name'];
//     // print(currentLocation);
//     // data.add(decodeResponse['location']['name']);
//
//
//
//   }
//
//   // var currentLocation=decodeResponse['name'];
//   // var currentWeatherConditions=decodeResponse['weather'][0]['main'];
//   // var icon=decodeResponse['weather'][0]['icon'];
//   // var temperature=decodeResponse['main']['temp'];
//   // var mintemperature=decodeResponse['main']['temp_min'];
//   // var maxtemperature=decodeResponse['main']['temp_max'];
//
//   // @override
//   // Widget build(BuildContext context) {
//   //   return Scaffold(
//   //     backgroundColor: const Color(0xFF5130A8),
//   //     appBar: AppBar(
//   //       backgroundColor: const Color(0xFF7C51FE),
//   //       title: const Text('Flutter Weather', style: TextStyle(fontSize: 22)),
//   //       actions: [
//   //         IconButton(onPressed: () {}, icon: const Icon(Icons.settings)),
//   //         IconButton(onPressed: () {}, icon: const Icon(Icons.add)),
//   //       ],
//   //     ),
//   //     body: Center(
//   //       child: Padding(
//   //         padding: const EdgeInsets.all(30),
//   //         child: Column(
//   //           mainAxisAlignment: MainAxisAlignment.start,
//   //           children: [
//   //             const SizedBox(height: 70),
//   //             Text(
//   //               'Dhaka',
//   //               style: cityNameHeader,
//   //             ),
//   //             const SizedBox(height: 10),
//   //             Text(
//   //               'Updated: 10:15',
//   //               style: currentTime,
//   //             ),
//   //             const SizedBox(
//   //               height: 50,
//   //             ),
//   //             Row(
//   //               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//   //               children: [
//   //                 Icon(Icons.map, size: 60, color: Colors.white,),
//   //                 Text('35°', style: tempTxtStyle,)
//   //
//   //               ],),
//   //             const SizedBox(height: 10),
//   //             Text(
//   //               'Thunderstorm',
//   //               style: weatherCondition,
//   //             ),
//   //           ],
//   //         ),
//   //       ),
//   //     ),
//   //   );
//   // }
// }
