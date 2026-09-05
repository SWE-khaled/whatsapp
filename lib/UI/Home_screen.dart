import 'package:flutter/material.dart';
import 'package:flutter_application_4/UI/Text_Styles.dart';
import 'app_nav_bar.dart';
import 'package:flutter_application_4/Models/API_Response.dart';
import 'package:flutter_application_4/Models/Chat_models.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
     List<ChatModels> chats =ApiResponse.map((e)=>ChatModels.fromJson(e)).toList();
    return  Scaffold(
      backgroundColor: Colors.white,
      appBar: MyAppBar(),
        bottomNavigationBar: MyNavBar(currentIndex: 0),
      body: Column(
       
        children: [
          MySearchBar(), 
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: ListView.separated(
                itemBuilder: (context,i)=>_myChat(chats[i]) ,
                 separatorBuilder: (context,index)=>SizedBox(height: 6,),
                  itemCount: chats.length),
            )
        ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        backgroundColor:  Color(0xFF00A884),
        shape: CircleBorder(),
        child: Icon(Icons.message, color: Colors.white,size: 24,),
      ),
    
    );
  }
}
Widget _myChat(ChatModels chat) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Row(
                  spacing: 10,
              crossAxisAlignment: .start,
              children: 
              [
                CircleAvatar(radius: 26,backgroundImage:NetworkImage(chat.image ??"" )),
                Expanded(
                  child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                    children: 
                    [
                      Row(
                        children: [
                          
                          Expanded(child: Text(chat.name ??"" ,style:WhatsappTextStyles.name,overflow: TextOverflow.ellipsis,maxLines: 1,)),
                          Spacer(),
                          Text( chat.time ??"",style:WhatsappTextStyles.time ,),
                        ],
                      ),
                      SizedBox(height: 4,),
                       _messageBuilder(chat),
                    ],
                  ),
                )
              ],
    ),
  );
}
Widget _messageBuilder(ChatModels chat){
  if (chat.messageType==ChatType.text){
    return Row(
      children: [
        Expanded(child: Text(chat.message ??"",style: WhatsappTextStyles.message ,maxLines: 1,overflow: TextOverflow.ellipsis,)),
         SizedBox(height: 8,)
        ],
    );
  }
  if(chat.messageType==ChatType.gif){
     return Row(
   children: [
        Icon(Icons.gif, size: 20,color: Color(0xFF667781),),
        SizedBox(width: 4),
        Text("GIF",style: tools(),),
      ],    
  );
  }
   if (chat.messageType == ChatType.video) {
    return Row(
      children: [
        Icon(Icons.videocam,size: 18,color: Color(0xFF667781),),
        SizedBox(width: 4),
        Text("Video",style: tools(),),
      ],
    );
  }
   return Text(
    chat.message ?? "",style: tools(),maxLines: 1,overflow: TextOverflow.ellipsis,);
}

TextStyle tools() => TextStyle(fontSize: 14,color: Color(0xFF667781),);