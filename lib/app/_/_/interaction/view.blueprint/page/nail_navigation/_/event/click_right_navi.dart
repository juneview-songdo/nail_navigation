import 'package:flutter/material.dart';

import '../../../../../../../../../main.dart';
import '../../vm/_/action/change_index.dart';

@JuneViewEvent()
clickRightNaviEvent(BuildContext context) {
  print('clickRightNaviEvent');
  changeIndexAction(1);
}
