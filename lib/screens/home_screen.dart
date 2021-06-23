import 'package:flutter/material.dart';
import 'package:game_streaming/data/top_clip_data.dart';
import 'package:game_streaming/data/top_games_data.dart';
import 'package:game_streaming/data/trending_data.dart';
import 'package:game_streaming/widgets/action_button.dart';
import 'package:game_streaming/widgets/category_list_view.dart';
import 'package:game_streaming/widgets/header.dart';
import 'package:game_streaming/widgets/stream_card.dart';
import 'package:game_streaming/widgets/top_clip_card.dart';
import 'package:game_streaming/widgets/top_clip_listview.dart';
import 'package:game_streaming/widgets/top_games_listview.dart';
import 'package:game_streaming/widgets/trending_listview.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> _categories = [
    "Shooter",
    "Arcade",
    "Strategy",
    "Racing",
    "Action",
    "Simulation"
  ];

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
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10),
              Header(title: "Categories"),
              SizedBox(height: 10),
              CategoryListView(categories: _categories),
              SizedBox(height: 10),
              Header(title: "Trending Streams"),
              SizedBox(height: 10),
              TrendindListView(),
              Header(title: "Top Games"),
              SizedBox(height: 10),
              TopGamesListView(),
              SizedBox(height: 20),
              Header(title: "Top Clips"),
              SizedBox(height: 10),
              TopClipListVIew(),
            ],
          ),
        ),
      ),
    );
  }
}
