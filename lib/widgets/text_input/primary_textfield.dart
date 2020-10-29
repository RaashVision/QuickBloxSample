import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quickbloxSample/views/core/theme.dart';

class PrimaryTextFormField extends StatefulWidget {
  final String placeholderText;
  final TextStyle placeholderStyle;
  final String titleText;
  final TextStyle titleStyle;
  final TextAlign titleAlign;
  final TextInputType keyboardType;
  final ValidatorType validatorType;
  final bool obscureText;
  final bool showSuffixIcon;
  final VoidCallback onSuffixClick;

  final TextEditingController textEditingController;
  Function(String) onSubmit;
//  VoidCallback onTap;
  bool readonly;
  PrimaryTextFormField({
    this.showSuffixIcon = false,
    this.onSuffixClick,
    this.textEditingController,
    this.placeholderStyle,
    this.titleText,
    this.titleAlign,
    this.keyboardType = TextInputType.text,
    this.placeholderText,
    this.titleStyle,
    this.validatorType,
    this.obscureText = false,
    this.onSubmit,
    this.readonly = false,
    //  this.onTap
  });

  @override
  _PrimaryTextFormFieldState createState() => _PrimaryTextFormFieldState();
}

class _PrimaryTextFormFieldState extends State<PrimaryTextFormField> {
  @override
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: GoogleFonts.montserrat(fontSize: 14, color: Colors.black),
      cursorColor: primaryColor,
      // onTap: (){titleStyle
      //    widget.onTap();
      // },
      readOnly: widget.readonly,
      onSaved: (val) {
        widget.onSubmit(val);
      },
      onChanged: (val) {
        //print(val);
      },
      controller: widget.textEditingController,
      decoration: new InputDecoration(
        hintText: widget.placeholderText,
        hintStyle: widget.placeholderStyle,
        border: new UnderlineInputBorder(
          borderRadius: new BorderRadius.circular(0),
          borderSide: new BorderSide(color: Colors.grey),
        ),
        enabledBorder: new UnderlineInputBorder(
          borderRadius: new BorderRadius.circular(0),
          borderSide: new BorderSide(color: Colors.grey),
        ),
        focusedBorder: new UnderlineInputBorder(
          borderRadius: new BorderRadius.circular(0),
          borderSide: new BorderSide(color: primaryColor),
        ),
        errorBorder: new UnderlineInputBorder(
          borderRadius: new BorderRadius.circular(0),
          borderSide: new BorderSide(color: Colors.red),
        ),
      ),

      obscureText: widget.obscureText,
      validator: (value) {
        String message = null;

        // switch (widget.validatorType) {
        //   case ValidatorType.Email:
        //     message = emailValidator(value);
        //     break;
        //   case ValidatorType.NormalText:
        //     message = normalTextValidator(value, widget.titleText);
        //     break;
        //   case ValidatorType.OptionalText:
        //     // TODO: Handle this case.
        //     break;
        //   case ValidatorType.StrictText:
        //     message = strictNameTextValidator(value, widget.titleText);
        //     break;
        //   case ValidatorType.PhoneNumberWithoutPrefix:
        //     message = phoneNumValidator(
        //         text: value, textfieldName: widget.titleText, gotPrefix: false);
        //     break;
        // }
        return message;
      },
      keyboardType: widget.keyboardType,
    );
  }
}

enum ValidatorType {
  Email,
  NormalText,
  OptionalText,
  StrictText,
  PhoneNumberWithoutPrefix
}
