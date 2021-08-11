import 'package:flutter/cupertino.dart';
import 'package:velocity_x/velocity_x.dart';

class CatalogImage extends StatelessWidget {
  final String image;
  const CatalogImage({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FadeInImage(
            image: NetworkImage(image),
            placeholder: AssetImage("assets/images/hey.png"))
        .box
        .p8
        .rounded
        .color(context.canvasColor)
        .make()
        .p16()
        .w40(context);
    // return Image.network(image)
    //     .box
    //     .p8
    //     .rounded
    //     .color(context.canvasColor)
    //     .make()
    //     .p16()
    //     .w40(context);
  }
}
