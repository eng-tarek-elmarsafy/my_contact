class UserModel {
  final String name;
  final String id;
  final String image;
  final String phoneNumber;
  final Map socialMediaPlatforms;

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
      'socialMediaPlatforms': socialMediaPlatforms,
    };
    
  }
}
