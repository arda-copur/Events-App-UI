import 'package:flutter/material.dart';

class IconItem extends StatefulWidget {
  final IconData icon;
  final double size;
  final Color color;
  const IconItem(
      {super.key, required this.icon, required this.size, required this.color});

  @override
  State<IconItem> createState() => _IconItemState();
}

class _IconItemState extends State<IconItem> {
  int counter = 0;

  

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Icon(
          widget.icon,
          size: widget.size,
          color: widget.color,
        ),
        Positioned(
            right: 0,
            top: 0,
            child: Container(
              padding: const EdgeInsets.all(2),
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(6),
              ),
              height: 12,
              width: 12,
              child: Container(
                padding: const EdgeInsets.all(2),
                decoration: BoxDecoration(
                    color: Colors.red, borderRadius: BorderRadius.circular(6)),
                height: 7,
                width: 7,
              ),
            ))
      ],
    );
  }
}
