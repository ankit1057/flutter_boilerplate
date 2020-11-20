part of 'values.dart';

class Shadows {
  static const BoxShadow containerShadow = const BoxShadow(
    color: AppColors.grey,
    offset: Offset(0.0, 1.0),
    blurRadius: 4.0,
  );

  static const BoxShadow containerShadow2 = const BoxShadow(
    color: AppColors.grey,
    offset: Offset(0.0, 0.0),
    blurRadius: 1.0,
  );

  static customContainerShadow({
    Color color = AppColors.grey,
    Offset offset = const Offset(0.0, 1.0),
    double blurRadius = 4.0,
  }) {
    return BoxShadow(
      color: color,
      offset: offset,
      blurRadius: blurRadius,
    );
  }
}
