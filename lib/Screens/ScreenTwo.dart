import 'package:flutter/material.dart';
import 'package:paynav_task/Screens/ScreenThree.dart';
import 'package:paynav_task/config/MediaQuery.dart';
import 'package:paynav_task/config/colors.dart';

class ScreenTwo extends StatefulWidget {
  const ScreenTwo({Key? key}) : super(key: key);

  @override
  _ScreenTwoState createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  List<String> names = [
    "Harshada",
    "Naveen",
    "Vivek",
    "Rahul",
    "Naveepriya",
    "Subhash",
    "Ramshankar"
  ];
  @override
  Widget build(BuildContext context) {
    Size size = getScreenSize(context);
    return Scaffold(
      backgroundColor: MyColors.primary,
      bottomNavigationBar: Hero(
        tag: "yourAccountContainer",
        child: Material(
          color: Colors.transparent,
          child: GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Container(
              height: 40,
              width: size.width,
              decoration: BoxDecoration(
                  color: MyColors.text,
                  borderRadius:
                      BorderRadius.only(topLeft: Radius.circular(30))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      "YOUR ACCOUNT",
                      style: TextStyle(
                          fontSize: 12,
                          color: MyColors.textBlack.withOpacity(0.5)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      "assets/upButton.png",
                      scale: 0.8,
                      color: Colors.black,
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
              height: size.height * 0.035,
            ),
            Container(
                margin: EdgeInsets.only(left: size.width * 0.03),
                // height: 170,
                width: size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "FREQUENTLY CONTACTED",
                      style: TextStyle(
                        color: MyColors.subText,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.01,
                    ),
                    GridView.builder(
                        shrinkWrap: true,
                        itemCount: 7,
                        physics: NeverScrollableScrollPhysics(),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            childAspectRatio: 0.8, crossAxisCount: 5),
                        itemBuilder: (context, index) {
                          return CircleIconTwo(name: names[index], icon: "");
                        }),
                    SizedBox(
                      height: size.height * 0.035,
                    ),
                    Hero(
                      tag: "recents",
                      child: Material(
                        color: Colors.transparent,
                        child: Row(
                          children: [
                            Text(
                              "RECENTS",
                              style: TextStyle(
                                color: MyColors.subText,
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Image.asset("assets/upButton.png")
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.01,
                    ),
                    GridView.builder(
                        shrinkWrap: true,
                        itemCount: 30,
                        physics: NeverScrollableScrollPhysics(),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            childAspectRatio: 0.8, crossAxisCount: 5),
                        itemBuilder: (context, index) {
                          return CircleIconTwo(
                              name: names[index % 7], icon: "");
                        }),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}

class CircleIconTwo extends StatelessWidget {
  const CircleIconTwo({Key? key, required this.name, required this.icon})
      : super(key: key);
  final String name, icon;
  @override
  Widget build(BuildContext context) {
    return Column(
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
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: MyColors.fill),
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
