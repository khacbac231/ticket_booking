import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking/utils/app_layout.dart';
import 'package:ticket_booking/widgets/thick_container.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import '../utils/app_styles.dart';

class TicketView extends StatelessWidget {
  const TicketView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width,
      height: 200,
      child: Container(
        margin: const EdgeInsets.only(left: 16.0),
        child: Column(
          children: [
            /*Show blue part of the ticket card*/
            Container(
              decoration: const BoxDecoration(
                  color: Color(0xFF526799),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(21),
                      topRight: Radius.circular(21))),
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "NYC",
                        style:
                            Styles.headLineStyle3.copyWith(color: Colors.white),
                      ),
                      const Spacer(), // equal to Expanded(child: Container())
                      const ThickContainer(),
                      Expanded(
                          child: Stack(alignment: Alignment.center, children: [
                        SizedBox(
                          child: LayoutBuilder(
                            builder: (BuildContext context,
                                BoxConstraints constraints) {
                              return Flex(
                                direction: Axis.horizontal,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                mainAxisSize: MainAxisSize.max,
                                children: List.generate(
                                    (constraints.constrainWidth() / 6).floor(),
                                    (index) => const SizedBox(
                                          width: 3.0,
                                          height: 1.0,
                                          child: DecoratedBox(
                                            decoration: BoxDecoration(
                                                color: Colors.white),
                                          ),
                                        )),
                              );
                            },
                          ),
                        ),
                        Center(
                            child: Transform.rotate(
                                angle: 1.5,
                                child: const Icon(
                                  Icons.local_airport_rounded,
                                  color: Colors.white,
                                ))),
                      ])),
                      const ThickContainer(),
                      const Spacer(), // equal to Expanded(child: Container())
                      Text(
                        "LDN",
                        style:
                            Styles.headLineStyle3.copyWith(color: Colors.white),
                      )
                    ],
                  ),
                  const Gap(3),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 100.0,
                        child: Text(
                          "New-York",
                          style: Styles.headLineStyle4
                              .copyWith(color: Colors.white),
                        ),
                      ),
                      Text(
                        "8h 30m",
                        style:
                            Styles.headLineStyle4.copyWith(color: Colors.white),
                      ),
                      SizedBox(
                        width: 100.0,
                        child: Text(
                          "London",
                          style: Styles.headLineStyle4
                              .copyWith(color: Colors.white),
                          textAlign: TextAlign.end,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            /*Show red middle part of the ticket card*/
            Container(
              color: Styles.orangeColor,
              child: Row(
                children: [
                  SizedBox(
                    width: 10.0,
                    height: 20.0,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          color: Styles.bgColor,
                          borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(10),
                              bottomRight: Radius.circular(10.0))),
                    ),
                  ),
                  Expanded(
                      child: Container(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: LayoutBuilder(builder:
                          (BuildContext context, BoxConstraints constraints) {
                        return Flex(
                          direction: Axis.horizontal,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: List.generate(
                              ((constraints.constrainWidth() / 15).floor()),
                              (index) => const SizedBox(
                                    width: 4.0,
                                    height: 1.0,
                                    child: DecoratedBox(
                                      decoration:
                                          BoxDecoration(color: Colors.white),
                                    ),
                                  )),
                        );
                      }),
                    ),
                  )),
                  SizedBox(
                    width: 10.0,
                    height: 20.0,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          color: Styles.bgColor,
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(10.0),
                              bottomLeft: Radius.circular(10.0))),
                    ),
                  )
                ],
              ),
            ),
            /*Show red part of the ticket card*/
            Container(
              decoration: BoxDecoration(
                  color: Styles.orangeColor,
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(21.0),
                      bottomRight: Radius.circular(21.0))),
              padding: const EdgeInsets.only(
                  bottom: 16.0, top: 10.0, left: 16.0, right: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("1 May",
                          style: Styles.headLineStyle3
                              .copyWith(color: Colors.white)),
                      const Gap(5.0),
                      Text(
                        "Date",
                        style:
                            Styles.headLineStyle3.copyWith(color: Colors.white),
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("08:00 AM",
                          style: Styles.headLineStyle3
                              .copyWith(color: Colors.white)),
                      const Gap(5.0),
                      Text(
                        "Departure time",
                        style:
                            Styles.headLineStyle3.copyWith(color: Colors.white),
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text("23",
                          style: Styles.headLineStyle3
                              .copyWith(color: Colors.white)),
                      const Gap(5.0),
                      Text(
                        "Number",
                        style:
                            Styles.headLineStyle3.copyWith(color: Colors.white),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
