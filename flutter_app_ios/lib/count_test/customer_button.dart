import 'package:flutter/material.dart';

class CustomerButton extends StatefulWidget {
  final Function onClick;

  CustomerButton({Key key, this.onClick}) : super(key: key);

  @override
  _CustomerButtonState createState() => _CustomerButtonState();
}

class _CustomerButtonState extends State<CustomerButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: InkWell(
        child: Text('按钮'),
        onTap: () {
          widget.onClick();
        },
      ),
    );
  }
}
