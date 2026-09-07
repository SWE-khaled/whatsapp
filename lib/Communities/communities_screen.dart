import 'package:flutter/material.dart';
import 'communities_bar_nav.dart';

class CommunitiesScreen extends StatelessWidget {
  const CommunitiesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommunitiesAppBar(),
    

      body: SingleChildScrollView(
        child: Column(
          
          children: [
          
         Container(
          height: 70,
          width: double.infinity,
          color: Colors.white,
          padding: EdgeInsets.only(bottom: 10,top: 10),
           child: Row(
            children: [
             Stack(
              clipBehavior: Clip.none,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 12),
                  child: Container(
                    width: 48, height: 48,
                    decoration: BoxDecoration(
                      color: const Color(0xFFE2E3E0),
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                   child:  Icon(Icons.groups,size: 28,color: Colors.white,),
                  ),
                ),
             
                 Positioned (
                 bottom: -2,
                right: -2,
                child: Container(
                  width: 20.0,
                  height: 20.0,
                  decoration: BoxDecoration(
                    color: const Color(0xFF25D366), 
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.white, 
                      width: 2.0,)
                  ),
                    child: const Icon(Icons.add,size: 14.0,color: Colors.white,)
                ),     
               ),
              ],
             ),
             const SizedBox(width: 16.0),
             const Text('New community',style: TextStyle(fontSize: 17.0,fontWeight: FontWeight.w600,color: Color(0xFF111B21),),),
            ],
           ),
         ),
          Container(
          height: 8,
          color: Colors.grey[100],
          ),

          // community 1
         Container(
          height: 280,
          width: double.infinity,
          color:Colors.white,
          child: Column(
         children: [
          ListTile(
            contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical:8),
             leading: ClipRRect(
            borderRadius: BorderRadius.circular(14.0),
            child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTKrv3cEfPhsl4n69Sd_CDFKxBn7aDAyW91KyvS-F5coBo_4ffcMvQt4Z4&s"
            ,width: 48.0,height: 48.0,fit: BoxFit.cover,),
          ),
          title:  Text("eyouth X DEPI 5",style: TextStyle(fontSize: 17.0,fontWeight: FontWeight.w600,color: Color(0xFF111B21),)),
          ),


         Divider(color: Colors.grey.withOpacity(0.2),height: 2,thickness: 1,),
         // 1 comi
        Padding(
          padding: const EdgeInsets.only(top:16 ,left:22 ,right: 15),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Image.network(
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQNjuT73Uk1-14WktX6TfJyANWse7by_29o0oFuc0fIOQ&s=10",
          width: 40.0,
          height: 40.0,
          fit: BoxFit.cover,
                ),
              ),
              const SizedBox(width: 12),
                
              Expanded(
                child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Text(
                  "FreeLancing",
                  style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.w500, color: Color(0xFF111B21),),),
                const Spacer(),
                const Text(
                  "8/1/26",
                  style: TextStyle(fontSize: 12.0,fontWeight: FontWeight.w400, color: Color(0xFF667781),),),
              ],
            ),
            const SizedBox(height: 4),
            const Text(
              "Ahmed is now a community admin",
              style: TextStyle(fontSize: 14.0,fontWeight: FontWeight.w400,color: Color(0xFF667781),height: 1.3,), maxLines: 1,overflow: TextOverflow.ellipsis,),
          ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 18,) ,
      
       //2 comi
        Padding(
          padding: const EdgeInsets.only(top:16 ,left:22 ,right: 15),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Image.network(
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQCyFBpkCwig69MybZ7BXoPeVC-VCK4SR-gQDNqU512lg&s=10",
          width: 40.0,
          height: 40.0,
          fit: BoxFit.cover,
                ),
              ),
              const SizedBox(width: 12),
                
              Expanded(
                child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Text(
                  "MNF5_SWD8_S1",
                  style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.w500, color: Color(0xFF111B21),),),
                const Spacer(),
                const Text(
                  "Yesterday",
                  style: TextStyle(fontSize: 12.0,fontWeight: FontWeight.w400, color: Color(0xFF667781),),),
              ],
            ),
            const SizedBox(height: 4),
            const Text(
              "Upload tasks only on LMS",
              style: TextStyle(fontSize: 14.0,fontWeight: FontWeight.w400,color: Color(0xFF667781),height: 1.3,), maxLines: 1,overflow: TextOverflow.ellipsis,),
          ],
                ),
            ),   
            ],
          ),
        ),
        SizedBox(height: 30,),
           Padding(
             padding: const EdgeInsets.only(left: 22,),
             child: Row(
              children: [
              Icon(Icons.chevron_right,color: Color(0xFF667781),size: 24,),
              SizedBox(width: 24,),
              Text(
            'View all',
             style: TextStyle( fontSize: 16.0,fontWeight: FontWeight.w400,color: Color(0xFF54656F),),),
              ],
             ),
           ),    
    ],      
          ),
         ),
         Container(
          height: 8,
          color: Colors.grey[100],
          ),


         //community 2
         
         Container(
          height: 280,
          width: double.infinity,
          color:Colors.white,
          child: Column(
         children: [
          ListTile(
            contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical:8),
             leading: ClipRRect(
            borderRadius: BorderRadius.circular(14.0),
            child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRgGgFRz8NfFT3XdGNmcw4yuFiRxsyUQ9UUxIVssg5EHg&s=10"
            ,width: 48.0,height: 48.0,fit: BoxFit.cover,),
          ),
          title:  Text("NTI",style: TextStyle(fontSize: 17.0,fontWeight: FontWeight.w600,color: Color(0xFF111B21),)),
          ),


         Divider(color: Colors.grey.withOpacity(0.2),height: 2,thickness: 1,),
         // 1 comi
        Padding(
          padding: const EdgeInsets.only(top:16 ,left:22 ,right: 15),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Image.network(
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQkyCPABcwyT_581VRAVUiSPt5rZdGYh-4yxfU-qBc2xA&s=10",
          width: 40.0,
          height: 40.0,
          fit: BoxFit.cover,
                ),
              ),
              const SizedBox(width: 12),
                
              Expanded(
                child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Text(
                  "Flutter Development",
                  style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.w500, color: Color(0xFF111B21),),),
                const Spacer(),
                const Text(
                  "Today",
                  style: TextStyle(fontSize: 12.0,fontWeight: FontWeight.w400, color: Color(0xFF667781),),),
              ],
            ),
            const SizedBox(height: 4),
            const Text(
              "Are you finish Application ?",
              style: TextStyle(fontSize: 14.0,fontWeight: FontWeight.w400,color: Color(0xFF667781),height: 1.3,), maxLines: 1,overflow: TextOverflow.ellipsis,),
          ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 18,) ,
      
       //2 comi
        Padding(
          padding: const EdgeInsets.only(top:16 ,left:22 ,right: 15),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Image.network(
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSfMEU9b79cHuvF42GhVpR3gXUo5ZRDyMucvj14izxi-A&s=10",
          width: 40.0,
          height: 40.0,
          fit: BoxFit.cover,
                ),
              ),
              const SizedBox(width: 12),
                
              Expanded(
                child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Text(
                  "Database",
                  style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.w500, color: Color(0xFF111B21),),),
                const Spacer(),
                const Text(
                  "9:42",
                  style: TextStyle(fontSize: 12.0,fontWeight: FontWeight.w400, color: Color(0xFF667781),),),
              ],
            ),
            const SizedBox(height: 4),
            const Text(
              "Give me SQL code ",
              style: TextStyle(fontSize: 14.0,fontWeight: FontWeight.w400,color: Color(0xFF667781),height: 1.3,), maxLines: 1,overflow: TextOverflow.ellipsis,),
          ],
                ),
            ),   
            ],
          ),
        ),
        SizedBox(height: 30,),
           Padding(
             padding: const EdgeInsets.only(left: 22,),
             child: Row(
              children: [
              Icon(Icons.chevron_right,color: Color(0xFF667781),size: 24,),
              SizedBox(width: 24,),
              Text(
               'View all',
             style: TextStyle( fontSize: 16.0,fontWeight: FontWeight.w400,color: Color(0xFF54656F),),),
              ],
             ),
           ),    
    ],      
          ),
         ),
         Container(
          height: 8,
          color: Colors.grey[100],
          ),

//comi 3
  Container(
          height: 280,
          width: double.infinity,
          color:Colors.white,
          child: Column(
         children: [
          ListTile(
            contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical:8),
             leading: ClipRRect(
            borderRadius: BorderRadius.circular(14.0),
            child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQxbq9Gcbjol1AiEaRaWTP5l_iQim1s5s9Z1WiUpz_c-Q&s=10"
            ,width: 48.0,height: 48.0,fit: BoxFit.cover,),
          ),
          title:  Text("Route",style: TextStyle(fontSize: 17.0,fontWeight: FontWeight.w600,color: Color(0xFF111B21),)),
          ),


         Divider(color: Colors.grey.withOpacity(0.2),height: 2,thickness: 1,),
         // 1 comi
        Padding(
          padding: const EdgeInsets.only(top:16 ,left:22 ,right: 15),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Image.network(
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQzIr7XTfeH56LSOD76lBpvsfecZN0Dvt42p9ws1iebrQ&s=10",
          width: 40.0,
          height: 40.0,
          fit: BoxFit.cover,
                ),
              ),
              const SizedBox(width: 12),
                
              Expanded(
                child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Text(
                  "Back-end",
                  style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.w500, color: Color(0xFF111B21),),),
                const Spacer(),
                const Text(
                  "11:02",
                  style: TextStyle(fontSize: 12.0,fontWeight: FontWeight.w400, color: Color(0xFF667781),),),
              ],
            ),
            const SizedBox(height: 4),
            const Text(
              "Looking for a Backend roadmap and resources.",
              style: TextStyle(fontSize: 14.0,fontWeight: FontWeight.w400,color: Color(0xFF667781),height: 1.3,), maxLines: 1,overflow: TextOverflow.ellipsis,),
          ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 18,) ,
      
       //2 comi
        Padding(
          padding: const EdgeInsets.only(top:16 ,left:22 ,right: 15),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Image.network(
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSxliKQs-o0MXZaXoxQDo7RpHTl6uhhov7G3HLUAOyCYg&s=10",
          width: 40.0,
          height: 40.0,
          fit: BoxFit.cover,
                ),
              ),
              const SizedBox(width: 12),
                
              Expanded(
                child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Text(
                  "English Course",
                  style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.w500, color: Color(0xFF111B21),),),
                const Spacer(),
                const Text(
                  "2:40",
                  style: TextStyle(fontSize: 12.0,fontWeight: FontWeight.w400, color: Color(0xFF667781),),),
              ],
            ),
            const SizedBox(height: 4),
            const Text(
              " I want to improve my English skills and become more confident in speaking.",
              style: TextStyle(fontSize: 14.0,fontWeight: FontWeight.w400,color: Color(0xFF667781),height: 1.3,), maxLines: 1,overflow: TextOverflow.ellipsis,),
          ],
                ),
            ),   
            ],
          ),
        ),
        SizedBox(height: 30,),
           Padding(
             padding: const EdgeInsets.only(left: 22,),
             child: Row(
              children: [
              Icon(Icons.chevron_right,color: Color(0xFF667781),size: 24,),
              SizedBox(width: 24,),
              Text(
               'View all',
             style: TextStyle( fontSize: 16.0,fontWeight: FontWeight.w400,color: Color(0xFF54656F),),),
              ],
             ),
           ), 
    ],      
          ),
         ),
         Container(
          height: 8,
          color: Colors.grey[100],
          ),

          ],
        ),
      ),

      bottomNavigationBar: const CommunitiesBarNav(currentIndex: 2,),
    );
  }
}