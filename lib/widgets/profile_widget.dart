import 'package:flutter/material.dart';

class ProfileWidget extends StatelessWidget {
  final String profileImage;
  final bool isEdit;
  final VoidCallback onClicked;

  const ProfileWidget({
    Key? key,
    required this.profileImage,
    this.isEdit = false,
    required this.onClicked,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme.primary;

    return Center(
      child: Stack(
        children: [
          buildImage(),
          // Positioned(bottom: 0, right: 10, child: buildEditIcon(color))
        ],
      ),
    );
  }

  Widget buildImage() {
    final image = AssetImage(profileImage);

    return ClipOval(
      child: Material(
        color: Colors.transparent,
        child: Ink.image(
            image: image,
            fit: BoxFit.cover,
            width: 138,
            height: 138,
            child: InkWell(
              onTap: onClicked,
            )),
      ),
    );
  }
  //
  // Widget buildEditIcon(Color color) => buildCircle(
  //       color: Colors.white,
  //       all: 4,
  //       child: buildCircle(
  //         color: color,
  //         all: 8,
  //         child: Icon(
  //           isEdit ? Icons.add_a_photo_outlined : Icons.edit,
  //           color: Colors.white,
  //           size: 20,
  //         ),
  //       ),
  //     );

  Widget buildCircle({
    required Widget child,
    required double all,
    required Color color,
  }) =>
      ClipOval(
        child: Container(
          padding: EdgeInsets.all(all),
          color: color,
          child: child,
        ),
      );
}
