import 'package:hotel_booking/model/hotel_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'hotel_repository.g.dart';

@riverpod
HotelRepository hotelRepository(HotelRepositoryRef ref) => HotelRepository();

class HotelRepository {
  Future<List<HotelModel>> getHotels() async {
    return await Future.delayed(const Duration(microseconds: 300), () {
      return HotelModel.sampleHotels;
    });
  }

  Future<HotelModel> getHotel(String hotelId) async {
    return await Future.delayed(const Duration(microseconds: 300), () {
      return HotelModel.sampleHotels.where((hotel) => hotel.id == hotelId).first;
    });
  }
}
