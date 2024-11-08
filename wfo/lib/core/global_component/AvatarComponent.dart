import 'package:flutter/material.dart';

class AvatarComponent extends StatelessWidget {
  final String? imageUrl;
  final double radius;

  AvatarComponent({this.imageUrl, this.radius = 40.0});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius,
      backgroundImage: imageUrl != null
          ? NetworkImage(imageUrl!)
          : AssetImage('assets/images/default_avatar.png') as ImageProvider,
      backgroundColor: Colors.grey[200],
    );
  }
}
