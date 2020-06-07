import 'package:flutter/material.dart';

class BuildBanner extends StatelessWidget {
  const BuildBanner({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> img = [
      'banner1.png',
      'banner2.png',
      'banner3.png',
    ];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: Text(
            'Promo',
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
        ),
        Container(
          height: 90,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: img.length,
            itemBuilder: (context, i) {
              return Container(
                width: 200,
                child: Card(
                  child: Image.asset(
                    'assets/${img[i]}',
                    fit: BoxFit.cover,
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
