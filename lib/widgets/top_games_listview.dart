import 'package:flutter/material.dart';
import 'package:game_streaming/data/top_games_data.dart';

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
    );
  }
}
