import 'package:flutter/material.dart';
import 'package:expandable/expandable.dart';

class FaqPanel extends StatelessWidget {
  FaqPanel({Key key, this.title, this.content}) : super(key: key);

  final String title;
  final String content;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 15),
      decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.grey[300]))),
      child: ExpandablePanel(
        headerAlignment: ExpandablePanelHeaderAlignment.center,
        header: Text(
          '$title',
          style: Theme.of(context)
              .textTheme
              .headline4
              .copyWith(fontWeight: FontWeight.bold),
        ),
        collapsed: null,
        expanded: Text(
          content,
          softWrap: true,
        ),
        tapHeaderToExpand: true,
        hasIcon: true,
      ),
    );
  }
}
