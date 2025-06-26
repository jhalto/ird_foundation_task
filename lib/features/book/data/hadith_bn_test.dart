import 'dart:io';
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:flutter/services.dart';
import 'package:ird_foundation_task/features/book/data/model/book.dart';
import 'package:ird_foundation_task/features/book/data/model/chapter.dart';
import 'package:ird_foundation_task/features/book/data/model/hadiths.dart';

import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';

part 'hadith_bn_test.g.dart';  // This must match the filename!

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dir = await getApplicationDocumentsDirectory();
    final dbPath = join(dir.path, 'hadith_bn_test.db');

    if (!File(dbPath).existsSync()) {
      final data = await rootBundle.load('assets/database/hadith_bn_test.db');
      final bytes = data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);
      await File(dbPath).writeAsBytes(bytes, flush: true);
    }

    return NativeDatabase(File(dbPath), logStatements: true);
  });
}

@DriftDatabase(tables: [Books,Chapter,Hadith])
class HadithDatabase extends _$HadithDatabase {
  HadithDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;

    Future<List<Book>> getAllBooks() => select(books).get();

  Future<List<ChapterData>> getChaptersByBookId(int bookId) {
  return (select(chapter)..where((c) => c.bookId.equals(bookId))).get();
}

Future<List<HadithData>> getHadithsByChapterId(int chapterId) {
  return (select(hadith)..where((h) => h.chapterId.equals(chapterId))).get();
}
}

