import 'package:rille/models/review.dart';

class Music {
  late String _name;
  late String _artistName;
  late String _albumName;
  late int _price;
  late String _description;
  late List<Review> _reviews;

  Music(
    this._name,
    this._albumName,
    this._artistName,
    this._price,
    this._description,
    this._reviews,
  );

  Music.empty() {
    this._name = '';
    this._artistName = '';
    this._albumName = '';
    this._price = 0;
    this._description = '';
  }

  get name => this._name;
  get artistName => this._artistName;
  get albumName => this._albumName;
  get price => this._price;
  get description => this._description;
  get reviews => this._reviews;
}
