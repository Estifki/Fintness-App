import 'package:flutter/material.dart';
import '/pages/HomePages/HomeDetails/Back.dart';
import '/pages/HomePages/HomeDetails/Cardio.dart';
import '/pages/HomePages/HomeDetails/Chest.dart';
import '/pages/HomePages/HomeDetails/Legs.dart';
import '/pages/HomePages/HomeDetails/Shoulder.dart';
import '/pages/HomePages/HomeDetails/Triceps.dart';
import '/pages/HomePages/HomeDetails/abs.dart';
import '/pages/HomePages/HomeDetails/Biceps.dart';

Widget traningmodel(
  String workoutname,
  String images,
  String materials,
  String time,
) {
  return Container(
    margin: EdgeInsets.only(top: 8, left: 2, right: 2, bottom: 4),
    height: 210,
    width: double.infinity,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8),
      image: DecorationImage(image: AssetImage(images), fit: BoxFit.cover),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(top: 22, left: 15),
          child: Text(
            workoutname,
            style: TextStyle(
              fontSize: 29,
              color: Colors.white,
              fontFamily: "NokiaPureHeadline",
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 68, left: 12),
          child: Text(
            "$time ",
            style: TextStyle(
              fontSize: 18,
              fontFamily: "NokiaPureHeadline",
              color: Colors.white,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 12),
          child: Text(
            "$materials",
            style: TextStyle(
              fontSize: 17.5,
              color: Colors.white,
              fontFamily: "NokiaPureHeadline",
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ],
    ),
  );
}

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<String> traningimages = [
      "image_asset/images/abs.jpg",
      "image_asset/images/Back.jpg",
      "image_asset/images/biceps.JPG",
      "image_asset/images/Cardio.jpg",
      "image_asset/images/chest.JPG",
      "image_asset/images/Legs.jpg",
      "image_asset/images/Shoulder.jpg",
      "image_asset/images/triceps.JPG",
      
    ];

    return NestedScrollView(
      headerSliverBuilder: (context, innerBoxIsScrolled) {
        return [
          SliverAppBar(
            //backgroundColor: Color.fromRGBO(51, 80, 143, 5),
            backgroundColor: Color.fromRGBO(56, 59, 92, 5),
            title: Text(
              "Kvin Fitness",
              style: TextStyle(
                fontFamily: "NotoSerif",
                fontSize: 23,
                color: Colors.white,
              ),
            ),
            centerTitle: true,
            toolbarHeight: 56,
            expandedHeight: 208,
            pinned: true,
            forceElevated: true,
            floating: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                "image_asset/others/Homebg.jpg",
                fit: BoxFit.cover,
              ),
            ),
            leading: Icon(Icons.menu),

            // actions: [
            //   IconButton(
            //       icon: Icon(
            //         Icons.notifications_active_rounded,
            //         size: 26,
            //       ),
            //       onPressed: () {}),
            // ],
          )
        ];
      },
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
                onTap: () => Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => CardioDetails(),
                    )),
                child: traningmodel("????????????", traningimages[3],
                    "??????????????? ???????????? ????????????????????? ", "\n15-30 ????????? ")),
            InkWell(
                onTap: () => Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => BicepsDetails(),
                    )),
                child: traningmodel(
                    "????????? ??????", traningimages[2], "??????/????????? ?????????\n????????????/????????????", "20-30 ????????? ")),
            InkWell(
                onTap: () => Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => TricepsDetails(),
                    )),
                child:
                    traningmodel("????????? ??????", traningimages[7], "????????????/????????????\n????????? ??????????????????", "20-30 ?????????")),
            InkWell(
                onTap: () => Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => ChestDetails(),
                    )),
                child: traningmodel(
                    "?????????", traningimages[4], "????????????/????????????/\n????????????????????? ???????????? ?????????", "25-40 ?????????")),
            InkWell(
                onTap: () => Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => AbsDetails(),
                    )),
                child: traningmodel(
                    "??????", traningimages[0], "????????????/?????????/???????????????", "\n15-25 ?????????")), //????????????/?????????
            InkWell(
                onTap: () => Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => ShoulderDetails(),
                    )),
                child: traningmodel("?????????", traningimages[6], "????????????/????????????/\n????????? ??????????????????", "20-30 ?????????")),
            InkWell(
                onTap: () => Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => BackDetails(),
                    )),
                child: traningmodel(
                    "?????????", traningimages[1], "????????????/????????????/\n????????? ??????????????????", "20-35 ?????????")),
            InkWell(
                onTap: () => Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => LegsDetails(),
                    )),
                child: traningmodel("?????????", traningimages[5], "?????????-????????? ?????????\n????????????/????????????", "30-50 ?????????")),
          ],
        ),
      ),
    );
  }
}
