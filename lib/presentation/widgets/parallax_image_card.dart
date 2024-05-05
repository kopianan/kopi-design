import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:kopi_design/domain/content_data.dart';
import 'package:kopi_design/util/parallax_flow_delegate.dart';

class ParallaxImageCard extends StatelessWidget {
  ParallaxImageCard({
    super.key,
    required this.heroTag, // Added heroTag property
    required this.contentData,
  });

  final GlobalKey _imageKey = GlobalKey();
  final ContentData contentData;
  final String heroTag; // Added heroTag property

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
              blurStyle: BlurStyle.normal,
              color: const Color.fromARGB(255, 3, 3, 3).withOpacity(0.2),
              offset: const Offset(-4, 8),
              blurRadius: 10)
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Stack(
          children: [
            Flow(
              delegate: ParallaxFlowDelegate(
                scrollable: Scrollable.of(context),
                listItemContext: context,
                backgroundImageKey: _imageKey,
              ),
              children: [
                Hero(
                  tag: heroTag,
                  child: Image.asset(
                    contentData.images,
                    key: _imageKey,
                    height: double.infinity,
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ],
            ),
            const Positioned(
                right: 20,
                top: 20,
                child: CircleAvatar(
                  radius: 20,
                  backgroundColor: Color.fromARGB(255, 105, 105, 105),
                  child: Icon(
                    Icons.favorite_border,
                    color: Colors.white,
                  ),
                )),
            Positioned(
                bottom: 40,
                left: 30,
                right: 30,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(87, 55, 55, 55),
                      ),
                      height: 100,
                      child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                child: Text.rich(
                                  TextSpan(
                                      text: "${contentData.name}, ",
                                      children: [
                                        TextSpan(
                                            text: contentData.country,
                                            style: const TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.normal,
                                                color: Color(0xffCAC8C8)))
                                      ],
                                      style: const TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white)),
                                  style: const TextStyle(color: Colors.white),
                                ),
                              ),
                              Row(
                                children: [
                                  const Icon(
                                    Icons.pin_drop_outlined,
                                    color: Color(0xffCAC8C8),
                                    size: 25,
                                  ),
                                  const SizedBox(width: 10),
                                  Text(
                                    "${contentData.country}, ${contentData.city}",
                                    style: const TextStyle(
                                      fontSize: 14,
                                      color: Color(0xffCAC8C8),
                                    ),
                                  ),
                                  const Spacer(),
                                  const Icon(
                                    Icons.star_outline_rounded,
                                    color: Color(0xffCAC8C8),
                                  ),
                                  const Text(
                                    "4.8",
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Color(0xffCAC8C8),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ))),
                ))
          ],
        ),
      ),
    );
  }
}
