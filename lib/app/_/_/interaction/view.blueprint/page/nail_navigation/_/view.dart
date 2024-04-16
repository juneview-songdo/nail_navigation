import 'package:flutter/material.dart';

import '../../../../../../../../main.dart';
import '../vm/_/vm.dart';
import '_/state_child.dart';
import '_/state_mother.dart';

class NewView extends StatefulWidget {
  NewView({super.key});

  @override
  State<NewView> createState() => StateChild();
}

class NewViewState extends State<NewView> with StateMother {
  @override
  Widget build(BuildContext context) {
    return JuneBuilder(
      () => NailNaviVM(),
      builder: (vmNailNavi) => Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        body: IndexedStack(
          index: vmNailNavi.naviIndex,
          children: [
            //////////////////////////////////////////////////////////////////
            Container(
              color: Colors.green,
            ),
            Container(
              color: Colors.blue,
            ),
            //////////////////////////////////////////////////////////////////
          ],
        ),
        floatingActionButton: Stack(
          children: [
            Positioned(
                bottom: 0,
                right: 0,
                //little round container
                child: Container(
                  width: 200,
                  height: 56,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.all(Radius.circular(60)),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        "assets/view/nail_navigation/home2.svg",
                        colorFilter: ColorFilter.mode(
                            (vmNailNavi.naviIndex == 0)
                                ? Colors.white
                                : Colors.grey.withOpacity(0.7),
                            BlendMode.srcIn),
                        width: 20,
                        height: 20,
                      )
                          .padding(all: 10)
                          .backgroundColor(Colors.transparent)
                          .gestures(
                        onTap: () {
                          clickLeftNaviEvent(context);
                        },
                      ),
                      SizedBox(
                        width: 75,
                      ),
                      SvgPicture.asset(
                        "assets/view/nail_navigation/group.svg",
                        colorFilter: ColorFilter.mode(
                            (vmNailNavi.naviIndex == 1)
                                ? Colors.white
                                : Colors.grey.withOpacity(0.7),
                            BlendMode.srcIn),
                        width: 20,
                        height: 20,
                      )
                          .padding(all: 10)
                          .backgroundColor(Colors.transparent)
                          .gestures(onTap: () {
                        clickRightNaviEvent(context);
                      }),
                    ],
                  ),
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 48,
                  height: 48,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [
                        Color(0xFFFF002D),
                        Color(0xFFFF00C2),
                      ],
                    ),
                    borderRadius: BorderRadius.circular(20), // 모서리 둥글게 설정
                  ),
                  child: Align(
                    alignment: Alignment.center,
                    child: SvgPicture.asset(
                      "assets/view/nail_navigation/plus.svg",
                      width: 24,
                      height: 24,
                    ),
                  ),
                ).gestures(
                  onTap: () {
                    print('click plus button');
                  },
                ),
              ],
            ),
          ],
        ).height(65).width(200),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      ),
    );
  }
}

main() async {
  return buildApp(appHome: NewView());
}