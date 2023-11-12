import '../database.dart';

class OrdersSeaArchieveTable extends SupabaseTable<OrdersSeaArchieveRow> {
  @override
  String get tableName => 'ordersSeaArchieve';

  @override
  OrdersSeaArchieveRow createRow(Map<String, dynamic> data) =>
      OrdersSeaArchieveRow(data);
}

class OrdersSeaArchieveRow extends SupabaseDataRow {
  OrdersSeaArchieveRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => OrdersSeaArchieveTable();

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

  String? get dateDeclarIssue => getField<String>('dateDeclarIssue');
  set dateDeclarIssue(String? value) =>
      setField<String>('dateDeclarIssue', value);

  String? get dateQuarantine => getField<String>('dateQuarantine');
  set dateQuarantine(String? value) =>
      setField<String>('dateQuarantine', value);

  String? get orderEmailUser => getField<String>('orderEmailUser');
  set orderEmailUser(String? value) =>
      setField<String>('orderEmailUser', value);

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String? get batchNumber => getField<String>('batchNumber');
  set batchNumber(String? value) => setField<String>('batchNumber', value);

  String? get dateDeparture => getField<String>('dateDeparture');
  set dateDeparture(String? value) => setField<String>('dateDeparture', value);

  String? get orderEmailUser2 => getField<String>('orderEmailUser2');
  set orderEmailUser2(String? value) =>
      setField<String>('orderEmailUser2', value);

  String? get orderEmailUser4 => getField<String>('orderEmailUser4');
  set orderEmailUser4(String? value) =>
      setField<String>('orderEmailUser4', value);

  String? get orderEmailUser3 => getField<String>('orderEmailUser3');
  set orderEmailUser3(String? value) =>
      setField<String>('orderEmailUser3', value);

  String get primaryKey => getField<String>('primary_key')!;
  set primaryKey(String value) => setField<String>('primary_key', value);

  String? get palletCount => getField<String>('palletCount');
  set palletCount(String? value) => setField<String>('palletCount', value);

  String? get boxesCount => getField<String>('boxesCount');
  set boxesCount(String? value) => setField<String>('boxesCount', value);
}
