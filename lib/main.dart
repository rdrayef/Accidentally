import 'package:accidenyally/login.dart';
import 'package:flutter/material.dart';

import 'dart:ui';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Home(),
        backgroundColor: Colors.indigo[900],
      ),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  static final linearTween = Tween<double>(begin: 0, end: 1);

  static final tweenSequence = TweenSequence(
    <TweenSequenceItem<double>>[
      TweenSequenceItem<double>(
        tween: Tween<double>(begin: 0, end: 0)
            .chain(CurveTween(curve: Curves.easeOut)),
        weight: 40.0,
      ),
      TweenSequenceItem<double>(
        tween: ConstantTween<double>(1.0),
        weight: 20.0,
      ),
      TweenSequenceItem<double>(
        tween: Tween<double>(begin: 1.0, end: 0)
            .chain(CurveTween(curve: Curves.easeIn)),
        weight: 40.0,
      ),
    ],
  );

  static final Tween<double> chainTween = Tween<double>(begin: 0, end: 2);

  static final constantTween = ConstantTween<double>(1.0);

  static final Curve sawToothCurve = SawTooth(7);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 210),
          child: Container(
            child: PageView(
              children: <Widget>[
                AnimationAndCurveDemo(
                  mainCurve: linearTween
                      .chain(CurveTween(curve: Curves.easeIn))
                      .chain(CurveTween(curve: Curves.easeOut)),
                  duration: Duration(seconds: 2),
                  size: 2000,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

enum KindOfAnimation {
  forward,
  repeat,
  repeatAndreverse,
}

class AnimationAndCurveDemo extends StatefulWidget {
  AnimationAndCurveDemo({
    Key key,
    @required this.mainCurve,
    this.compareCurve,
    this.lable = '',
    this.size = 2000,
    this.duration = const Duration(seconds: 1),
    this.kindOfAnim = KindOfAnimation.forward,
  })  : assert(size != null &&
            duration != null &&
            mainCurve != null &&
            kindOfAnim != null),
        super(key: key);

  final Animatable<double> mainCurve;
  final Animatable<double> compareCurve;
  final String lable;
  final double size;
  final Duration duration;
  final KindOfAnimation kindOfAnim;

  @override
  _AnimationAndCurveDemoState createState() => _AnimationAndCurveDemoState();
}

class _AnimationAndCurveDemoState extends State<AnimationAndCurveDemo>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;

  Animatable<double> get _mainCurve => widget.mainCurve;
  Animatable<double> get _compareCurve => widget.compareCurve;
  String get _label => widget.lable;
  double get _size => widget.size;
  Duration get _duration => widget.duration;

  /// the shadow path of the animation curve - dotted line
  Path _shadowPath;

  /// path to compare the current animation to - only drawn if not null
  Path _comparePath;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: _duration,
    );

    _shadowPath = _buildGraph(_mainCurve);
    if (_compareCurve != null) {
      _comparePath = _buildGraph(_compareCurve);
    }

    super.initState();
    _controller.forward();
  }

  Path _buildGraph(Animatable animatable) {
    var val = 0.0;
    var path = Path();
    for (var t = 0.0; t <= 1; t += 0.01) {
      val = -animatable.transform(t) * _size;
      path.lineTo(t * _size, val);
    }
    // return dashPath(path, dashArray: CircularIntervalList<double>([15.0, 10]));
    return path;
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(2),
          child: Text(_label, style: Theme.of(context).textTheme.headline4),
        ),
        Row(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 107),
            ),
            //SSSSSSSSSSSSSSSSSsssssssssssssSSSSSSSSS
            AnimatedBuilder(
              animation: _controller,
              builder: (context, child) {
                return Align(
                  alignment: Alignment(
                      lerpDouble(-18, 2.8, _mainCurve.evaluate(_controller)),
                      0),
                  //lerpDouble(3, 0.2, _mainCurve.evaluate(_controller)), 0),
                  child: child,
                );
              },
              child: Image.asset("assets/images/explosion.png"),
            ),
            //SSSSSSSSSSSSssssssssssssssssssSSSSSSSSSSSSSS
          ],
        ),
        Row(
          children: [
            Expanded(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16.0), //modifier
                child: AnimatedBuilder(
                  animation: _controller,
                  builder: (context, child) {
                    return Align(
                      alignment: Alignment(
                          lerpDouble(
                              -18, 2.8, _mainCurve.evaluate(_controller)),
                          0),
                      //lerpDouble(3, 0.2, _mainCurve.evaluate(_controller)), 0),
                      child: child,
                    );
                  },
                  child: Image.asset("assets/images/car_left.png"),
                ),
              ),
            ),
            /*  Expanded(
              child: Container(
                // padding: const EdgeInsets.symmetric(horizontal: 0.0), //modifier
                child: AnimatedBuilder(
                  animation: _controller,
                  builder: (context, child) {
                    return Align(
                      alignment: Alignment(
                          lerpDouble(
                              -18, 1.7, _mainCurve.evaluate(_controller)),
                          0),
                      //lerpDouble(3, 0.2, _mainCurve.evaluate(_controller)), 0),
                      child: child,
                    );
                  },
                  child: Image.asset("assets/images/car_left.png"),
                ),
              ),
            ), */
            Expanded(
              child: Container(
                child: AnimatedBuilder(
                  animation: _controller,
                  builder: (context, child) {
                    return Align(
                      alignment: Alignment(
                          lerpDouble(9, -1.7, _mainCurve.evaluate(_controller)),
                          0),
                      //lerpDouble(3, 0.2, _mainCurve.evaluate(_controller)), 0),
                      child: child,
                    );
                  },
                  child: Image.asset("assets/images/car_right.png"),
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 85.0),
          child: Row(
            children: [
              Text(
                'Accidental',
                style: TextStyle(fontSize: 35, color: Colors.white),
              ),
              Text(
                '.ly',
                style: TextStyle(fontSize: 35, color: Colors.red),
              ),
              IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Homepage(),
                      ));
                },
                icon: Icon(Icons.arrow_drop_up),
              )
            ],
          ),
        ),
        SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(
              top: 200,
              right: 10,
            ),
            child: Text(
              "version 1.0",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}
