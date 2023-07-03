import 'package:flutter/material.dart';
import 'package:asynchronous_coffe/core.dart';
import '../controller/Order_controller.dart';

class OrderView extends StatefulWidget {
  final Map item;
  const OrderView({Key? key, required this.item}) : super(key: key);

  Widget build(context, OrderController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: Text("Order"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "text",
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 150,
                child: Column(children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 100,
                    child: Row(
                      children: [
                        Container(
                          width: 100,
                          height: MediaQuery.of(context).size.height,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                "${item["photo"]}",
                              ),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(
                                16.0,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                item["product_name"],
                                style: TextStyle(
                                  fontSize: 13.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Row(
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Cup Size",
                                        style: TextStyle(
                                            fontSize: 12.0,
                                            color: Color(0xffb9b9b9)),
                                      ),
                                      const SizedBox(
                                        height: 5.0,
                                      ),
                                      Text(
                                        "Ice Level",
                                        style: TextStyle(
                                            fontSize: 12.0,
                                            color: Color(0xffb9b9b9)),
                                      ),
                                      const SizedBox(
                                        height: 5.0,
                                      ),
                                      Text(
                                        "Sugar Level",
                                        style: TextStyle(
                                            fontSize: 12.0,
                                            color: Color(0xffb9b9b9)),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    width: 110.0,
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(
                                        "Large",
                                        style: TextStyle(
                                            fontSize: 12.0,
                                            color: Color(0xffb9b9b9)),
                                      ),
                                      const SizedBox(
                                        height: 5.0,
                                      ),
                                      Text(
                                        "100%",
                                        style: TextStyle(
                                            fontSize: 12.0,
                                            color: Color(0xffb9b9b9)),
                                      ),
                                      const SizedBox(
                                        height: 5.0,
                                      ),
                                      Text(
                                        "60%",
                                        style: TextStyle(
                                            fontSize: 12.0,
                                            color: Color(0xffb9b9b9)),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 50,
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                InkWell(
                                  onTap: () => controller.decrement(),
                                  child: CircleAvatar(
                                    child: Icon(
                                      Icons.remove,
                                      color: Colors.red,
                                    ),
                                    backgroundColor: Colors.white,
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
                                    child: Icon(
                                      Icons.add,
                                      color: Colors.red,
                                    ),
                                    backgroundColor: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Text(
                          "${item["price"]}K",
                          style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue,
                          ),
                        ),
                      ],
                    ),
                  )
                ]),
              ),
              Divider(),
              const SizedBox(
                height: 5.0,
              ),
              // Container(
              //   width: MediaQuery.of(context).size.width,
              //   height: 150,
              //   child: Column(children: [
              //     Container(
              //       width: MediaQuery.of(context).size.width,
              //       height: 100,
              //       child: Row(
              //         children: [
              //           Container(
              //             width: 100,
              //             height: MediaQuery.of(context).size.height,
              //             decoration: const BoxDecoration(
              //               image: DecorationImage(
              //                 image: NetworkImage(
              //                   "https://images.unsplash.com/photo-1565299507177-b0ac66763828?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=422&q=80https://images.unsplash.com/photo-1565299507177-b0ac66763828?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=422&q=80",
              //                 ),
              //                 fit: BoxFit.cover,
              //               ),
              //               borderRadius: BorderRadius.all(
              //                 Radius.circular(
              //                   16.0,
              //                 ),
              //               ),
              //             ),
              //           ),
              //           Container(
              //             padding: EdgeInsets.symmetric(horizontal: 5),
              //             child: Column(
              //               crossAxisAlignment: CrossAxisAlignment.start,
              //               children: [
              //                 Expanded(
              //                   child: Text(
              //                     "Eggs Benedict Burger",
              //                     style: TextStyle(
              //                       fontSize: 13.0,
              //                       fontWeight: FontWeight.bold,
              //                     ),
              //                   ),
              //                 ),
              //                 Container(
              //                   height: 50,
              //                   child: Row(
              //                     mainAxisAlignment: MainAxisAlignment.start,
              //                     children: [
              //                       Container(
              //                         child: Row(
              //                           crossAxisAlignment:
              //                               CrossAxisAlignment.center,
              //                           mainAxisAlignment:
              //                               MainAxisAlignment.center,
              //                           children: [
              //                             InkWell(
              //                               onTap: () => controller.decrement(),
              //                               child: CircleAvatar(
              //                                 child: Icon(
              //                                   Icons.remove,
              //                                   color: Colors.red,
              //                                 ),
              //                                 backgroundColor: Colors.white,
              //                               ),
              //                             ),
              //                             const SizedBox(
              //                               width: 3.0,
              //                             ),
              //                             Text(
              //                               "${controller.qty}",
              //                               style: TextStyle(
              //                                 fontSize: 12.0,
              //                                 fontWeight: FontWeight.bold,
              //                               ),
              //                             ),
              //                             const SizedBox(
              //                               width: 3.0,
              //                             ),
              //                             InkWell(
              //                               onTap: () => controller.increment(),
              //                               child: CircleAvatar(
              //                                 child: Icon(
              //                                   Icons.add,
              //                                   color: Colors.red,
              //                                 ),
              //                                 backgroundColor: Colors.white,
              //                               ),
              //                             ),
              //                           ],
              //                         ),
              //                       ),
              //                       const SizedBox(
              //                         width: 91.0,
              //                       ),
              //                       Text(
              //                         "\$20",
              //                         style: TextStyle(
              //                           fontSize: 14.0,
              //                           fontWeight: FontWeight.bold,
              //                           color: Colors.blue,
              //                         ),
              //                       ),
              //                     ],
              //                   ),
              //                 ),
              //               ],
              //             ),
              //           )
              //         ],
              //       ),
              //     ),
              //   ]),
              // ),
              Text(
                "Select  Table",
                style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 12),
                child: LayoutBuilder(builder: (context, constraint) {
                  List<String> itemStringList = [
                    "Smoking Area - 16",
                    "Smoking Area - 15",
                    "Non Smoking Area - 11"
                  ];

                  return FormField(
                    initialValue: false,
                    enabled: true,
                    builder: (FormFieldState<bool> field) {
                      return InputDecorator(
                        decoration: InputDecoration(
                          errorText: field.errorText,
                        ),
                        child: DropdownButtonHideUnderline(
                          child: ButtonTheme(
                            alignedDropdown: false,
                            child: DropdownButton<String>(
                              isExpanded: true,
                              value: "Smoking Area - 16",
                              icon: Padding(
                                padding: const EdgeInsets.only(right: 10.0),
                                child: Icon(
                                  Icons.arrow_drop_down_outlined,
                                  size: 24.0,
                                  color: Theme.of(context)
                                      .textTheme
                                      .bodyLarge!
                                      .color,
                                ),
                              ),
                              iconSize: 16,
                              elevation: 16,
                              style: TextStyle(
                                fontSize: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .fontSize,
                                fontFamily: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .fontFamily,
                                color: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .color,
                              ),
                              underline: Container(
                                height: 0,
                                color: Colors.grey[300],
                              ),
                              onChanged: (String? newValue) {},
                              items: itemStringList
                                  .map<DropdownMenuItem<String>>(
                                      (String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 0.0,
                                      vertical: 0.0,
                                    ),
                                    child: Text(
                                      value,
                                    ),
                                  ),
                                );
                              }).toList(),
                            ),
                          ),
                        ),
                      );
                    },
                  );
                }),
              ),
              Text(
                "Order Summary",
                style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Column(
                          children: [
                            Text(
                              "Sub total",
                              style: TextStyle(
                                  fontSize: 14.0, color: Color(0xffb9b9b9)),
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              "Tax(10%)",
                              style: TextStyle(
                                  fontSize: 14.0, color: Color(0xffb9b9b9)),
                            ),
                          ],
                        ),
                        Spacer(),
                        Column(
                          children: [
                            Text(
                              "${controller.qty * item["price"]}K",
                              style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              "${controller.qty * item["price"] / 10}K",
                              style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Divider(),
                    Row(
                      children: [
                        Text(
                          "Total",
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Spacer(),
                        Text(
                          "${controller.qty * item["price"] + controller.qty * item["price"] / 10}k",
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(12),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Color(0xff2261ff),
          ),
          onPressed: () {},
          child: Text("Proccess Transaction",
              style: TextStyle(
                color: Colors.white,
              )),
        ),
      ),
    );
  }

  @override
  State<OrderView> createState() => OrderController();
}
