import 'package:flutter/material.dart';
import 'package:flutter_application_4/Calls/calls_bar_nav.dart';
import 'package:flutter_application_4/Models/api_calls.dart';
import 'package:flutter_application_4/Models/calls_models.dart';

class CallsScreen extends StatelessWidget {
  const CallsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<CallsModels> calls =ApiResponseCalls.map((e) => CallsModels.fromJson(e)).toList();
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: CallAppBar(),
            floatingActionButton: FloatingActionButton(
        onPressed: null,
        backgroundColor: const Color(0xFF00A884),
        shape: const CircleBorder(),
        child: const Icon(Icons.add_call, color: Colors.white, size: 24),
      ),
       bottomNavigationBar: CallsBarNav(currentIndex: 3),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                spacing: 15,
                children: [
                  Column(
                    children: [
                      CircleAvatar(radius: 28,backgroundColor: Colors.grey[200],child: Icon(Icons.call ,color: Colors.black,size: 18,),),
                      SizedBox(height: 5,),
                      Text("Call",style: TextStyle(fontSize: 15,color: Colors.black87,fontWeight: .w400),)
                    ],
                  ),
                  Column(
                    children: [
                      CircleAvatar(radius: 28,backgroundColor: Colors.grey[200],child: Icon(Icons.calendar_month_outlined ,color: Colors.black,size: 18,),),
                      SizedBox(height: 5,),
                      Text("Schedule",style: TextStyle(fontSize: 15,color: Colors.black87,fontWeight: .w400),)
                    ],
                  ),
                  Column(
                    children: [
                      CircleAvatar(radius: 28,backgroundColor: Colors.grey[200],child: Icon(Icons.dialpad_outlined ,color: Colors.black,size: 18,),),
                      SizedBox(height: 5,),
                      Text("Keypad",style: TextStyle(fontSize: 15,color: Colors.black87,fontWeight: .w400),)
                    ],
                  ),
                  Column(
                    children: [
                      CircleAvatar(radius: 28,backgroundColor: Colors.grey[200],backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ5qINl9tvmE47DFcINThBLve6-vYVb4-gw9U-N0VqVtQ&s=10"),),
                      SizedBox(height: 5,),
                      Text("khaled",style: TextStyle(fontSize: 15,color: Colors.black87,fontWeight: .w400),)
                    ],
                  ),
                   Column(
                    children: [
                      CircleAvatar(radius: 28,backgroundColor: Colors.grey[200],backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSxqQ4omtiB38H7HQ7W7_-hED2OGcKdMbTrOTfRgdl1Tg&s=10")),
                      SizedBox(height: 5,),
                      Text("Sara",style: TextStyle(fontSize: 15,color: Colors.black87,fontWeight: .w400),)
                    ],
                  ),
                  Column(
                    children: [
                      CircleAvatar(radius: 28,backgroundColor: Colors.grey[200],backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSUMy4sj63vuL3oSiolmH_4JnF6IJcJAHpJWwSJyGgcfGyzLlKskK60nmI&s")),
                      SizedBox(height: 5,),
                      Text("Youssef",style: TextStyle(fontSize: 15,color: Colors.black87,fontWeight: .w400),)
                    ],
                  ),
                    Column(
                    children: [
                      CircleAvatar(radius: 28,backgroundColor: Colors.grey[200],backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTKDrID6GlSHW5NdLTZvCdOQ7TCQ17eCkXknEUMsaj3zQ&s=10")),
                      SizedBox(height: 5,),
                      Text("Mariam",style: TextStyle(fontSize: 15,color: Colors.black87,fontWeight: .w400),)
                    ],
                  ),
                      Column(
                    children: [
                      CircleAvatar(radius: 28,backgroundColor: Colors.pink[200],child: Icon(Icons.people ,color: Colors.pink,size: 18,),),
                      SizedBox(height: 5,),
                      Text("Group",style: TextStyle(fontSize: 15,color: Colors.black87,fontWeight: .w400),)
                    ],
                  ),
                      Column(
                    children: [
                      CircleAvatar(radius: 28,backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRgGgFRz8NfFT3XdGNmcw4yuFiRxsyUQ9UUxIVssg5EHg&s=10"),),
                      SizedBox(height: 5,),
                      Text("NTI",style: TextStyle(fontSize: 15,color: Colors.black87,fontWeight: .w400),)
                    ],
                  ),
                       Column(
                    children: [
                      CircleAvatar(radius: 28,backgroundColor: Colors.grey[200],child: Icon(Icons.favorite_border ,color: Colors.black,size: 18,),),
                      SizedBox(height: 5,),
                      Text("Favorite",style: TextStyle(fontSize: 15,color: Colors.black87,fontWeight: .w400),)
                    ],
                  ),
                ],
              ),
            ),
          ),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            children: [
              Text("Recent",style: TextStyle(color: Colors.black,fontSize: 23,fontWeight: .bold,letterSpacing: -0.6),),
            ],
          ),
        ),
        SizedBox(height: 6),
        Expanded(
          child: ListView.separated
          (
             itemCount: calls.length,
          
            itemBuilder: (context,i)=>_mycall(calls[i]),
           
           separatorBuilder: (context, index) => const SizedBox(height: 4.0),
          ),
        ),
        ],
      ),
    );
  }

  Padding _mycall(CallsModels calls) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 6),
        child: Column(
          children: [
            Row(
            children: [
              CircleAvatar(
                child: CircleAvatar(radius: 24,backgroundImage: NetworkImage(calls.image??""),),
              ),
              SizedBox(width: 10,),
              Column(
                crossAxisAlignment: .start,
                children: [

                  Text(calls.name??"",style: TextStyle(fontSize: 17,fontWeight: .w500, color: calls.messageType=="missed_call"?Colors.red: Color(0xFF111B21),),),

                  SizedBox(height: 4,),

                  Row(
                    children: [
                   Icon(
                  calls.message=="↙"?Icons.north_west:Icons.north_east,
                   size: 16,color:calls.messageType=="missed_call"?Colors.red: Color(0xFF25D366),),
                  SizedBox(width: 6,),
                  Text(calls.time??"" ,style: TextStyle(fontSize: 14.0,fontWeight: FontWeight.w400,color: Color(0xFF667781),),)
                    ],
                  ),

                ],
              ),
              Spacer(),
              const Icon(Icons.call_outlined, color: Colors.black,size: 28,),
            ],
            ),
          ],
        ),
        );
        
  }
}