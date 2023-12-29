part of 'main.dart';

class _MaterialApp extends StatefulWidget {
  const _MaterialApp();

  @override
  State<_MaterialApp> createState() => _MaterialAppState();
}

class _MaterialAppState extends State<_MaterialApp> {
  int _degree = 0;

  @override
  void initState() {
    accelerometerEventStream().listen((AccelerometerEvent event) {
      final double atan2Value = atan2(event.x, event.y);
      final int acceleration = atan2Value * 180 ~/ pi;
      final double turns = acceleration / 360;

      if (_degree != acceleration) {
        _degree = acceleration;
        context.read<RotateCubit>().updateRotation(turns);
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rotatable',
      onGenerateTitle: (BuildContext context) => 'Rotatable',
      theme: ThemeData.light(),
      themeMode: ThemeMode.light,
      debugShowCheckedModeBanner: false,
      home: const Home(),
    );
  }
}
