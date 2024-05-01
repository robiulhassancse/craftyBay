import 'package:flutter/material.dart';

class ColorPicker extends StatefulWidget {
  ColorPicker({super.key, required this.colors, required this.onColorSelected, required this.initialColorIndex});
  List<Color>  colors = [];
  final Function(int selectedColor)  onColorSelected ;
  final int initialColorIndex;


  @override
  State<ColorPicker> createState() => _ColorPickerState();
}

class _ColorPickerState extends State<ColorPicker> {
  int _selectedColorIndex = 0;
  @override
  void initState() {
    _selectedColorIndex = widget.initialColorIndex;
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return  ListView.separated(
      scrollDirection: Axis.horizontal,
      itemCount: widget.colors.length,
      itemBuilder: (context, index) {
        return InkWell(
          borderRadius: BorderRadius.circular(8),
          onTap: () {
            _selectedColorIndex = index;
            widget.onColorSelected(index);
            setState(() {});
          },
          child: CircleAvatar(
            backgroundColor: widget.colors[index],
            child: _selectedColorIndex == index
                ? const Icon(
              Icons.done,
              color: Colors.white,
            )
                : null,
          ),
        );
      },
      separatorBuilder: (BuildContext context, int index) {
        return const SizedBox(
          width: 4,
        );
      },
    );
  }
}