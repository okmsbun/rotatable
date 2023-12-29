import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/rotate_bloc/rotate_cubit.dart';
import '../bloc/rotate_bloc/rotate_state.dart';

class RotatableWidget extends StatelessWidget {
  const RotatableWidget({
    super.key,
    required this.child,
    this.alignment = Alignment.center,
  });

  final Widget child;
  final Alignment alignment;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RotateCubit, RotateState>(
      buildWhen: (RotateState previous, RotateState current) {
        if (current is ChangeRotationState && previous is ChangeRotationState) {
          return current.turns != previous.turns;
        }
        return true;
      },
      builder: (_, state) {
        final double turns = state is ChangeRotationState ? state.turns : 0;
        return AnimatedRotation(
          duration: const Duration(milliseconds: 200),
          turns: turns,
          filterQuality: FilterQuality.high,
          alignment: alignment,
          child: child,
        );
      },
    );
  }
}
