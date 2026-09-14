import 'package:flutter/material.dart';
import 'package:flutter_application_4/Calls/calls_screen.dart';
import 'package:flutter_application_4/Communities/communities_screen.dart';
import 'package:flutter_application_4/Updates/Updates_screen.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
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
  final TextEditingController? controller;
  final ValueChanged<String>? onChanged;
  const MySearchBar({super.key ,this.controller,this.onChanged});
  

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Container(
        height: 48,
        decoration: BoxDecoration(
          color: const Color(0xFFF0F2F5),
          borderRadius: BorderRadius.circular(24),
        ),
        child: TextFormField(
          autofocus: false,controller: controller,onChanged: onChanged,
          textAlignVertical: TextAlignVertical.center,
          style: const TextStyle(fontSize: 16, color: Color(0xFF050505)),
          decoration: InputDecoration(
            hintText: 'Ask Meta AI or search',
            hintStyle: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: Color(0xFF65676B),
            ),
            prefixIcon: Icon(Icons.search, color: Color(0xFF65676B), size: 22),

            //Buttom for cancel search
            suffixIcon: controller !=null &&controller!.text.isNotEmpty ?
            IconButton(
                    icon:  Icon(Icons.clear, color: Color(0xFF65676B), size: 20),
                    onPressed: () {
                      controller!.clear();
                      if (onChanged != null) onChanged!('');
                    } )
                    :null,
                  
            border: InputBorder.none,
            contentPadding: EdgeInsets.zero,
          ),
        ),
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
       else if (index==2){
        Navigator.push(context, MaterialPageRoute(builder: (context)=> CommunitiesScreen(),));
       }
        else if(index==3)
       {
        Navigator.push(context, MaterialPageRoute(builder: (context)=> CallsScreen(),)
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