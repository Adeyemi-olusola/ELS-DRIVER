import 'package:flutter/material.dart';

class ExpandableCardContainer extends StatefulWidget {

  ExpandableCardContainer(
      {Key? key,
      required this.isExpanded,
      this.collapsedChild,
      this.expandedChild})
      : super(key: key);
  bool isExpanded = false;
  final Widget? collapsedChild;
  final Widget? expandedChild;

  @override
  _ExpandableCardContainerState createState() =>
      _ExpandableCardContainerState();
}

class _ExpandableCardContainerState extends State<ExpandableCardContainer> {
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      curve: Curves.easeInOut,
      child: widget.isExpanded? widget.expandedChild : widget.collapsedChild,
    );
  }
}
