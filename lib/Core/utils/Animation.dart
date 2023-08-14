

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

Widget animationA({required Widget child,int? delay = 0}) {
  return FadeInDown(delay: Duration(seconds: delay!),
    child: child,
  );
}

Widget animationB({required Widget child,int? delay = 0}) {
  return FadeIn(delay: Duration(seconds: delay!),
    child: child,
  );
}