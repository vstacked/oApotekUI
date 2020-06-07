import 'package:flutter/material.dart';

class BuildCategory extends StatelessWidget {
  const BuildCategory({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> img = [
      'home_alat.png',
      'home_herbal.png',
      'home_nutrisi.png',
      'home_obat.png',
      'home_suplemen.png',
      'home_vitamin.png',
    ];
    List<String> title = [
      'Alat Kesehatan',
      'Herbal',
      'Nutrisi',
      'Obat',
      'Suplemen',
      'Vitamin',
    ];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: Text(
            'Kategori',
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
        ),
        Container(
          height: 100,
          child: GridView.builder(
            itemCount: img.length,
            scrollDirection: Axis.horizontal,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, childAspectRatio: 1 / 3),
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () {},
                child: Card(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                        height: 35,
                        width: 35,
                        child: Image.asset('assets/${img[index]}'),
                      ),
                      Flexible(
                        child: Text(
                          title[index],
                          style: TextStyle(
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ),
                    ],
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
