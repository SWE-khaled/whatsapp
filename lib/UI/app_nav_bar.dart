import 'package:flutter/material.dart';
import 'package:flutter_application_4/Updates/Updates_screen.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
     scrolledUnderElevation: 0, 
      title: const Text(
        "WhatsApp",
        style: TextStyle( color: Color(0xFF008069),fontSize: 23,fontWeight: FontWeight.w700,letterSpacing: -0.5,),),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.camera_alt_outlined, color: Color(0xFF111B21)),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.more_vert, color: Color(0xFF111B21)),
        ),
        const SizedBox(width: 4),
      ],
    );
  }
}

class MySearchBar extends StatelessWidget {
  const MySearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      padding: const EdgeInsets.symmetric(horizontal: 16),
      height: 48,
      decoration: BoxDecoration(
        color: const Color(0xFFF6F6F6),
        borderRadius: BorderRadius.circular(24),
      ),
      child: Row(
        children: const 
        [
          Icon(Icons.search, color: Color(0xFF667781)),
          SizedBox(width: 12),
          Text("Ask Meta AI or Search",style: TextStyle(color: Color(0xFF667781),fontSize: 16,),),
        ],
      ),
    );
  }
}

class MyNavBar extends StatelessWidget {
  final int currentIndex;
  const MyNavBar({super.key, required this.currentIndex});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
     backgroundColor: Colors.white,
      currentIndex: currentIndex,
      selectedItemColor: const Color(0xFF008069),
      unselectedItemColor: const Color.fromARGB(255, 0, 0, 0),
      type: BottomNavigationBarType.fixed,

onTap: (index){
       if(index==1)
       {
        Navigator.push(context, MaterialPageRoute(builder: (context)=> UpdatesScreen(),)
        );
       }
      }, 

      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.chat_outlined),
          activeIcon: Icon(Icons.chat),
          label: 'Chats',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.update),
          label: 'Updates',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.people_outline),
          activeIcon: Icon(Icons.people),
          label: 'Communities',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.call_outlined),
          activeIcon: Icon(Icons.call),
          label: 'Calls',
        ),
      ],
    );
  }
}