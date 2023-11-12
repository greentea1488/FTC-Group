import '../database.dart';

class BatchNumberArchieveTable extends SupabaseTable<BatchNumberArchieveRow> {
  @override
  String get tableName => 'batchNumberArchieve';

  @override
  BatchNumberArchieveRow createRow(Map<String, dynamic> data) =>
      BatchNumberArchieveRow(data);
}

class BatchNumberArchieveRow extends SupabaseDataRow {
  BatchNumberArchieveRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => BatchNumberArchieveTable();

  String? get emailOrderUser4 => getField<String>('emailOrderUser4');
  set emailOrderUser4(String? value) =>
      setField<String>('emailOrderUser4', value);

  String? get emailOrderUser3 => getField<String>('emailOrderUser3');
  set emailOrderUser3(String? value) =>
      setField<String>('emailOrderUser3', value);

  String? get tradeMark => getField<String>('trade_mark');
  set tradeMark(String? value) => setField<String>('trade_mark', value);

  String? get emailOrderUser2 => getField<String>('emailOrderUser2');
  set emailOrderUser2(String? value) =>
      setField<String>('emailOrderUser2', value);

  String? get arrivalTime => getField<String>('arrival_time');
  set arrivalTime(String? value) => setField<String>('arrival_time', value);

  String? get emailOrderUser => getField<String>('emailOrderUser');
  set emailOrderUser(String? value) =>
      setField<String>('emailOrderUser', value);

  String? get palletCount => getField<String>('palletCount');
  set palletCount(String? value) => setField<String>('palletCount', value);

  String? get declarationSubmissionTime =>
      getField<String>('declarationSubmissionTime');
  set declarationSubmissionTime(String? value) =>
      setField<String>('declarationSubmissionTime', value);

  String? get terminalEntry => getField<String>('terminal_entry');
  set terminalEntry(String? value) => setField<String>('terminal_entry', value);

  String? get sealingTime => getField<String>('sealingTime');
  set sealingTime(String? value) => setField<String>('sealingTime', value);

  String? get boxCount => getField<String>('boxCount');
  set boxCount(String? value) => setField<String>('boxCount', value);

  String? get quarantineTime => getField<String>('quarantineTime');
  set quarantineTime(String? value) =>
      setField<String>('quarantineTime', value);

  String? get autoName => getField<String>('auto_name');
  set autoName(String? value) => setField<String>('auto_name', value);

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String? get batchNumber => getField<String>('batchNumber');
  set batchNumber(String? value) => setField<String>('batchNumber', value);

  String? get firestoreId => getField<String>('firestore_id');
  set firestoreId(String? value) => setField<String>('firestore_id', value);

  String? get goodsName => getField<String>('goodsName');
  set goodsName(String? value) => setField<String>('goodsName', value);

  String get primaryKey => getField<String>('primary_key')!;
  set primaryKey(String value) => setField<String>('primary_key', value);
}
