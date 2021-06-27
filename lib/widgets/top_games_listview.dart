import 'package:flutter/material.dart';
import 'package:game_streaming/data/top_games_data.dart';
import 'package:game_streaming/screens/detail_screen.dart';
import 'package:game_streaming/widgets/top_games_card.dart';

class TopGamesListView extends StatelessWidget {
  const TopGamesListView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: topGames.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailScreen(
                  game: topGames[index],
                ),
              ),
            ),
            child: TopGamessCard(thumbnail: topGames[index].thumbnail),
          );
        },
      ),
    );
  }
}
