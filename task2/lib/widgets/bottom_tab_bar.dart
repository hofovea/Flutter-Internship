import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomTabBar extends StatelessWidget {
  const BottomTabBar(
      {Key? key,
      required Color bottomMenuItemColor,
      required Color? bottomMenuSelectedItemColor,
      required this.onTapHandler})
      : _bottomMenuItemColor = bottomMenuItemColor,
        _bottomMenuSelectedItemColor = bottomMenuSelectedItemColor,
        super(key: key);

  final Color _bottomMenuItemColor;
  final Color? _bottomMenuSelectedItemColor;
  final Function(int) onTapHandler;

  @override
  Widget build(BuildContext context) {
    return TabBar(
      unselectedLabelColor: _bottomMenuItemColor,
      labelColor: _bottomMenuSelectedItemColor,
      indicatorColor: _bottomMenuSelectedItemColor,
      onTap: (index) => onTapHandler(index),
      tabs: const [
        Tab(icon: Icon(Icons.book)),
        Tab(icon: Icon(Icons.calendar_month_sharp)),
        Tab(icon: Icon(Icons.drive_folder_upload)),
        Tab(icon: Icon(Icons.person)),
      ],
    );
  }
}
