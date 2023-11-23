class Book {
  //Document value
  String id; //책 고유 id 값
  String title; // 책 제목
  String thumbnail; // 썸네일 이미지 링크
  String previewLink; // ListTile 을 눌렀을 때 이동하는 링크
  String contents; //책 내용 (정보)
  List authors; //글쓴이
  String publishedDate; //출간일

  Book({
    required this.id,
    required this.title,
    required this.thumbnail,
    required this.previewLink,
    required this.contents,
    required this.authors,
    required this.publishedDate,
  });

  Map toJson() {
    return {
      'id': id,
      'title': title,
      'thumbnail': thumbnail,
      'previewLink': previewLink,
      'contents': contents,
      'authors': authors,
      'publishedDate': publishedDate,
    };
  }

  factory Book.fromJson(json) {
    return Book(
      id: json['id'],
      title: json['title'],
      thumbnail: json['thumbnail'],
      previewLink: json['previewLink'],
      contents: json['contents'],
      authors: json['authors'],
      publishedDate: json['publishedDate'],
    );
  }
}
