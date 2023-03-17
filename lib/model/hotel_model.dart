import 'package:google_maps_flutter/google_maps_flutter.dart';

class HotelModel {
  final String id;
  final String title;
  final String location;
  final String address;
  final String description;
  final String thumbnailPath;
  final List<String> imagePaths;
  final int totalReview;
  final double ratingScore;
  final double price;
  final LatLng coordinate;

  const HotelModel({
    required this.id,
    required this.title,
    required this.location,
    required this.address,
    required this.description,
    required this.thumbnailPath,
    required this.imagePaths,
    required this.price,
    required this.coordinate,
    this.totalReview = 0,
    this.ratingScore = 0,
  });

  static List<HotelModel> sampleHotels = const [
    HotelModel(
      id: '1',
      thumbnailPath: 'assets/images/thumbnail1.png',
      title: 'D`Omah Hotel Yoga',
      location: 'Bantul Regency, Yogyakarta',
      address: ' Jl. Tembi Jl. Parangtritis, Gatak, Timbulharjo, Sewon, Bantul Regency, Special Region of Yogyakarta 55186, Indonesia',
      description: 'Set on 5-hectare grounds, this laid-back hotel is 9 km from both The Palace of Yogyakarta and Taman Sari, a former royal garden.',
      ratingScore: 4.5,
      coordinate: LatLng(-7.871349675227825, 110.35356989896037),
      price: 204,
      imagePaths: [
        'assets/images/gallery1.png',
        'assets/images/gallery2.png',
        'assets/images/gallery3.png',
      ],
    ),
    HotelModel(
      id: '2',
      thumbnailPath: 'assets/images/thumbnail2.png',
      title: 'Alana Hotel',
      location: 'Bantul Regency, Yogyakarta',
      address: ' Jl. Tembi Jl. Parangtritis, Gatak, Timbulharjo, Sewon, Bantul Regency, Special Region of Yogyakarta 55186, Indonesia',
      description: 'Set on 5-hectare grounds, this laid-back hotel is 9 km from both The Palace of Yogyakarta and Taman Sari, a former royal garden.',
      ratingScore: 4.6,
      coordinate: const LatLng(-7.73980756284349, 110.37930947720487),
      price: 135,
      imagePaths: [
        'assets/images/gallery1.png',
        'assets/images/gallery2.png',
        'assets/images/gallery3.png',
      ],
    ),
    HotelModel(
      id: '3',
      thumbnailPath: 'assets/images/thumbnail3.png',
      title: 'Candi Tirto Raharjo',
      location: 'Bantul Regency, Yogyakarta',
      address: ' Jl. Tembi Jl. Parangtritis, Gatak, Timbulharjo, Sewon, Bantul Regency, Special Region of Yogyakarta 55186, Indonesia',
      description: 'Set on 5-hectare grounds, this laid-back hotel is 9 km from both The Palace of Yogyakarta and Taman Sari, a former royal garden.',
      ratingScore: 4.7,
      coordinate: LatLng(-7.842096923505401, 110.33728262150997),
      price: 698,
      imagePaths: [
        'assets/images/gallery1.png',
        'assets/images/gallery2.png',
        'assets/images/gallery3.png',
      ],
    ),
    HotelModel(
      id: '4',
      thumbnailPath: 'assets/images/thumbnail4.png',
      title: 'Greenhost Boutique Hotel Prawirotaman',
      location: 'Bantul Regency, Yogyakarta',
      address: ' Jl. Tembi Jl. Parangtritis, Gatak, Timbulharjo, Sewon, Bantul Regency, Special Region of Yogyakarta 55186, Indonesia',
      description: 'Set on 5-hectare grounds, this laid-back hotel is 9 km from both The Palace of Yogyakarta and Taman Sari, a former royal garden.',
      ratingScore: 4.7,
      coordinate: LatLng(-7.819802269479636, 110.36916398350515),
      price: 129,
      imagePaths: [
        'assets/images/gallery1.png',
        'assets/images/gallery2.png',
        'assets/images/gallery3.png',
      ],
    ),
  ];
}
