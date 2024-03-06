// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:wallet_app/pages/util/my_button.dart';
import 'package:wallet_app/pages/util/my_card.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {


  final _controller= PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        
        body: SafeArea(
          child:   Column(children: [
            //app bar
                
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row
                  (mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:[
                    const Row(children: [
                      Text("My ", 
                  
                  
                  style:TextStyle
                  (fontSize: 28,
                  
                  fontWeight: FontWeight.bold
                  ) ,
                  
                  ),
                  
                  Text("Cards", 
                  style:TextStyle
                  (fontSize: 26),
                  ),
                    ],),
                Container(
                  padding: EdgeInsets.all(4) ,
                  decoration: BoxDecoration(
                    color: Colors.grey [400],
                    shape: BoxShape.circle
                    ),
                  
                  child: Icon(Icons.add)),
                  
                  ],),
                ),
          
                SizedBox(height: 25),

             Container(
                height: 200,
                
                child: PageView( 
                  scrollDirection:Axis.horizontal,

                  controller: _controller,
                  
                  children: [
                  MyCard(
                    balance: 4000,
                    cardNumber: 1245678,
                    expirymonth: 1,
                    expiryyear: 27,
                    color: Colors.black,

                  ),
                   MyCard(
                    balance: 6000,
                    cardNumber: 1245678,
                    expirymonth: 1,
                    expiryyear: 27,
                    color: Colors.yellow,

                  ),
                   MyCard(
                    balance: 7000,
                    cardNumber: 1245678,
                    expirymonth: 1,
                    expiryyear: 27,
                    color: Color.fromARGB(255, 116, 33, 3),

                  ),
                  
                    ],),
                   
              ),

              SizedBox(height: 25),
            SmoothPageIndicator(
              controller: _controller,
               count: 3,
               effect:ExpandingDotsEffect(activeDotColor: Colors.black)),


              SizedBox(height: 25),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  
                  children: [
                
                
                 
                  //pay button+
                
                MyButton(
                  
                  iconImagePath: 'lib/icons/send.png', 
                  buttonText: "Send"),
                
                 MyButton(
                  
                  iconImagePath: 'lib/icons/payment.png', 
                  buttonText: "Pay"),
                 
                  MyButton(
                  
                  iconImagePath: 'lib/icons/receipt.png', 
                  buttonText: "Bills")
                   //test
                
                
                
                  // billsbutton
                ],),
              ),
               

               SizedBox(height: 25),
               



               Row( 
                  children: [

                     Text('hello welcome home view you expedeture' )
                  ],
               ),

            //3->buttons ->pay +send+ receiveb
          
            // column ->status+transanction 
          ]),
        ),

    
    );
  }
}