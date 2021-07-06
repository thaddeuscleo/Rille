class Review {
  String _reviewCaption;
  String _username;

  Review({
    required String review,
    required String username,
  })  : _reviewCaption = review,
        _username = username;

  get reviewCaption => this._reviewCaption;
  get username => this._username;
}
