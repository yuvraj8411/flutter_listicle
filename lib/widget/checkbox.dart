import 'package:flutter/material.dart';
import 'package:listicle/utilities/constant.dart';

class CustomCheckbox extends StatefulWidget {
  final String label;
  final bool initialValue;
  final ValueChanged<bool?>? onChanged;

  const CustomCheckbox({
    Key? key,
    required this.label,
    this.initialValue = false,
    this.onChanged,
  }) : super(key: key);

  @override
  State<CustomCheckbox> createState() => _CustomCheckboxState();
}

class _CustomCheckboxState extends State<CustomCheckbox> {
  late bool _value;

  @override
  void initState() {
    super.initState();
    _value = widget.initialValue;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: _value,
          onChanged: (val) {
            setState(() {
              _value = val ?? false;
            });
            if (widget.onChanged != null) {
              widget.onChanged!(val);
            }
          },
        ),
        Text(widget.label),
      ],
    );
  }
}
