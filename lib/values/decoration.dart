part of 'values.dart';

class Decorations {
  static customBoxDecoration({
    double blurRadius = 4,
    Color color = AppColors.red,
  }) {
    return BoxDecoration(
      boxShadow: [
        BoxShadow(blurRadius: blurRadius, color: color),
      ],
    );
  }
}
