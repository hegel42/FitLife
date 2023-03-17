// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class EverydayPicture {
  final String? copyright;
  final String? date;
  final String? explanation;
  final String? hdurl;
  final String? mediaType;
  final String? serviceVersion;
  final String? title;
  final String? url;
  const EverydayPicture({
    this.copyright,
    this.date,
    this.explanation,
    this.hdurl,
    this.mediaType,
    this.serviceVersion,
    this.title,
    this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'copyright': copyright,
      'date': date,
      'explanation': explanation,
      'hdurl': hdurl,
      'mediaType': mediaType,
      'serviceVersion': serviceVersion,
      'title': title,
      'url': url,
    };
  }

  factory EverydayPicture.fromMap(Map<String, dynamic> map) {
    return EverydayPicture(
      copyright: map['copyright'] != null ? map['copyright'] as String : null,
      date: map['date'] != null ? map['date'] as String : null,
      explanation:
          map['explanation'] != null ? map['explanation'] as String : null,
      hdurl: map['hdurl'] != null ? map['hdurl'] as String : null,
      mediaType: map['mediaType'] != null ? map['mediaType'] as String : null,
      serviceVersion: map['serviceVersion'] != null
          ? map['serviceVersion'] as String
          : null,
      title: map['title'] != null ? map['title'] as String : null,
      url: map['url'] != null ? map['url'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory EverydayPicture.fromJson(String source) =>
      EverydayPicture.fromMap(json.decode(source) as Map<String, dynamic>);
}
