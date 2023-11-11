import '../database.dart';

class OrdersSeaTable extends SupabaseTable<OrdersSeaRow> {
  @override
  String get tableName => 'ordersSea';

  @override
  OrdersSeaRow createRow(Map<String, dynamic> data) => OrdersSeaRow(data);
}

class OrdersSeaRow extends SupabaseDataRow {
  OrdersSeaRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => OrdersSeaTable();

  String? get palletesNumber => getField<String>('palletesNumber');
  set palletesNumber(String? value) =>
      setField<String>('palletesNumber', value);

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String? get boxesNumber => getField<String>('boxesNumber');
  set boxesNumber(String? value) => setField<String>('boxesNumber', value);

  String? get dateDeclarIssue => getField<String>('dateDeclarIssue');
  set dateDeclarIssue(String? value) =>
      setField<String>('dateDeclarIssue', value);

  String? get dateQuarantine => getField<String>('dateQuarantine');
  set dateQuarantine(String? value) =>
      setField<String>('dateQuarantine', value);

  String? get orderEmailUser => getField<String>('orderEmailUser');
  set orderEmailUser(String? value) =>
      setField<String>('orderEmailUser', value);

  String? get datePrintcuts => getField<String>('datePrintcuts');
  set datePrintcuts(String? value) => setField<String>('datePrintcuts', value);

  String? get dateArrive => getField<String>('dateArrive');
  set dateArrive(String? value) => setField<String>('dateArrive', value);

  String? get numContainer => getField<String>('numContainer');
  set numContainer(String? value) => setField<String>('numContainer', value);

  String? get expensiveBrand => getField<String>('expensiveBrand');
  set expensiveBrand(String? value) =>
      setField<String>('expensiveBrand', value);

  String? get shipName => getField<String>('shipName');
  set shipName(String? value) => setField<String>('shipName', value);

  String? get dateDeclarationSub => getField<String>('dateDeclarationSub');
  set dateDeclarationSub(String? value) =>
      setField<String>('dateDeclarationSub', value);

  String? get productName => getField<String>('productName');
  set productName(String? value) => setField<String>('productName', value);

  String? get batchNumber => getField<String>('batchNumber');
  set batchNumber(String? value) => setField<String>('batchNumber', value);

  String? get dateDeparture => getField<String>('dateDeparture');
  set dateDeparture(String? value) => setField<String>('dateDeparture', value);

  String? get orderEmailUser2 => getField<String>('orderEmailUser2');
  set orderEmailUser2(String? value) =>
      setField<String>('orderEmailUser2', value);

  String? get orderEmailUser3 => getField<String>('orderEmailUser3');
  set orderEmailUser3(String? value) =>
      setField<String>('orderEmailUser3', value);

  String? get firestoreId => getField<String>('firestore_id');
  set firestoreId(String? value) => setField<String>('firestore_id', value);

  String? get orderEmailUser4 => getField<String>('orderEmailUser4');
  set orderEmailUser4(String? value) =>
      setField<String>('orderEmailUser4', value);

  String get primaryKey => getField<String>('primary_key')!;
  set primaryKey(String value) => setField<String>('primary_key', value);
}
