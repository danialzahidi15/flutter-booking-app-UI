import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:hotel_booking/providers/all_hotels_provider.dart';
import 'package:hotel_booking/widget/custom_nav_bar.dart';
import 'package:intl/intl.dart';

import '../widget/custom_button.dart';
import '../widget/custom_icon_button.dart';
import '../widget/custom_textfield.dart';
import '../widget/hotel_card.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.blue,
      bottomNavigationBar: CustomNavBar(index: 0),
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: [
            Container(
              height: double.infinity,
              margin: EdgeInsets.only(top: size.height * 0.25),
              color: Colors.white,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: SingleChildScrollView(
                child: Column(
                  children: const [
                    _HeaderSection(),
                    _SearchCard(),
                    SizedBox(height: 20.0),
                    _NearByHotels(),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _HeaderSection extends StatelessWidget {
  const _HeaderSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            CircleAvatar(
              radius: 25,
              backgroundImage: AssetImage('assets/images/photo.png'),
            ),
            CustomIconButton(icon: Icon(Icons.notifications)),
          ],
        ),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            'Selamat kembali 👋',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 28,
              color: Colors.white,
            ),
          ),
        )
      ],
    );
  }
}

class _SearchCard extends StatelessWidget {
  const _SearchCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final locationTextController = TextEditingController();
    final dateFromTextController = TextEditingController();
    final dateToTextController = TextEditingController();

    locationTextController.text = 'Yogyakarta';
    dateFromTextController.text = dateToTextController.text = DateFormat('dd MMM yyyy').format(
      DateTime.now(),
    );

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: Colors.grey,
        ),
      ),
      child: Column(
        children: [
          Row(
            children: [
              const Icon(Icons.location_on, color: Colors.blue),
              const SizedBox(width: 8.0),
              CustomTextField(
                label: 'Di mana',
                controller: locationTextController,
              ),
            ],
          ),
          const Divider(),
          Row(
            children: [
              const Icon(Icons.calendar_month_outlined, color: Colors.blue),
              const SizedBox(width: 8.0),
              CustomTextField(
                label: 'Dari',
                controller: dateFromTextController,
              ),
              CustomTextField(
                label: 'Ke',
                controller: dateToTextController,
              ),
            ],
          ),
          const SizedBox(height: 10),
          const CustomButton(text: 'Carian'),
        ],
      ),
    );
  }
}

class _NearByHotels extends ConsumerWidget {
  const _NearByHotels({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final hotels = ref.watch(allHotelsProvider);
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                'Berdekatan',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              ),
              Text(
                'Lihat semua',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.blueGrey,
                  fontSize: 14,
                ),
              ),
            ],
          ),
          hotels.when(
            data: (hotels) {
              return ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: hotels.length,
                  itemBuilder: (context, index) {
                    return HotelCard(hotel: hotels[index]);
                  });
            },
            error: (error, stackTrace) => Text('Error: $error'),
            loading: () => const Center(
              child: CircularProgressIndicator(),
            ),
          ),
        ],
      ),
    );
  }
}

