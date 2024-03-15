// @startuml
// scale 0.4
// abstract class Race {
//   +name: String
// }
// abstract class Terran extends Race {
// }
// abstract class Zerg extends Race {
// }
// abstract class Protoss extends Race implements Shield {
// }
// Abstract class Unit {
//   +getName(): String
//   +getHealth(): int
//   +recover(): void
//   +move(location: String): void
// }
// interface Attackable {
//   +attack(target: Unit): void
// }
// interface Recoverable {
//   +repair(target: MechanicUnit): void
// }
// interface Shield {
//   +shieldLevel: int
//   +recoverShield(): void
// }
// interface GatherResources {
//   +gatherResources(): void
// }
// abstract class BionicUnit extends Unit {
//   +getName(): String
//   +getHealth(): int
//   +recover(): void
// '  +shieldLevel: int
//   +recoverShield(): void
//   +move(location: String): void
// }
// abstract class MechanicUnit implements Unit {
//   +getName(): String
//   +getHealth(): int
//   +shieldLevel: int
//   +recoverShield(): void
//   +move(location: String): void
// }
// class Marine extends BionicUnit implements Attackable {
//   +attack(target: Unit): void
// }
// class Medic extends BionicUnit implements Recoverable {
//   -heal(target: BionicUnit): void
//   +repair(target: Scv): void
// }
// class Tank extends MechanicUnit implements Attackable {
//   +attack(target: Unit): void
// }
// class Vulture extends MechanicUnit implements Attackable {
//   +attack(target: Unit): void
// }
// class Scv extends MechanicUnit implements GatherResources, Recoverable {
//   +gatherResources(): void
//   +repair(target: MechanicUnit): void
// }
// class Zergling extends BionicUnit implements Attackable {
//   +attack(target: Unit): void
// }
// class Hydra extends BionicUnit implements Attackable {
//   +attack(target: Unit): void
// }
// class Zealot extends BionicUnit implements Attackable {
//   +attack(target: Unit): void
// }
// class Dragun extends MechanicUnit, Attackable {
//   +attack(target: Unit): void
// }
// Abstract class Structure {
//   +name: String
//   +health: int
//   +recover(): void
// '  +shieldLevel: int
//   +recoverShield(): void
//   +move(location: String): void
// }
// abstract class BionicStructure extends Structure {
// }
// abstract class MechanicStructure extends Structure {
// }
// class UnitGroup {
//   +units: List<Unit>
//   +addGroup(unit: Unit): void
//   +attack(target: Unit): void
//   +move(location: String): void
// }
// abstract class Game {
//   +players: List<Player>
//   +startGame(): void
//   +selectRace(race: Race): void
//   +matchType: String
// }
// abstract class Player {
//   +name: String
//   +race: Race
//   +units: List<Unit>
//   +structures: List<Structure>
//   +unitGroups: List<UnitGroup>
//   +selectAllUnit(unit: Unit): void
//   +buildStructure(structure: Structure): void
//   +createUnitGroup(): UnitGroup
//   +assignUnitToGroup(unit: Unit, group: UnitGroup): void
// }
// Terran --> Unit : Has
// Terran --> Structure : Has
// Zerg --> BionicUnit : Has
// Zerg --> BionicStructure : Has
// Protoss --> Unit : Has
// Protoss --> Structure : Has
// Game --> Player : Consists
// Player --> Race : Selects
// @enduml

