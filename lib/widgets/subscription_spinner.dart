import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class SubscriptionSpinner extends StatefulWidget {
  @override
  _SubscriptionSpinnerState createState() => _SubscriptionSpinnerState();
}

class _SubscriptionSpinnerState extends State<SubscriptionSpinner> {
  int _current = 0;

  final List<String> subscriptionOptions = ['1 Week', '1 Month', '1 Year'];
  final List<String> subscriptionPrices = [
    '\$15',
    '\$10 / week',
    '\$15 / Month'
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CarouselSlider(
          options: CarouselOptions(
            viewportFraction: 0.5,
            height: 300.0,
            enlargeCenterPage: true,
            onPageChanged: (index, reason) {
              setState(() {
                _current = index;
              });
            },
          ),
          items: subscriptionOptions.map((option) {
            int index = subscriptionOptions.indexOf(option);
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  width: MediaQuery.of(context).size.width * 0.4, // Set a fixed width for the carousel item
                  margin: EdgeInsets.symmetric(horizontal: 5.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        option,
                        style: TextStyle(
                            fontSize: 24.0, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 20.0),
                      Text(
                        subscriptionPrices[index],
                        style: TextStyle(fontSize: 18.0),
                      ),
                      if (index == 1) ...[
                        SizedBox(height: 20.0),
                        Container(
                          padding: EdgeInsets.symmetric(
                              vertical: 4.0, horizontal: 8.0),
                          color: Colors.orange,
                          child: Text(
                            'Best deal',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ],
                  ),
                );
              },
            );
          }).toList(),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: subscriptionOptions.map((url) {
            int index = subscriptionOptions.indexOf(url);
            return Container(
              width: 8.0,
              height: 8.0,
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: _current == index
                    ? Color.fromRGBO(0, 0, 0, 0.9)
                    : Color.fromRGBO(0, 0, 0, 0.4),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
