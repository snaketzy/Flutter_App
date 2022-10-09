import 'package:flutter/material.dart';

class Product {
  final String title;
  final String desc;
  Product(this.title, this.desc);
}

// 传参
class MyDataRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "传参",
      home: MyProductList(
        products: List.generate(20, (index) => Product("商品${index}","商品详情${index}")),
      )
    );
  }
}

// 商品列表页
class MyProductList extends StatelessWidget {
  final List<Product> products;

  MyProductList({Key? key, required this.products}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("商品列表页"), centerTitle: true,),
      body: ListView.builder(
          itemCount: products.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(products[index].title),
              onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => MyProductDetail(product: products[index])));
              },
            );
          }
      ),
    );
  }
}


// 商品详情页
class MyProductDetail extends StatelessWidget {
  final Product product;
  MyProductDetail({Key? key, required this.product}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("${product.title}"), centerTitle: true,),
      body: Padding(
        padding: EdgeInsets.all(8),
        child: Text("${product.desc}"),
      ),
    );
  }
}
