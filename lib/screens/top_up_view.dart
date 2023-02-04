import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class TopUpFunction extends StatefulWidget {
  const TopUpFunction({super.key});

  @override
  State<TopUpFunction> createState() => _TopUpFunctionState();
}

class _TopUpFunctionState extends State<TopUpFunction> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: SingleChildScrollView(
        child: SafeArea(
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
            SizedBox(
              
              height: 500,
              child: Container(
                width: 360,
                
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(color: Colors.white),
                child: SingleChildScrollView(
                  child: Column(children: [
                  Text('Name',style: TextStyle(fontSize: 26,)),
                  TextField(
                    
                   decoration: InputDecoration(
                labelText: 'Enter Name',
                // Set border for enabled state (default)
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(width: 3, color: Color.fromRGBO(10, 10, 10, 1)),
                  borderRadius: BorderRadius.circular(15),
                ),
                // Set border for focused state
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(width: 3, color: Color.fromARGB(255, 14, 13, 13)),
                  borderRadius: BorderRadius.circular(15),
                )),
                  ),
                   Text('Account Number:',style: TextStyle(fontSize: 26,)),
                  Text(
                    '2384744477',
                    style: TextStyle(backgroundColor: Colors.white,fontSize: 26)),
                    SizedBox(height: 25,),
                  
                  SizedBox(height: 25,),
                  Text(
                    
                    'Amount \(\$\)',style: TextStyle(fontSize: 26,),
                    textAlign: TextAlign.left,
                  ),
                  TextField( 
                    decoration: InputDecoration(
                labelText: 'Enter Amount',
                // Set border for enabled state (default)
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(width: 3, color: Colors.blue),
                  borderRadius: BorderRadius.circular(15),
                ),
                // Set border for focused state
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(width: 3, color: Color.fromRGBO(12, 11, 11, 1)),
                  borderRadius: BorderRadius.circular(15),
                ))),
                  
                  SizedBox(height: 25,),
                            ]),
                ),
              ),
            ),
            SizedBox(height: 25,),
            Container(
              margin: EdgeInsets.fromLTRB(0, 100, 0, 0),
             child: Column(children: [
      
              ElevatedButton(
                style: ButtonStyle(),
                onPressed: () {
                Navigator.push(context,MaterialPageRoute(builder: (context)=> TopUpFunction()));
              }, child: Text('Pay Now',),)
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
      ),
 
    );

  }
}