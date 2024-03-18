import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class Detail extends StatefulWidget {
  const Detail({super.key});

  @override
  State<Detail> createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:
            Color(0xff62b3a2), // Set the background color to transparent
        elevation: 0, // Remove the shadow from the AppBar
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ), // Add a back button icon
          onPressed: () {
            // Handle back button press
            Navigator.pop(context);
          },
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
            child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 250,
              decoration: const BoxDecoration(
                color: Color(0xff62b3a2),
              ),
              child: Image.asset(
                "assets/images/3.png",
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Cleaning Services",
                    style: TextStyle(fontSize: 14),
                  ),
                  Text(
                    "\$200",
                    style: TextStyle(
                      color: Color(0xff62b3a2),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "California",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Row(
                children: [
                  const CircleAvatar(
                    radius: 25,
                    backgroundImage: NetworkImage(
                        "https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Charlotte", style: TextStyle(color: Colors.grey)),
                      Text("Staff",
                          style: TextStyle(
                              fontSize: 11,
                              color: Color(0xff62b3a2),
                              fontWeight: FontWeight.bold))
                    ],
                  ),
                  const Spacer(),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey.shade300),
                    child: const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Icon(LineIcons.phone, color: Color(0xff62b3a2)),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey.shade300),
                    child: const Padding(
                      padding: EdgeInsets.all(10.0),
                      child:
                          Icon(LineIcons.paperPlane, color: Color(0xff62b3a2)),
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Divider(),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("About", style: TextStyle(fontWeight: FontWeight.w900)),
                  Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. ",
                      style: TextStyle(
                        fontSize: 12,
                      ))
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Photos",
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
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 200,
                      height: 100,
                      decoration: BoxDecoration(
                          color: Color(0xff62b3a2),
                          borderRadius: BorderRadius.circular(10)),
                      child: Image.asset("assets/images/1.png"),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 200,
                      height: 100,
                      decoration: BoxDecoration(
                          color: Color(0xff62b3a2),
                          borderRadius: BorderRadius.circular(10)),
                      child: Image.asset("assets/images/1.png"),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 200,
                      height: 100,
                      decoration: BoxDecoration(
                          color: Color(0xff62b3a2),
                          borderRadius: BorderRadius.circular(10)),
                      child: Image.asset("assets/images/1.png"),
                    ),
                  ),
                ],
              ),
            )
          ],
        )),
      ),
    );
  }
}
