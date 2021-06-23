import 'package:flutter/material.dart';
import 'package:game_streaming/data/top_clip_data.dart';
import 'package:game_streaming/widgets/top_clip_card.dart';

class TopClipListVIew extends StatelessWidget {
  const TopClipListVIew({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: topClips.length,
        itemBuilder: (context, index) {
          return Row(
            children: [
              TopClipCard(data: topClips[index]),
              SizedBox(
                width: 10,
              ),
            ],
          );
        },
      ),
    );
  }
}
