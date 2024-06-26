import '../../../../../../../../../main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../view.dart';
import '../../vm/_/action/change_index.dart';

@JuneViewMother()
mixin StateMother<T extends StatefulWidget> on State<T> {
  Function? readyState(BuildContext context) {
    return null;
  }

  Widget loadingWidget() {
    return CupertinoActivityIndicator().center();
  }

  /// automatically generated action code - don't change this code

  /// end of automatically action generated code
  /// automatically generated event code - don't change this code

clickRightNaviEvent(BuildContext context) {
  print('clickRightNaviEvent');
  changeIndexAction(1);
}




clickLeftNaviEvent(BuildContext context) {
  print('clickLeftNaviEvent');
  changeIndexAction(0);
}
  /// end of automatically event generated code
}
