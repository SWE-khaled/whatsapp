import 'package:flutter/material.dart';
import 'package:flutter_application_4/Models/Updates_models.dart';
import 'package:flutter_application_4/Models/Updates_API_Response.dart';
import 'package:flutter_application_4/Updates/Updates_bar_nav.dart';
import 'package:flutter_application_4/Models/channels_API.dart';
import 'package:flutter_application_4/Models/Channels_models.dart';
import 'package:flutter_application_4/UI/Text_Styles.dart';


class UpdatesScreen extends StatelessWidget {
  const UpdatesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<UpdatesModels> updates = updatesApiResponse.map((e) => UpdatesModels.fromJson(e)).toList();
    List<ChannelsModels> channels = channelsApiResponse.map((e) => ChannelsModels.fromJson(e)).toList();
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: UpdatesAppBar(),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Status Title
              const Text(
                "Status",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF111B21),
                  letterSpacing: -0.3,
                ),
              ),

              const SizedBox(height: 12),

              // Status Cards
              SizedBox(
                height: 160,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: updates.length +2, 
                  separatorBuilder: (context, index) => const SizedBox(width: 10),
                  itemBuilder: (context, i) {

                    if (i == 0) {
                      return const _addStatus();
                    }
                    if (i == updates.length + 1) {
                      return const Hidden();
                    }
                    final item = updates[i - 1];
                    return _statusCard(
                      name: item.name ?? "",
                      image: item.image ?? "",
                    );
                  },
                ),
              ),


           Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                Text("Channels",style: TextStyle(fontSize: 20,fontWeight: .bold,letterSpacing: -0.3,color: Color(0xFF111B21)),),
                Container(
                  height: 36.0,
                 padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                 decoration: BoxDecoration(
                  color: const Color(0xFFF0F2F5),
                 borderRadius: BorderRadius.circular(18.0),
                  ),
                  child: const Center(
                 child: Text('Explore',style: TextStyle(fontSize: 14.0,fontWeight: FontWeight.w600,color: Color(0xFF111B21),),)
                  )
                )
                ],
                ),
              ),
                  
                
                ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, i) => _myChannel(channels[i]),
                  separatorBuilder: (context,index)=>SizedBox(height: 6,),
                  itemCount: channels.length,
                ),
            ],
            
            ),
          ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: null,
        backgroundColor: const Color(0xFF00A884),
        shape: const CircleBorder(),
        child: const Icon(Icons.camera_alt, color: Colors.white, size: 24),
      ),

      bottomNavigationBar: UpdatesNavBar(currentIndex: 1),
    );
  }
  }

class Hidden extends StatelessWidget {
  const Hidden({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 96.0,
      height: 160.0,
      padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 8.0),
      decoration: BoxDecoration(
        color: const Color(0xFFF7F8FA),
        borderRadius: BorderRadius.circular(18.0),
        border: Border.all(color: const Color(0xFFE9EDEF), width: 1.0),
      ),
      child: Column(
        crossAxisAlignment: .start,
        children: [
          Icon(
            Icons.visibility_off_outlined,
            color: Color(0xFF54656F),
            size: 28,
          ),

          Spacer(),
          const Text(
            "Hidden",
            style: TextStyle(
              fontSize: 13.0,
              color: Color(0xFF54656F),
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}

class _statusCard extends StatelessWidget {
  final String name;
  final String image;

  const _statusCard({required this.name, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 96.0,
      height: 160.0,
      padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 8.0),
      decoration: BoxDecoration(
        color: const Color(0xFFF7F8FA),
        borderRadius: BorderRadius.circular(18.0),
        border: Border.all(color: const Color(0xFFE9EDEF), width: 1.0),
      ),
      child: Column(
        crossAxisAlignment: .start,
        children: [
          CircleAvatar(backgroundImage: NetworkImage(image), radius: 28),

          Spacer(),
          Text(
            name,
            style: TextStyle(
              color: Colors.black,
              fontSize: 13.0,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}

class _addStatus extends StatelessWidget {
  const _addStatus({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 96.0,
      height: 160.0,
      padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 8.0),
      decoration: BoxDecoration(
        color: const Color(0xFFF7F8FA),

        borderRadius: BorderRadius.circular(18.0),
        border: Border.all(color: const Color(0xFFE9EDEF), width: 1.0),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Stack(
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSI7cofszwl9zLSawrPB5vlc6HAJRTuXL4nPvNAo2i4Z0-qb6xAJyV3HwA&s",
                  ),
                  radius: 32,
                ),

                // Add Button
                Positioned(
                  right: 0,
                  bottom: 0,
                  child: GestureDetector(
                    onTap: () {
                      // Open Gallery
                    },
                    child: Container(
                      width: 25,
                      height: 25,
                      decoration: BoxDecoration(
                        color: const Color(0xFF00A884),
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.white, width: 2),
                      ),
                      child: const Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 18,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          const Spacer(),

          const Text(
            "Add status",
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.w700,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
Widget _myChannel(ChannelsModels channels){
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Row (
      spacing: 10,
        crossAxisAlignment: .start,
        children: [
          CircleAvatar(radius: 26,backgroundImage: NetworkImage(channels.image??""),),
          Expanded(
            child: Column(
              crossAxisAlignment: .start,
              children: [
                Row(
                  children: [
                        Text(channels.name ??"" ,style:WhatsappTextStyles.name),
                          Spacer(),
                          Text( channels.time ??"",style:WhatsappTextStyles.time ),
                  ],
                ),
                  SizedBox(height: 4,),
                  Text(channels.message ??"",style: WhatsappTextStyles.message,)
              ],
            ),
            )
        ],
    
    ),
  );
}