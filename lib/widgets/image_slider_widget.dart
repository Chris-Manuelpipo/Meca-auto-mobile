import 'package:flutter/material.dart';

class ImageSliderWidget extends StatelessWidget {
  final Function(int) onChange;
  final int currentSlide;
  const ImageSliderWidget({
    super.key,
    required this.currentSlide,
    required this.onChange,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 200,
          width: double.infinity,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: PageView(
              scrollDirection: Axis.horizontal,
              allowImplicitScrolling: true,
              onPageChanged: onChange,
              physics: ClampingScrollPhysics(),
              children: [
                Image.asset("assets/images/image.png", fit: BoxFit.cover),
                Image.asset("assets/images/image2.jpeg", fit: BoxFit.cover),
                Image.asset("assets/images/image4.jpeg", fit: BoxFit.cover),
                Image.asset("assets/images/image3.jpeg", fit: BoxFit.cover),
                Image.asset("assets/images/image1.jpeg", fit: BoxFit.cover),
              ],
            ),
          ),
        ),
        Positioned.fill(
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                5,
                (index) => AnimatedContainer(
                  duration: Duration(microseconds: 300),
                  width: currentSlide == index ? 15 : 8,
                  height: 8,
                  margin: EdgeInsets.only(right: 3),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: currentSlide == index
                        ? Colors.black
                        : Colors.transparent,
                    border: Border.all(color: Colors.black),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
