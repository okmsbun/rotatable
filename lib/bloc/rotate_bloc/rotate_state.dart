abstract final class RotateState {}

final class ChangeRotationState implements RotateState {
  const ChangeRotationState({required this.turns});
  final double turns;
}
