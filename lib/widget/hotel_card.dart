import 'package:flutter/material.dart';

import '../model/hotel_model.dart';
import 'custom_rating.dart';

class HotelCard extends StatelessWidget {
  final HotelModel hotel;

  const HotelCard({
    Key? key,
    required this.hotel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10.0),
      decoration: BoxDecoration(
        color: Colors.black12,
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Row(
        children: [
          Flexible(
            flex: 1,
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20.0),
                bottomLeft: Radius.circular(20.0),
              ),
              child: Image.asset(
                hotel.thumbnailPath,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Flexible(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    hotel.title,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.left,
                    maxLines: 2,
                  ),
                  Row(
                    children: [
                      const Icon(Icons.location_on),
                      const SizedBox(width: 5),
                      Text(hotel.location),
                    ],
                  ),
                  const SizedBox(width: 5),
                  CustomRating(ratingScore: hotel.ratingScore),
                  const SizedBox(width: 5),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: '\$${hotel.price}',
                          style: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 28,
                          ),
                        ),
                        const TextSpan(
                          text: ' /malam',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
