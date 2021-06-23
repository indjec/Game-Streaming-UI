import 'package:flutter/material.dart';
import 'package:game_streaming/data/trending_data.dart';

class StreamCard extends StatelessWidget {
  final TrendingStreamModel data;
  const StreamCard({
    Key key,
    this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
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
            Positioned(
              top: 10,
              left: 10,
              child: Container(
                height: 25,
                width: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.red,
                ),
                child: Center(
                  child: Text(
                    "Live",
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 10,
              left: 10,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 8),
                height: 25,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.black54,
                ),
                child: Center(
                  child: Row(
                    children: [
                      Icon(
                        Icons.circle,
                        color: Colors.red,
                        size: 10,
                      ),
                      Text(
                        " ${data.liveWatchingCount} watching",
                        style: Theme.of(context).textTheme.subtitle1,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
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
                  this.data.userName,
                  style: Theme.of(context).textTheme.headline4,
                ),
                Text(
                  this.data.gameName,
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
