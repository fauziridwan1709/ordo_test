part of '_button.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.onPressed,
    required this.text,
    this.textStyle,
    this.isLoading = false,
    this.enabled = true,
    this.activeColor,
  }) : super(key: key);

  final VoidCallback onPressed;
  final String text;
  final TextStyle? textStyle;
  final bool? isLoading;
  final bool enabled;
  final Color? activeColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      decoration: BoxDecoration(
        color: enabled
            ? (activeColor ?? OrdoColors.primaryColor)
            : OrdoColors.disableColor,
        borderRadius: BorderRadius.circular(400),
        boxShadow: BoxShadowDecorator().defaultShadow(),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: enabled ? onPressed : null,
          child: Center(
            child: isLoading!
                ? const SpinKitRing(
                    color: Colors.white,
                    size: 24,
                    lineWidth: 4,
                  )
                : Text(
                    text,
                    style: textStyle ?? FontTheme.poppins14w700black(),
                  ),
          ),
        ),
      ),
    );
  }
}
