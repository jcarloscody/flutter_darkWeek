import 'package:isar/isar.dart';

part 'project_task.g.dart';

@Collection()
class ProjectTask {
  @Id()
  int? id;
  late String name;
  late int durantion;
  late DateTime created = DateTime.now();
  //flutter pub run build_runner watch --delete-conflicting-outputs
}
