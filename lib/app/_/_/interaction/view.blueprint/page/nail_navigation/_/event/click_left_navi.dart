import 'package:flutter/material.dart';

import '../../../../../../../../../main.dart';
import '../../vm/_/action/change_index.dart';

@JuneViewEvent()
clickLeftNaviEvent(BuildContext context) {
  print('clickLeftNaviEvent');
  changeIndexAction(0);
}
