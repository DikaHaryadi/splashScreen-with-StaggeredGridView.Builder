import 'package:animate_do/animate_do.dart';
import 'package:donorindonesia/utility/onboarding_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_grid_view.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_tile.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  ScrollController scrollController = ScrollController();
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 1), () {
      scrollController.animateTo(scrollController.position.maxScrollExtent,
          duration: Duration(seconds: assetsGambar.length * 10),
          curve: Curves.linear);
    });
  }

  @override
  void dispose() {
    super.dispose();
    scrollController.dispose();
  }

  List<String> assetsGambar = [
    'https://liputankawanua.com/wp-content/uploads/2022/11/udd_pmi_tomohon_syerly_adelyn_sompotan.jpeg',
    'https://img.beritasatu.com/cache/beritasatu/910x580-2/1612440629.jpg',
    'https://th.bing.com/th/id/OIP.-OCJCBEtpmLNBErW3zKHswHaE8?pid=ImgDet&rs=1',
    'https://pmi.or.id/wp-content/uploads/2020/11/WhatsApp-Image-2020-10-31-at-22.39.25.jpeg',
    'https://netstorage-kami.akamaized.net/images/9ed1aa92268be170.jpg?imwidth=900',
    'https://i.ytimg.com/vi/e-i8mP_k9eM/maxresdefault.jpg',
    'https://ppi.pmi.or.id/wp-content/uploads/2021/12/Picture15-768x683.png',
    'https://liputankawanua.com/wp-content/uploads/2022/11/udd_pmi_tomohon_syerly_adelyn_sompotan.jpeg',
    'https://img.beritasatu.com/cache/beritasatu/910x580-2/1612440629.jpg',
    'https://th.bing.com/th/id/OIP.-OCJCBEtpmLNBErW3zKHswHaE8?pid=ImgDet&rs=1',
    'https://pmi.or.id/wp-content/uploads/2020/11/WhatsApp-Image-2020-10-31-at-22.39.25.jpeg',
    'https://netstorage-kami.akamaized.net/images/9ed1aa92268be170.jpg?imwidth=900',
    'https://i.ytimg.com/vi/e-i8mP_k9eM/maxresdefault.jpg',
    'https://ppi.pmi.or.id/wp-content/uploads/2021/12/Picture15-768x683.png',
    'https://liputankawanua.com/wp-content/uploads/2022/11/udd_pmi_tomohon_syerly_adelyn_sompotan.jpeg',
    'https://img.beritasatu.com/cache/beritasatu/910x580-2/1612440629.jpg',
    'https://th.bing.com/th/id/OIP.-OCJCBEtpmLNBErW3zKHswHaE8?pid=ImgDet&rs=1',
    'https://pmi.or.id/wp-content/uploads/2020/11/WhatsApp-Image-2020-10-31-at-22.39.25.jpeg',
    'https://netstorage-kami.akamaized.net/images/9ed1aa92268be170.jpg?imwidth=900',
    'https://i.ytimg.com/vi/e-i8mP_k9eM/maxresdefault.jpg',
    'https://ppi.pmi.or.id/wp-content/uploads/2021/12/Picture15-768x683.png',
  ];
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SizedBox(
          width: size.width,
          height: size.height,
          child: Stack(
            children: [
              SizedBox(
                  width: size.width,
                  height: size.height,
                  child: Stack(
                    children: [
                      StaggeredGridView.countBuilder(
                        controller: scrollController,
                        crossAxisCount: 4,
                        itemCount: assetsGambar.length,
                        itemBuilder: (context, index) {
                          return Image(
                            image: NetworkImage(assetsGambar[index]),
                            fit: BoxFit.cover,
                          );
                        },
                        staggeredTileBuilder: (index) =>
                            StaggeredTile.count(2, index.isEven ? 4 : 2),
                      ),
                      Positioned(
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: Container(
                          width: size.width,
                          height: size.height,
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                Colors.black.withOpacity(0),
                                Colors.black.withOpacity(0),
                                Colors.black.withOpacity(0),
                                Colors.black.withOpacity(0.9),
                                Colors.black.withOpacity(1),
                              ])),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: size.width * 0.02),
                                child: FadeInUp(
                                  child: Text(
                                    "Unit Donor Darah Pusat\nPalang Merah Indonesia\nJakarta Selatan",
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.actor(
                                      color: Colors.white,
                                      fontSize: 28,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: size.height * 0.0025,
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.pushReplacement(
                                    context,
                                    CupertinoPageRoute(
                                      builder: (ctx) => const OnBoardingPage(),
                                    ),
                                  );
                                },
                                child: FadeInUp(
                                  delay: const Duration(milliseconds: 500),
                                  child: CircleAvatar(
                                    radius: 35.r,
                                    backgroundColor: Colors.transparent,
                                    backgroundImage: const AssetImage(
                                        "assets/images/logopmi.png"),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: size.height * 0.0025,
                              ),
                              FadeInUp(
                                delay: const Duration(milliseconds: 700),
                                child: Text(
                                  "Setetes Darah Anda Menyelamatkan Mereka",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.actor(
                                      color: Colors.white, fontSize: 17),
                                ),
                              ),
                              FadeInUp(
                                delay: const Duration(milliseconds: 900),
                                child: Text(
                                  "-Klik Logo Untuk Melanjutkan-",
                                  style: GoogleFonts.actor(
                                      color: Colors.grey, fontSize: 15),
                                ),
                              ),
                              SizedBox(
                                height: size.height * 0.03,
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ))
            ],
          )),
    );
  }
}
