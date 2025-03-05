import 'package:coffee_flutter/config/colors.dart';
import 'package:coffee_flutter/config/data/coffee_model.dart';
import 'package:coffee_flutter/utils/basic_utils.dart';
import 'package:coffee_flutter/utils/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class OrderViews extends StatelessWidget {
  final CoffeeModel itemSelected;
  const OrderViews({required this.itemSelected, super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = BasicUtils.getScreenWidth(context);
    final screenHeight = BasicUtils.getScreenHeight(context);
    return Scaffold(
        body: Stack(
      children: [
        Positioned(
            top: screenHeight * 0.03,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: screenWidth * 0.1),
              alignment: Alignment.center,
              height: screenHeight * 0.1,
              width: screenWidth * 0.8,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.arrow_back_ios),
                  ),
                  CustomText.customTextBasic(
                      text: 'Order',
                      fontSize: screenWidth * 0.05,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                  SizedBox(width: screenWidth * 0.08),
                ],
              ),
            )),
        Positioned(
          top: screenHeight * 0.12,
          child: Container(
            width: screenWidth * 0.8,
            height: screenHeight * 0.05,
            padding: EdgeInsets.symmetric(
                horizontal: screenWidth * 0.007,
                vertical: screenHeight * 0.003),
            decoration: BoxDecoration(
              color: grey.withOpacity(0.2),
              borderRadius: BorderRadius.circular(10),
            ),
            margin: EdgeInsets.symmetric(horizontal: screenWidth * 0.1),
            child: Row(
              children: [
                InkWell(
                  child: Container(
                    width: screenWidth * 0.39,
                    height: screenHeight * 0.08,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: CustomText.customTextBasic(
                        text: 'Deliver',
                        fontSize: screenWidth * 0.04,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                InkWell(
                  child: Container(
                    width: screenWidth * 0.39,
                    alignment: Alignment.center,
                    child: CustomText.customTextBasic(
                        text: 'Pick Up',
                        fontSize: screenWidth * 0.04,
                        color: Colors.black),
                  ),
                )
              ],
            ),
          ),
        ),
        Positioned(
            top: screenHeight * 0.2,
            child: Container(
              padding: EdgeInsets.only(bottom: screenHeight * 0.02),
              width: screenWidth * 0.8,
              height: screenHeight * 0.14,
              decoration: BoxDecoration(
                border: Border(bottom: BorderSide(color: grey)),
              ),
              margin: EdgeInsets.symmetric(horizontal: screenWidth * 0.1),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText.customTextBasic(
                      text: 'Delivery Address',
                      fontSize: screenWidth * 0.04,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                  CustomText.customTextBasic(
                      text: 'Théo DEGREMONT',
                      fontSize: screenWidth * 0.035,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                  CustomText.customTextBasic(
                      text: '134 rue Paul Langevin, 76770, HOUPPEVILLE',
                      fontSize: screenWidth * 0.03,
                      color: grey),
                  Row(
                    children: [
                      InkWell(
                        child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: screenWidth * 0.03),
                            height: screenHeight * 0.03,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              border: Border.all(color: grey),
                            ),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.location_on,
                                  size: screenHeight * 0.02,
                                ),
                                CustomText.customTextBasic(
                                    text: 'Edit Address',
                                    fontSize: screenWidth * 0.03,
                                    color: Colors.black),
                              ],
                            )),
                      ),
                      SizedBox(width: screenWidth * 0.02),
                      InkWell(
                        child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: screenWidth * 0.03),
                            height: screenHeight * 0.03,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              border: Border.all(color: grey),
                            ),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.text_snippet_outlined,
                                  size: screenHeight * 0.02,
                                ),
                                CustomText.customTextBasic(
                                    text: 'Add Note',
                                    fontSize: screenWidth * 0.03,
                                    color: Colors.black),
                              ],
                            )),
                      ),
                    ],
                  )
                ],
              ),
            )),
        Positioned(
          top: screenHeight * 0.35,
          child: Container(
            padding: EdgeInsets.only(
                bottom: screenHeight * 0.01, top: screenHeight * 0.01),
            margin: EdgeInsets.symmetric(horizontal: screenWidth * 0.1),
            width: screenWidth * 0.8,
            height: screenHeight * 0.09,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: screenWidth * 0.15,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: AssetImage(itemSelected.imagePath),
                        fit: BoxFit.cover),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomText.customTextBasic(
                        text: itemSelected.name,
                        fontSize: screenWidth * 0.04,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                    CustomText.customTextBasic(
                        text: 'with ...',
                        fontSize: screenWidth * 0.035,
                        color: grey)
                  ],
                ),
                SizedBox(
                  width: screenWidth * 0.3,
                  child: Row(
                    children: [
                      InkWell(
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: screenWidth * 0.021),
                          height: screenHeight * 0.043,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(color: grey),
                          ),
                          child: Icon(Icons.remove, size: screenHeight * 0.02),
                        ),
                      ),
                      Container(
                        width: screenWidth * 0.1,
                        height: screenHeight * 0.05,
                        alignment: Alignment.center,
                        child: CustomText.customTextBasic(
                            text: '1',
                            fontSize: screenWidth * 0.05,
                            color: Colors.black),
                      ),
                      InkWell(
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: screenWidth * 0.017),
                          height: screenHeight * 0.043,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(color: grey),
                          ),
                          child: Icon(Icons.add, size: screenHeight * 0.025),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        Positioned(
            top: screenHeight * 0.45,
            child: Container(
              width: screenWidth,
              height: screenHeight * 0.002,
              decoration: BoxDecoration(color: grey),
            )),
        Positioned(
            top: screenHeight * 0.48,
            child: InkWell(
                child: Container(
              padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.04),
              margin: EdgeInsets.symmetric(horizontal: screenWidth * 0.1),
              width: screenWidth * 0.8,
              height: screenHeight * 0.07,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: grey),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset('assets/images/discount_icon.png'),
                  SizedBox(
                    width: screenWidth * 0.55,
                    child: CustomText.customTextBasic(
                        text: '1 Discount is applied',
                        color: Colors.black,
                        fontSize: screenWidth * 0.035,
                        fontWeight: FontWeight.bold),
                  ),
                  Icon(Icons.arrow_forward_ios, size: screenHeight * 0.02),
                ],
              ),
            ))),
        Positioned(
            top: screenHeight * 0.57,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: screenWidth * 0.1),
              width: screenWidth * 0.8,
              height: screenHeight * 0.14,
              //padding: EdgeInsets.only(bottom: screenHeight * 0.02),
              // decoration: BoxDecoration(
              //   border: Border(bottom: BorderSide(color: grey)),
              // ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText.customTextBasic(
                      text: 'Payment Summary',
                      fontSize: screenWidth * 0.04,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomText.customTextBasic(
                          text: 'Price',
                          fontSize: screenWidth * 0.035,
                          color: Colors.black),
                      CustomText.customTextBasic(
                          text: '\$ ${itemSelected.price}',
                          fontSize: screenWidth * 0.035,
                          color: Colors.black),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomText.customTextBasic(
                          text: 'Delivery free',
                          fontSize: screenWidth * 0.035,
                          color: Colors.black),
                      CustomText.customTextBasic(
                          text: '\$ 1.0',
                          fontSize: screenWidth * 0.035,
                          color: Colors.black),
                    ],
                  ),
                  Container(
                    width: screenWidth * 0.8,
                    height: screenHeight * 0.001,
                    decoration: BoxDecoration(color: grey),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomText.customTextBasic(
                          text: 'Total Payment',
                          fontSize: screenWidth * 0.035,
                          color: Colors.black),
                      CustomText.customTextBasic(
                          text: '\$ ${itemSelected.price + 1.0}',
                          fontSize: screenWidth * 0.035,
                          color: Colors.black),
                    ],
                  ),
                ],
              ),
            )),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            padding: EdgeInsets.only(
                left: screenWidth * 0.1,
                right: screenWidth * 0.1,
                top: screenHeight * 0.02,
                bottom: screenHeight * 0.1),
            height: screenHeight * 0.25,
            decoration: BoxDecoration(
              color: primaryColor.withOpacity(0.1),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20)),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset('assets/images/money_icon.png'),
                    SizedBox(width: screenWidth * 0.02),
                    Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: grey.withOpacity(0.3),
                        ),
                        width: screenWidth * 0.3,
                        height: screenHeight * 0.03,
                        child: Row(
                          children: [
                            InkWell(
                              child: Container(
                                width: screenWidth * 0.15,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: primaryColor,
                                ),
                                child: CustomText.customTextBasic(
                                    text: 'Cash',
                                    fontSize: screenWidth * 0.03,
                                    color: Colors.white),
                              ),
                            ),
                            InkWell(
                              child: Container(
                                alignment: Alignment.center,
                                width: screenWidth * 0.15,
                                child: CustomText.customTextBasic(
                                    text: '\$ ${itemSelected.price + 1.0}',
                                    fontSize: screenWidth * 0.03,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            )
                          ],
                        )),
                  ],
                ),
                InkWell(
                  child: Container(
                    alignment: Alignment.center,
                    width: screenWidth * 0.8,
                    height: screenHeight * 0.07,
                    decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: CustomText.customTextBasic(
                        text: 'Order',
                        fontSize: screenWidth * 0.05,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ),
        )
      ],
    ));
  }
}
