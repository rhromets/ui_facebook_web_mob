import 'package:flutter/material.dart';
import 'package:ui_facebook_web_mob/widgets/widgets.dart';
import '../models/models.dart';

class CreatePostContainer extends StatelessWidget {
  final User currentUser;

  const CreatePostContainer({Key? key, required this.currentUser})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bool isDesktop = Responsive.isDesktop(context);

    return Card(
      margin: EdgeInsets.symmetric(horizontal: isDesktop ? 5.0 : 0.0),
      elevation: isDesktop ? 1.0 : 0.0,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(isDesktop ? 10.0 : 0.0),
        child: Container(
          padding: const EdgeInsets.fromLTRB(12.0, 8.0, 12.0, 0.0),
          color: Colors.white,
          child: Column(
            children: [
              Row(
                children: [
                  ProfileAvatar(imageUrl: currentUser.imageUrl),
                  const SizedBox(width: 8.0),
                  const Expanded(
                    child: TextField(
                      decoration: InputDecoration.collapsed(
                          hintText: 'What\'s on your mind?',
                          hintStyle: TextStyle(color: Colors.grey)),
                    ),
                  ),
                ],
              ),
              const Divider(height: 10.0, thickness: 0.5),
              SizedBox(
                height: 40.0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextButton(
                      onPressed: () => debugPrint('Live'),
                      child: Row(
                        children: const [
                          Icon(
                            Icons.videocam,
                            color: Colors.red,
                            semanticLabel: 'Live',
                          ),
                          SizedBox(width: 5.0),
                          Text(
                            'Live',
                            style: TextStyle(color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                    const VerticalDivider(width: 8.0),
                    TextButton(
                      onPressed: () => debugPrint('Photo'),
                      child: Row(
                        children: const [
                          Icon(
                            Icons.photo_library,
                            color: Colors.green,
                            semanticLabel: 'Photo',
                          ),
                          SizedBox(width: 5.0),
                          Text(
                            'Photo',
                            style: TextStyle(color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                    const VerticalDivider(width: 8.0),
                    TextButton(
                      onPressed: () => debugPrint('Room'),
                      child: Row(
                        children: const [
                          Icon(
                            Icons.video_call,
                            color: Colors.purpleAccent,
                            semanticLabel: 'Room',
                          ),
                          SizedBox(width: 5.0),
                          Text(
                            'Room',
                            style: TextStyle(color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
