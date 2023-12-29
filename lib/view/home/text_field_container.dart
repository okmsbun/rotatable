part of 'home.dart';

class _TextFieldContainer extends StatelessWidget {
  const _TextFieldContainer({required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return RotatableWidget(
      child: Container(
        padding: const EdgeInsets.all(24),
        margin: const EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
          color: Colors.grey.shade200,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Center(
          child: Text(
            text,
            style: context.textTheme.titleLarge?.copyWith(color: Colors.grey.shade500),
          ),
        ),
      ),
    );
  }
}
