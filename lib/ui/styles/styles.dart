import 'package:flutter/material.dart';

class Styles {
  static transparentDivider() {
    return Divider(
      color: Colors.transparent,
    );
  }

  static shadowEffect() {
    return <BoxShadow>[
    BoxShadow(
          color: Colors.grey.withOpacity(0.7),
          offset: Offset(0,3),
          blurRadius: 3
      )
    ];
  }
}
