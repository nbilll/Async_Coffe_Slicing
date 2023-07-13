import 'package:flutter/material.dart';
import 'package:asynchronous_coffe/core.dart';
import '../controller/Home_controller.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  Widget build(context, HomeController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Async Coffe"),
        actions: [
          CircleAvatar(
            backgroundColor: Colors.white,
            child: Icon(
              Icons.shopping_bag_outlined,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 6.0,
                  horizontal: 12.0,
                ),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: const BorderRadius.all(
                    Radius.circular(20.0),
                  ),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.search,
                        color: Colors.grey[500],
                      ),
                    ),
                    Expanded(
                      child: TextFormField(
                        initialValue: null,
                        decoration: InputDecoration.collapsed(
                          filled: true,
                          fillColor: Colors.transparent,
                          hintText: "What are you craving?",
                          hintStyle: TextStyle(
                            color: Colors.grey[500],
                          ),
                          hoverColor: Colors.transparent,
                        ),
                        onFieldSubmitted: (value) {},
                      ),
                    ),
                  ],
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
                    controller.categories.length,
                    (index) {
                      var item = controller.categories;
                      bool selected = index == 0;

                      return Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12.0,
                          vertical: 8.0,
                        ),
                        margin: const EdgeInsets.only(right: 10.0),
                        decoration: BoxDecoration(
                          color: selected ? Colors.orange : Colors.grey,
                          borderRadius: const BorderRadius.all(
                            Radius.circular(16.0),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            "${item[index]}",
                            style: const TextStyle(
                              fontSize: 12.0,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Text(
                "${controller.getLevelUser(controller.sentence)}",
                style: TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Menu",
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              GridView.builder(
                padding: EdgeInsets.zero,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 1.0,
                  crossAxisCount: 2,
                  mainAxisSpacing: 12,
                  crossAxisSpacing: 12,
                ),
                itemCount: controller.products.length,
                shrinkWrap: true,
                physics: ScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  var item = controller.products[index];
                  return InkWell(
                    onTap: () async {
                      Get.to(ProductView(item: item));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(15.0),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0x19000000),
                              blurRadius: 24,
                              offset: Offset(0, 11),
                            ),
                          ],
                          color: Colors.white),
                      child: Column(
                        children: [
                          Container(
                            height: 90.0,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage("${item["photo"]}"),
                                fit: BoxFit.cover,
                              ),
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.all(
                                Radius.circular(
                                  16.0,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "${item["product_name"]}",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: Text(
                                        "${item["price"]}K",
                                        style: TextStyle(
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.blue,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      "Stock : 23",
                                      style: TextStyle(
                                          fontSize: 12.0,
                                          color: Color(0xffcfcfcf)),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<HomeView> createState() => HomeController();
}
