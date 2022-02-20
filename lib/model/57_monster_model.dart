import 'package:hive/hive.dart';
//part '57_monster_model.g.dart';

// failed implement;

@HiveType(typeId: 0)
class Monster {
  @HiveField(0)
  String name;
  @HiveField(1)
  int level;

  Monster(this.name, this.level);
}
