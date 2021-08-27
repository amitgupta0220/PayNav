import 'package:flutter/material.dart';
import 'package:paynav_task/Screens/ScreenOneTabs/ScreenOneTabOne.dart';
import 'package:paynav_task/Screens/ScreenOneTabs/ScreenOneTabTwo.dart';
import 'package:paynav_task/Screens/ScreenThree.dart';
import 'package:paynav_task/Screens/ScreenTwo.dart';
import 'package:paynav_task/config/MediaQuery.dart';
import 'package:paynav_task/config/colors.dart';

class ScreenOne extends StatefulWidget {
  const ScreenOne({Key? key}) : super(key: key);

  @override
  _ScreenOneState createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne>
    with SingleTickerProviderStateMixin {
  List<String> names = ["Harshada", "Naveen", "Vivek", "Rahul", "RECENT"];
  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = getScreenSize(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.primary,
        elevation: 0,
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Container(
            height: 16,
            width: 9,
            child: Image.asset("assets/backButton.png"),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.more_vert_rounded),
          )
        ],
      ),
      backgroundColor: MyColors.primary,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  padding: EdgeInsets.all(size.width * 0.05),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Jay Sethi",
                        style: TextStyle(
                            color: MyColors.text,
                            fontSize: 24,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "reachjaysethi-1@okici",
                        style: TextStyle(
                          color: MyColors.subText,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    margin: EdgeInsets.only(
                        right: size.width * 0.05, top: size.width * 0.03),
                    width: 64,
                    height: 64,
                    decoration: BoxDecoration(
                        color: MyColors.fill, shape: BoxShape.circle),
                  ),
                )
              ],
            ),
            SizedBox(
              height: size.height * 0.04,
            ),
            Container(
              margin: EdgeInsets.only(left: size.width * 0.03),
              height: 100,
              width: size.width,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: 5,
                  itemBuilder: (context, n) {
                    return CircleIcon(name: names[n], icon: "icon");
                  }),
            ),
            Hero(
              tag: "yourAccountContainer",
              child: Material(
                color: Colors.transparent,
                child: Container(
                  padding: EdgeInsets.all(size.width * 0.03),
                  decoration: BoxDecoration(
                      color: MyColors.fillBox,
                      borderRadius:
                          BorderRadius.only(topRight: Radius.circular(30))),
                  child: Container(
                    width: size.width,
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: size.height * 0.01,
                          ),
                          Text(
                            "YOUR ACCOUNT",
                            style: TextStyle(
                                fontSize: 16,
                                color: MyColors.textBlack.withOpacity(0.5)),
                          ),
                          Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(
                                    left: size.width * 0.01,
                                    top: size.width * 0.02),
                                width: size.width * 0.28,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "₹1.2L",
                                      style: TextStyle(
                                          color: MyColors.textBlack,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20),
                                    ),
                                    SizedBox(height: size.height * 0.01),
                                    Text(
                                      "total\nexchanges",
                                      style: TextStyle(
                                          color: MyColors.subTextBlack,
                                          fontSize: 16),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                    left: size.width * 0.01,
                                    top: size.width * 0.02),
                                width: size.width * 0.28,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "129",
                                      style: TextStyle(
                                          color: MyColors.textBlack,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20),
                                    ),
                                    SizedBox(height: size.height * 0.01),
                                    Text(
                                      "upcoming\npaybacks",
                                      style: TextStyle(
                                          color: MyColors.subTextBlack,
                                          fontSize: 16),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                    left: size.width * 0.01,
                                    top: size.width * 0.02),
                                width: size.width * 0.28,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "₹4632",
                                      style: TextStyle(
                                          color: MyColors.textBlack,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20),
                                    ),
                                    SizedBox(height: size.height * 0.01),
                                    Text(
                                      "upcoming\ndues",
                                      style: TextStyle(
                                          color: MyColors.subTextBlack,
                                          fontSize: 16),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: size.height * 0.025),
                          Container(
                            decoration: BoxDecoration(
                                color: Color(0xffFEFEFE),
                                borderRadius: BorderRadius.circular(5)),
                            padding: EdgeInsets.all(10),
                            width: size.width,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                    margin: EdgeInsets.only(bottom: 10),
                                    width: 180,
                                    height: 20,
                                    child: TabBar(
                                        controller: _tabController,
                                        indicatorPadding: EdgeInsets.only(
                                            right: 55, left: 15),
                                        tabs: [
                                          Tab(
                                            child: Align(
                                              alignment: Alignment.centerLeft,
                                              child: Text(
                                                "return",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color: MyColors.textBlack,
                                                    fontSize: 12),
                                              ),
                                            ),
                                          ),
                                          Tab(
                                            child: Align(
                                              alignment: Alignment.centerLeft,
                                              child: Text(
                                                "receive",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color: MyColors.textBlack,
                                                    fontSize: 12),
                                              ),
                                            ),
                                          ),
                                        ])),
                                Container(
                                    height: size.height * 0.4,
                                    child: TabBarView(
                                        controller: _tabController,
                                        children: <Widget>[
                                          TabOneForScreenOne(),
                                          TabTwoForScreenOne()
                                        ]))
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CircleIcon extends StatelessWidget {
  const CircleIcon({Key? key, required this.name, required this.icon})
      : super(key: key);
  final String name, icon;
  @override
  Widget build(BuildContext context) {
    return name == "RECENT"
        ? Column(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      transitionDuration: Duration(
                        milliseconds: 500,
                      ),
                      pageBuilder: (context, a1, a2) {
                        return ScreenTwo();
                      },
                      transitionsBuilder: (context, a3, a4, child) {
                        return FadeTransition(
                          opacity: a3,
                          child: child,
                        );
                      }));
                },
                child: Container(
                  margin: EdgeInsets.only(
                      left: getScreenSize(context).width * 0.035,
                      top: getScreenSize(context).width * 0.035,
                      right: getScreenSize(context).width * 0.035,
                      bottom: getScreenSize(context).width * 0.02),
                  height: 45,
                  width: 45,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: MyColors.fill),
                  child: Center(
                    child: Image.asset(
                      "assets/downButton.png",
                      color: MyColors.subTextBlack,
                    ),
                  ),
                ),
              ),
              Hero(
                tag: "recents",
                child: Material(
                  color: Colors.transparent,
                  child: Text(
                    name,
                    style: TextStyle(color: MyColors.fillBox, fontSize: 12),
                  ),
                ),
              ),
            ],
          )
        : Column(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (_) => ScreenThree(
                            name: this.name,
                          )));
                },
                child: Container(
                  margin: EdgeInsets.only(
                      left: getScreenSize(context).width * 0.035,
                      top: getScreenSize(context).width * 0.035,
                      right: getScreenSize(context).width * 0.035,
                      bottom: getScreenSize(context).width * 0.02),
                  height: 45,
                  width: 45,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: MyColors.fill),
                ),
              ),
              Text(
                name,
                style: TextStyle(color: MyColors.fillBox, fontSize: 12),
              ),
            ],
          );
  }
}
