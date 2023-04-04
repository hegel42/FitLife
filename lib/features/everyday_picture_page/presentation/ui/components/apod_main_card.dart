import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ApodMainCard extends StatelessWidget {
  const ApodMainCard({
    Key? key,
    required this.imageUrl,
    required this.title,
    required this.explanation,
    this.copyright,
    required this.hdImage,
  }) : super(key: key);

  final String imageUrl;

  final String title;

  final String explanation;

  final String? copyright;

  final String hdImage;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(12),
        ),
      ),
      child: Column(
        children: [
          CachedNetworkImage(
            imageUrl: imageUrl,
            imageBuilder: (context, imageProvider) => InteractiveViewer(
              maxScale: 5,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.4,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(12),
                  ),
                  image: DecorationImage(
                    image: imageProvider,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            progressIndicatorBuilder: (context, url, progress) => Center(
              child: CircularProgressIndicator(
                value: progress.progress,
              ),
            ),
            errorWidget: (context, url, error) => const Icon(Icons.error),
          ),
          Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(12),
              ),
            ),
            child: ExpansionTile(
              title: Text(title),
              children: [
                Text(explanation),
                Text(hdImage),
                if (copyright != null) Text(copyright!),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
