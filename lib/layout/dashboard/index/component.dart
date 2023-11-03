import 'package:flutter/material.dart';
import 'package:knavm/layout/dashboard/index/model/booking_children/model_booking_children.dart';
import 'package:knavm/utils/themes.dart';

class CardBooking extends StatelessWidget {
  final int id;
  final Themes themes;
  final String bookingNo;
  final String vesselName;
  final String status;
  final List<ModelBookingChildren> listmodel;
  const CardBooking(
      {super.key,
      required this.themes,
      required this.id,
      required this.bookingNo,
      required this.vesselName,
      this.status = "",
      required this.listmodel});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 1.15,
      margin: const EdgeInsets.only(left: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.lime.shade800,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(bookingNo.toUpperCase(),
                    style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w800,
                        fontSize: 16)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(vesselName.toUpperCase(),
                        style: const TextStyle(
                          fontSize: 13,
                          color: Colors.white,
                        )),
                    Text(status.toUpperCase(),
                        style: const TextStyle(
                            fontWeight: FontWeight.w800,
                            color: Colors.white))
                  ],
                )
              ],
            ),
          ),
          Container(
            padding:
                const EdgeInsets.only(left: 20, right: 20, bottom: 15, top: 10),
            decoration: BoxDecoration(
                border: Border.all(
                    color: themes.isDark ? Colors.grey.shade700 : Colors.grey.shade300),
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.elliptical(20, 10),
                    topRight: Radius.elliptical(20, 10),
                    bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
                color: themes.isDark ? Colors.grey.shade900 : Colors.white),
            child: GridView.builder(
              padding: EdgeInsets.zero,
              itemCount: listmodel.length,
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisSpacing: 1,
                  childAspectRatio: (1 / .25),
                  crossAxisCount: 2),
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      listmodel[index].title ?? "",
                      style: const TextStyle(
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    Text(
                      listmodel[index].value ?? "-",
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                          fontWeight: FontWeight.w800,
                          fontStyle: FontStyle.italic),
                    )
                  ],
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
