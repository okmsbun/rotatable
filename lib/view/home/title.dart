part of 'home.dart';

class _Title extends StatelessWidget {
  const _Title();

  @override
  Widget build(BuildContext context) {
    return RotatableWidget(
      child: Text(
        'Login',
        style: context.textTheme.displaySmall?.copyWith(fontWeight: FontWeight.w900),
      ),
    );
  }
}
