import 'package:flutter/material.dart';

class BuildTabPopuler extends StatelessWidget {
  const BuildTabPopuler({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> img = [
      'akSpiriva.jpg',
      'herbalAntimo.jpeg',
      'nutEnsure.jpeg',
      'obatAcyclovir.jpeg',
      'supDumocalcin.jpg',
      'vitVidoran.jpg',
    ];
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 175,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
        boxShadow: [
          BoxShadow(
            blurRadius: 1,
            offset: Offset(0, 0.4),
            color: Colors.grey,
          )
        ],
      ),
      child: Stack(
        children: <Widget>[
          Container(
            height: 150,
            width: 175,
            decoration: BoxDecoration(
              color: Colors.lightBlue[200],
              borderRadius: BorderRadius.only(
                topRight: Radius.elliptical(15, 50),
                bottomLeft: Radius.elliptical(35, 25),
                bottomRight: Radius.circular(150),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Populer Product',
                      style: TextStyle(
                          fontWeight: FontWeight.w700, color: Colors.white),
                    ),
                    GestureDetector(
                      child: Text(
                        'See All',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.lightBlue[200],
                          fontSize: 12.0,
                        ),
                      ),
                      onTap: () {},
                    ),
                  ],
                ),
                Container(
                  height: 120,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: img.length,
                    itemBuilder: (context, i) {
                      return GestureDetector(
                        onTap: () {},
                        child: Container(
                          width: 100,
                          child: Card(
                            child: Padding(
                              padding: const EdgeInsets.all(3.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Image.asset(
                                    'assets/${img[i]}',
                                    fit: BoxFit.cover,
                                    height: 75,
                                  ),
                                  Text(
                                    img[i],
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      fontSize: 12.0,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    'Rp. 999.999,-',
                                    style: TextStyle(
                                      fontSize: 10.0,
                                      color: Colors.lightBlue,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
