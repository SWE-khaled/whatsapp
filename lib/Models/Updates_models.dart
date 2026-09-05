class UpdatesModels {
   int ?id  ;
   String? name ;
   String ?image ;
  UpdatesModels({
    required this.id ,
    required this.name,
    required this.image,
  });

  UpdatesModels.fromJson(Map json){
     id = json["id"];
    name = json["name"];
    image = json["image"];
}

}