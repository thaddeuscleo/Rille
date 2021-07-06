import 'package:flutter/material.dart';
import 'package:rille/components/rounded-button.dart';
import 'package:rille/components/rounded-textfield.dart';
import 'package:rille/models/music.dart';
import 'package:rille/models/review.dart';
import 'package:rille/utils/constants.dart';
import 'package:rille/utils/validator.dart';

class ItemDetailFragemant extends StatefulWidget {
  final Music music;
  ItemDetailFragemant({required this.music});
  @override
  State<StatefulWidget> createState() => _FragmentState(music);
}

class _FragmentState extends State<ItemDetailFragemant> {
  Music music;
  final TextEditingController _reviewController = TextEditingController();
  Validator _validator = Validator();

  _FragmentState(this.music);

  void onPressed(BuildContext context) {
    bool isValidReview = _validator.validateEmptyField(_reviewController);
    SnackBar snackBar;
    if (!isValidReview) {
      snackBar = SnackBar(
        content: Text('Review Cannot Be Empty!'),
      );
    } else {
      music.reviews.add(new Review(
        review: _reviewController.text,
        username: currentUser,
      ));
      snackBar = SnackBar(
        content: Text('Succesfully Post Review'),
      );
    }
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

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
          RoundedTextField(
            hintText: 'Your Review',
            icon: Icons.rate_review,
            controller: _reviewController,
          ),
          RoundedButton('Submit Review', onPressed, primaryColor)
        ],
      ),
    );
  }
}
