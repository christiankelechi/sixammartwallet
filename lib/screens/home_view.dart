import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sixammartwallet/screens/top_up_view.dart';

class Wallet_Home extends StatefulWidget {
  const Wallet_Home({super.key});

  @override
  State<Wallet_Home> createState() => _Wallet_HomeState();
}

class _Wallet_HomeState extends State<Wallet_Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: SafeArea(
        child: Column(children: [
          // App bar
          Padding(
            padding:const EdgeInsets.symmetric(horizontal:25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Row(
                children: [
                  SizedBox(height: 25,),
                  Text('Wallet ',style: TextStyle(fontSize: 26,),),
            Text('Dashboard',style: TextStyle(fontSize: 26,fontWeight: FontWeight.bold),),
            
             ],),
             Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(color: Colors.grey,shape: BoxShape.circle),
              child: Icon(Icons.add)),
                ],
              ),  
            
          ),
          //  cards
          SizedBox(height: 25,),
          Expanded(
            child: Container(
              width: 360,
              
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(color: Colors.white),
              child: Column(children: [
              Text('Balance',style: TextStyle(fontSize: 36,)),
              Text('\$29800000',style: TextStyle(fontSize: 26,fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 25,),
               Text('Wallet Address',style: TextStyle(fontSize: 20,)),
              Text('2980077021',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
              ),
            ]),
            ),
          ),
          Container(
           child: Column(children: [

            ElevatedButton(
              style: ButtonStyle(),
              onPressed: () {
              Navigator.push(context,MaterialPageRoute(builder: (context)=> TopUpFunction()));
            }, child: Text('Top up Balance'))
           ]), 
          )
          // 3 buttons
          //
          //Column starts transaction 
        // Column(children: [
          
        //   Row(
        //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //     children: [Text('Balance'), Text('2990000')],)
        // ],)
         ]
        ),
      
      ),
 
    );

  }

}