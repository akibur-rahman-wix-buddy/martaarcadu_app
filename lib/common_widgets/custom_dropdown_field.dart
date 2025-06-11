// import 'package:dropdown_button2/dropdown_button2.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// class CustomDropdownField extends StatefulWidget {
//   final List<String> options;
//   final String? initialValue;
//   final ValueChanged<String> onChanged;

//   const CustomDropdownField({
//     super.key,
//     required this.options,
//     this.initialValue,
//     required this.onChanged,
//   });

//   @override
//   State<CustomDropdownField> createState() => _CustomDropdownFieldState();
// }

// class _CustomDropdownFieldState extends State<CustomDropdownField> {
//   late String _selectedValue;

//   @override
//   void initState() {
//     super.initState();
//     _selectedValue = widget.initialValue ?? widget.options.first;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return DropdownButtonHideUnderline(
//       child: DropdownButton2<String>(
//         isExpanded: true,
//         value: _selectedValue,
//         items: widget.options.map((String item) {
//           return DropdownMenuItem<String>(
//             value: item,
//             child: Text(
//               item,
//               style: TextStyle(fontSize: 14.sp),
//             ),
//           );
//         }).toList(),
//         onChanged: (String? newValue) {
//           if (newValue != null) {
//             setState(() => _selectedValue = newValue);
//             widget.onChanged(newValue);
//           }
//         },
//         buttonStyleData: ButtonStyleData(
//           height: 50.h,
//           padding: EdgeInsets.symmetric(horizontal: 16.w),
//           decoration: BoxDecoration(
//             color: const Color(0xFFF7F8FA),
//             borderRadius: BorderRadius.circular(32.r),
//           ),
//         ),
//         iconStyleData: const IconStyleData(
//           icon: Icon(Icons.keyboard_arrow_down_rounded),
//         ),
//         dropdownStyleData: DropdownStyleData(
//           // maxHeight: 200.h,
//           width: 150.w, // <- You control dropdown width here!
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(12.r),
//             color: Colors.white,
//           ),
//           offset: Offset(180.w, -4.h), // adjust dropdown position if needed
//         ),
//       ),
//     );
//   }
// }
