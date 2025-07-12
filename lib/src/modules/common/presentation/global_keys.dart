// ignore_for_file: avoid_classes_with_only_static_members

import 'package:flutter/material.dart';

abstract class GlobalKeys {
  static final mainScaffoldKey = GlobalKey<ScaffoldState>();

  static final rootNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'root');

  static final shellNavigatorHomeKey = GlobalKey<NavigatorState>(
    debugLabel: 'shell_home',
  );

  static final shellNavigatorProfileKey = GlobalKey<NavigatorState>(
    debugLabel: 'shell_profile',
  );
}
