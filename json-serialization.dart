import 'dart:convert';

void main() {
  var rawJson = '{"url": "https://any-url.com", "id": 1}';

  var parsedJson = json.decode(rawJson) as Map<String, dynamic>;
  var imageModel = ImageModel.fromJson(parsedJson);
  print(imageModel.url);
  print(imageModel.id);
}

class ImageModel {
  int id;
  String url;

  ImageModel(this.id, this.url);

  factory ImageModel.fromJson(Map<String, dynamic> json) {
    return ImageModel(json['id'] as int, json['url'] as String);
  }
}
