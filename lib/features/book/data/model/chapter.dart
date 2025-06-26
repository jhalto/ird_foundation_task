import 'package:drift/drift.dart';

class Chapter extends Table {
 
   
  IntColumn get id => integer()();
  IntColumn get chapterId => integer().named('chapter_id')();
  IntColumn get bookId => integer().named('book_id')();
  TextColumn get title => text()();
  IntColumn get number => integer()();
  TextColumn get hadisRange => text().named('hadis_range').nullable()();
  TextColumn get bookName => text().named('book_name')();

  @override
  Set<Column> get primaryKey => {id};
}