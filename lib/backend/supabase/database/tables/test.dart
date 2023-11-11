import '../database.dart';

class TestTable extends SupabaseTable<TestRow> {
  @override
  String get tableName => 'test';

  @override
  TestRow createRow(Map<String, dynamic> data) => TestRow(data);
}

class TestRow extends SupabaseDataRow {
  TestRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TestTable();

  String? get field1 => getField<String>('1');
  set field1(String? value) => setField<String>('1', value);

  String? get field2 => getField<String>('2');
  set field2(String? value) => setField<String>('2', value);

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);
}
