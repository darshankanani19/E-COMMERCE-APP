import 'package:rrr/consts/consts.dart';
import 'package:rrr/consts/lists.dart';
import 'package:rrr/widgets_common/bg_widget.dart';

import 'components/details_card.dart';
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return bgWidget(Scaffold(body: SafeArea(child: Container(padding: EdgeInsets.all(8),
      child: Column(
        children: [
          // edit button session
          Align(
              alignment: Alignment.topRight,
              child: Icon(Icons.edit,color: whiteColor,)),
          // profile details session
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Image.asset(imgProfile2,width: 100,fit: BoxFit.cover,).box.roundedFull.clip(Clip.antiAlias).make(),
                10.widthBox,
                Expanded(child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  "Dummy user".text.fontFamily(semibold).white.make(),
                  5.heightBox,
                  "james.buchanan@examplepetstore.com".text.white.make(),

                ],),),
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(
                      color: whiteColor
                    )
                  ),
                  onPressed: (){}, child: logout.text.fontFamily(semibold).white.make(),),


              ],
            ),
          ),

          20.heightBox,

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                detailsCard(width: context.screenWidth/3.4,count: "00",title: "In your cart"),
                detailsCard(width: context.screenWidth/3.4,count: "35",title: "In your wishlist"),
                detailsCard(width: context.screenWidth/3.4,count: "4562",title: "Your orders"),
              ],
            ),
          ),
        //   button session
          ListView.separated(
            shrinkWrap: true,
              separatorBuilder: (context, index) {return Divider(color: lightGrey,);},
              itemCount:  profileButtonsList.length,itemBuilder: (BuildContext context,index){
              return ListTile(
                leading: Image.asset(profileButtonIcons[index],width: 22,),
                title: profileButtonsList[index].text.fontFamily(semibold).color(darkFontGrey).make(),
              );
          }).box.shadowSm.padding(EdgeInsets.all(16)).rounded.white.margin(EdgeInsets.all(12)).make().box.color(redColor).make(),
        ],
      ),),
      )
      ,));
  }
}
