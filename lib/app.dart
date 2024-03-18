import 'package:clean_service/detail.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_icons/line_icons.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Row(
                  children: [
                    const CircleAvatar(
                      radius: 25,
                      backgroundImage: NetworkImage(
                          "https://images.pexels.com/photos/3785079/pexels-photo-3785079.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Good Morning",
                            style: TextStyle(color: Colors.grey)),
                        Text("Maxwell",
                            style: TextStyle(
                                color: Color(0xff62b3a2),
                                fontWeight: FontWeight.bold))
                      ],
                    ),
                    const Spacer(),
                    Stack(
                      children: [
                        Container(
                          child: const Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Icon(Icons.notifications),
                          ),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.grey.shade300),
                        ),
                        Positioned(
                            top: -10,
                            right: 0,
                            child: Container(
                              child: const Padding(
                                padding: EdgeInsets.all(5.0),
                                child: Text(""),
                              ),
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xff62b3a2),
                              ),
                            ))
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: const Color(0xfff5f5f5),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Icon(
                          Icons.search_sharp,
                          size: 30,
                          color: Colors.black.withOpacity(.5),
                        ),
                        suffixIcon: const Icon(
                          LineIcons.filter,
                          size: 30,
                          color: Color(0xff62b3a2),
                        ),
                        hintText: "   Search"),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                child: Container(
                  height: 150,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: const Color(0xff62b3a2),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "50% OFF",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                          Text(
                            "sdasda sdad sd",
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          ),
                        ],
                      ),
                      Image.asset(
                        "assets/images/1.png",
                        fit: BoxFit.contain,
                      ),
                    ],
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Services",
                      style: TextStyle(fontSize: 14),
                    ),
                    Text(
                      "View All",
                      style: TextStyle(
                        color: Color(0xff62b3a2),
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ),
              Wrap(
                children: [
                  MenuService(
                      fn: () {
                        Get.to(const Detail());
                      },
                      icon: LineIcons.table,
                      label: "Cleaning",
                      bg: const Color.fromARGB(255, 57, 132, 182)),
                  const MenuService(
                      icon: LineIcons.hotPepper,
                      label: "Plumbling",
                      bg: Color.fromARGB(255, 255, 102, 102)),
                  const MenuService(
                      icon: LineIcons.signal,
                      label: "Pointing",
                      bg: Color.fromARGB(255, 85, 254, 133)),
                  const MenuService(
                      icon: LineIcons.warehouse,
                      label: "Laundry",
                      bg: Color.fromARGB(255, 255, 222, 91)),
                  const MenuService(
                      icon: LineIcons.desktop,
                      label: "Repairing",
                      bg: Color.fromARGB(255, 59, 176, 255)),
                  const MenuService(
                      icon: LineIcons.windows,
                      label: "Gorden",
                      bg: Color.fromARGB(255, 255, 63, 63)),
                  const MenuService(
                      icon: LineIcons.globe,
                      label: "Handyman",
                      bg: Color.fromARGB(255, 75, 255, 126)),
                  const MenuService(
                      icon: LineIcons.dotCircleAlt,
                      label: "More..",
                      bg: Color.fromARGB(255, 255, 222, 90)),
                ],
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Special Offers",
                      style: TextStyle(fontSize: 12),
                    ),
                    Text(
                      "View All",
                      style: TextStyle(
                        color: Color(0xff62b3a2),
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MenuService extends StatelessWidget {
  final String? label;
  final Color? bg;
  final IconData? icon;
  final GestureTapCallback? fn;
  const MenuService({super.key, this.label, this.bg, this.fn, this.icon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: GestureDetector(
        onTap: fn,
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: bg!.withAlpha(20)),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Icon(
                  icon,
                  color: bg,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(label.toString(),
                style: const TextStyle(
                    color: Colors.black26,
                    fontSize: 12,
                    fontWeight: FontWeight.w600)),
          ],
        ),
      ),
    );
  }
}
