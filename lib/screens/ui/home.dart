import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:foldable_sidebar/foldable_sidebar.dart';
import 'package:oapotek/screens/widgets/home/homeBanner.dart';
import 'package:oapotek/screens/widgets/home/homeCategory.dart';
import 'package:oapotek/screens/widgets/home/homeSaldo.dart';
import 'package:oapotek/screens/widgets/home/homeTabPopuler.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  FSBStatus drawerStatus;
  BoxDecoration decoration = BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [Colors.lightBlue[300], Colors.lightBlue[100]],
    ),
  );
  FocusNode searchFocus = FocusNode();
  TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: FoldableSidebarBuilder(
        drawerBackgroundColor: Colors.white,
        drawer: CustomDrawer(),
        screenContents: GestureDetector(
          onTap: () {
            setState(() {
              if (drawerStatus == FSBStatus.FSB_OPEN)
                drawerStatus = FSBStatus.FSB_CLOSE;
            });
          },
          child: Stack(
            children: <Widget>[
              Container(
                  decoration: decoration,
                  height: MediaQuery.of(context).size.height / 4,
                  width: MediaQuery.of(context).size.width),
              SafeArea(
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            flex: 6,
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Row(
                                children: <Widget>[
                                  IconButton(
                                    icon: Icon(
                                        drawerStatus == FSBStatus.FSB_OPEN
                                            ? Icons.close
                                            : Entypo.menu),
                                    onPressed: () {
                                      setState(() {
                                        drawerStatus =
                                            drawerStatus == FSBStatus.FSB_OPEN
                                                ? FSBStatus.FSB_CLOSE
                                                : FSBStatus.FSB_OPEN;
                                      });
                                    },
                                  ),
                                  Flexible(
                                    child: TextField(
                                      focusNode: searchFocus,
                                      controller: searchController,
                                      textInputAction: TextInputAction.search,
                                      decoration: InputDecoration(
                                        hintText: 'Search..',
                                        border: InputBorder.none,
                                        prefixIcon: Icon(MaterialIcons.search),
                                        suffixIcon: IconButton(
                                          icon: Icon(Icons.close),
                                          onPressed: () {
                                            setState(() {
                                              searchFocus.unfocus();
                                              searchController.clear();
                                            });
                                          },
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: IconButton(
                              splashColor: Colors.grey,
                              tooltip: 'Cart',
                              icon: Icon(
                                MaterialCommunityIcons.cart,
                                size: 30.0,
                                color: Colors.lightBlue,
                              ),
                              onPressed: () {},
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    BuildSaldo(),
                    SizedBox(height: 10),
                    BuildBanner(),
                    SizedBox(height: 10),
                    BuildCategory(),
                    SizedBox(height: 10),
                    BuildTabPopuler()
                  ],
                ),
              ),
            ],
          ),
        ),
        status: drawerStatus,
      ),
    );
  }
}

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextStyle style = TextStyle(color: Colors.white);
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    Color color = Colors.lightBlue[300];
    return Container(
      color: Colors.white,
      width: mediaQueryData.size.width * 0.60,
      height: mediaQueryData.size.height,
      child: Column(
        children: <Widget>[
          Container(
            color: Colors.lightBlue[400].withOpacity(0.85),
            width: double.infinity,
            height: 200,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ClipRRect(
                    child: Image.asset(
                      'assets/profile.jpg',
                      width: 100,
                      height: 100,
                    ),
                    borderRadius: BorderRadius.circular(100)),
                SizedBox(
                  height: 10,
                ),
                Text('User',
                    style: style.copyWith(fontWeight: FontWeight.w700)),
              ],
            ),
          ),
          ListTile(
            onTap: () {},
            leading: Icon(Icons.home, color: color),
            title: Text('Home', style: TextStyle(color: color)),
          ),
          ListTile(
            onTap: () {},
            leading: Icon(Icons.category, color: color),
            title: Text('Category'),
          ),
          ListTile(
            onTap: () {},
            leading: Icon(Icons.notifications, color: color),
            title: Text('Notification'),
          ),
          ListTile(
            onTap: () {},
            leading: Icon(MaterialCommunityIcons.logout, color: color),
            title: Text('Log Out'),
          ),
        ],
      ),
    );
  }
}
