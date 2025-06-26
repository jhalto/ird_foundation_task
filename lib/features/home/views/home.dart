import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:ird_foundation_task/constants/app_colors.dart';
import 'package:ird_foundation_task/constants/app_text_style.dart';
import 'package:ird_foundation_task/features/book/data/hadith_bn_test.dart';
import 'package:ird_foundation_task/features/home/controllers/home_controller.dart';

class Home extends StatelessWidget {
  HadithData hadith;
  ChapterData chapter;
  Home({super.key,required this.hadith, required this.chapter});
  final controller = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).padding.top,
            color: const Color(0xff119072), // Status bar color
          ),

          Expanded(
            child: Container(
              width: double.infinity,
              color: AppColors.primaryColor, // Body color
              alignment: Alignment.center,
              child: Column(
                children: [
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(
                          CupertinoIcons.back,
                          size: 24,
                          color: AppColors.whiteColor,
                        ),
                      ),
                      SizedBox(width: 4),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Sahih Bukhari",
                            style: globalTextStyle(
                              color: AppColors.whiteColor,
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            "Revelation",
                            style: globalTextStyle(
                              color: AppColors.whiteColor,
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 13.5),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: AppColors.bgColor,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        ),
                      ),
                      width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 11.5,
                          vertical: 14,
                        ),
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: AppColors.whiteColor,
                                ),
                                padding: EdgeInsets.all(10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    RichText(
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: "${hadith.chapterId}/${hadith.hadithId} Chapter: ",
                                            style: globalTextStyle(
                                              color: AppColors.primaryColor,
                                              lineHeight: 1.57,
                                              fontWeight: FontWeight.w800,
                                            ),
                                          ),
                                          TextSpan(
                                            text:
                                                "${chapter.title}",
                                            style: poppinsStyle(
                                              color: Color(0xff5D646F),
                                              lineHeight: 1.57,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Divider(
                                      thickness: 1,
                                      color: Color(0xffEFEFEF),
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      hadith.note??"",
                                      style: interStyle(
                                        color: Color.fromRGBO(53, 53, 53, 0.50),
                                        lineHeight: 1.5,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 14),
                              Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: AppColors.whiteColor,
                                ),
                                padding: EdgeInsets.all(10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        ClipPath(
                                          clipper: RoundedHexagon(
                                            cornerRadius: 3,
                                          ),
                                          child: Container(
                                            height: 37,
                                            width: 34,
                                            color: AppColors.primaryColor,
                                            child: Center(
                                              child: Text(
                                                "B",
                                                style: poppinsStyle(
                                                  color: AppColors.whiteColor,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(width: 10),
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              RichText(
                                                text: TextSpan(
                                                  children: [
                                                    TextSpan(
                                                      text: "Hadith No: ",
                                                      style: poppinsStyle(
                                                        color: Color(
                                                          0xff5D646F,
                                                        ),
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        lineHeight: 1.53,
                                                      ),
                                                    ),
                                                    TextSpan(
                                                      text: hadith.id.toString(),
                                                      style: globalTextStyle(
                                                        color: AppColors
                                                            .primaryColor,
                                                        lineHeight: 1.53,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Text(
                                                hadith.bookName,
                                                style: globalTextStyle(
                                                  color: Color.fromRGBO(
                                                    53,
                                                    53,
                                                    53,
                                                    0.50,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(
                                              13,
                                            ),
                                            color: AppColors.primaryColor,
                                          ),
                                          padding: EdgeInsets.symmetric(
                                            vertical: 4,
                                            horizontal: 10,
                                          ),
                                          child: Text(
                                            "Sahih",
                                            style: interStyle(
                                              fontWeight: FontWeight.w500,
                                              lineHeight: 1.2,
                                              color: AppColors.whiteColor,
                                            ),
                                          ),
                                        ),

                                        IconButton(
                                          onPressed: () {
                                            controller.moreOption(context);
                                          },
                                          icon: Icon(Icons.more_vert, size: 24),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      hadith.ar??'',
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xff353535),
                                        height: 2.75,
                                        fontFamily: 'MeQuran',
                                      ),
                                      textAlign: TextAlign.right,
                                    ),
                                    SizedBox(height: 20),
                                    Text(
                                      "It is narrated from ${hadith.narrator} (may Allaah have mercy on him):",
                                      style: interStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                        lineHeight: 1.42,
                                        color: AppColors.primaryColor,
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      hadith.note??'',
                                      style: interStyle(
                                        fontWeight: FontWeight.w400,
                                        lineHeight: 1.42,
                                        color: Color(0xff353535),
                                      ),
                                    ),
                                    SizedBox(height: 20),
                                    Text(
                                      hadith.note??"(See also 51, 2681, 2804, 2941, 2978, 3174, 4553, 5980, 6260, 7196, 7541) (Modern Publication: 6, Islamic Foundation: 6)",
                                      style: interStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        lineHeight: 1.5,
                                        color: Color.fromRGBO(53, 53, 53, 0.50),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class RoundedHexagon extends CustomClipper<Path> {
  final double cornerRadius;

  RoundedHexagon({this.cornerRadius = 8});

  @override
  Path getClip(Size size) {
    return buildRoundedHexagon(size, cornerRadius);
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}

Path buildRoundedHexagon(Size size, double radius) {
  final path = Path();
  final center = Offset(size.width / 2, size.height / 2);
  final r = size.width / 2;

  const sides = 6;
  final angle = (2 * pi) / sides;

  final points = List<Offset>.generate(sides, (i) {
    final x = center.dx + r * cos(angle * i - pi / 2);
    final y = center.dy + r * sin(angle * i - pi / 2);
    return Offset(x, y);
  });

  for (int i = 0; i < sides; i++) {
    final current = points[i];
    final next = points[(i + 1) % sides];
    final prev = points[(i - 1 + sides) % sides];

    final dirToPrev = (current - prev).normalize();
    final dirToNext = (next - current).normalize();

    final start = current - dirToPrev * radius;
    final end = current + dirToNext * radius;

    if (i == 0) {
      path.moveTo(start.dx, start.dy);
    } else {
      path.lineTo(start.dx, start.dy);
    }

    path.quadraticBezierTo(current.dx, current.dy, end.dx, end.dy);
  }

  path.close();
  return path;
}

extension OffsetUtils on Offset {
  Offset normalize() {
    final length = distance;
    return length == 0 ? this : this / length;
  }
}
