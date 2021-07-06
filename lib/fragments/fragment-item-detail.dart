import 'package:flutter/material.dart';
import 'package:rille/components/rounded-textfield.dart';
import 'package:rille/models/music.dart';

class ItemDetailFragemant extends StatefulWidget {
  final Music music;
  ItemDetailFragemant({required this.music});
  @override
  State<StatefulWidget> createState() => _FragmentState(music);
}

class _FragmentState extends State<ItemDetailFragemant> {
  Music music;
  _FragmentState(this.music);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: double.infinity,
      padding: EdgeInsets.all(30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/images/albums/${music.albumName}.jpg'),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              shrinkWrap: false,
              childAspectRatio: (4 / 2),
              children: [
                Center(
                  child: Text('Song Name: '),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text('${music.name}'),
                ),
                Center(
                  child: Text('Album Name: '),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text('${music.albumName}'),
                ),
                Center(
                  child: Text('Artist Name: '),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text('${music.artistName}'),
                ),
                Center(
                  child: Text('Song Price: '),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text('${music.price}'),
                ),
              ],
            ),
          ),
          RoundedTextField('Your Review', Icons.rate_review)
        ],
      ),
    );
  }
}
