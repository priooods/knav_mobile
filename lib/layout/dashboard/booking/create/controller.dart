import 'package:knavm/layout/dashboard/booking/model/form_booking/model_form_booking.dart';
import 'package:knavm/layout/dashboard/booking/model/form_booking_detail/model_form_booking_detail.dart';
import 'package:knavm/model/callback/model_callback.dart';
import 'package:knavm/model/select/model_select.dart';

class BookingCreateController {
  BookingCreateController();

  Future<ModelCallback> requestForm() async {
    try {
      final form = [
        const ModelFormBooking(
            formTitle: "Informasi Umum",
            formDescription: "Lengkapi semua informasi yang ada dibawah ini",
            form: [
              ModelFormBookingDetail(
                label: "Vessel Name",
                placeholder: "Pilih Vessel Name",
                formType: 5,
                value: null,
                other: <ModelSelect>[
                  ModelSelect(id: 1, title: "MV ARIA JAYA SAMUDERA AA"),
                  ModelSelect(id: 2, title: "MV ARIA JAYA SAMUDERA ZZ"),
                  ModelSelect(id: 3, title: "MV ARIA JAYA SAMUDERA YY"),
                  ModelSelect(id: 4, title: "MV ARIA JAYA SAMUDERA XX"),
                ]
              )
            ]),
        const ModelFormBooking(
            formTitle: "Tambah Commodity",
            formDescription: "Klik tambah untuk menambah data",
            useModal: true,
            form: []),
      ];
      return ModelCallback.fromJson(<String, dynamic>{
        "notification": "Form Success Genenerate",
        "data": form
      });
    } catch (e) {
      rethrow;
    }
  }
}
