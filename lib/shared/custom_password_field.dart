import 'package:flutter/material.dart';

class CustomPasswordField extends StatefulWidget {
  const CustomPasswordField({
    super.key,
    required this.onSaved,
  });
  final void Function(String?)? onSaved;

  @override
  State<CustomPasswordField> createState() => _CustomPasswordFieldState();
}

class _CustomPasswordFieldState extends State<CustomPasswordField> {
  bool _isHidden = true;

  void _togglePasswordView() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textInputAction: TextInputAction.done,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'This field is required';
        } else {
          return null;
        }
      },
      onSaved: widget.onSaved,
      obscureText: _isHidden,
      keyboardType: TextInputType.visiblePassword,
      decoration: InputDecoration(
        suffix: GestureDetector(
          onTap: () {
            _togglePasswordView();
          },
          child: Icon(
            _isHidden ? Icons.visibility : Icons.visibility_off,
            color: const Color(0xffC67C4E),
          ),
        ),
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              color: Color(0xffC67C4E),
              width: 4,
            )),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          borderSide: BorderSide(
            color: Color(0xffC67C4E),
            width: 4,
          ),
        ),
      ),
    );
  }
}
