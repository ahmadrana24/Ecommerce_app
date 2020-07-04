import 'package:Ecommerce_app/res/screen_size_utils.dart';
import 'package:flutter/material.dart';

class RoundedTextField extends StatelessWidget {
  final bool enabled;
  // final VoidCallback onTap;
  final String label;
  final TextEditingController controller;
  final Color fieldColor;
  // final Function(String) validator;
  final double width;
  final bool obscureText;
  const RoundedTextField({
    Key key,
    this.enabled = true,
    // this.onTap,
    this.label,
    this.controller,
    this.fieldColor,
    // this.validator,
    this.width,
    this.obscureText = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        // onTap: onTap,
        focusColor: Colors.transparent,
        highlightColor: Colors.transparent,
        hoverColor: Colors.transparent,
        splashColor: Colors.transparent,
        child: Container(
          child: Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10, bottom: 4),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: TextFormField(
                obscureText: obscureText,
                enabled: enabled,
                // validator: validator,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: label,
                  fillColor: Colors.white,
                  filled: true,
                  errorMaxLines: 1,
                  errorStyle: TextStyle(
                      // fontSize: DS.setSP(12),
                      ),
                ),
                controller: controller,
                style: TextStyle(
                  // fontSize: DS.setSP(15),
                  letterSpacing: 1.1,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
