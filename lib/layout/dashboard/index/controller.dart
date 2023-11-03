import 'package:knavm/layout/dashboard/index/model/booking/model_booking.dart';
import 'package:knavm/layout/dashboard/index/model/booking_children/model_booking_children.dart';
import 'package:knavm/layout/dashboard/index/model/menu/model_menu.dart';
import 'package:knavm/model/callback/model_callback.dart';

class DashboardController {
  DashboardController();

  Future<ModelCallback> requestMenu() async {
    try {
      final menus = [
        const ModelMenu(
            router: "/booking/create",
            id: 1,
            title: "New Booking",
            icon: "assets/image/ic_new.svg"),
        const ModelMenu(
            router: "/booking",
            id: 2,
            title: "Booking History",
            icon: "assets/image/ic_menu.svg"),
        const ModelMenu(
            router: "/booking",
            id: 3,
            title: "Tracking Vessel",
            icon: "assets/image/ic_tracking.svg"),
        const ModelMenu(
            router: "/booking",
            id: 4,
            title: "Down Payment",
            icon: "assets/image/ic_menu.svg"),
        const ModelMenu(
            router: "/booking",
            id: 5,
            title: "Payment",
            icon: "assets/image/ic_wallet.svg"),
        const ModelMenu(
            router: "/booking",
            id: 6,
            title: "Payment History",
            icon: "assets/image/ic_payment.svg"),
      ]; // inside my request;
      final bookingHistory = [
        const ModelBooking(
          id: 1,
          bookingNo: "BOK-23D42",
          vesselName: "MV-SAMUDRA ATLANTIC",
          status: "COMPLETED",
          other: [
            ModelBookingChildren(
              title: "Estimate arrival", value: "24 Januari 2023"),
            ModelBookingChildren(
              title: "Estimate Arrival", value: "24 Januari 2023"),
            ModelBookingChildren(
              title: "Estimate Departure", value: "30 February 2023"),
            ModelBookingChildren(
              title: "DP Status", value: "Dibayarkan"),
            ModelBookingChildren(
              title: "Invoice Status", value: "Success"),
            ModelBookingChildren(
              title: "Estimate arrival", value: "24 Januari 2023"),
            ModelBookingChildren(
              title: "Estimate arrival", value: "24 Januari 2023"),
          ],
        ),
        const ModelBooking(
          id: 1,
          bookingNo: "BOK-23D42",
          vesselName: "MV-SAMUDRA ATLANTIC",
          status: "COMPLETED",
          other: [
            ModelBookingChildren(
              title: "Estimate arrival", value: "24 Januari 2023"),
            ModelBookingChildren(
              title: "Estimate Arrival", value: "24 Januari 2023"),
            ModelBookingChildren(
              title: "Estimate Departure", value: "30 February 2023"),
            ModelBookingChildren(
              title: "DP Status", value: "Dibayarkan"),
            ModelBookingChildren(
              title: "Invoice Status", value: "Success"),
            ModelBookingChildren(
              title: "Estimate arrival", value: "24 Januari 2023"),
            ModelBookingChildren(
              title: "Estimate arrival", value: "24 Januari 2023"),
          ],
        ),
      ];
      return ModelCallback.fromJson(<String, dynamic>{
        "message": "DAHSBOARD",
        "notification": null,
        "data": {
          "menu": menus,
          "booking": bookingHistory
        }
      });
    } catch (e) {
      rethrow;
    }
  }
}
