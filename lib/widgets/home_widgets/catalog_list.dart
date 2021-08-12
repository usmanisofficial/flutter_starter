import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_starter/models/catalog.dart';
import 'package:flutter_starter/pages/product_detail_page.dart';
import 'package:flutter_starter/widgets/home_widgets/catalog_image.dart';
import 'package:velocity_x/velocity_x.dart';

class CatalogList extends StatelessWidget {
  const CatalogList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemBuilder: (context, index) {
        final catalog = CatalogModel.getbyPos(index);
        return InkWell(
          onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => ProductDetailPage(
                        catalog: catalog,
                      ))),
          child: Hero(
              tag: Key(catalog.id.toString()),
              child: CatalogItem(catalog: catalog)),
        );
      },
      itemCount: CatalogModel.items.length,
    );
  }
}

class CatalogItem extends StatelessWidget {
  final Item catalog;
  const CatalogItem({Key? key, required this.catalog}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return VxBox(
        child: Row(
      children: [
        CatalogImage(image: catalog.image),
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            catalog.name.text.lg.color(context.accentColor).bold.make(),
            catalog.desc.text.caption(context).make(),
            ButtonBar(
              alignment: MainAxisAlignment.spaceBetween,
              children: [
                "\$${catalog.price}".text.bold.xl.make(),
                ElevatedButton(
                  onPressed: () {},
                  child: "+".text.make(),
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(context.theme.buttonColor),
                      shape: MaterialStateProperty.all(StadiumBorder())),
                )
              ],
            ).pOnly(right: 8.0)
          ],
        ))
      ],
    )).color(context.cardColor).rounded.square(150).make().py16();
  }
}
