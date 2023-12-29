import 'package:flutter_bloc/flutter_bloc.dart';

import 'rotate_state.dart';

final class RotateCubit extends Cubit<RotateState> {
  RotateCubit() : super(const ChangeRotationState(turns: 0));
  void updateRotation(double turns) => emit(ChangeRotationState(turns: turns));
}
