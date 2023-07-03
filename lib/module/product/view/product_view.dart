import 'package:flutter/material.dart';
import 'package:asynchronous_coffe/core.dart';
import '../controller/product_controller.dart';

class ProductView extends StatefulWidget {
  final Map item;
  const ProductView({Key? key, required this.item}) : super(key: key);

  Widget build(context, ProductController controller) {
    controller.view = this;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    height: 230.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                          "${item["photo"]}",
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 15,
                    top: 40,
                    child: InkWell(
                      onTap: () => Navigator.pop(context),
                      child: CircleAvatar(
                        radius: 15,
                        backgroundColor: Colors.white,
                        child: Icon(
                          Icons.navigate_before,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Container(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "${item["product_name"]}",
                      style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            "${item["price"]}K",
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue,
                            ),
                          ),
                        ),
                        Text(
                          "Stock : 23",
                          style: TextStyle(
                              fontSize: 14.0, color: Color(0xffcfcfcf)),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Text(
                      "Cup Size",
                      style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      controller: ScrollController(),
                      child: Row(
                        children: List.generate(
                          3,
                          (index) {
                            var item = controller.sizes[index];
                            bool selected =
                                controller.selectedIndexSize == index;

                            return InkWell(
                              onTap: () => controller.updateIndexSize(index),
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 28.0,
                                  vertical: 8.0,
                                ),
                                margin: const EdgeInsets.only(right: 10.0),
                                decoration: BoxDecoration(
                                  color: selected ? Colors.black : Colors.white,
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(16.0),
                                  ),
                                  border: Border.all(
                                    width: 1.0,
                                    color: Colors.grey[900]!,
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                    "$item",
                                    style: TextStyle(
                                      color: selected
                                          ? Colors.white
                                          : Colors.black,
                                      fontSize: 14.0,
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15.0,
                    ),
                    Text(
                      "Ice Level",
                      style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      controller: ScrollController(),
                      child: Row(
                        children: List.generate(
                          3,
                          (index) {
                            var item = controller.iceLevel[index];
                            bool selected =
                                controller.selectedIndexIce == index;
                            return InkWell(
                              onTap: () => controller.updateIndexIce(index),
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 34.0,
                                  vertical: 8.0,
                                ),
                                margin: const EdgeInsets.only(right: 10.0),
                                decoration: BoxDecoration(
                                  color: selected ? Colors.black : Colors.white,
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(16.0),
                                  ),
                                  border: Border.all(
                                    width: 1.0,
                                    color: Colors.grey[900]!,
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                    "$item",
                                    style: TextStyle(
                                      color: selected
                                          ? Colors.white
                                          : Colors.black,
                                      fontSize: 14.0,
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15.0,
                    ),
                    Text(
                      "Sugar Level",
                      style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      controller: ScrollController(),
                      child: Row(
                        children: List.generate(
                          3,
                          (index) {
                            var item = controller.sugarLevel[index];
                            bool selected =
                                controller.selectedIndexSugar == index;

                            return InkWell(
                              onTap: () => controller.updateIndexSugar(index),
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 34.0,
                                  vertical: 8.0,
                                ),  
                                margin: const EdgeInsets.only(right: 10.0),
                                decoration: BoxDecoration(
                                  color: selected ? Colors.black : Colors.white,
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(16.0),
                                  ),
                                  border: Border.all(
                                    width: 1.0,
                                    color: Colors.grey[900]!,
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                    "$item",
                                    style: TextStyle(
                                      color: selected
                                          ? Colors.white
                                          : Colors.black,
                                      fontSize: 14.0,
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                    Text(
                      "Note",
                      style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.only(),
                      child: TextFormField(
                        initialValue: null,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          hintText: "Add note",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        onChanged: (value) {},
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Row(
        children: [
          Container(
            padding: EdgeInsets.all(20),
            color: Colors.white,
            width: MediaQuery.of(context).size.width,
            height: 70,
            child: Row(
              children: [
                Container(
                  color: Colors.white,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () => controller.decrement(),
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          child: Icon(
                            Icons.remove,
                            color: Colors.red,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 3.0,
                      ),
                      Text(
                        "${controller.qty}",
                        style: TextStyle(
                          fontSize: 12.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        width: 3.0,
                      ),
                      InkWell(
                        onTap: () => controller.increment(),
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          child: Icon(
                            Icons.add,
                            color: Colors.red,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff2261ff)),
                  onPressed: () {
                    Get.to(OrderView(item: item));
                  },
                  child: Text("Add to Cart - \$200",
                      style: TextStyle(
                        color: Colors.white,
                      )),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  @override
  State<ProductView> createState() => ProductController();
}
