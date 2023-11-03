import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:knavm/components/header.dart';
import 'package:knavm/layout/dashboard/booking/create/controller.dart';
import 'package:knavm/layout/dashboard/booking/model/form_booking/model_form_booking.dart';
import 'package:knavm/model/callback/model_callback.dart';

@RoutePage()
class BookingCreateScreen extends StatefulWidget {
  final int? bookingId;
  const BookingCreateScreen({Key? key, @PathParam('id') this.bookingId})
      : super(key: key);

  @override
  State<BookingCreateScreen> createState() => _BookingCreateScreenState();
}

class _BookingCreateScreenState extends State<BookingCreateScreen> {
  final BookingCreateController _controller = BookingCreateController();
  late Future<ModelCallback> request;
  @override
  void initState() {
    super.initState();
    if (widget.bookingId == 0 || widget.bookingId == null) {
      // when new create booking
    } else {
      // when editable create booking
    }
    request = _controller.requestForm();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Create Booking"),
      ),
      body: FutureBuilder(
        future: request,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done &&
              snapshot.hasData) {
            final response = snapshot.data?.data as List<ModelFormBooking>;
            return SingleChildScrollView(
              child: Column(
                children: response
                    .map<Widget>((ModelFormBooking v) => HeaderComponent(
                        title: v.formTitle,
                        description: v.formDescription,
                        useNavigation: v.useModal ?? false, 
                        navigation: (){}
                      ))
                    .toList(),
              ),
            );
          }
          return const Column();
        },
      ),
    );
  }
}
