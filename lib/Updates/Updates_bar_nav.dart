import 'package:flutter/material.dart';
import 'package:flutter_application_4/UI/Home_screen.dart';

class UpdatesAppBar extends StatelessWidget implements PreferredSizeWidget {
  const UpdatesAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
     scrolledUnderElevation: 0, 
  title: Text("Updates",style: TextStyle(fontSize: 24,fontWeight: FontWeight.w600,color: Color(0xFF111B21),letterSpacing: -0.2)),
    actions: [
      IconButton(onPressed:() {}, icon: Icon(Icons.search,color: Color(0xFF111B21),size: 24,),),
      IconButton(onPressed: (){}, icon: Icon(Icons.more_vert,color:Color(0xFF111B21),size: 24,))
    ],
    );
  }
}

class UpdatesNavBar extends StatelessWidget {
  final int currentIndex;
  const UpdatesNavBar({super.key, required this.currentIndex});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
     backgroundColor: Colors.white,
      currentIndex: currentIndex,
      selectedItemColor: const Color(0xFF008069),
      unselectedItemColor: const Color.fromARGB(255, 0, 0, 0),
      type: BottomNavigationBarType.fixed,
      onTap: (index){
       if(index==0)
       {
        Navigator.push(context, MaterialPageRoute(builder: (context)=>const HomeScreen(),)
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