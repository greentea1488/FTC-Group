import '../database.dart';

class AppUsersTable extends SupabaseTable<AppUsersRow> {
  @override
  String get tableName => 'app_users';

  @override
  AppUsersRow createRow(Map<String, dynamic> data) => AppUsersRow(data);
}

class AppUsersRow extends SupabaseDataRow {
  AppUsersRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => AppUsersTable();

  String get email => getField<String>('email')!;
  set email(String value) => setField<String>('email', value);

  String? get displayName => getField<String>('display_name');
  set displayName(String? value) => setField<String>('display_name', value);

  String? get photoUrl => getField<String>('photo_url');
  set photoUrl(String? value) => setField<String>('photo_url', value);

  String get uuid => getField<String>('uuid')!;
  set uuid(String value) => setField<String>('uuid', value);

  DateTime? get createdTime => getField<DateTime>('created_time');
  set createdTime(DateTime? value) => setField<DateTime>('created_time', value);

  String? get phoneNumber => getField<String>('phone_number');
  set phoneNumber(String? value) => setField<String>('phone_number', value);

  bool? get pushNotifications => getField<bool>('PushNotifications');
  set pushNotifications(bool? value) =>
      setField<bool>('PushNotifications', value);

  String? get currentLanguage => getField<String>('currentLanguage');
  set currentLanguage(String? value) =>
      setField<String>('currentLanguage', value);

  String? get firestoreId => getField<String>('firestore_id');
  set firestoreId(String? value) => setField<String>('firestore_id', value);

  String? get uid => getField<String>('uid');
  set uid(String? value) => setField<String>('uid', value);

  bool? get validatedEmail => getField<bool>('validatedEmail');
  set validatedEmail(bool? value) => setField<bool>('validatedEmail', value);
}
