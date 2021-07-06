import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rille/models/music.dart';
import 'package:rille/models/review.dart';

class ReviewFragment extends StatelessWidget {
  final Music music;

  ReviewFragment({required this.music});

  Widget mapData(List<Review> reviews) {
    return ListView(
      children: reviews.map((e) => _CardWidget(review: e)).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: double.infinity,
      child: mapData(music.reviews),
    );
  }
}

class _CardWidget extends StatelessWidget {
  final Review review;
  _CardWidget({required this.review});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        margin: EdgeInsets.all(10),
        child: Center(
          child: ListTile(
            title: Text(review.reviewCaption),
            trailing: Text(review.username),
          ),
        ),
      ),
    );
  }
}
