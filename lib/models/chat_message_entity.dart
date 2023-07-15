class ChatMessageEntity {
  String text;
  String? imageUrl;
  String id;
  int createdAt;
  Author author;

  ChatMessageEntity(
      {required this.text,
      required this.id,
      required this.createdAt,
      this.imageUrl,
      required this.author});

  factory ChatMessageEntity.fromJson(Map<String, dynamic> json) {
    return ChatMessageEntity(
        imageUrl: json['image'],
        text: json['text'],
        id: json['id'].toString(),
        createdAt: json['createdAt'],
        author: Author.fromJSON(json['author'])
    ); // named Constructor
  }
}

class Author {
  String userName;

  Author({required this.userName});

  factory Author.fromJSON(Map<String, dynamic> json) {
    return Author(userName: json['username']);
  }
}
