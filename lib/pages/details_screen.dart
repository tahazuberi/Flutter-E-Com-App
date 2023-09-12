import 'package:first_project/widgets/available_size.dart';
import 'package:flutter/material.dart';
import '../models/product.dart';


class DetailScreen extends StatelessWidget{
  final Product product;
  const DetailScreen({super.key,required this.product});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Details"),
        centerTitle: true,
      ),
          body:Column(
        children: [
          SizedBox(height: 36),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
        width: 220,
      height: 220,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.red.shade100,
      ),
            child: Image.asset(product.image,fit:BoxFit.cover),
    )
      ],
    ),
          SizedBox(height: 36.0),
          Container(
            padding: EdgeInsets.all(20),
            width: double.infinity,
            height: 400,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40),
                topRight: Radius.circular(40),
              ),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      product.name.toUpperCase(),
                      style:TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      '\$' '${product.price}',
                      style:TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                  ],
                ),
                const SizedBox(height:14),
                Text(
                  product.description,
                  textAlign: TextAlign.justify,
                  style:TextStyle(
                    fontSize: 14,
                  ),
                ),

                const SizedBox(height: 17),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Available Size",
                      style: TextStyle(
                        fontSize:18,
                        fontWeight:FontWeight.bold,
                      ),
                    ),
                  ],
                ),


                const SizedBox(height: 8.0),
                 Row(
                  children: [
                    AvailableSize(size:"US 6"),
                    AvailableSize(size:"US 7"),
                    AvailableSize(size:"US 8"),
                    AvailableSize(size:"US 9"),
                  ],
                ),

                const SizedBox(height: 37),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Available Colors",
                      style: TextStyle(
                        fontSize:18,
                        fontWeight:FontWeight.bold,
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 8.0,),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 16,
                      backgroundColor: Colors.blue,
                    ),
                    SizedBox(width: 8.0),
                    CircleAvatar(
                      radius: 16,
                      backgroundColor: Colors.red,
                    ),
                    SizedBox(width: 8.0),
                    CircleAvatar(
                      radius: 16,
                      backgroundColor: Colors.yellow,
                    ),
                  ],
                )


              ],
            ),
          ),

      ],
    ),
      bottomSheet: BottomAppBar(
      child:Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        alignment: Alignment.center,
        width: double.infinity,
        height: MediaQuery.of(context).size.height/10,
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
          ),
        ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "\$" '${product.price}',
            style: TextStyle(
              fontSize: 34,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),


          ElevatedButton.icon(
            onPressed: () {},
            icon: Icon(Icons.send),
            label:Text("Add to Cart"),
          )
        ],
      ),


      )
      )
    );
  }
}