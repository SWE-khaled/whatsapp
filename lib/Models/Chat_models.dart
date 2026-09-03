class ChatModels {
  int? id;
  String? name;
  String? message;
  String? time;
  String? image;
  ChatType? messageType;

  ChatModels({
    this.id,
    this.name,
    this.message,
    this.time,
    this.image,
    this.messageType,
  });

  ChatModels.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    name = json["name"];
    message = json["message"];
    time = json["time"];
    image = json["image"];
    messageType = getChatType(json["message_type"]);
  }
}

enum ChatType {
  text,
  video,
  gif,
}

ChatType getChatType(String chatType) {
  switch (chatType) {
    case "text":
      return ChatType.text;

    case "video":
      return ChatType.video;

    case "gif":
      return ChatType.gif;
      
    default:
      return ChatType.text;
  }
}

