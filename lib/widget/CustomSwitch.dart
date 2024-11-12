import 'package:flutter/material.dart';

typedef CustomSwitchChangedCallback = void Function(String id, bool value);

class CustomSwitch extends StatefulWidget {
  final String id;
  final bool initialValue;
  final CustomSwitchChangedCallback onChanged;

  final Color activeColor;
  final Color activeTrackColor;
  final Color inactiveThumbColor;
  final Color inactiveTrackColor;

  const CustomSwitch({
    Key? key,
    required this.id,
    required this.initialValue,
    required this.onChanged,
    this.activeColor = Colors.white,
    this.activeTrackColor = Colors.blue,
    this.inactiveThumbColor = Colors.white,
    this.inactiveTrackColor = Colors.grey,
  }) : super(key: key);

  @override
  _CustomSwitchState createState() => _CustomSwitchState();
}

class _CustomSwitchState extends State<CustomSwitch> {
  late bool _isSwitched;

  @override
  void initState() {
    super.initState();
    _isSwitched = widget.initialValue;
  }

  void _onSwitchChanged(bool value) {
    setState(() {
      _isSwitched = value;
    });
    widget.onChanged(widget.id, value); // 回调 id 和新状态
  }

  @override
  Widget build(BuildContext context) {
    return Switch(
      value: _isSwitched,
      onChanged: _onSwitchChanged,
      activeColor: widget.activeColor,
      activeTrackColor: widget.activeTrackColor,
      inactiveThumbColor: widget.inactiveThumbColor,
      inactiveTrackColor: widget.inactiveTrackColor,
    );
  }
}
