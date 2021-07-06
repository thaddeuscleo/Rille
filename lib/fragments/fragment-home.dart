import 'package:flutter/cupertino.dart';
import 'package:rille/components/image-carousel.dart';

class HomePageFragment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      child: Column(
        children: [
          SizedBox(
            height: size.height * 0.03,
          ),
          Text('PROMOTION'),
          ImageCarousel(),
          SizedBox(
            height: size.height * 0.03,
          ),
        ],
      ),
    );
  }
}
