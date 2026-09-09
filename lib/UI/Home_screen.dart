import 'package:flutter/material.dart';
import 'package:flutter_application_4/UI/Text_Styles.dart';
import 'app_nav_bar.dart';
import 'package:flutter_application_4/Models/API_Response.dart';
import 'package:flutter_application_4/Models/Chat_models.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _searchController = TextEditingController();
  List<ChatModels> allChats = [];
  List<ChatModels> filteredChats = [];

  @override
  void initState() {
    super.initState();
    allChats = ApiResponse.map((e) => ChatModels.fromJson(e)).toList();
    filteredChats = allChats;
  }

  void _filterChats(String query) {
    setState(() {
      if (query.isEmpty) {
        filteredChats = allChats;
      } else {
        filteredChats = allChats
            .where((chat) =>
                (chat.name ?? '').toLowerCase().contains(query.toLowerCase()))
            .toList();
      }
    });
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const MyAppBar(),
      bottomNavigationBar: const MyNavBar(currentIndex: 0),
      body: Column(
        children: [
          MySearchBar(
            controller: _searchController,
            onChanged: _filterChats,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: filteredChats.isEmpty
                  ? const Center(
                      child: Text(
                        "No chats found",
                        style: TextStyle(color: Color(0xFF667781), fontSize: 16),
                      ),
                    )
                  : ListView.separated(
                      itemBuilder: (context, i) => _myChat(filteredChats[i]),
                      separatorBuilder: (context, index) =>
                          const SizedBox(height: 6),
                      itemCount: filteredChats.length,
                    ),
            ),
          ),
        ],
      ),
      floatingActionButton: const FloatingActionButton(
        onPressed: null,
        backgroundColor: Color(0xFF00A884),
        shape: CircleBorder(),
        child: Icon(Icons.message, color: Colors.white, size: 24),
      ),
    );
  }
}

Widget _myChat(ChatModels chat) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CircleAvatar(
          radius: 26,
          backgroundImage: NetworkImage(chat.image ?? ""),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Text(
                      chat.name ?? "",
                      style: WhatsappTextStyles.name,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                  ),
                  Text(
                    chat.time ?? "",
                    style: WhatsappTextStyles.time,
                  ),
                ],
              ),
              const SizedBox(height: 4),
              _messageBuilder(chat),
            ],
          ),
        ),
      ],
    ),
  );
}

Widget _messageBuilder(ChatModels chat) {
  if (chat.messageType == ChatType.text) {
    return Row(
      children: [
        Expanded(
          child: Text(
            chat.message ?? "",
            style: WhatsappTextStyles.message,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }
  if (chat.messageType == ChatType.gif) {
    return Row(
      children: [
        const Icon(Icons.gif, size: 20, color: Color(0xFF667781)),
        const SizedBox(width: 4),
        Text("GIF", style: tools()),
      ],
    );
  }
  if (chat.messageType == ChatType.video) {
    return Row(
      children: [
        const Icon(Icons.videocam, size: 18, color: Color(0xFF667781)),
        const SizedBox(width: 4),
        Text("Video", style: tools()),
      ],
    );
  }
  return Text(
    chat.message ?? "",
    style: tools(),
    maxLines: 1,
    overflow: TextOverflow.ellipsis,
  );
}

TextStyle tools() => const TextStyle(fontSize: 14, color: Color(0xFF667781));