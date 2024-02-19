class PostData {
  String? user_image;
  String? post_image;
  String? username;
  String? full_name;
  int? like;
  int? comment;

  PostData({
    required this.user_image,
    required this.post_image,
    required this.username,
    required this.full_name,
    required this.like,
    required this.comment,
  });
}

class Strory {
  String? image;
  String? username;

  Strory(String image, String username) {
    this.image = image;
    this.username = username;
  }
}
