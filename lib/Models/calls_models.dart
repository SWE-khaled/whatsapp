class CallsModels {
  int? id;
  String? name;
  String? message;
  String? time;
  String? image;
  String? messageType;

  CallsModels({
    required this.id,
    required this.name,
    required this.message,
    required this.time,
    required this.image,
    required this.messageType,
  });

  CallsModels.fromJson(Map json) {
    id = json["id"];
    name = json["name"];
    message = json["message"];
    time = json["time"];
    image = json["image"];
    messageType = json["message_type"];
  }
}