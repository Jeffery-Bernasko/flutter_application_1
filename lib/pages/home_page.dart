import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/custom_dropDownButton.dart';

class HomePage extends StatelessWidget {
  late double _deviceHieght, _deviceWidth;

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    _deviceHieght = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;

    return Scaffold(
        body: SafeArea(
      child: Container(
        height: _deviceHieght,
        width: _deviceWidth,
        padding: EdgeInsets.symmetric(horizontal: _deviceWidth * 0.05),
        child: Stack(children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [_pageTitle(), _bookRiderWidget()],
          ),
          Align(alignment: Alignment.centerRight, child: _atroImageWidget())
        ]),
      ),
    ));
  }

  Widget _pageTitle() {
    return const Text(
      '#GoMOON',
      style: TextStyle(
          color: Colors.white, fontSize: 70.0, fontWeight: FontWeight.w800),
    );
  }

  Widget _atroImageWidget() {
    return Container(
      height: _deviceHieght * 0.5,
      width: _deviceWidth * 0.65,
      decoration: const BoxDecoration(
          image: DecorationImage(
        fit: BoxFit.fill,
        image: AssetImage('assets/images/astro_moon.png'),
      )),
    );
  }

  Widget _destinationDropDownButton() {
    return CustomDropDownButton(
        values: const ['Jeff Web Station', 'TT Web Station'],
        width: _deviceWidth);
  }

  Widget _rideButton() {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      width: _deviceWidth,
      child: MaterialButton(
        onPressed: () {},
        child: const Text(
          'Book Ride',
          style: TextStyle(color: Colors.black),
        ),
      ),
    );
  }

  Widget _bookRiderWidget() {
    return Container(
      margin: EdgeInsets.only(bottom: _deviceHieght * 0.01),
      height: _deviceHieght * 0.25,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _destinationDropDownButton(),
          _travellersInformationWidget(),
          _rideButton()
        ],
      ),
    );
  }

  Widget _travellersInformationWidget() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CustomDropDownButton(
            values: const ['1', '2,' '3', '4'], width: _deviceWidth * 0.35),
        CustomDropDownButton(
            values: const ['Economy', 'Bussiness Class' 'Regular', 'Luxury'],
            width: _deviceWidth / 2),
      ],
    );
  }
}
