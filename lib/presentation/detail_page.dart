import 'dart:async';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_tilt/flutter_tilt.dart';
import 'package:kopi_design/domain/content_data.dart';
import 'package:sensors_plus/sensors_plus.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key, required this.heroTag, required this.content});
  final String heroTag;
  final ContentData content;

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Tilt(
                tiltConfig: const TiltConfig(enableGestureSensors: true),
                lightConfig: const LightConfig(disable: true),
                child: Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: SizedBox(
                    width: double.infinity,
                    height: 500,
                    child: Stack(
                      children: [
                        TiltParallax(
                          filterQuality: FilterQuality.low,
                          child: Hero(
                            tag: widget.heroTag,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                widget.content.images,
                                fit: BoxFit.cover,
                                height: double.infinity,
                                width: double.infinity,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 20,
                          right: 20,
                          left: 20,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CircleAvatar(
                                radius: 20,
                                backgroundColor:
                                    const Color.fromARGB(255, 105, 105, 105),
                                child: IconButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  icon: const Icon(
                                    CupertinoIcons.back,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              const CircleAvatar(
                                radius: 20,
                                backgroundColor:
                                    Color.fromARGB(255, 105, 105, 105),
                                child: Icon(
                                  CupertinoIcons.tray,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                            bottom: 40,
                            left: 30,
                            right: 30,
                            child: TiltParallax(
                              size: const Offset(-10.0, -10.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20),
                                    decoration: const BoxDecoration(
                                      color: Color.fromARGB(87, 55, 55, 55),
                                    ),
                                    height: 100,
                                    child: BackdropFilter(
                                      filter: ImageFilter.blur(
                                          sigmaX: 20, sigmaY: 20),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(widget.content.name,
                                                  style: const TextStyle(
                                                      fontSize: 25,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.white)),
                                              const SizedBox(height: 5),
                                              Row(
                                                children: [
                                                  const Icon(
                                                    Icons.pin_drop_outlined,
                                                    color: Color(0xffCAC8C8),
                                                    size: 25,
                                                  ),
                                                  const SizedBox(width: 10),
                                                  Text(
                                                    "${widget.content.country}, ${widget.content.city}",
                                                    style: const TextStyle(
                                                      fontSize: 15,
                                                      color: Color(0xffCAC8C8),
                                                    ),
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
                                          const Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                "Price",
                                                style: TextStyle(
                                                  fontSize: 15,
                                                  color: Color(0xffCAC8C8),
                                                ),
                                              ),
                                              SizedBox(height: 5),
                                              Text.rich(TextSpan(
                                                  text: "\$",
                                                  style: TextStyle(
                                                      fontSize: 18,
                                                      color: Color.fromARGB(
                                                          255, 131, 131, 131)),
                                                  children: [
                                                    TextSpan(
                                                        text: "230",
                                                        style: TextStyle(
                                                            fontSize: 22,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            color: Color(
                                                                0xffCAC8C8)))
                                                  ]))
                                            ],
                                          )
                                        ],
                                      ),
                                    )),
                              ),
                            ))
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    const Row(
                      children: [
                        Text(
                          "Overview",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        SizedBox(width: 40),
                        Text(
                          "Details",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color: Colors.grey),
                        ),
                      ],
                    ),
                    const SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const DetailsMenuItem(
                          icon: Icons.access_time_filled,
                          label: "8 hours",
                        ),
                        const DetailsMenuItem(
                          icon: Icons.cloud,
                          label: "16 °C",
                        ),
                        DetailsMenuItem(
                          icon: Icons.star_rate_rounded,
                          label: widget.content.rate,
                        ),
                      ],
                    ),
                    const SizedBox(height: 30),
                    const Text(
                      "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of de Finibus Bonorum et Malorum (The Extremes of Good and Evil) by Cicero, written in 45 BC. ",
                      maxLines: 5,
                      textAlign: TextAlign.justify,
                      softWrap: true,
                      overflow: TextOverflow.fade,
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                    const SizedBox(height: 30),
                    SizedBox(
                      width: double.infinity,
                      height: 60,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xff1B1B1B),
                            foregroundColor: Colors.white,
                            textStyle: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                            shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15)))),
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Text("Book Now"),
                            const SizedBox(width: 15),
                            Transform.rotate(
                              angle: -7,
                              child: const Icon(Icons.send_rounded),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class DetailsMenuItem extends StatelessWidget {
  const DetailsMenuItem({super.key, required this.label, required this.icon});

  final String label;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 35,
          height: 35,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: const Color(0xffEDEDED),
          ),
          child: Icon(
            icon,
            size: 20,
          ),
        ),
        const SizedBox(width: 5),
        Text(
          label,
          style: const TextStyle(color: Color(0xff7E7E7E), fontSize: 16),
        )
      ],
    );
  }
}
