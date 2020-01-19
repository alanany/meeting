import 'dart:ffi';

import 'package:flutter/material.dart';
class MyCustomInput extends StatelessWidget {
final double cursorWidth;
  final String labelText;
  final EdgeInsets containerMargin;
  final String initialValue;
  final String errorText;
final Color labelColor;
  final bool expands;
  final FormFieldValidator<String> validator;
  final int inputMaxLines;
  final bool enabled;
  final TextInputType inputType;
  final EdgeInsets contentPadding;
  final ValueChanged<String> onFieldSubmitted;
  final TextInputAction textInputAction;
  final ValueChanged<String> onChanged;
final ValueChanged<String> obscureText;

final FormFieldSetter<String> onSaved;
  final String placeholder;
  final TextEditingController textEditingController;
  final bool obsecureText;

  final Widget prefixIcon;
  final bool filledEnabled;
  final Widget prefixWidget;

  final UnderlineInputBorder enabledBorder;
  final UnderlineInputBorder focusedBorder;

  final Color cursorColor;
  final FocusNode focusNode;
  final bool autoFocus;
  final bool hasFocus;
  final BoxShadow boxShadow;

  Widget suffixIcon;

  final BorderSide border;


  MyCustomInput({
    this.enabledBorder,
    this.labelText,
    this.contentPadding =
        const EdgeInsets.symmetric(horizontal: 10.0, vertical: 0.0),
    this.obscureText,
    this.onChanged,
    this.cursorColor,
    this.cursorWidth,
    this.focusedBorder,
    this.autoFocus:false,
    this.enabled = true,
    this.textInputAction,
    this.errorText,
    this.onSaved,
    this.textEditingController,
    this.expands = false,
    this.placeholder,
    this.initialValue,
    this.inputMaxLines = 1,
    this.containerMargin,
    this.boxShadow = const BoxShadow(
      color: Color(0x2625364F),
      offset: Offset(0.0, 5.0),
      blurRadius: 10.0,
    ),
    this.inputType,
    this.validator,
    this.prefixIcon,
    this.obsecureText = false,
    this.labelColor = const Color.fromRGBO(223, 177, 99, 1),
    Key key,
    this.prefixWidget,
    this.filledEnabled = false,
    this.hasFocus = false,
    this.focusNode,
    this.suffixIcon,
    this.border,
    this.onFieldSubmitted,
  }) : super(key: key) {
    if (validator != null) {
//      if (labelText == 'اسم المستخدم' || labelText == 'كلمة المرور') {
//        containerMargin = EdgeInsets.only(bottom: 0.0);
//      } else {
//        containerMargin = EdgeInsets.only(bottom: 15.0);
//      }
    }
  }

  @override
  Widget build(BuildContext context) {
//    var xx = Stack(
//      alignment: Alignment.topCenter,
//      overflow: Overflow.visible,
//      children: <Widget>[
////        if (inputMaxLines <= 1)
//        Container(
//          height: (inputMaxLines * 26.0) + 20.0,
//          width: double.infinity,
//          decoration: BoxDecoration(
//            borderRadius: BorderRadius.all(Radius.circular(26.0)),
//            color: Color(0xFFF8F8F8),
//          ),
//        ),
////        if (inputMaxLines > 1)
////          Positioned(
////            left: 0,
////            right: 0,
////            top: 0,
////            bottom: 20,
////            child: Container(
////              height: double.infinity,
////              width: double.infinity,
////              decoration: BoxDecoration(
////                borderRadius: BorderRadius.all(Radius.circular(26.0)),
////                color: Color(0xFFF8F8F8),
////              ),
////            ),
////          ),
//        Theme(
//          data: Theme.of(context).copyWith(
//            splashColor: Colors.transparent,
//          ),
//          child: Container(
//            margin: EdgeInsets.symmetric(horizontal: 1.0),
//            child: Container(
//              alignment: Alignment.center,
//              width: double.infinity,
//              margin: containerMargin,
//              decoration: BoxDecoration(
//                borderRadius: BorderRadius.all(Radius.circular(26.0)),
////              color: Color(0xFFF8F8F8),
//              ),
//              child: inputMaxLines > 1
//                  ? TextFormField(
//                      cursorColor: Theme.of(context).primaryColor,
////                    textDirection: TextDirection.ltr,
//                      textAlign: TextAlign.right,
//                      maxLines: inputMaxLines,
//                      validator: validator,
//                      initialValue: initialValue,
//                      onChanged: onChanged,
//                      onSaved: onSaved,
//                      style: TextStyle(
//                        fontFamily: obsecureText ? 'roboto' : null,
//                      ),
//                      obscureText: obsecureText,
//                      keyboardType: inputType,
//                      decoration: InputDecoration(
//                        hasFloatingPlaceholder: false,
//                        labelText: placeholder,
//                      ),
//                    )
//                  : TextFormField(
//                      validator: validator,
//                      onSaved: onSaved,
//                      enabled: enabled,
//                      onChanged: onChanged,
//                      initialValue: initialValue,
//                      cursorColor: Theme.of(context).primaryColor,
////                    textDirection: TextDirection.ltr,
//                      textAlign: TextAlign.right,
//                      maxLines: inputMaxLines,
//                      obscureText: obsecureText,
//                      keyboardType: inputType,
//                      style: TextStyle(
//                        fontFamily: obsecureText ? 'roboto' : null,
//                      ),
//                      decoration: InputDecoration(
//                        hasFloatingPlaceholder: false,
//                        labelText: placeholder,
//                        labelStyle: TextStyle(),
////                        errorText: 'dsa',
//                      ),
//                    ),
//            ),
//          ),
//        ),
//        Positioned(
//          top: -14.0,
//          right: 20.0,
//          height: 20.0,
//          child: Container(
//            height: 30.0,
//            decoration: BoxDecoration(
//                color: Colors.white, borderRadius: BorderRadius.circular(10.0)),
//            alignment: Alignment.center,
//            padding: EdgeInsets.symmetric(vertical: 3.0, horizontal: 10.0),
//            child: Text(
//              labelText,
//              style: TextStyle(
//                color: labelColor,
//                fontSize: 11.0,
//              ),
//            ),
//          ),
//        ),
//      ],
//    );

    return Stack(
      alignment: Alignment.topCenter,
      fit: StackFit.loose,
      overflow: Overflow.visible,
      children: <Widget>[
        if (focusNode != null && focusNode.hasFocus)
          Positioned(
            left: 0,
            right: 0,
            top: 0,
            child: Container(
              height: 24.0 * inputMaxLines + 26.0,
              width: double.infinity,
              decoration: BoxDecoration(
                boxShadow: [
                  boxShadow,
                ],
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.white,
              ),
            ),
          ),
        Theme(
          data: Theme.of(context).copyWith(
            splashColor: Colors.transparent,
          ),
          child: TextFormField(
            expands: expands,
            textInputAction: textInputAction,
//          toolbarOptions: const ToolbarOptions(
//              selectAll: true, copy: true, cut: true, paste: true),
            style: TextStyle(
              fontSize: 16.0,
              height: 1.5,
              fontFamily: obsecureText ? 'roboto' : 'Almarai',
            ),
            maxLines: inputMaxLines,
            validator: validator,
            keyboardType: inputType,
            onFieldSubmitted: onFieldSubmitted,
            autofocus: autoFocus,
            initialValue: initialValue,
            focusNode: focusNode,
            obscureText: obsecureText,
            onChanged: onChanged,
            onSaved: onSaved,

            controller: textEditingController,
            cursorColor:Color.fromRGBO(223, 177, 99, 1) ,
            cursorWidth: 2,
            decoration: InputDecoration(
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color:Color.fromRGBO(203, 204, 208, 1)),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(width: 3.0,color:Color.fromRGBO(223, 177, 99, 1)),
              ),
              hintText: placeholder,
              alignLabelWithHint: true,
              prefix: prefixWidget,
              suffixIcon: suffixIcon,
              prefixIcon: prefixIcon,
//            hintStyle: TextStyle(
//              fontSize: 13.0,
//              fontWeight: FontWeight.w400,
//              color: Color(0xFFDCE2E2),
//            ),
//              contentPadding: contentPadding,
              errorText: errorText,
//          focusedBorder: OutlineInputBorder(
//              borderSide:
//                  BorderSide(color: Theme.of(context).primaryColor, width: 2.0),
//              borderRadius: BorderRadius.circular(28.0)),
              labelText: labelText,
             focusColor:Color.fromRGBO(223, 177, 99, 1),
             // focusColor: Theme.of(context).primaryColor,
              hasFloatingPlaceholder: false,
              fillColor: Colors.white,
              filled: filledEnabled,
              errorStyle: TextStyle(
                fontSize: 11.0,
                fontWeight: FontWeight.w400,
              ),
              labelStyle: TextStyle(
                fontSize: 16.0,
                height: 1.5,
                fontFamily: 'Almarai',
                color: const Color(0x8025364F),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class CheckboxFormField extends FormField<bool> {

  CheckboxFormField(
      {Widget title,
        @required BuildContext context,
        FormFieldSetter<bool> onSaved,
        FormFieldValidator<bool> validator,
        bool initialValue = false,
        bool autovalidate = false})
      : super(
      onSaved: onSaved,
      validator: validator,
      initialValue: initialValue,
      autovalidate: autovalidate,
      builder: (FormFieldState<bool> state) {
        return CheckboxListTile(
          dense: state.hasError,
          title: title,
          value: state.value,
          onChanged: state.didChange,
          subtitle: state.hasError
              ? Text(
            state.errorText,
            style: TextStyle(color: Theme.of(context).errorColor),
          )
              : null,
          controlAffinity: ListTileControlAffinity.leading,
        );
      });
}

class MyCustomFormButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback onPressedEvent;
  final Color textColor;
  final double height;
  final double radius;
  final double fontSize;
  final EdgeInsetsGeometry padding;
  final Color backgroundColor;
  MyCustomFormButton({
    Key key,
    @required this.onPressedEvent,
    this.buttonText,
    this.fontSize = 16.0,
    this.height = 50.0,
    this.padding = const EdgeInsets.all(8.0),
    this.radius = 15.0,
    this.textColor = Colors.white,
    this.backgroundColor = const Color(0xFF00AEEF),
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;

    return Container(
//      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
      ),
      constraints: BoxConstraints(
        minWidth: 135.0,
      ),
      child: SizedBox(
        height: height,
        child: MaterialButton(
          padding: padding,
          onPressed: onPressedEvent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radius),
          ),
          elevation: 0,
          color: backgroundColor,
          child: AnimatedSwitcher(
            switchOutCurve: Curves.easeOut,
            duration: Duration(milliseconds: 500),
            transitionBuilder: (Widget child, Animation<double> animation) =>
                FadeTransition(
              opacity: animation,
              child: child,
            ),
            switchInCurve: Curves.easeOut,
            child: Text(
              buttonText,
              maxLines: 1,
              overflow: TextOverflow.clip,
              style: TextStyle(
                fontSize: fontSize,
//                          fontWeight: FontWeight.normal,
                color: textColor,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
