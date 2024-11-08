import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CarScreen extends StatefulWidget {
  const CarScreen({super.key});

  @override
  State<CarScreen> createState() => _CarScreenState();
}

class _CarScreenState extends State<CarScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 350,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage('assets/images/backdrop.jpeg'), ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 10, bottom: 15),
                           child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(height: 60,),
                                    Text("Good Morning,\nAli Husni", style: GoogleFonts.roboto(
                                      color: Colors.white, fontSize: 40, fontWeight: FontWeight.bold
                                    ),),
                                    Text("BMW M4 2016", style: GoogleFonts.roboto(
                                        color: Colors.white, fontSize: 20
                                    ),)
                                  ],
                                ),
                         ),
                  Container(
                    padding: EdgeInsets.only(right: 10, bottom: 15),
                          child: Stack(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      border: Border.all(width: 2, color: Colors.grey ),
                                      shape: BoxShape.circle
                                  ),
                                  child: CircleAvatar(
                                    radius: 30,
                                    backgroundColor: Colors.transparent,
                                    child: Icon(Icons.notifications_none, color: Colors.white,),
                                  ),
                                ),
                                Positioned(
                                    right: 0.1,
                                    child: CircleAvatar(
                                      radius: 13,
                                      backgroundColor: Colors.red,
                                      child: Text("2", style: TextStyle(color: Colors.white),),
                                    ))
                              ])),
                ],
              ),
              Positioned(
                top: 130,
                  left: 109,
                  child: Image.asset("assets/images/bima.png", width: 460, fit: BoxFit.contain,))
              ]
          ),
          SizedBox(height: 30,),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                   Container(
                     height: 250,
                     width: 180,
                     margin: EdgeInsets.only(left: 15),
                     padding: EdgeInsets.all(8),
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(10),
                       color: Colors.white
                     ),
                     child: Column(
                       children: [
                         SizedBox(height: 10,),
                         Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: [
                           Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               Text("Battery", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                               Text("Last charge 2w ago")
                             ],
                           ), 
                           Icon(Icons.arrow_forward_ios_rounded, color: Colors.black, size: 20,)
                         ],),
                         Row(
                           children: [
                             Image.asset("assets/images/baty.png", width: 60,),
                             SizedBox(width: 10,),
                             Column(
                               crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                                 Text("212 km", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                                 Container(
                                   height: 1,
                                   width: 80,
                                   decoration: BoxDecoration(
                                     color: Colors.black54,
                                     borderRadius: BorderRadius.circular(5)
                                   ),
                                 ),
                                 SizedBox(height: 8),
                                 Stack(children: [
                                   Text("14%", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                                   Positioned(
                                     top: 10,
                                     left: 20,
                                       child: Text("120kw"))
                                 ],)
                               ],
                             )
                           ],
                         )
                       ]
                     ),
                   ),

                  ],),
                  Column(children: [
                    Container(
                      height: 100,
                      width: 160,
                      color: Colors.blue,
                      child: Center(child: Text("Container 1"),),
                    ),
                    Container(
                        height: 100,
                        width: 160,
                        color: Colors.red,
                        child: Center(child: Text("Container 2"),)
                    )
                  ],)
                ],
              )
            ],
          )
        ],),
    );
  }
}
