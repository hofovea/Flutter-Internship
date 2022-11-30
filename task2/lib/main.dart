import 'package:driver_lessons_app/models/data_service.dart';
import 'package:driver_lessons_app/models/lesson/lesson.dart';
import 'package:driver_lessons_app/widgets/app_color_set.dart';
import 'package:driver_lessons_app/widgets/bottom_tab_bar.dart';
import 'package:driver_lessons_app/widgets/lesson_tile.dart';
import 'package:driver_lessons_app/widgets/options_drawer.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "_title",
      home: MyStatefulWidget(),
    );
  }
}
//todo никогда не называй классы/методы/переменные через My... Даже если это учебный проект. Если эот виджет больше нигде не используется

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  List<Lesson> lessons = [];

  //todo зачем ты используешь тут статическую переменную? какая цель?
  /*кроме этого класса ты нигде ее не используешь
  можно сделать так
  final TextStyle optionStyle = const TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  а вобще следует создать отдельный файл или папку с файлами где ты будешь хранить классы и переменные которые относятся к стилю
   приложения*/

  static const TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  //todo если переменную нигде не меняешь после ее инициализации то делай ее файнал
  String _title = 'Lessons';

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
            backgroundColor: AppColorSet.backgroundColor,
            appBar: AppBar(
              elevation: 0,
              backgroundColor: AppColorSet.backgroundColor,
              title: Text(_title),
            ),
            endDrawer: const OptionsDrawer(backgroundColor: AppColorSet.backgroundColor),
            body: Center(
              child: TabBarView(
                children: [
                  RefreshIndicator(
                    onRefresh: () async {
                      final newLessons = await DataService.readLessons();
                      setState(() {
                        lessons = newLessons;
                      });
                    },
                    child: ListView.builder(
                      itemCount: lessons.length,
                      physics: const AlwaysScrollableScrollPhysics(),
                      itemBuilder: (BuildContext context, int index) {
                        return LessonTile(lesson: lessons[index]);
                      },
                    ),
                  ),
                  const Text(
                    'Not implemented',
                    style: optionStyle,
                  ),
                  const Text(
                    'Not implemented',
                    style: optionStyle,
                  ),
                  const Text(
                    'Not implemented',
                    style: optionStyle,
                  ),
                ],
              ),
            ),
            bottomNavigationBar: SafeArea(
              child: BottomTabBar(
                bottomMenuItemColor: AppColorSet.bottomMenuItemColor,
                bottomMenuSelectedItemColor: AppColorSet.bottomMenuSelectedItemColor,
                onTapHandler: (index) {
                  setState(() {
                    switch (index) {
                      case 0:
                        {
                          _title = 'Lessons';
                        }
                        break;
                      case 1:
                        {
                          _title = 'Plan';
                        }
                        break;
                      case 2:
                        {
                          _title = 'Video lessons';
                        }
                        break;
                      case 3:
                        {
                          _title = 'Personal';
                        }
                        break;
                    }
                  });
                },
              ),
            )));
  }
}
