import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rille/models/music.dart';
import 'package:rille/pages/item-detail-page.dart';
import 'package:rille/utils/constants.dart';

class ItemFragments extends StatelessWidget {
  Widget _buildWidget(List<Music> musics) {
    return ListView(
      children: musics.map((e) => _ItemCard(e)).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: _buildWidget(songs),
    );
  }
}

class _ItemCard extends StatelessWidget {
  final Music music;
  _ItemCard(this.music);

  void onPressed(BuildContext context, Music music) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (builder) {
          return ItemDetailPage(music);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        margin: EdgeInsets.all(10),
        child: Center(
          child: ListTile(
            leading: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: 100,
                minWidth: 100,
                maxHeight: 120,
                maxWidth: 120,
              ),
              child: Image.asset('assets/images/albums/${music.albumName}.jpg'),
            ),
            title: Text(music.name),
            trailing: ElevatedButton(
              child: Text('Detail'),
              onPressed: () => onPressed(context, music),
            ),
          ),
        ),
      ),
    );
  }
}
