import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:zidney/utils/app_colors.dart';

class CustomDropdown extends StatefulWidget {
  final List<String> itemList;
  final Color? backgroundColor;
  final Color? shadowColor;

  const CustomDropdown({
    super.key,
    required this.itemList,
    this.backgroundColor = Colors.white,
    this.shadowColor = AppColors.primaryColor,
  });

  @override
  State<CustomDropdown> createState() => _CustomDropdownState();
}

class _CustomDropdownState extends State<CustomDropdown> {
  String? selectedItem;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        height: 45,
        width: double.infinity,
        decoration: BoxDecoration(
          color: widget.backgroundColor,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: widget.shadowColor!, width: 2),
          boxShadow: [
            BoxShadow(color: AppColors.primaryColor, offset: const Offset(0, 10)),
          ],
        ),
        child: DropdownButton2(
          underline: SizedBox.shrink(),
          items:
          widget.itemList
              .map(
                (String item) => DropdownMenuItem(
              enabled: true,
              value: item,
              child: Text(
                item,
                style: TextStyle(fontSize: 14, color: Colors.black),
              ),
            ),
          )
              .toList(),
          onChanged: (value) {
            setState(() {});
            selectedItem = value;
          },
          iconStyleData: IconStyleData(
            icon: Icon(Icons.keyboard_arrow_down_outlined),
            iconSize: 25,
            iconEnabledColor: Colors.black,
          ),
          dropdownStyleData: DropdownStyleData(
            offset: Offset(0, -12),
            maxHeight: 300,
            elevation: 10,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              boxShadow: [
                BoxShadow(
                  color: AppColors.primaryColor,
                  blurRadius: 5,
                  offset: Offset(2, 2),
                ),
              ],
            ),
            scrollbarTheme: ScrollbarThemeData(
              thumbColor: WidgetStateProperty.all(AppColors.primaryColor),
              radius: Radius.circular(8),
            ),
          ),
          buttonStyleData: ButtonStyleData(
            height: 42,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          menuItemStyleData: const MenuItemStyleData(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          ),
        ),
      ),
    );
  }
}
