import 'package:flutter/material.dart';
import 'package:vet_clinic_project/components/colors.dart';

class ExpandablePanel extends StatefulWidget {
  final Widget expanded;
  final String title;
  final bool isHistory;
  final bool multiline;
  const ExpandablePanel(
      {Key? key,
      required this.title,
      required this.expanded,
      this.isHistory = false,
      this.multiline = false})
      : super(key: key);

  @override
  _ExpandablePanelState createState() => _ExpandablePanelState();
}

class _ExpandablePanelState extends State<ExpandablePanel> {
  bool _isExpanded = false;

  void _toogle() {
    setState(() {
      _isExpanded = !_isExpanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            border: _isExpanded
                ? const Border(
                    top: BorderSide(color: Colors.black, width: 1.0),
                    right: BorderSide(color: Colors.black, width: 1.0),
                    left: BorderSide(color: Colors.black, width: 1.0),
                  )
                : Border.all(color: Colors.black, width: 1.0),
            color: _isExpanded
                ? (widget.isHistory ? Colors.white : appBarColor)
                : Colors.white,
          ),
          // margin: const EdgeInsets.all(4),
          height: widget.multiline ? 70 : 50,
          child: Row(
            children: <Widget>[
              IconButton(
                onPressed: _toogle,
                icon: _isExpanded
                    ? const Icon(Icons.arrow_drop_down_sharp)
                    : const Icon(Icons.arrow_right_sharp),
                color: Colors.black,
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                width: widget.multiline ? 200 : 150,
                child: Text(
                  widget.title,
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w700),
                  maxLines: 4,
                  textAlign: TextAlign.justify,
                ),
              )
            ],
          ),
        ),
        _isExpanded ? widget.expanded : const SizedBox(height: 0)
      ],
    );
  }
}
