import 'package:coffee_flutter/config/colors.dart';
import 'package:coffee_flutter/config/data/coffee_model.dart';
import 'package:coffee_flutter/modules/order/views/order_views.dart';
import 'package:coffee_flutter/utils/basic_utils.dart';
import 'package:coffee_flutter/utils/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class DetailItemView extends StatelessWidget {
  final CoffeeModel itemSelected;
  const DetailItemView({super.key, required this.itemSelected});

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
                        text: 'Detail',
                        fontSize: screenWidth * 0.05,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                    Icon(Icons.favorite_border)
                  ],
                ),
              )),
          Positioned(
            top: screenHeight * 0.12,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: screenWidth * 0.1),
              height: screenHeight * 0.25,
              width: screenWidth * 0.8,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                    image: Image.asset(itemSelected.imagePath).image,
                    fit: BoxFit.cover),
              ),
            ),
          ),
          Positioned(
              top: screenHeight * 0.37,
              child: Container(
                decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(color: grey)),
                ),
                padding: EdgeInsets.symmetric(vertical: screenHeight * 0.01),
                margin: EdgeInsets.symmetric(horizontal: screenWidth * 0.1),
                height: screenHeight * 0.16,
                width: screenWidth * 0.8,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText.customTextBasic(
                        text: itemSelected.name,
                        fontSize: screenWidth * 0.06,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                    CustomText.customTextBasic(
                      text: 'with ...',
                      fontSize: screenWidth * 0.045,
                      color: grey,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: screenWidth * 0.3,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(Icons.star_rounded,
                                  color: Colors.yellow,
                                  size: screenWidth * 0.08),
                              CustomText.customTextBasic(
                                  text: '${itemSelected.note}',
                                  fontSize: screenWidth * 0.05,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                              SizedBox(
                                width: screenWidth * 0.02,
                              ),
                              CustomText.customTextBasic(
                                  text: '(230)',
                                  fontSize: screenWidth * 0.04,
                                  color: grey),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: screenWidth * 0.3,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset('assets/images/icon_coffee.png',
                                  width: screenWidth * 0.15),
                              Image.asset('assets/images/icon_milk.png',
                                  width: screenWidth * 0.15),
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              )),
          Positioned(
              top: screenHeight * 0.55,
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: screenWidth * 0.1),
                height: screenHeight * 0.18,
                width: screenWidth * 0.8,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText.customTextBasic(
                        text: 'Description',
                        fontSize: screenWidth * 0.05,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                    CustomText.customTextBasic(
                      text: itemSelected.description,
                      fontSize: screenWidth * 0.04,
                      color: grey,
                    ),
                  ],
                ),
              )),
          Positioned(
            top: screenHeight * 0.75,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: screenWidth * 0.1),
              height: screenHeight * 0.15,
              width: screenWidth * 0.8,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText.customTextBasic(
                      text: 'Size',
                      fontSize: screenWidth * 0.05,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Container(
                          height: screenHeight * 0.05,
                          width: screenWidth * 0.25,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: grey)),
                          child: Center(
                            child: CustomText.customTextBasic(
                                text: 'S',
                                fontSize: screenWidth * 0.05,
                                color: Colors.black),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          height: screenHeight * 0.05,
                          width: screenWidth * 0.25,
                          decoration: BoxDecoration(
                              color: primaryColor.withOpacity(0.1),
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: primaryColor)),
                          child: Center(
                            child: CustomText.customTextBasic(
                                text: 'M',
                                fontSize: screenWidth * 0.05,
                                color: primaryColor),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          height: screenHeight * 0.05,
                          width: screenWidth * 0.25,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: grey)),
                          child: Center(
                            child: CustomText.customTextBasic(
                                text: 'L',
                                fontSize: screenWidth * 0.05,
                                color: const Color.fromRGBO(0, 0, 0, 1)),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: screenHeight * 0.15,
              width: screenWidth,
              padding: EdgeInsets.only(
                  left: screenWidth * 0.1,
                  top: screenHeight * 0.02,
                  bottom: screenHeight * 0.04,
                  right: screenWidth * 0.1),
              decoration: BoxDecoration(
                color: primaryColor.withOpacity(0.1),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomText.customTextBasic(
                          text: 'Price',
                          fontSize: screenWidth * 0.05,
                          color: grey),
                      CustomText.customTextBasic(
                          text: '${itemSelected.price}',
                          fontSize: screenWidth * 0.05,
                          color: primaryColor,
                          fontWeight: FontWeight.bold),
                    ],
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => OrderViews()));
                    },
                    child: Container(
                      height: screenHeight * 0.08,
                      width: screenWidth * 0.55,
                      decoration: BoxDecoration(
                          color: primaryColor,
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: primaryColor, width: 2)),
                      child: Center(
                        child: CustomText.customTextBasic(
                            text: 'Buy now',
                            fontSize: screenWidth * 0.05,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
