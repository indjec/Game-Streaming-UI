import 'package:flutter/material.dart';
import 'package:game_streaming/data/top_clip_data.dart';
import 'package:game_streaming/data/top_games_data.dart';
import 'package:game_streaming/data/trending_data.dart';
import 'package:game_streaming/widgets/action_button.dart';
import 'package:game_streaming/widgets/stream_card.dart';
import 'package:game_streaming/widgets/top_clip_card.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff08112a),
      appBar: AppBar(
        leadingWidth: 250,
        leading: Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Row(
            children: [
              CircleAvatar(
                backgroundImage:
                    NetworkImage("https://placeimg.com/640/480/people"),
              ),
              SizedBox(width: 10),
              Text(
                "Hi, John",
                style: Theme.of(context).textTheme.headline6,
              )
            ],
          ),
        ),
        actions: [
          ActionButton(),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10,
              ),
              CategoryTitle(title: "Categories"),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        color: Color(0xff0c1731),
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                      child: Text(
                        "Shooter",
                        style: Theme.of(context).textTheme.caption,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        color: Color(0xff0c1731),
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                      child: Text(
                        "Shooter",
                        style: Theme.of(context).textTheme.caption,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              CategoryTitle(
                title: "Trending Streams",
              ),
              SizedBox(
                height: 10,
              ),
              Container(
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
              ),
              CategoryTitle(
                title: "Top Games",
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 150,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: topGames.length,
                  itemBuilder: (context, index) {
                    return Row(
                      children: [
                        Container(
                          width: 100,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(8),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                topGames[index].thumbnail,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                      ],
                    );
                  },
                ),
              ),
              SizedBox(
                height: 20,
              ),
              CategoryTitle(
                title: "Top Clips",
              ),
              SizedBox(
                height: 10,
              ),
              Container(
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CategoryTitle extends StatelessWidget {
  final String title;
  const CategoryTitle({
    Key key,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.headline3,
        ),
        Text(
          "SEE ALL",
          style: Theme.of(context).textTheme.caption,
        ),
      ],
    );
  }
}
