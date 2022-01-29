import 'package:flutter/cupertino.dart';

mixin ResponsiveScreen {
  late final BuildContext _context;

  setContext(BuildContext context) {
    _context = context;
  }

  late final height = MediaQuery.of(_context).size.height;
  late final width = MediaQuery.of(_context).size.width;
}
