import 'package:flutter/material.dart';

class BuildSaldo extends StatelessWidget {
  const BuildSaldo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          children: <Widget>[
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Saldo',
                style:
                    TextStyle(fontWeight: FontWeight.w600, color: Colors.white),
              ),
            ),
            SizedBox(height: 5),
            Container(
              height: 65,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey,
                      offset: Offset(0, 0.3),
                      blurRadius: 3.0)
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Flexible(
                      child: SingleChildScrollView(
                        child: Text(
                          "Rp. 10000000",
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                    RaisedButton(
                      color: Colors.lightBlue[200],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Text(
                        "Top Up",
                        style: TextStyle(color: Colors.white),
                      ),
                      onPressed: () {},
                    )
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
