import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:game_streaming/constants/constants.dart';
import 'package:game_streaming/data/top_games_data.dart';
import 'package:game_streaming/screens/channel_screen.dart';
import 'package:game_streaming/screens/clip_screen.dart';
import 'package:game_streaming/screens/video_screen.dart';
import 'package:game_streaming/widgets/details_header.dart';

class DetailScreen extends StatefulWidget {
  final TopGames game;
  const DetailScreen({Key key, @required this.game}) : super(key: key);

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        title: Text(this.widget.game.name),
      ),
      body: DefaultTabController(
        length: 3,
        child: NestedScrollView(
          headerSliverBuilder: (context, _) {
            return [
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                    DetailsHeader(
                      game: widget.game,
                    )
                  ],
                ),
              ),
            ];
          },
          body: Column(
            children: <Widget>[
              Material(
                color: kPrimaryColor,
                child: TabBar(
                  labelColor: Colors.white,
                  unselectedLabelColor: Colors.grey[400],
                  indicatorWeight: 1,
                  indicatorColor: Colors.white,
                  tabs: [
                    Tab(
                      text: "Channel",
                    ),
                    Tab(
                      text: "Videos",
                    ),
                    Tab(
                      text: "Clips",
                    ),
                  ],
                ),
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    ChannelScreen(),
                    VideoScreen(),
                    ClipScreen(),
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

class GameCategory extends StatelessWidget {
  const GameCategory({
    Key key,
    @required this.game,
  }) : super(key: key);

  final TopGames game;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 100,
          padding: EdgeInsets.all(6),
          decoration: BoxDecoration(
            color: Color(0xffFFC947),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            child: Text(this.game.type1),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Container(
          width: 100,
          padding: EdgeInsets.all(6),
          decoration: BoxDecoration(
            color: Color(0xff77ACF1),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            child: Text(this.game.type2),
          ),
        )
      ],
    );
  }
}
