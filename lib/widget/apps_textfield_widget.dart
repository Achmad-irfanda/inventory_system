// apps textfield

import 'package:flutter/services.dart';
import 'package:inventory_system/apps_common_libs.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

enum JenisField {
  universal,
  currency,
  email, 
  password,
  phone,
}

class AppsTextFieldWidget extends StatefulWidget {
  final TextEditingController controller;
  final JenisField jenisField;
  final String label;
  final String hintText;
  final String namaField;
  final int maxLines;
  final TextInputType keyboardType;
  //
  final dynamic prefixIcon;
  final dynamic prefixText;

  final dynamic suffixIcon;
  final dynamic suffixText;
  final dynamic suffixTextStyle;
  //
  final bool withValidaor;
  final Function(dynamic) onChanged;
  final Function(dynamic) onsaved;

  const AppsTextFieldWidget({
    super.key,
    required this.controller,
    required this.jenisField,
    required this.label,
    required this.hintText,
    required this.namaField,
    required this.maxLines,
    required this.keyboardType,
    //
    this.prefixIcon,
    this.prefixText,
    this.suffixIcon,
    this.suffixText,
    this.suffixTextStyle,
    //
    required this.withValidaor,
    required this.onChanged,
    required this.onsaved,
  });

  @override
  State<AppsTextFieldWidget> createState() => _AppsTextFieldWidgetState();
}

class _AppsTextFieldWidgetState extends State<AppsTextFieldWidget> {
  @override
  Widget build(BuildContext context) {
    final bodymedium = Theme.of(context).textTheme.bodyMedium;
    final hoverColor = Theme.of(context).primaryColor;
    const disabledColor = Colors.black;
    var maskFormatter = MaskTextInputFormatter(
        mask: '####-####-####', filter: {"#": RegExp(r'[0-9]')});
    return TextFormField(
      controller: widget.controller,
      style: bodymedium,
      enabled: true,
      maxLines: widget.maxLines,
      textAlign: TextAlign.justify,
      keyboardType: widget.keyboardType,
      obscureText: (widget.jenisField == JenisField.password)
          ? AppsPublicVariableResource.obscureText
          : false,
      inputFormatters: (widget.jenisField == JenisField.currency)
          ? <TextInputFormatter>[
              CurrencyTextInputFormatter(
                  locale: 'id', decimalDigits: 0, symbol: ''),
            ]
          : (widget.jenisField == JenisField.phone)
              ? <TextInputFormatter>[
                  maskFormatter,
                ]
              : [],
      decoration: InputDecoration(
        //prefix
        prefixIcon: widget.prefixIcon,
        prefixText: widget.prefixText,
        prefixStyle: bodymedium,
        //suffix
        suffixIcon: widget.suffixIcon,
        suffixText: widget.suffixText,
        suffixStyle: widget.suffixTextStyle,
        //
        hoverColor: hoverColor,
        labelText: widget.label,
        labelStyle: bodymedium,
        hintText: widget.hintText,
        hintStyle:
            bodymedium!.copyWith(color: Colors.grey.shade400.withOpacity(0.68)),
        contentPadding: const EdgeInsets.only(left: 20, top: 12, bottom: 12),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: hoverColor)),
        disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: disabledColor)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: hoverColor)),
      ),
      onChanged: (value) {
        widget.onChanged(value);
      },
      onSaved: (value) {
        widget.onsaved(value);
      },
      validator: (value) {
        if (value == null || value.isEmpty && widget.withValidaor == true) {
          return "Field ${widget.namaField} tidak boleh kosong";
        }
        if (widget.jenisField == JenisField.email && !value.contains("@") || widget.jenisField == JenisField.email && !value.contains(".")){
            return "Field ${widget.namaField} fail formmatter";
          }
        return null;
      },
    );
  }
}
