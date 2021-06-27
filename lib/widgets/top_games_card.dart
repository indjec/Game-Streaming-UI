import 'package:flutter/material.dart';

class TopGamessCard extends StatelessWidget {
  final String thumbnail;
  const TopGamessCard({
    Key key,
    this.thumbnail,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 100,
          height: 150,
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(8),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                thumbnail,
              ),
            ),
          ),
        ),
        SizedBox(
          width: 10,
        ),
      ],
    );
  }
}
