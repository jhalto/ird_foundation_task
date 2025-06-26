import 'package:drift/drift.dart';

class Books extends Table {
  
  IntColumn get id => integer()(); // Primary key
  TextColumn get title => text().nullable()();
  TextColumn get titleAr => text().named('title_ar').nullable()();
  IntColumn get numberOfHadis => integer().named('number_of_hadis').nullable()();
  TextColumn get abvrCode => text().named('abvr_code').nullable()();
  TextColumn get bookName => text().named('book_name').nullable()();
  TextColumn get bookDescr => text().named('book_descr').nullable()();
  TextColumn get colorCode => text().named('color_code').nullable()();

  @override
  Set<Column> get primaryKey => {id};
}