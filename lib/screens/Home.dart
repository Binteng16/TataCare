import 'package:flutter/material.dart';
import 'package:hospital/screens/SeeAll.dart';
import 'package:hospital/res/lists.dart';
import 'package:hospital/widgets/text_widget.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:hospital/screens/BMI.dart';
import 'package:hospital/screens/Kalkulator.dart';
import 'package:hospital/screens/Grafik.dart';
import 'Developer.dart';
import 'KonversiSuhu.dart';
import 'Start.dart';
import 'Virus.dart';
import 'other.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  double opacity = 0.0;
  bool position = false;
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, () {
      animator();
      setState(() {});
    });
  }

  void animator() {
    if (opacity == 1.0) {
      opacity = 0.0;
      position = false;
    } else {
      opacity = 1.0;
      position = true;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.white,
          padding: const EdgeInsets.only(top: 30, left: 0, right: 0),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            children: [
              AnimatedPositioned(
                duration: const Duration(milliseconds: 400),
                top: position ? 1 : 100,
                right: 20,
                left: 20,
                child: AnimatedOpacity(
                  duration: const Duration(milliseconds: 400),
                  opacity: opacity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextWidget("Welcome!", 17,
                              Colors.black.withOpacity(0.7), FontWeight.bold),
                          TextWidget("Thalita Zharifa", 25, Colors.black,
                              FontWeight.bold),
                        ],
                      ),
                      InkWell(
                        onTap: () {
                          showLogoutConfirmationDialog(context);
                        },
                        child: const Icon(Icons.logout_rounded),
                      ),
                    ],
                  ),
                ),
              ),
              AnimatedPositioned(
                top: position ? 80 : 140,
                left: 20,
                right: 20,
                duration: const Duration(milliseconds: 400),
                child: AnimatedOpacity(
                  duration: const Duration(milliseconds: 400),
                  opacity: opacity,
                  child: Container(
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Icon(
                          Icons.search_sharp,
                          size: 30,
                          color: Colors.black.withOpacity(0.5),
                        ),
                        hintText: "   Search",
                      ),
                    ),
                  ),
                ),
              ),
              AnimatedPositioned(
                top: position ? 150 : 220,
                right: 20,
                left: 20,
                duration: const Duration(milliseconds: 400),
                child: AnimatedOpacity(
                  duration: const Duration(milliseconds: 400),
                  opacity: opacity,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Container(
                      height: 150,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.blue.shade700,
                            Colors.blue.shade900,
                            Colors.blue.shade900,
                          ],
                        ),
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            top: 25,
                            left: 20,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const CircleAvatar(
                                  backgroundColor: Colors.white,
                                  radius: 30,
                                  child: Center(
                                    child: Image(
                                      fit: BoxFit.fill,
                                      image: AssetImage('assets/images/p1.png'),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    TextWidget(
                                      "You're invited to the live",
                                      15,
                                      Colors.white,
                                      FontWeight.normal,
                                      letterSpace: 1,
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        TextWidget(
                                          "Stream with  ",
                                          15,
                                          Colors.white,
                                          FontWeight.normal,
                                          letterSpace: 1,
                                        ),
                                        TextWidget(
                                          "Dr.Navida",
                                          15,
                                          Colors.white,
                                          FontWeight.bold,
                                          letterSpace: 2,
                                        ),
                                      ],
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                          Positioned(
                            top: 100,
                            left: 20,
                            child: Container(
                              height: 1,
                              width: 300,
                              color: Colors.white.withOpacity(0.5),
                            ),
                          ),
                          Positioned(
                            top: 115,
                            left: 20,
                            right: 1,
                            child: Container(
                              width: double.infinity,
                              child: Row(
                                children: [
                                  TextWidget("120K people join live Stream!",
                                      15, Colors.white, FontWeight.bold,
                                      letterSpace: 1),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  const Expanded(
                                    child: Stack(
                                      children: [
                                        Positioned(
                                          child: CircleAvatar(
                                            radius: 15,
                                            backgroundColor: Colors.blue,
                                          ),
                                        ),
                                        Positioned(
                                          left: 20,
                                          child: CircleAvatar(
                                            radius: 15,
                                            backgroundColor: Colors.red,
                                          ),
                                        ),
                                        Positioned(
                                          left: 40,
                                          child: CircleAvatar(
                                            radius: 15,
                                            backgroundColor: Colors.white,
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          const Positioned(
                            top: 10,
                            right: 10,
                            child: Icon(
                              Icons.close_outlined,
                              color: Colors.white,
                              size: 15,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              categoryRow(),
              AnimatedPositioned(
                top: position ? 420 : 500,
                left: 20,
                right: 20,
                duration: const Duration(milliseconds: 400),
                child: AnimatedOpacity(
                  duration: const Duration(milliseconds: 300),
                  opacity: opacity,
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextWidget("Our Doctors", 25,
                            Colors.black.withOpacity(0.8), FontWeight.bold,
                            letterSpace: 0),
                        InkWell(
                          onTap: () async {
                            animator();
                            setState(() {});
                            await Future.delayed(
                                const Duration(milliseconds: 500));
                            await Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return SeeAll();
                            }));
                            setState(() {
                              animator();
                            });
                          },
                          child: TextWidget(
                              "See all",
                              15,
                              Colors.blue.shade600.withOpacity(0.8),
                              FontWeight.bold,
                              letterSpace: 0),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              doctorList(),
              Align(
                alignment: Alignment.bottomCenter,
                child: AnimatedOpacity(
                  duration: const Duration(milliseconds: 400),
                  opacity: opacity,
                  child: CurvedNavigationBar(
                    backgroundColor: Colors.white,
                    items: const [
                      Icon(Icons.home_filled, color: Colors.black, size: 30),
                      Icon(Icons.calculate, color: Colors.black, size: 30),
                      Icon(Icons.whatshot_outlined,
                          color: Colors.black, size: 30),
                      Icon(Icons.graphic_eq_rounded,
                          color: Colors.black, size: 30),
                    ],
                    onTap: (index) {
                      setState(() {
                        _currentIndex = index;
                        if (_currentIndex == 1) {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return Kalkulator();
                          }));
                        } else if (_currentIndex == 2) {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return BMI();
                          }));
                        } else if (_currentIndex == 3) {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return GrafikPage();
                          }));
                        }
                      });
                    },
                    index: _currentIndex,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget doctorList() {
    return AnimatedPositioned(
      top: position ? 460 : 550,
      left: 20,
      right: 20,
      duration: const Duration(milliseconds: 400),
      child: AnimatedOpacity(
        duration: const Duration(milliseconds: 400),
        opacity: opacity,
        child: AnimatedOpacity(
          opacity: opacity,
          duration: const Duration(milliseconds: 300),
          child: SizedBox(
            height: 270,
            width: MediaQuery.of(context).size.width,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  doctorCard(names[0], spacilality[0], images[0]),
                  doctorCard(names[1], spacilality[1], images[1]),
                  doctorCard(names[2], spacilality[2], images[2]),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget doctorCard(String name, String specialist, AssetImage image) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: SizedBox(
        height: 120,
        width: double.infinity,
        child: Row(
          children: [
            const SizedBox(width: 10),
            CircleAvatar(
              radius: 30,
              backgroundImage: image,
              backgroundColor: Colors.blue,
            ),
            const SizedBox(width: 10),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextWidget(name, 20, Colors.black, FontWeight.bold,
                    letterSpace: 0),
                const SizedBox(height: 5),
                TextWidget(specialist, 17, Colors.black, FontWeight.bold,
                    letterSpace: 0),
                const SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.star, color: Colors.orangeAccent),
                    Icon(Icons.star, color: Colors.orangeAccent),
                    Icon(Icons.star, color: Colors.orangeAccent),
                    Icon(Icons.star, color: Colors.orangeAccent),
                    Icon(Icons.star, color: Colors.orangeAccent),
                  ],
                ),
              ],
            ),
            const Spacer(),
            const Icon(Icons.navigation_sharp, color: Colors.blue),
            const SizedBox(width: 20),
          ],
        ),
      ),
    );
  }

  Widget categoryRow() {
    return AnimatedPositioned(
      top: position ? 320 : 420,
      left: 25,
      right: 25,
      duration: const Duration(milliseconds: 400),
      child: AnimatedOpacity(
        duration: const Duration(milliseconds: 400),
        opacity: opacity,
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              category("assets/images/developer.png", "Dev", 8),
              category("assets/images/temp.png", "Temp", 8),
              category("assets/images/virus.png", "Virus", 10),
              category("assets/images/heart.png", "Physo", 10),
              category("assets/images/app.png", "Other", 12),
            ],
          ),
        ),
      ),
    );
  }

  Widget category(String asset, String txt, double padding) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            if (txt == "Temp") {
              // Navigasi ke halaman KonversiSuhu.dart jika kategori "Temp" ditekan
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return KonversiSuhu();
              }));
            } else if (txt == "Dev") {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Developer();
              }));
            } else if (txt == "Virus") {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Virus();
              }));
            } else if (txt == "Other") {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Other();
              }));
            }
          },
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Container(
              padding: EdgeInsets.all(padding),
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Image(
                  image: AssetImage(asset),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        TextWidget(
          txt,
          16,
          Colors.black,
          FontWeight.bold,
          letterSpace: 1,
        ),
      ],
    );
  }

  Future<void> showLogoutConfirmationDialog(BuildContext context) async {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Logout Confirmation"),
          content: Text("Are you sure you want to log out?"),
          actions: <Widget>[
            TextButton(
              child: Text("No"),
              onPressed: () {
                Navigator.of(context).pop(); // Tutup dialog
              },
            ),
            TextButton(
              child: Text("Yes"),
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => Startpage()));
              },
            ),
          ],
        );
      },
    );
  }
}
