import 'package:supabase_flutter/supabase_flutter.dart' hide Provider;

export 'database/database.dart';

const _kSupabaseUrl = 'https://qtdvrcrstryvptqtvfea.supabase.co';
const _kSupabaseAnonKey =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InF0ZHZyY3JzdHJ5dnB0cXR2ZmVhIiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTc2MDA3NjQsImV4cCI6MjAxMzE3Njc2NH0.HQOq6-TcV7X4A8fj2dSCiYwkMihvBDy9lIT9UJGxvfA';

class SupaFlow {
  SupaFlow._();

  static SupaFlow? _instance;
  static SupaFlow get instance => _instance ??= SupaFlow._();

  final _supabase = Supabase.instance.client;
  static SupabaseClient get client => instance._supabase;

  static Future initialize() => Supabase.initialize(
        url: _kSupabaseUrl,
        anonKey: _kSupabaseAnonKey,
        debug: false,
      );
}
