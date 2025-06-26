import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ird_foundation_task/features/book/controllers/book_controller.dart';
import 'package:ird_foundation_task/features/book/views/hadith_view.dart';
import 'package:ird_foundation_task/constants/app_colors.dart';
import 'package:ird_foundation_task/constants/app_text_style.dart';

class ChapterView extends StatelessWidget {
  ChapterView({super.key});

  final controller = Get.find<BookController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        title: Text(
          "Chapters",
          style: globalTextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        centerTitle: true,
      ),
      body: Obx(
        () => ListView.separated(
          padding: const EdgeInsets.all(16),
          itemCount: controller.chapters.length,
          separatorBuilder: (_, __) => SizedBox(height: 12),
          itemBuilder: (context, index) {
            final chapter = controller.chapters[index];
            return GestureDetector(
              onTap: () async {
                await controller.loadHadithsByChapterId(chapter.chapterId);
                Get.to(() => HadithView(chapterData: chapter));
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
                        chapter.title,
                        style: poppinsStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: AppColors.primaryColor,
                        ),
                      ),
                      const SizedBox(height: 6),
                      Text(
                        'Hadith Range: ${chapter.hadisRange ?? "N/A"}',
                        style: interStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                          color: const Color.fromRGBO(53, 53, 53, 0.6),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}