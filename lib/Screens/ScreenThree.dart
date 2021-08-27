import 'package:flutter/material.dart';
import 'package:paynav_task/config/MediaQuery.dart';
import 'package:paynav_task/config/colors.dart';

class ScreenThree extends StatefulWidget {
  final name;
  const ScreenThree({Key? key, required this.name}) : super(key: key);

  @override
  _ScreenThreeState createState() => _ScreenThreeState();
}

class _ScreenThreeState extends State<ScreenThree> {
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
            child: Image.asset("assets/downButton.png"),
          ),
        ),
      ),
      backgroundColor: MyColors.primary,
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                padding: EdgeInsets.all(size.width * 0.05),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.name,
                      style: TextStyle(
                          color: MyColors.text,
                          fontSize: 24,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "${widget.name.toString().toLowerCase()}-1@okici",
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: size.width * 0.4,
                child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Color(0xff1A1443))),
                    onPressed: () {},
                    child: Center(
                      child: Text(
                        "TRANSACTIONS",
                        style: TextStyle(color: Colors.white),
                      ),
                    )),
              ),
              Container(
                width: size.width * 0.4,
                child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Color(0xff1A1443))),
                    onPressed: () {},
                    child: Center(
                      child: Text(
                        "MESSAGE",
                        style: TextStyle(color: Colors.white),
                      ),
                    )),
              )
            ],
          ),
          SizedBox(
            height: size.height * 0.035,
          ),
          Expanded(
              child: Container(
            padding: EdgeInsets.all(size.width * 0.03),
            decoration: BoxDecoration(
                color: MyColors.fillBox,
                borderRadius: BorderRadius.only(topRight: Radius.circular(30))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: size.height * 0.01,
                ),
                Text(
                  "YOUR RELATIONSHIP",
                  style: TextStyle(
                      fontSize: 16, color: MyColors.textBlack.withOpacity(0.5)),
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                          left: size.width * 0.01, top: size.width * 0.02),
                      width: size.width * 0.28,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "₹19K",
                            style: TextStyle(
                                color: MyColors.textBlack,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                          SizedBox(height: size.height * 0.01),
                          Text(
                            "total\nexchanges",
                            style: TextStyle(
                                color: MyColors.subTextBlack, fontSize: 16),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          left: size.width * 0.01, top: size.width * 0.02),
                      width: size.width * 0.28,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "₹983",
                            style: TextStyle(
                                color: MyColors.textBlack,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                          SizedBox(height: size.height * 0.01),
                          Text(
                            "upcoming\npaybacks",
                            style: TextStyle(
                                color: MyColors.subTextBlack, fontSize: 16),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          left: size.width * 0.01, top: size.width * 0.02),
                      width: size.width * 0.28,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "₹123",
                            style: TextStyle(
                                color: MyColors.textBlack,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                          SizedBox(height: size.height * 0.01),
                          Text(
                            "upcoming\ndues",
                            style: TextStyle(
                                color: MyColors.subTextBlack, fontSize: 16),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: size.height * 0.035),
                Text(
                  "UPCOMING",
                  style: TextStyle(
                      fontSize: 16, color: MyColors.textBlack.withOpacity(0.5)),
                ),
                SizedBox(height: size.height * 0.03),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.greenAccent,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: MyColors.text,
                              borderRadius: BorderRadius.circular(8)),
                          height: 80,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
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
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            "Re: Pragati",
                                            style: TextStyle(
                                                color: MyColors.textBlack,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16),
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            "27 Aug",
                                            style: TextStyle(
                                                color: MyColors.subTextBlack,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 14),
                                          )
                                        ],
                                      ),
                                      Text(
                                        "Harshada",
                                        style: TextStyle(
                                            color: MyColors.textBlack,
                                            fontSize: 14),
                                      ),
                                      Text(
                                        "to you",
                                        style: TextStyle(
                                            color: MyColors.subTextBlack,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 14),
                                      )
                                    ],
                                  )
                                ],
                              ),
                              Text(
                                "₹87",
                                style: TextStyle(
                                    color: MyColors.subTextBlack,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: 80,
                        width: 10,
                        decoration: BoxDecoration(
                            color: Colors.greenAccent,
                            borderRadius: BorderRadius.circular(8)),
                      )
                    ],
                  ),
                )
              ],
            ),
          ))
        ],
      ),
    );
  }
}
