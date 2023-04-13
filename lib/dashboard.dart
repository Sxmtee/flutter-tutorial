import 'package:flutter/material.dart';

class DashBoard extends StatefulWidget {
  Map<String, dynamic> userDetails;
  DashBoard({super.key, required this.userDetails});

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.userDetails['username'] + " 's Profile"),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(30),
          height: 500,
          width: 500,
          child: Column(
            children: [
              Row(
                children: [
                  const Text("UserName:"),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(widget.userDetails['username'])
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  const Text("Password:"),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(widget.userDetails['password'])
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  const Text("Email:"),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(widget.userDetails['email'])
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
