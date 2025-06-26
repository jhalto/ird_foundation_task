import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ird_foundation_task/features/book/controllers/book_controller.dart';
import 'package:ird_foundation_task/features/book/data/hadith_bn_test.dart';
import 'package:ird_foundation_task/features/hadith_detail/views/hadith_detail_view.dart';
import 'package:ird_foundation_task/constants/app_colors.dart';
import 'package:ird_foundation_task/constants/app_text_style.dart';

class HadithView extends StatelessWidget {
  final ChapterData chapterData;
  HadithView({super.key, required this.chapterData});

  final controller = Get.find<BookController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        title: Text(
          "Hadiths",
          style: globalTextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        centerTitle: true,
      ),
      body: Obx(() {
        if (controller.hadithList.isEmpty) {
          return const Center(child: CircularProgressIndicator());
        }

        return ListView.separated(
          padding: const EdgeInsets.all(16),
          itemCount: controller.hadithList.length,
          separatorBuilder: (_, __) => SizedBox(height: 12),
          itemBuilder: (context, index) {
            final hadith = controller.hadithList[index];

            return GestureDetector(
              onTap: () {
                Get.to(() => HadithDetailView(
                      hadith: hadith,
                      chapter: chapterData,
                    ));
              },
              child: Card(
                elevation: 2,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 16,
                    horizontal: 20,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Narrator: ${hadith.narrator}",
                        style: interStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          color: AppColors.primaryColor,
                        ),
                      ),
                      const SizedBox(height: 6),
                      Text(
                        hadith.bookName,
                        style: poppinsStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff353535),
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        "Grade: ${hadith.grade ?? 'N/A'}",
                        style: interStyle(
                          fontSize: 13,
                          color: Color(0xff5D646F),
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        );
      }),
    );
  }
}