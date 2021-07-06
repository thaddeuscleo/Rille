import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:rille/utils/constants.dart';

class ImageCarousel extends StatelessWidget {
  List<Image> _loadAdsImage() {
    return adsImages.map((e) {
      return Image(
        image: AssetImage(e),
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: _loadAdsImage(),
      options: CarouselOptions(
        initialPage: 0,
        enableInfiniteScroll: true,
        autoPlay: true,
        enlargeCenterPage: true,
        autoPlayInterval: Duration(seconds: 2),
      ),
    );
  }
}
