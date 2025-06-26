import 'package:drift/drift.dart';

class Hadith extends Table {
  @override
  String get tableName => 'hadith'; // optional, matches your actual DB

  IntColumn get id => integer()();
  IntColumn get bookId => integer().named('book_id')();
  TextColumn get bookName => text().named('book_name')();
  IntColumn get chapterId => integer().named('chapter_id')();
  IntColumn get sectionId => integer().named('section_id')();
  TextColumn get hadithKey => text().named('hadith_key')();
  IntColumn get hadithId => integer().named('hadith_id').nullable()();

  // ✅ Make nullable if any record in DB has null
  TextColumn get narrator => text().nullable()();
  TextColumn get bn => text().nullable()();
  TextColumn get ar => text().nullable()();
  TextColumn get arDiacless => text().named('ar_diacless').nullable()();

  TextColumn get note => text().nullable()();
  IntColumn get gradeId => integer().named('grade_id').nullable()();
  TextColumn get grade => text().nullable()();
  TextColumn get gradeColor => text().named('grade_color').nullable()();

  @override
  Set<Column> get primaryKey => {id};
}