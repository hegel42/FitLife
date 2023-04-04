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

  // Map<String, dynamic> toMap() {
  //   return <String, dynamic>{
  //     'copyright': copyright,
  //     'date': date,
  //     'explanation': explanation,
  //     'hdurl': hdurl,
  //     'mediaType': mediaType,
  //     'serviceVersion': serviceVersion,
  //     'title': title,
  //     'url': url,
  //   };
  // }

  factory EverydayPicture.fromMap(Map<String, dynamic> map) => EverydayPicture(
        copyright: map['copyright'] as String?,
        date: map['date'] as String?,
        explanation: map['explanation'] as String?,
        hdurl: map['hdurl'] as String?,
        mediaType: map['mediaType'] as String?,
        serviceVersion: map['serviceVersion'] as String?,
        title: map['title'] as String?,
        url: map['url'] as String?,
      );

  // String toJson() => json.encode(toMap());

  // factory EverydayPicture.fromJson(String source) =>
  //     EverydayPicture.fromMap(json.decode(source) as Map<String, dynamic>);
}
