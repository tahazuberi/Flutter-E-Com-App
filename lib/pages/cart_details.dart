import 'package:first_project/provider/cart_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class CartDetails extends StatefulWidget {
  const CartDetails({super.key});

  @override
  State<CartDetails> createState() => _CartDetailState();

}

class _CartDetailState extends State<CartDetails>{
  @override
  Widget build(BuildContext context){

    final provider = CartProvider.of(context);
    final finalList = provider.cart;

    Widget _buildProductQuantity(IconData icon,int index){
      return GestureDetector(
        onTap: (){
          setState(() {
            icon == Icons.add
                ? provider.incrementQuantity(index)
                :provider.decrementQuantity(index);
          });
        },
      child:Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.red.shade100,
        ),
            child: Icon(
              icon,
              size: 20,

      ),
      ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('My Cart'),
        centerTitle: true,
      ),


      body:Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: finalList.length,
              itemBuilder: (context,index){
                return Padding(
                  padding: EdgeInsets.all(8.0),
                  child:Slidable(
                    endActionPane: ActionPane(
                      motion: ScrollMotion(),
                      children: [
                        SlidableAction(
                          onPressed: (context) {
                            finalList.removeAt(index);
                            setState(() {});
                          },
                          backgroundColor: Colors.red,
                          foregroundColor: Colors.white,
                          icon: Icons.delete,
                          label: 'Delete',
                        ),
                      ],
                    ),
                    child: ListTile(
                      title: Text(
                        finalList[index].name,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      subtitle: Text(
                        finalList[index].price.toString(),
                        overflow: TextOverflow.ellipsis ,
                      ),

                      leading: CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage(finalList[index].image),
                        backgroundColor: Colors.red.shade100,
                      ),
                      trailing: Column(
                          children: [
                            _buildProductQuantity(Icons.add,index),
                            Text(
                              finalList[index].quantity.toString(),
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            _buildProductQuantity(Icons.remove,index),
                          ],
                      ),
                      tileColor: Colors.white,
                    ) ,
                  )
                );
              },
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 30),
            alignment: Alignment.center,
            width: double.infinity,
            height: 100,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              )
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '\$' '${provider.getTotalPrice()}',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                ElevatedButton.icon(
                  onPressed: () {

                  },
                  icon: Icon(Icons.send),
                  label: Text("Check Out"),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}