import 'package:june/june.dart';

import '../../../../../../../../../../main.dart';
import '../vm.dart';

changeIndexAction(int index) {
  var state = June.getState(NailNaviVM());

  state.naviIndex = index;


  state.setState();
}
