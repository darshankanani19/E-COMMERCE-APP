import 'package:rrr/consts/consts.dart';
import 'package:rrr/widgets_common/bg_widget.dart';
class CategoriesDetails extends StatelessWidget {

  final String? title;
  const CategoriesDetails({super.key,required this.title});

  @override
  Widget build(BuildContext context) {
    return bgWidget(Scaffold(
      appBar: AppBar(
        title: title!.text.fontFamily(bold).white.make(),
      ),
    ));
  }
}
