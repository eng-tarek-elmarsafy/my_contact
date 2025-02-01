import 'package:my_contats_app/models/infosocial_model.dart';

class UserModel {
  final String name;
  final String id;
  final String image;
  final String phoneNumber;
  final InfoSocialModel socialMediaPlatforms;

  UserModel(
      {required this.name,
      required this.id,
      required this.image,
      required this.phoneNumber,
      required this.socialMediaPlatforms});

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'id': id,
      'image': image,
      'phoneNumber': phoneNumber,
      'socialMediaPlatforms': socialMediaPlatforms.toMap(),
    };
  }

  static UserModel fromMap(Map<String, dynamic> data) {
    return UserModel(
        name: data['name'] ?? '',
        id: data['id'] ?? '',
        image: data['image'] ?? '',
        phoneNumber: data['phoneNumber'] ?? '',
        socialMediaPlatforms:
            InfoSocialModel.fromMap(data['socialMediaPlatforms'] ?? {}));
  }
}
