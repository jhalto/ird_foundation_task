import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:ird_foundation_task/constants/app_colors.dart';
import 'package:ird_foundation_task/constants/app_text_style.dart';

class HadidhDetailController extends GetxController {
  void moreOption(BuildContext context) {
    showModalBottomSheet(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      isScrollControlled: true,
      context: context,
      builder: (context) {
        return Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: AppColors.whiteColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          padding: EdgeInsets.symmetric(vertical: 22.h, horizontal: 20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "More Option",
                    style: poppinsStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      lineHeight: 1.2
                    ),
                  ),
                  IconButton(onPressed: (){}, icon: Icon(Icons.close,color: Color(0xff35414D),))
                ],
              ),
              SizedBox(height: 20.h,),
              Row(
                children: [
                  SvgPicture.asset("assets/icons/paper-plane (1) 1.svg"),
                  SizedBox(
                    width: 15,
                  ),
                  Text("Go To Main Hadith",style: poppinsStyle(
                    fontWeight: FontWeight.w500,
                    lineHeight: 1.2,
                    color: Color(0xff5D646F)
                  ),)
                ],
              ),
              SizedBox(height: 24,),
              Row(
                children: [
                  SvgPicture.asset("assets/icons/bookmark (2) 1.svg"),
                  SizedBox(
                    width: 15,
                  ),
                  Text("Add to Collection",style: poppinsStyle(
                    fontWeight: FontWeight.w500,
                    lineHeight: 1.2,
                    color: Color(0xff5D646F)
                  ),)
                ],
              ),
              SizedBox(height: 24,),
              Row(
                children: [
                  SvgPicture.asset("assets/icons/copy 1.svg"),
                  SizedBox(
                    width: 15,
                  ),
                  Text("Bangla Copy",style: poppinsStyle(
                    fontWeight: FontWeight.w500,
                    lineHeight: 1.2,
                    color: Color(0xff5D646F)
                  ),)
                ],
              ),
              SizedBox(height: 24,),
              Row(
                children: [
                  SvgPicture.asset("assets/icons/copy 1.svg"),
                  SizedBox(
                    width: 15,
                  ),
                  Text("English Copy",style: poppinsStyle(
                    fontWeight: FontWeight.w500,
                    lineHeight: 1.2,
                    color: Color(0xff5D646F)
                  ),)
                ],
              ),
              SizedBox(height: 24,),
              Row(
                children: [
                  SvgPicture.asset("assets/icons/copy 1.svg"),
                  SizedBox(
                    width: 15,
                  ),
                  Text("Arabic Copy",style: poppinsStyle(
                    fontWeight: FontWeight.w500,
                    lineHeight: 1.2,
                    color: Color(0xff5D646F)
                  ),)
                ],
              ),
              SizedBox(height: 24,),
              Row(
                children: [
                  SvgPicture.asset("assets/icons/add.svg"),
                  SizedBox(
                    width: 15,
                  ),
                  Text("Add Hifz",style: poppinsStyle(
                    fontWeight: FontWeight.w500,
                    lineHeight: 1.2,
                    color: Color(0xff5D646F)
                  ),)
                ],
              ),
              SizedBox(height: 24,),
              Row(
                children: [
                  SvgPicture.asset("assets/icons/add.svg"),
                  SizedBox(
                    width: 15,
                  ),
                  Text("Add Note",style: poppinsStyle(
                    fontWeight: FontWeight.w500,
                    lineHeight: 1.2,
                    color: Color(0xff5D646F)
                  ),)
                ],
              ),
              SizedBox(height: 24,),
              Row(
                children: [
                  SvgPicture.asset("assets/icons/share 1.svg"),
                  SizedBox(
                    width: 15,
                  ),
                  Text("Share",style: poppinsStyle(
                    fontWeight: FontWeight.w500,
                    lineHeight: 1.2,
                    color: Color(0xff5D646F)
                  ),)
                ],
              ),
              SizedBox(height: 24,),
              Row(
                children: [
                  SvgPicture.asset("assets/icons/exclamation 1.svg"),
                  SizedBox(
                    width: 15,
                  ),
                  Text("Report",style: poppinsStyle(
                    fontWeight: FontWeight.w500,
                    lineHeight: 1.2,
                    color: Color(0xff5D646F)
                  ),)
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
