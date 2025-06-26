import 'dart:ffi';

import 'package:get/get.dart';
import 'package:ird_foundation_task/features/book/data/hadith_bn_test.dart';

class BookController extends GetxController {
  late final HadithDatabase db;
  RxList<Book> books = <Book>[].obs;
  RxList<ChapterData> chapters = <ChapterData>[].obs;
  RxList<HadithData> hadithList = <HadithData>[].obs;
  @override
  void onInit() {
    super.onInit();
    db = HadithDatabase();
    loadBooks();
  }

  void loadBooks() async {
    final allBooks = await db
        .getAllBooks(); // assuming this returns List<HadithModel>
    books.assignAll(allBooks);
  }

  Future loadChaptersByBookId(int bookId) async {
    final result = await db.getChaptersByBookId(bookId);
    chapters.assignAll(result);
  }

   Future<void> loadHadithsByChapterId(int chapterId) async {
    final result = await db.getHadithsByChapterId(chapterId); // returns List<HadithData>
    hadithList.assignAll(result);
  }
}
