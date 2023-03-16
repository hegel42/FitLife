// ignore_for_file: public_member_api_docs, sort_constructors_first

class EverydayPicture {
  final String? copyright;

  final String date;

  final String explanation;

  final String hdUrl;

  final String title;

  final String imageUrl;
  const EverydayPicture({
    this.copyright,
    required this.date,
    required this.explanation,
    required this.hdUrl,
    required this.title,
    required this.imageUrl,
  });

  EverydayPicture copyWith({
    String? copyright,
    String? date,
    String? explanation,
    String? hdUrl,
    String? title,
    String? imageUrl,
  }) {
    return EverydayPicture(
      copyright: copyright ?? this.copyright,
      date: date ?? this.date,
      explanation: explanation ?? this.explanation,
      hdUrl: hdUrl ?? this.hdUrl,
      title: title ?? this.title,
      imageUrl: imageUrl ?? this.imageUrl,
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'copyright': copyright,
      'date': date,
      'explanation': explanation,
      'hdurl': hdUrl,
      'title': title,
      'url': imageUrl,
    };
  }

  factory EverydayPicture.fromJson(Map<String, dynamic> json) {
    return EverydayPicture(
      copyright: json['copyright'] != null ? json['copyright'] as String : null,
      date: json['date'] as String,
      explanation: json['explanation'] as String,
      hdUrl: json['hdurl'] as String,
      title: json['title'] as String,
      imageUrl: json['url'] as String,
    );
  }
}
