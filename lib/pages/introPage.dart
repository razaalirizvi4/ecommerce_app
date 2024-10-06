import 'package:ecommerce/pages/home_page.dart';
import 'package:flutter/material.dart';

class Intropage extends StatefulWidget {
  const Intropage({super.key});

  @override
  State<Intropage> createState() => _IntropageState();
}

class _IntropageState extends State<Intropage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 24, right: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //logo
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: Image.asset(
                  'lib/ecommerce/swoosh.png',
                  height: 240,
                ),
              ),

              const SizedBox(
                height: 48,
              ),
              //text
              Text(
                "Just Do It.",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 48),
              ),
              SizedBox(
                height: 50,
              ),
              //sub title
              Text(
                "Brand New Sneakers and Custom Kicks made with Premium Quality.",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey[900], fontSize: 18),
              ),
              const SizedBox(
                height: 100,
              ),
              //start now
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    PageRouteBuilder(
                      transitionDuration: Duration(
                          milliseconds: 500), // Duration of the animation
                      pageBuilder: (context, animation, secondaryAnimation) =>
                          HomePage(), // Replace HomePage() with the actual widget
                      transitionsBuilder:
                          (context, animation, secondaryAnimation, child) {
                        return FadeTransition(
                          opacity: animation,
                          child: child,
                        );
                      },
                    ),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.grey[900],
                      borderRadius: BorderRadius.circular(8)),
                  padding: EdgeInsets.only(
                      top: 24, bottom: 24, left: 130, right: 130),
                  child: Text(
                    "Shop Now",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
