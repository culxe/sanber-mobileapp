import 'armor_titan.dart';
import 'attack_titan.dart';
import 'beast_titan.dart';
import 'human.dart';
import 'titan.dart';

main(List<String> args) async {
  ArmorTitan armortitan = ArmorTitan();
  AttackTitan attacktitan = AttackTitan();
  BeastTitan beasttitan = BeastTitan();
  Human human = Human();
  Titan titan = Titan();

  print(armortitan.terjang());
  armortitan.setPowerPoint(14);
  print(armortitan.getPowerPoint());

  print(attacktitan.punch());
  attacktitan.setPowerPoint(14);
  print(attacktitan.getPowerPoint());

  print(beasttitan.lempar());
  beasttitan.setPowerPoint(14);
  print(beasttitan.getPowerPoint());

  print(human.killAlltitan());
  human.setPowerPoint(14);
  print(human.getPowerPoint());

  titan.setPowerPoint(4);
  print(titan.getPowerPoint());
}
