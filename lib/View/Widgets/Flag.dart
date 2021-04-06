import 'package:flutter/material.dart';

class Flag extends StatelessWidget {
  final String imageUrl;
  Flag(this.imageUrl);
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: imageUrl == null
          ? Center(
              child: Container(),
            )
          : Image.network(
              imageUrl,
              fit: BoxFit.cover,
              width: 250,
              height: 180,
            ),
    );
  }
}
