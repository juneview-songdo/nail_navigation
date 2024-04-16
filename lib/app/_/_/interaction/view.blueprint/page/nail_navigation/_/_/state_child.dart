import '../../../../../../../../../main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../view.dart';
import '../../vm/_/action/change_index.dart';

@JuneViewChild()
class StateChild extends NewViewState {
  bool isReadyView = false;

  late StateChild state;

  StateChild() {
    state = this;
  }

  @override
  void initState() {
    if (readyState(context) == null) {
      isReadyView = true;
    } else {
      _ready();
    }

    super.initState();
  }

  Future<void> _ready() async {
    if (!(readyState(context) == null)) {
      await readyState(context)!();
    }
    if (mounted) {
      setState(() {
        isReadyView = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    if (!isReadyView) {
      return loadingWidget();
    }

    return super.build(context);
  }

  /// automatically generated action code - don't change this code

  /// end of automatically action generated code
  /// automatically generated event code - don't change this code

@override
clickRightNaviEvent(BuildContext context) {
  print('clickRightNaviEvent');
  changeIndexAction(1);
}




@override
clickLeftNaviEvent(BuildContext context) {
  print('clickLeftNaviEvent');
  changeIndexAction(0);
}
  /// end of automatically event generated code
}
