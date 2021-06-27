import 'package:flutter/material.dart';
import 'package:game_streaming/constants/constants.dart';
import 'package:game_streaming/widgets/header.dart';
import 'package:game_streaming/widgets/top_clip_listview.dart';
import 'package:game_streaming/widgets/trending_listview.dart';

class ChannelScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Header(title: "Top Streamer"),
              SizedBox(height: 10),
              TrendindListView(),
              SizedBox(height: 10),
              Header(title: "Most views"),
              SizedBox(height: 10),
              TopClipListVIew(),
            ],
          ),
        ),
      ),
    );
  }
}
