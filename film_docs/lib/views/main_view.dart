import 'package:film_docs/resources/design_system.dart';
import 'package:film_docs/views/4_camera_views/camera_view.dart';
import 'package:film_docs/views/3_production_views/production_view.dart';
import 'package:film_docs/views/5_lighting_views/lighting_view.dart';
import 'package:film_docs/views/6_art_views/art_view.dart';
import 'package:film_docs/views/7_sound_views/sound_view.dart';
import 'package:flutter/material.dart';

import '../resources/components/navigation_title.dart';
import '1_scenario_views/scenario_view.dart';
import '2_director_views/director_view.dart';

class MainView extends StatelessWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainBlack,
      body: SafeArea(
        child: Row(
          children: [
            Expanded(
              flex: 3,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 85,
                    child: Image.asset('assets/icons/mainIcon.png'),
                  ),
                  Container(
                      padding: const EdgeInsets.fromLTRB(24, 12, 20, 0),
                      child: const Text("영상제작을 위한\n모든 문서", style: body1))
                ],
              ),
            ),
            const VerticalDivider(
              width: 1.0,
              color: Colors.white,
            ),
            Expanded(
              flex: 5,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [

                  const Divider(
                    color: Colors.white,
                  ),
                  const NavigationTitleWidget(title: "각본", view: ScenarioView(), iconColor: scenarioColor),
                  Divider(
                    color: Colors.white.withOpacity(0.5),
                  ),
                  const NavigationTitleWidget(title: "연출", view: DirectorView(), iconColor: directorColor),
                  Divider(
                    color: Colors.white.withOpacity(0.5),
                  ),
                  const NavigationTitleWidget(title: "제작", view: ProductionView(), iconColor: productionColor),
                  Divider(
                    color: Colors.white.withOpacity(0.5),
                  ),
                  const NavigationTitleWidget(title: "촬영", view: CameraView(), iconColor: cameraColor),
                  Divider(
                    color: Colors.white.withOpacity(0.5),
                  ),
                  const NavigationTitleWidget(title: "조명", view: LightingView(), iconColor: lightingColor),
                  Divider(
                    color: Colors.white.withOpacity(0.5),
                  ),
                  const NavigationTitleWidget(title: "미술", view: ArtView(), iconColor: artColor),
                  Divider(
                    color: Colors.white.withOpacity(0.5),
                  ),
                  const NavigationTitleWidget(title: "음향", view: SoundView(), iconColor: soundColor),
                  const Divider(
                    color: Colors.white,
                  ),
                  const Padding(padding: EdgeInsets.all(30)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

