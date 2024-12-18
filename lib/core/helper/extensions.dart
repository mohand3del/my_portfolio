import 'package:flutter/widgets.dart';

/// Extension for vertical and horizontal spacing
extension SpacingExtension on num {
  /// Adds vertical spacing (height)
  SizedBox get verticalSpace => SizedBox(height: toDouble());

  /// Adds horizontal spacing (width)
  SizedBox get horizontalSpace => SizedBox(width: toDouble());
}
