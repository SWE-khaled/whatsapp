class ChannelsModels {
   int ?id;
   String? name;
  String? message;
  String? time;
 String? image;

  ChannelsModels({
    required this.id,
    required this.name,
    required this.message,
    required this.time,
    required this.image,
  });

  ChannelsModels.fromJson(Map json) {
    id = json["id"];
    name = json["name"];
    message = json["message"];
    time = json["time"];
    image = json["image"];
    
  }
}


