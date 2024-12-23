import 'package:supabase_flutter/supabase_flutter.dart' hide Provider;

export 'database/database.dart';

String _kSupabaseUrl = 'https://fftyirkucafyxyuvzlvq.supabase.co';
String _kSupabaseAnonKey =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImZmdHlpcmt1Y2FmeXh5dXZ6bHZxIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzQ4MjQwOTUsImV4cCI6MjA1MDQwMDA5NX0.V5BG2shY4zMIDTpgyRBt9xF-Sgidkj_P5_gAFDPJzIc';

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
