import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ApiFetch extends StatefulWidget {
  const ApiFetch({super.key});

  @override
  State<ApiFetch> createState() => _ApiFetchState();
}

class _ApiFetchState extends State<ApiFetch> {
  Future<List> fetchUser() async {
    List results = [];
    var uri = Uri.parse("https://reqres.in/api/users?page=1");
    var response = await http.get(uri);
    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      results = data["data"];
    }
    return results;
  }

  @override
  void initState() {
    super.initState();
    fetchUser();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Fetching An API"),
      ),
      body: SizedBox(
        width: double.infinity,
        child: FutureBuilder(
          future: fetchUser(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (snapshot.hasError) {
              return const Center(
                child: Text("ERROR"),
              );
            } else if (!snapshot.hasData) {
              return const Center(
                child: Text("NO DATA"),
              );
            } else {
              List data = snapshot.data as List;
              return ListView.builder(
                shrinkWrap: true,
                itemCount: data.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(data[index]["avatar"]),
                    ),
                    title: Text(data[index]["first_name"]),
                    subtitle: Text(data[index]["email"]),
                  );
                },
              );
            }
          },
        ),
      ),
    );
  }
}