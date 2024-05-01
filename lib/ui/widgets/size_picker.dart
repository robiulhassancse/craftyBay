import 'package:flutter/material.dart';

class SizePicker extends StatefulWidget {
  const SizePicker({super.key, required this.sizes, required this.onSelected, required this.initialSelected});

  final List<String> sizes;
  final Function(int selectedIndex) onSelected;
  final int initialSelected;

  @override
  State<SizePicker> createState() => _SizePickerState();
}

class _SizePickerState extends State<SizePicker> {

  int _selectedSizeIndex = 0;

  @override
  void initState() {
    _selectedSizeIndex = widget.initialSelected;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
        itemCount: widget.sizes.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              _selectedSizeIndex = index;
              widget.onSelected(index);
              if (mounted) {
                setState(() {});
              }
            },
            child: Container(
              height: 30,
              width: 30,
              // padding: EdgeInsets.all(8),
              margin:
              const EdgeInsets.symmetric(horizontal: 6),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(40),
                color: _selectedSizeIndex == index
                    ? Colors.green
                    : null,
              ),
              alignment: Alignment.center,
              child: Text(
                widget.sizes[index],
                style: const TextStyle(
                    color: Colors.black, fontSize: 12),
              ),
            ),
          );
        });
  }
}