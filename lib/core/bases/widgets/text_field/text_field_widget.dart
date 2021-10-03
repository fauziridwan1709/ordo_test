// Created by Muhamad Fauzi Ridwan on 7/11/21.

part of '_text_field.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({
    Key? key,
    this.label,
    this.hint,
    this.minLines = 1,
    this.maxLines = 1,
    this.widget,
    this.controller,
    this.fNode,
    this.errorText,
    this.onChanged,
    this.isHidePassword = false,
    this.isPassword = false,
    this.isEmptyFill = false,
    this.onPasswordObscureChange,
    this.onTap,
    this.suffixIcon,
    this.labelStyle,
    this.backgroundColor,
    this.validator,
    this.enabled,
    this.padding,
  }) : super(key: key);

  final int minLines;
  final int maxLines;
  final String? label;
  final String? hint;
  final Widget? widget;
  final TextEditingController? controller;
  final FocusNode? fNode;
  final String? errorText;
  final Function(String)? onChanged;
  final bool isHidePassword;
  final bool isPassword;
  final bool isEmptyFill;
  final VoidCallback? onPasswordObscureChange;
  final VoidCallback? onTap;
  final Widget? suffixIcon;
  final TextStyle? labelStyle;
  final Color? backgroundColor;
  final FormFieldValidator<String>? validator;
  final bool? enabled;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    final createLabelStyle = labelStyle ?? const TextStyle();

    return Padding(
      padding: padding ?? EdgeInsets.zero,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          if (label?.isNotEmpty ?? false) ...[
            Text(
              label.toString(),
              style: createLabelStyle,
            ),
            const HeightSpace(5),
          ],
          TextFormField(
            style: FontTheme.poppins14w500black(),
            controller: controller,
            onChanged: onChanged,
            obscureText: isHidePassword,
            focusNode: fNode,
            cursorColor: Theme.of(context).primaryColor,
            minLines: minLines,
            maxLines: maxLines,
            onTap: onTap,
            enabled: enabled,
            validator: validator,
            decoration: minLines == 1
                ? _decoration(context).copyWith(prefixIcon: widget)
                : _decoration(context).copyWith(
                    prefixIcon: widget,
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 15)),
          )
        ],
      ),
    );
  }

  InputDecoration _decoration(BuildContext context) {
    return InputDecoration(
      hintText: hint,
      hintStyle:
          FontTheme.poppins14w500black().copyWith(color: OrdoColors.black40),
      errorText: errorText,
      errorMaxLines: 2,
      suffixIcon: isPassword
          ? IconButton(
              onPressed: onPasswordObscureChange,
              icon: Icon(
                isHidePassword ? Icons.visibility_off : Icons.visibility,
              ),
            )
          : suffixIcon,
      contentPadding: const EdgeInsets.symmetric(horizontal: 15),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(
            color: isEmptyFill
                ? Theme.of(context).highlightColor
                : Colors.transparent),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(
            color: isEmptyFill
                ? Theme.of(context).highlightColor
                : Colors.transparent),
      ),
      filled: true,
      fillColor: isEmptyFill
          ? Colors.transparent
          : (backgroundColor ?? Theme.of(context).highlightColor),
    );
  }
}
