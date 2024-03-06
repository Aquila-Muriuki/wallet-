// ignore_for_file: prefer_interpolation_to_compose_strings, prefer_const_constructors

import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  final double balance;
  final int cardNumber;
  final int expirymonth;
  final int expiryyear;
  final color;

  const MyCard(
      {super.key,
      required this.balance,
      required this.cardNumber,
      required this.expirymonth,
      required this.expiryyear,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Container(
        width: 300,
        padding: const EdgeInsets.all(40),
        decoration: BoxDecoration(
            color:color,
            borderRadius: BorderRadius.circular(24)),
        child:  Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Balance",
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(height: 10),
            Row(

              mainAxisAlignment:MainAxisAlignment.spaceBetween ,
              children: [

                Text(
                  '\$' + balance.toString(),
                  style: TextStyle(
                    color: Color.fromARGB(255, 143, 130, 13),
                    fontSize: 28,
                    
                  ),
                  
                
                
                ),
                Image.asset('lib/icons/chip.png',
                height: 35
                )
              ],
            ),
            
             
          
            



            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //card
                Text(
                  cardNumber.toString(),
                  style: TextStyle(color: Colors.white),
                ),
                //time expire
                Text(
                  expirymonth.toString() + "/" + expiryyear.toString(),
                  style: TextStyle(color: Colors.white),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
