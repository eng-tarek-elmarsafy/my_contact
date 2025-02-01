class InfoSocialModel {
  final String url;
  final String pathIcon;

  InfoSocialModel({required this.url, required this.pathIcon});

  Map<String, dynamic> toMap() {
    return {'url': url, 'pathIcon': pathIcon};
  }

   static fromMap(Map<String, dynamic> data) {
    return InfoSocialModel(url: data['url']??'', pathIcon: data['pathIcon']??'');
  }
}
