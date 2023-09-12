
import 'package:first_project/models/my_product.dart';
import 'package:first_project/pages/details_screen.dart';
import 'package:flutter/material.dart';

import '../widgets/product_card.dart';

class HomeScreen extends StatefulWidget{
  const HomeScreen ({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int isSelected =0;

  @override
  Widget build(BuildContext context){
    return Padding(
      padding: EdgeInsets.all(20.0),
      child: Column(
        children: [
         Text(
        "Our Products",
          style: TextStyle(
            fontSize: 27,
            fontWeight: FontWeight.bold,
          ),
        ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
              _buildProductCategory(index:0,name:"All Products"),
              _buildProductCategory(index:1,name:"Jackets"),
              _buildProductCategory(index:2,name:"Sneakers"),
            ],
          ),
          const SizedBox(height: 20),
          Expanded(
            child:isSelected==0?_buildAllProducts():isSelected==1?_buildJackets():_buildSneakers(),
          ),

      ],
    ),
    );
  }
   Widget _buildProductCategory({required int index,required String name}) =>
       GestureDetector(
         onTap: () => setState(() => isSelected = index),
     child:Container(
    width:100,
    height:40,
    margin:EdgeInsets.only(top:10,right:10),
    alignment: Alignment.center,
    decoration: BoxDecoration(
      color: isSelected ==index ? Colors.red: Colors.red.shade300,borderRadius: BorderRadius.circular(8)
    ),
    child :Text(
      name,
      style:TextStyle(color:Colors.white),
    )
     )
  );

  Widget _buildAllProducts() => GridView.builder(

      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2,
      childAspectRatio : (100/140),
      crossAxisSpacing:12,
      mainAxisSpacing: 12,
      ),
    scrollDirection: Axis.vertical,
    itemCount: MyProducts.allProducts.length,
    itemBuilder: (context,index){
        final allProducts = MyProducts.allProducts[index];
        return GestureDetector(
          onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => DetailScreen(product: allProducts)
              ),
          ),
          child: ProductCard(product: allProducts),
      );
    },
  );

  Widget _buildJackets() => GridView.builder(

    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2,
      childAspectRatio : (100/140),
      crossAxisSpacing:12,
      mainAxisSpacing: 12,
    ),
    scrollDirection: Axis.vertical,
    itemCount: MyProducts.jacketList.length,
    itemBuilder: (context,index){
      final jacketList = MyProducts.jacketList[index];
      return GestureDetector(
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => DetailScreen(product: jacketList)
          ),
        ),
        child: ProductCard(product: jacketList),
      );
    },
  );

  Widget _buildSneakers() => GridView.builder(

    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2,
      childAspectRatio : (100/140),
      crossAxisSpacing:12,
      mainAxisSpacing: 12,
    ),
    scrollDirection: Axis.vertical,
    itemCount: MyProducts.sneakersList.length,
    itemBuilder: (context,index){
      final sneakersList = MyProducts.sneakersList[index];
      return GestureDetector(
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => DetailScreen(product: sneakersList)
          ),
        ),
        child: ProductCard(product: sneakersList),
      );
    },
  );

}