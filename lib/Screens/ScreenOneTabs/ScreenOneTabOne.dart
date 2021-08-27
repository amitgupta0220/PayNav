import 'package:flutter/material.dart';
import 'package:paynav_task/config/MediaQuery.dart';
import 'package:paynav_task/config/colors.dart';
import 'package:pie_chart/pie_chart.dart';

class TabOneForScreenOne extends StatefulWidget {
  const TabOneForScreenOne({Key? key}) : super(key: key);

  @override
  _TabOneForScreenOneState createState() => _TabOneForScreenOneState();
}

class _TabOneForScreenOneState extends State<TabOneForScreenOne> {
  Map<String, double> dataMap = {
    "return": 5,
    "receive": 3,
    "due": 2,
  };
  bool dropDown = false;

  @override
  Widget build(BuildContext context) {
    Size size = getScreenSize(context);
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "RETURNED",
                      style: TextStyle(
                          fontSize: 12,
                          color: MyColors.textBlack.withOpacity(0.5)),
                    ),
                    SizedBox(
                      height: size.height * 0.01,
                    ),
                    Text(
                      "₹38,139",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: MyColors.textBlack),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "of ₹42,812",
                      style: TextStyle(fontSize: 12, color: MyColors.textBlack),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "UPCOMING",
                      style: TextStyle(
                          fontSize: 12,
                          color: MyColors.textBlack.withOpacity(0.5)),
                    ),
                    SizedBox(
                      height: size.height * 0.01,
                    ),
                    Text(
                      "₹4,632",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: MyColors.textBlack),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "of ₹42,812",
                      style: TextStyle(fontSize: 12, color: MyColors.textBlack),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(right: 15),
                  child: PieChart(
                    dataMap: dataMap,
                    animationDuration: Duration(milliseconds: 800),
                    chartLegendSpacing: 32,
                    chartRadius: MediaQuery.of(context).size.width / 3.2,
                    colorList: [
                      Color(0xff68DE90),
                      Color(0xffE2796E),
                      Colors.red
                    ],
                    initialAngleInDegree: 0,
                    chartType: ChartType.ring,
                    ringStrokeWidth: 15,
                    legendOptions: LegendOptions(
                      showLegends: false,
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 15,
            ),
            !dropDown
                ? Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "FRIENDS",
                        style: TextStyle(
                            fontSize: 12,
                            color: MyColors.textBlack.withOpacity(0.5)),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            dropDown = !dropDown;
                          });
                        },
                        child: Row(
                          children: [
                            Container(
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                  color: MyColors.fill, shape: BoxShape.circle),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Image.asset(
                              "assets/downButton.png",
                              color: MyColors.textBlack,
                            )
                          ],
                        ),
                      )
                    ],
                  )
                : Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            dropDown = !dropDown;
                          });
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "FRIENDS",
                              style: TextStyle(
                                  fontSize: 12,
                                  color: MyColors.textBlack.withOpacity(0.5)),
                            ),
                            Image.asset(
                              "assets/upButton.png",
                              color: MyColors.textBlack,
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 8),
                        padding: EdgeInsets.all(10),
                        height: 60,
                        decoration: BoxDecoration(
                            color: Colors.black38.withOpacity(0.05),
                            borderRadius: BorderRadius.circular(8)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: 20,
                                  width: 20,
                                  decoration: BoxDecoration(
                                      color: MyColors.fill,
                                      shape: BoxShape.circle),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Ananya Rao",
                                      style: TextStyle(
                                          color: MyColors.textBlack,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16),
                                    ),
                                    Text(
                                      "last interacted 7d ago",
                                      style: TextStyle(
                                          color: MyColors.subTextBlack,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14),
                                    )
                                  ],
                                )
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "₹3,332",
                                  style: TextStyle(
                                      color: MyColors.textBlack,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                                Text(
                                  "due",
                                  style: TextStyle(
                                      color: MyColors.subTextBlack,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 8),
                        padding: EdgeInsets.all(10),
                        height: 60,
                        decoration: BoxDecoration(
                            color: Colors.black38.withOpacity(0.05),
                            borderRadius: BorderRadius.circular(8)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: 20,
                                  width: 20,
                                  decoration: BoxDecoration(
                                      color: MyColors.fill,
                                      shape: BoxShape.circle),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Ananya Rao",
                                      style: TextStyle(
                                          color: MyColors.textBlack,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16),
                                    ),
                                    Text(
                                      "last interacted 7d ago",
                                      style: TextStyle(
                                          color: MyColors.subTextBlack,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14),
                                    )
                                  ],
                                )
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "₹3,332",
                                  style: TextStyle(
                                      color: MyColors.textBlack,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                                Text(
                                  "due",
                                  style: TextStyle(
                                      color: MyColors.subTextBlack,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 8),
                        padding: EdgeInsets.all(10),
                        height: 60,
                        decoration: BoxDecoration(
                            color: Colors.black38.withOpacity(0.05),
                            borderRadius: BorderRadius.circular(8)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: 20,
                                  width: 20,
                                  decoration: BoxDecoration(
                                      color: MyColors.fill,
                                      shape: BoxShape.circle),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Ananya Rao",
                                      style: TextStyle(
                                          color: MyColors.textBlack,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16),
                                    ),
                                    Text(
                                      "last interacted 7d ago",
                                      style: TextStyle(
                                          color: MyColors.subTextBlack,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14),
                                    )
                                  ],
                                )
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "₹3,332",
                                  style: TextStyle(
                                      color: MyColors.textBlack,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                                Text(
                                  "due",
                                  style: TextStyle(
                                      color: MyColors.subTextBlack,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 8),
                        padding: EdgeInsets.all(10),
                        height: 60,
                        decoration: BoxDecoration(
                            color: Colors.black38.withOpacity(0.05),
                            borderRadius: BorderRadius.circular(8)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: 20,
                                  width: 20,
                                  decoration: BoxDecoration(
                                      color: MyColors.fill,
                                      shape: BoxShape.circle),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Ananya Rao",
                                      style: TextStyle(
                                          color: MyColors.textBlack,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16),
                                    ),
                                    Text(
                                      "last interacted 7d ago",
                                      style: TextStyle(
                                          color: MyColors.subTextBlack,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14),
                                    )
                                  ],
                                )
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "₹3,332",
                                  style: TextStyle(
                                      color: MyColors.textBlack,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                                Text(
                                  "due",
                                  style: TextStyle(
                                      color: MyColors.subTextBlack,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  )
          ],
        ),
      ),
    );
  }
}
