// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'dart:math' as math;

Widget _defaultTransitionBuilder(Widget child, Animation<double> animation) =>
    ScaleTransition(
      scale: animation,
      child: child,
    );

/// A widget that IconToggle.
/// It is used to toggle between two icons.
/// The [selectedIconData] and [unselectedIconData] properties are used to set the icons.
/// The [activeColor] and [inactiveColor] properties are used to set the colors of the icons.
/// The [value] property is used to set the initial value of the toggle.
/// The [onChanged] property is used to set the callback function.
/// The [size] property is used to set the size of the icons.
/// The [transitionBuilder] property is used to set the transition builder.
/// The [duration] property is used to set the duration of the animation.
/// The [reverseDuration] property is used to set the reverse duration of the animation.
/// The [IconToggle] widget is a stateful widget.
///
class IconToggle extends StatefulWidget {
  const IconToggle({
    super.key,
    this.unselectedIconData = Icons.radio_button_unchecked,
    this.selectedIconData = Icons.radio_button_checked,
    this.activeColor = Colors.blue,
    this.inactiveColor = Colors.grey,
    this.value = false,
    this.onChanged,
    this.size = 22,
    this.transitionBuilder = _defaultTransitionBuilder,
    this.duration = const Duration(milliseconds: 100),
    this.reverseDuration = const Duration(milliseconds: 50),
  });

  /// The icon data for the selected icon.
  final IconData selectedIconData;

  /// The icon data for the unselected icon.
  final IconData unselectedIconData;

  /// The color of the selected icon.
  final Color activeColor;

  /// The color of the unselected icon.
  final Color inactiveColor;

  /// The initial value of the toggle.
  final bool value;

  /// The size of the icons.
  final double size;

  /// The callback function.
  final ValueChanged<bool>? onChanged;

  /// The transition builder.
  final AnimatedSwitcherTransitionBuilder transitionBuilder;

  /// The duration of the animation.
  final Duration duration;

  /// The reverse duration of the animation.
  final Duration reverseDuration;
  @override
  _IconToggleState createState() => _IconToggleState();
}

class _IconToggleState extends State<IconToggle>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _position;
  bool _cancel = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        vsync: this,
        duration: const Duration(milliseconds: 100),
        reverseDuration: const Duration(milliseconds: 50));
    _position = CurvedAnimation(parent: _controller, curve: Curves.linear);
    _position.addStatusListener((status) {
      if (status == AnimationStatus.dismissed && _cancel == false) {
        widget.onChanged!(!widget.value);
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTapDown: (event) {
        _cancel = false;
        _controller.forward();
      },
      onTapUp: (event) {
        _controller.reverse();
      },
      onTapCancel: () {
        _cancel = true;
        _controller.reverse();
      },
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: _IconToggleable<double>(
          listenable: _position,
          activeColor: widget.activeColor,
          inactiveColor: widget.inactiveColor,
          child: AnimatedSwitcher(
            duration: widget.duration,
            reverseDuration: widget.reverseDuration,
            transitionBuilder: widget.transitionBuilder,
            child: Icon(
              widget.value
                  ? widget.selectedIconData
                  : widget.unselectedIconData,
              color: widget.value ? widget.activeColor : widget.inactiveColor,
              size: widget.size,
              key: ValueKey<bool>(widget.value),
            ),
          ),
        ),
      ),
    );
  }
}

class _IconToggleable<T> extends AnimatedWidget {
  const _IconToggleable({
    required Animation<T> listenable,
    required this.activeColor,
    required this.inactiveColor,
    required this.child,
  }) : super(listenable: listenable);
  final Color activeColor;
  final Color inactiveColor;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: _IconPainter(
        position: listenable as Animation<double>,
        activeColor: activeColor,
        inactiveColor: inactiveColor,
      ),
      child: child,
    );
  }
}

class _IconPainter extends CustomPainter {
  _IconPainter({
    required this.position,
    required this.activeColor,
    required this.inactiveColor,
  });
  final dynamic position;
  final Color activeColor;
  final Color inactiveColor;

  double get _value => position.value;

  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..color = Color.lerp(inactiveColor, activeColor, _value)!
          .withOpacity(math.min(_value, 0.15))
      ..style = PaintingStyle.fill
      ..strokeWidth = 2.0;
    canvas.drawCircle(
        Offset(size.width / 2, size.height / 2), 20 * _value, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
