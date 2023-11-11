import '../database.dart';

class BatchNumberTable extends SupabaseTable<BatchNumberRow> {
  @override
  String get tableName => 'batchNumber';

  @override
  BatchNumberRow createRow(Map<String, dynamic> data) => BatchNumberRow(data);
}

class BatchNumberRow extends SupabaseDataRow {
  BatchNumberRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => BatchNumberTable();

  String? get autoName => getField<String>('auto_name');
  set autoName(String? value) => setField<String>('auto_name', value);

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String? get batchNumber => getField<String>('batchNumber');
  set batchNumber(String? value) => setField<String>('batchNumber', value);

  String? get tradeMark => getField<String>('trade_mark');
  set tradeMark(String? value) => setField<String>('trade_mark', value);

  String? get arrivalTime => getField<String>('arrival_time');
  set arrivalTime(String? value) => setField<String>('arrival_time', value);

  String? get emailOrderUser => getField<String>('emailOrderUser');
  set emailOrderUser(String? value) =>
      setField<String>('emailOrderUser', value);

  String? get terminalEntry => getField<String>('terminal_entry');
  set terminalEntry(String? value) => setField<String>('terminal_entry', value);

  String? get declarationSubmissionTime =>
      getField<String>('declarationSubmissionTime');
  set declarationSubmissionTime(String? value) =>
      setField<String>('declarationSubmissionTime', value);

  String? get emailOrderUser1 => getField<String>('emailOrderUser1');
  set emailOrderUser1(String? value) =>
      setField<String>('emailOrderUser1', value);

  String? get emailOrderUser2 => getField<String>('emailOrderUser2');
  set emailOrderUser2(String? value) =>
      setField<String>('emailOrderUser2', value);

  String? get quarantineTime => getField<String>('quarantineTime');
  set quarantineTime(String? value) =>
      setField<String>('quarantineTime', value);

  String? get sealingTime => getField<String>('sealingTime');
  set sealingTime(String? value) => setField<String>('sealingTime', value);

  String? get goodsName => getField<String>('goodsName');
  set goodsName(String? value) => setField<String>('goodsName', value);

  String? get boxCount => getField<String>('boxCount');
  set boxCount(String? value) => setField<String>('boxCount', value);

  String? get emailOrderUser4 => getField<String>('emailOrderUser4');
  set emailOrderUser4(String? value) =>
      setField<String>('emailOrderUser4', value);

  String? get emailOrderUser3 => getField<String>('emailOrderUser3');
  set emailOrderUser3(String? value) =>
      setField<String>('emailOrderUser3', value);

  String? get palletCount => getField<String>('palletCount');
  set palletCount(String? value) => setField<String>('palletCount', value);

  bool? get isActive => getField<bool>('isActive');
  set isActive(bool? value) => setField<bool>('isActive', value);

  String get primary => getField<String>('primary')!;
  set primary(String value) => setField<String>('primary', value);
}
