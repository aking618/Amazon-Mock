import 'package:amazon_mock/models/product_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductDisplay extends StatelessWidget {
  final Product product;
  const ProductDisplay({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8.0),
      height: 200,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey,
          width: 0.5,
        ),
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 2,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey[350],
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              padding: const EdgeInsets.all(6.0),
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    product.name,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    product.quantity,
                    style: const TextStyle(
                      fontSize: 12.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    children: [
                      ...List.generate(
                          5,
                          (index) => index > product.rating - 1
                              ? const Icon(Icons.star_border)
                              : Icon(
                                  Icons.star,
                                  color: Colors.amber[700],
                                )),
                      Text(
                        _getFormattedReviews(),
                        style: const TextStyle(
                          color: Colors.grey,
                          fontSize: 12.0,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "\$${product.price.toStringAsFixed(2)}",
                    style: const TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      product.prime
                          ? Expanded(
                              child:
                                  Image.asset('assets/images/amazon-prime.png'),
                            )
                          : Container(),
                      RichText(
                        text: TextSpan(
                          text: product.deliveryType,
                          style: const TextStyle(
                            fontWeight: FontWeight.w400,
                            color: Colors.grey,
                          ),
                          children: <TextSpan>[
                            const TextSpan(text: " "),
                            TextSpan(
                              text: product.deliveryDate,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.grey[700],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  String _getFormattedReviews() {
    String formattedReviews = product.reviewCount.toString();
    for (int i = formattedReviews.length - 3; i > 0; i -= 3) {
      formattedReviews = formattedReviews.substring(0, i) +
          ',' +
          formattedReviews.substring(i);
    }

    return formattedReviews;
  }
}
