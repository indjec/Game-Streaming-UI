import 'package:flutter/material.dart';
import 'package:game_streaming/data/top_clip_data.dart';

class TopClipCard extends StatelessWidget {
  final TopClipModel data;
  const TopClipCard({
    Key key,
    this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 180,
          width: 300,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.yellow,
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                this.data.thumbnail,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(this.data.userAvatar),
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  this.data.title,
                  style: Theme.of(context).textTheme.headline4,
                ),
                Text(
                  this.data.userName,
                  style: Theme.of(context).textTheme.caption,
                ),
              ],
            )
          ],
        )
      ],
    );
  }
}
