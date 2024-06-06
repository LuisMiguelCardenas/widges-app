import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widges_app/config/theme/app_them.dart';

// Listado de colores inmutable
final colorListProvider = Provider((ref) => colorList);

//Un simple booleano
final isDarkmodeProvider = StateProvider<bool>((ref) => false);

//Un simple int
final selectedColorProvider = StateProvider<int>((ref) => 0);