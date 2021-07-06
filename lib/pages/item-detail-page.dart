import 'package:flutter/material.dart';
import 'package:rille/fragments/fragment-item-detail.dart';
import 'package:rille/fragments/fragment-reviews.dart';
import 'package:rille/models/music.dart';

class ItemDetailPage extends StatelessWidget {
  final Music music;
  ItemDetailPage(this.music);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(music.name),
          bottom: TabBar(
            tabs: [
              Tab(
                text: 'Song Details',
              ),
              Tab(
                text: 'Reviews',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            ItemDetailFragemant(music: music),
            ReviewFragment(music: music),
          ],
        ),
      ),
    );
  }
}
