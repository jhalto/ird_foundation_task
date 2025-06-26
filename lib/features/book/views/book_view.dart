import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ird_foundation_task/features/book/controllers/book_controller.dart';
import 'package:ird_foundation_task/features/book/views/chapter_view.dart';
import 'package:ird_foundation_task/constants/app_colors.dart';
import 'package:ird_foundation_task/constants/app_text_style.dart';

class BooksListPage extends StatelessWidget {
  BooksListPage({super.key});

  final controller = Get.find<BookController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        title: Text(
          "Hadith Books",
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
          itemCount: controller.books.length,
          separatorBuilder: (_, __) => SizedBox(height: 12),
          itemBuilder: (context, index) {
            final book = controller.books[index];
            return GestureDetector(
              onTap: () async {
                await controller.loadChaptersByBookId(book.id);
                Get.to(() => ChapterView());
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
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          book.title ?? "Unknown Title",
                          style: poppinsStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: AppColors.primaryColor,
                          ),
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: AppColors.primaryColor,
                        size: 18,
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