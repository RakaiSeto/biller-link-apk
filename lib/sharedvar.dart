import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

Barcode? result;
final appThemeProvider = StateProvider<bool>((ref) => false);
