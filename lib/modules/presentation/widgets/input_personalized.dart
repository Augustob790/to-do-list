import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class InputPersonalized extends StatelessWidget {
  const InputPersonalized({
    super.key,
    required this.obscure,
    required this.width,
    this.image,
    this.onTap,
    this.onEditingComplete,
    this.controller,
    this.labelText,
    this.hintText,
    this.validator,
    this.autovalidateMode = AutovalidateMode.onUserInteraction,
    this.keyboardType,
    this.maxLength,
    this.inputFormatters,
    this.onChanged,
    this.obscureText = false,
    this.height = 60.0,
    this.borderRadius = const BorderRadius.all(Radius.circular(5)),
    this.border,
    required this.fontSize,
  });
  final Widget? image;
  final double height;
  final double width;
  final double fontSize;
  final Function()? onTap;
  final Function()? onEditingComplete;
  final bool obscure;
  final TextEditingController? controller;
  final String? labelText;
  final String? hintText;
  final String? Function(String?)? validator;
  final AutovalidateMode? autovalidateMode;
  final bool obscureText;
  final TextInputType? keyboardType;
  final int? maxLength;
  final BorderRadiusGeometry? borderRadius;
  final BoxBorder? border;
  final List<TextInputFormatter>? inputFormatters;
  final Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 245, 246, 250),
        border: border,
        borderRadius: borderRadius,
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(padding: const EdgeInsets.all(0.0), child: image),
            Container(width: 12),
            SizedBox(
              width: kIsWeb ? width - 80 : width - 40,
              height: height,
              child: Center(
                child: TextFormField(
                  maxLength: maxLength,
                  keyboardType: keyboardType,
                  obscureText: obscureText,
                  autovalidateMode: autovalidateMode,
                  controller: controller,
                  style: TextStyle(
                      fontFamily: 'Manrope',
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                      fontSize: fontSize),
                  inputFormatters: inputFormatters,
                  onEditingComplete: onEditingComplete,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                    hintText: hintText,
                    labelText: labelText,
                    labelStyle: TextStyle(
                        fontFamily: 'Nunito',
                        color: Colors.black,
                        fontSize: fontSize),
                    counterText: "",
                  ),
                  validator: validator,
                  onChanged: onChanged,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
