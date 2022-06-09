import 'package:isar/isar.dart';
import 'package:job_timer/app/core/entities/converters/project_status_converters.dart';
import 'package:job_timer/app/core/entities/project_status.dart';
import 'package:job_timer/app/core/entities/project_task.dart';

part 'project.g.dart';

@Collection()
class Project {
  @Id()
  int? id;
  late String name;

  @ProjectStatusConverters()
  late ProjectStatus status;

  //relação 1 para 1 = um projeto para uma task
  final tasks = IsarLinks<ProjectTask>();
}
