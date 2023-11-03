import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:knavm/components/header.dart';
import 'package:knavm/layout/dashboard/index/component.dart';
import 'package:knavm/layout/dashboard/index/controller.dart';
import 'package:knavm/layout/dashboard/index/model/booking/model_booking.dart';
import 'package:knavm/model/callback/model_callback.dart';
import 'package:knavm/router/initial.dart';
import 'package:knavm/utils/themes.dart';
import 'package:knavm/utils/variable_color.dart';
import 'package:provider/provider.dart';

@RoutePage()
class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  final DashboardController _controller = DashboardController();
  late Future<ModelCallback> request;

  @override
  void initState() {
    super.initState();
    request = _controller.requestMenu();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Consumer<Themes>(builder: (context, themes, child) {
      return FutureBuilder(
          future: request,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done &&
                snapshot.hasData) {
              return SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.blue.shade900,
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.elliptical(40, 20),
                          bottomRight: Radius.elliptical(40, 20)
                        )
                      ),
                      padding: const EdgeInsets.only(
                          top: 40, bottom: 60, left: 20, right: 20),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Selamat Siang,",
                                      style: TextStyle(
                                          fontSize: 16, color: Colors.white)),
                                  SizedBox(height: 6),
                                  Text("Jefri Valentino Calibri",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 24,
                                          color: Colors.white)),
                                  Text("1DE345-2023/RE",
                                      style: TextStyle(
                                          fontSize: 16, color: Colors.white)),
                                  SizedBox(height: 6),
                                  Text("Another information",
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontStyle: FontStyle.italic,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.white)),
                                ],
                              ),
                              Row(
                                children: [
                                  InkWell(
                                    onTap: () {
                                      themes.changeTheme();
                                    },
                                    child: themes.isDark
                                        ? const Icon(
                                            CupertinoIcons.sun_max_fill,
                                            size: 27.0,
                                            color: Colors.yellow)
                                        : const Icon(CupertinoIcons.moon_fill,
                                            size: 27.0, color: Colors.white),
                                  ),
                                  const SizedBox(width: 15),
                                  InkWell(
                                    onTap: () {},
                                    child: const Icon(
                                        CupertinoIcons.profile_circled,
                                        size: 27.0,
                                        color: Colors.white),
                                  )
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    Transform.translate(
                      offset: const Offset(0, -30),
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          margin: const EdgeInsets.symmetric(horizontal: 20),
                          padding: const EdgeInsets.only(
                              left: 15, top: 18, bottom: 18),
                          decoration: BoxDecoration(
                              color: themes.isDark
                                  ? Colors.grey.shade900
                                  : Colors.white,
                              border:
                                  Border.all(width: 0.5, color: Colors.grey),
                              borderRadius: BorderRadius.circular(30)),
                          child: const Text("Mulai Cari Apapun ..."),
                        ),
                      ),
                    ),
                    Transform.translate(
                      offset: const Offset(0, -10),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 20, right: 20, bottom: 20),
                        child: GridView.builder(
                          padding: EdgeInsets.zero,
                          itemCount: snapshot.data?.data?['menu'].length,
                          shrinkWrap: true,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisSpacing: 5,
                                  mainAxisSpacing: 5,
                                  childAspectRatio: (1 / .9),
                                  crossAxisCount: 4),
                          physics: const NeverScrollableScrollPhysics(),
                          itemBuilder: (context, index) {
                            return InkWell(
                              onTap: () {
                                AutoRouter.of(context)
                                    .navigate(BookingCreateRoute());
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  color: themes.isDark
                                      ? Colors.grey.shade900.withOpacity(0.4)
                                      : null,
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(10)),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CachedNetworkImage(
                                      fit: BoxFit.fill,
                                      imageUrl: snapshot.data
                                              ?.data?['menu'][index].icon ??
                                          "",
                                      imageBuilder: (context, imageProvider) =>
                                          CircleAvatar(
                                        radius: 20,
                                        backgroundImage: imageProvider,
                                      ),
                                      placeholder: (context, url) =>
                                          const Padding(
                                        padding: EdgeInsets.all(2.0),
                                        child: SizedBox(
                                            width: 20,
                                            height: 20,
                                            child: CircularProgressIndicator()),
                                      ),
                                      errorWidget: (context, url, error) =>
                                          SvgPicture.asset(
                                        snapshot.data?.data?['menu'][index]
                                                .icon ??
                                            '',
                                        semanticsLabel: 'Logo $index',
                                        width: 35.0,
                                        height: 35.0,
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                    Text(
                                      snapshot.data?.data?['menu'][index]
                                              .title ??
                                          '',
                                      style: const TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 12),
                                      textAlign: TextAlign.center,
                                    )
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                    Container(
                        height: 12,
                        color: themes.isDark
                            ? VariableColors().darkSecondary
                            : VariableColors().lightSecondary),
                    HeaderComponent(
                        title: "Booking Terakhir",
                        description: "Liat semua booking terbaru anda",
                        useNavigation: true, navigation: (){},),
                    const SizedBox(height: 20),
                    Flexible(
                        child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: snapshot.data?.data?['booking']
                            .map<Widget>((ModelBooking e) => CardBooking(
                                  themes: themes,
                                  id: e.id ?? 0,
                                  bookingNo: e.bookingNo ?? '',
                                  vesselName: e.vesselName ?? "",
                                  status: e.status ?? "",
                                  listmodel: e.other ?? [],
                                ))
                            .toList(),
                      ),
                    )),
                    const SizedBox(height: 20),
                    const HeaderComponent(title: "Tracking", description: "Cari vessel anda sekarang dimana", useNavigation: false),
                    const SizedBox(height: 20),
                    // CardBooking(listmodel: snapshot.data?.data['booking'])
                  ],
                ),
              );
            }
            return const SizedBox();
          });
    }));
  }
}
