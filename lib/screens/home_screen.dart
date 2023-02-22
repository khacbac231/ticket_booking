import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking/screens/ticket_view.dart';

import '../utils/app_styles.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0),
            child: Column(children: [
              const Gap(40),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Good Morning",
                      style: Styles.headLineStyle3,
                    ),
                    const Gap(5),
                    Text(
                      "Booking Tickets",
                      style: Styles.headLineStyle,
                    )
                  ],
                ),
                Container(
                  width: 50.0,
                  height: 50.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/avt_home_screen.jpeg"))),
                ),
              ]),
              const Gap(25),
              Container(
                padding: const EdgeInsets.symmetric(
                    horizontal: 12.0, vertical: 12.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Color(0xFFF4F6FD)),
                child: Row(
                  children: [
                    const Icon(
                      FluentSystemIcons.ic_fluent_search_regular,
                      color: Color(0xFFBFC265),
                    ),
                    Text(
                      "Search",
                      style: Styles.headLineStyle4,
                    )
                  ],
                ),
              ),
              const Gap(40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Upcoming Flights",
                    style: Styles.headLineStyle2,
                  ),
                  InkWell(
                    onTap: () {
                      print("Tapped");
                    },
                    child: Text(
                      "View all",
                      style:
                          Styles.textStyle.copyWith(color: Styles.primaryColor),
                    ),
                  )
                ],
              )
            ]),
          ),
          const Gap(15.0),
          TicketView(),
        ],
      ),
    );
  }
}
