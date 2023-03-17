import 'package:flutter/material.dart';

class CustomRating extends StatelessWidget {
  final double ratingScore;
  final int totalReviews;
  final bool showReview;
  const CustomRating({
    Key? key,
    required this.ratingScore,
    this.totalReviews = 0,
    this.showReview = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const size = 15.0;
    return Row(
      children: [
        for (int i = 0; i <= 5; i++)
          Container(
            padding: const EdgeInsets.all(1.0),
            height: size,
            width: size,
            decoration: BoxDecoration(
              color: i <= ratingScore ? Colors.yellow : Colors.white,
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.yellow,
                width: 2.0,
              ),
            ),
          ),
          const SizedBox(width: 5.0),
          Text('$ratingScore'),
          // TODO: show reviews
      ],
    );
  }
}