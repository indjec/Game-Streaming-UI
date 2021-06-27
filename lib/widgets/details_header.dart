import 'package:flutter/material.dart';
import 'package:game_streaming/data/top_games_data.dart';
import 'package:game_streaming/screens/detail_screen.dart';
import 'package:game_streaming/widgets/top_games_card.dart';

class DetailsHeader extends StatelessWidget {
  final TopGames game;

  const DetailsHeader({Key key, this.game}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TopGamessCard(
                thumbnail: this.game.thumbnail,
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GameCategory(game: this.game),
                    SizedBox(height: 10),
                    Text(this.game.viewers +
                        " Viewers • " +
                        this.game.followers +
                        " Followers"),
                    SizedBox(
                      height: 10,
                    ),
                    Text("A 5v5 character-based tactical shooter"),
                    SizedBox(height: 5),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text("Follow"),
                    )
                  ],
                ),
              )
            ],
          ),
          SizedBox(
            height: 5,
          ),
        ],
      ),
    );
  }
}
