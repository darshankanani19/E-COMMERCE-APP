import 'package:rrr/consts/consts.dart';
Widget customTextField({String? title, String? hint, controller}){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      title!.text.fontFamily(semibold).size(16).color(redColor).make(),
      5.heightBox,
      TextFormField(
        // controller: controller,
        decoration: InputDecoration(
          hintStyle: TextStyle(
            fontFamily: semibold,
            color: textfieldGray,
          ),
          hintText: hint,
          isDense: true,
          fillColor: lightGrey,
          filled: true,
          border: InputBorder.none,
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: redColor
            )
          )
        ),
      ),
      5.heightBox
    ],
  );
}