import 'package:flutter/material.dart';
import 'package:game_streaming/data/trending_data.dart';
import 'package:game_streaming/widgets/stream_card.dart';

class TrendindListView extends StatelessWidget {
  const TrendindListView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: trendingStreams.length,
        itemBuilder: (context, index) {
          return Row(
            children: [
              StreamCard(data: trendingStreams[index]),
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
