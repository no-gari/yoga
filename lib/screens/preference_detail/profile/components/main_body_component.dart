import 'package:flutter/material.dart';
import 'package:yogaon/size_config.dart';

class MainBodyComponent extends StatelessWidget {
  MainBodyComponent({Key key, this.title, this.content});
  final String title;
  final String content;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: getProportionateHeight(20)),
      // horizontal: getProportionalWidth(30)),
      decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.grey[200]))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('$title', style: Theme.of(context).textTheme.headline4),
          Text('$content', style: Theme.of(context).textTheme.headline4)
        ],
      ),
    );
  }
}
