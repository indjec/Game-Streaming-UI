import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  final String title;
  const Header({
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
