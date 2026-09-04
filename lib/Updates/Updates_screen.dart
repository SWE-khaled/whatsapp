import 'package:flutter/material.dart';
import 'package:flutter_application_4/Updates/Updates_bar_nav.dart';

class UpdatesScreen extends StatelessWidget {
  const UpdatesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: UpdatesAppBar(),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
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
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    // Add Status
                    Container(
                      width: 96.0,
                      height: 160.0,
                      padding: const EdgeInsets.symmetric(
                        vertical: 12.0,
                        horizontal: 8.0,
                      ),
                      decoration: BoxDecoration(
                        color: const Color(0xFFF7F8FA),
                        
                        borderRadius: BorderRadius.circular(18.0),
                        border: Border.all(
                          color: const Color(0xFFE9EDEF),
                          width: 1.0,
                        ),
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
                                        border: Border.all(
                                          color: Colors.white,
                                          width: 2,
                                        ),
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
                    ),

                    const SizedBox(width: 10),

                    //status 1
                     Container(
                      width: 96.0,
                      height: 160.0,
                      padding: const EdgeInsets.symmetric(
                        vertical: 12.0,
                        horizontal: 8.0,
                        
                      ),
                      decoration: BoxDecoration(
                        color: const Color(0xFFF7F8FA),
                        borderRadius: BorderRadius.circular(18.0),
                        border: Border.all(
                          color: const Color(0xFFE9EDEF),
                          width: 1.0,
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: .start,
                        children: [
                          
                          const CircleAvatar(
                            backgroundImage: NetworkImage(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRdRAAafrq3uDXl0Ldruo13jSzxtE5K5hTsk54Ub8d2cqhEo6YlfJIMl04&s",
                            ),
                            radius: 28,
                          ),

                          Spacer(),
                          const Text(
                            "Omar",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 13.0,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),

                    // Status 2
                     Container(
                      width: 96.0,
                      height: 160.0,
                      padding: const EdgeInsets.symmetric(
                        vertical: 12.0,
                        horizontal: 8.0,
                      ),
                      decoration: BoxDecoration(
                        color: const Color(0xFFF7F8FA),
                        borderRadius: BorderRadius.circular(18.0),
                        border: Border.all(
                          color: const Color(0xFFE9EDEF),
                          width: 1.0,
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: .start,
                        children: [
                          
                          const CircleAvatar(
                            backgroundImage: NetworkImage(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ5qINl9tvmE47DFcINThBLve6-vYVb4-gw9U-N0VqVtQ&s=10",
                            ),
                            radius: 28,
                          ),

                          Spacer(),
                          const Text(
                            "Khaled",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 13.0,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
        

                    const SizedBox(width: 10),

                    // Status 3
                     Container(
                      width: 96.0,
                      height: 160.0,
                      padding: const EdgeInsets.symmetric(
                        vertical: 12.0,
                        horizontal: 8.0,
                      ),
                      decoration: BoxDecoration(
                        color: const Color(0xFFF7F8FA),
                        borderRadius: BorderRadius.circular(18.0),
                        border: Border.all(
                          color: const Color(0xFFE9EDEF),
                          width: 1.0,
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: .start,
                        children: [
                          
                          const CircleAvatar(
                            backgroundImage: NetworkImage(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSxqQ4omtiB38H7HQ7W7_-hED2OGcKdMbTrOTfRgdl1Tg&s=10",
                            ),
                            radius: 28,
                          ),

                          Spacer(),
                          const Text(
                            "Sara",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 13.0,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                    
                    const SizedBox(width: 10),

                    // Status 4
                    Container(
                      width: 96.0,
                      height: 160.0,
                      padding: const EdgeInsets.symmetric(
                        vertical: 12.0,
                        horizontal: 8.0,
                      ),
                      decoration: BoxDecoration(
                        color: const Color(0xFFF7F8FA),
                        borderRadius: BorderRadius.circular(18.0),
                        border: Border.all(
                          color: const Color(0xFFE9EDEF),
                          width: 1.0,
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: .start,
                        children: [
                          
                          const CircleAvatar(
                            backgroundImage: NetworkImage(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT7fkW2aeAIJJgXKT6c50dtcNp5q-emzSIvlvbbPMiano541-6IWqP-Nes&s",
                            ),
                            radius: 28,
                          ),

                          Spacer(),
                          const Text(
                            "Mahmoud",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 13.0,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(width: 10,),

                    //status 5 
                      Container(
                      width: 96.0,
                      height: 160.0,
                      padding: const EdgeInsets.symmetric(
                        vertical: 12.0,
                        horizontal: 8.0,
                      ),
                      decoration: BoxDecoration(
                        color: const Color(0xFFF7F8FA),
                        borderRadius: BorderRadius.circular(18.0),
                        border: Border.all(
                          color: const Color(0xFFE9EDEF),
                          width: 1.0,
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: .start,
                        children: [
                          
                          const CircleAvatar(
                            backgroundImage: NetworkImage(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTKDrID6GlSHW5NdLTZvCdOQ7TCQ17eCkXknEUMsaj3zQ&s=10",
                            ),
                            radius: 28,
                          ),

                          Spacer(),
                          const Text(
                            "Mariam",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 13.0,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),

                    
                    SizedBox(width: 10,),

                    //status 6
                      Container(
                      width: 96.0,
                      height: 160.0,
                      padding: const EdgeInsets.symmetric(
                        vertical: 12.0,
                        horizontal: 8.0,
                      ),
                      decoration: BoxDecoration(
                        color: const Color(0xFFF7F8FA),
                        borderRadius: BorderRadius.circular(18.0),
                        border: Border.all(
                          color: const Color(0xFFE9EDEF),
                          width: 1.0,
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: .start,
                        children: [
                          
                          const CircleAvatar(
                            backgroundImage: NetworkImage(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSUMy4sj63vuL3oSiolmH_4JnF6IJcJAHpJWwSJyGgcfGyzLlKskK60nmI&s",
                            ),
                            radius: 28,
                          ),

                          Spacer(),
                          const Text(
                            "Youssef",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 13.0,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(width: 10,),

                    //status 7
                       Container(
                      width: 96.0,
                      height: 160.0,
                      padding: const EdgeInsets.symmetric(
                        vertical: 12.0,
                        horizontal: 8.0,
                      ),
                      decoration: BoxDecoration(
                        color: const Color(0xFFF7F8FA),
                        borderRadius: BorderRadius.circular(18.0),
                        border: Border.all(
                          color: const Color(0xFFE9EDEF),
                          width: 1.0,
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: .start,
                        children: [
                          
                         Icon(Icons.visibility_off_outlined, color: Color(0xFF54656F),size: 28,),

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
                    ),


                  
                    

                  ],
                ),
              ),
            ],
          ),
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: null,
        backgroundColor: const Color(0xFF00A884),
        shape: const CircleBorder(),
        child: const Icon(
          Icons.camera_alt,
          color: Colors.white,
          size: 24,
        ),
      ),

      bottomNavigationBar: UpdatesNavBar(
        currentIndex: 1,
      ),
    );
  }
}