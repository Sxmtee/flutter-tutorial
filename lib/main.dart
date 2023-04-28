import 'package:carltutorial/alert_dialog.dart';
import 'package:carltutorial/blog_post.dart';
import 'package:carltutorial/carousel_class.dart';
import 'package:carltutorial/forms.dart';
import 'package:carltutorial/listview_builder.dart';
import 'package:carltutorial/simple_design.dart';
import 'package:carltutorial/tabbed_view.dart';
import 'package:carltutorial/webview_class.dart';
import 'package:carltutorial/webview_practical.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Carl Tutorial',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Carl Tutorial"),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.all(30),
          child: Column(
            children: [
              //for simple design
              MaterialButton(
                onPressed: () {
                  var route = MaterialPageRoute(
                    builder: (context) => const SimpleDesign(),
                  );
                  Navigator.push(context, route);
                },
                color: Colors.blue,
                height: 50,
                shape: const StadiumBorder(),
                child: const Text("Simple Design"),
              ),
              const SizedBox(
                height: 10,
              ),
              //for blogpost
              MaterialButton(
                onPressed: () {
                  var route = MaterialPageRoute(
                    builder: (context) => const BlogPost(),
                  );
                  Navigator.push(context, route);
                },
                color: Colors.blue,
                height: 50,
                shape: const StadiumBorder(),
                child: const Text("Blog Post"),
              ),
              const SizedBox(
                height: 10,
              ),
              //forms
              MaterialButton(
                onPressed: () {
                  var route = MaterialPageRoute(
                    builder: (context) => const Forms(),
                  );
                  Navigator.push(context, route);
                },
                color: Colors.blue,
                height: 50,
                shape: const StadiumBorder(),
                child: const Text("Forms"),
              ),
              const SizedBox(
                height: 10,
              ),
              //ListViewBuilder
              MaterialButton(
                onPressed: () {
                  var route = MaterialPageRoute(
                    builder: (context) => const ListViewBuilder(),
                  );
                  Navigator.push(context, route);
                },
                color: Colors.blue,
                height: 50,
                shape: const StadiumBorder(),
                child: const Text("ListViewBuilder"),
              ),
              const SizedBox(
                height: 10,
              ),
              //for Alertdialog
              MaterialButton(
                onPressed: () {
                  var route = MaterialPageRoute(
                    builder: (context) => const NotifDialog(),
                  );
                  Navigator.push(context, route);
                },
                color: Colors.blue,
                height: 50,
                shape: const StadiumBorder(),
                child: const Text("Alert Dialog"),
              ),
              const SizedBox(
                height: 10,
              ),
              //TabbedViewClass
              MaterialButton(
                onPressed: () {
                  var route = MaterialPageRoute(
                    builder: (context) => const TabbedViewClass(),
                  );
                  Navigator.push(context, route);
                },
                color: Colors.blue,
                height: 50,
                shape: const StadiumBorder(),
                child: const Text("Tabbed View"),
              ),
              const SizedBox(
                height: 10,
              ),
              //WebViewClass
              MaterialButton(
                onPressed: () {
                  var route = MaterialPageRoute(
                    builder: (context) => const WebViewClass(),
                  );
                  Navigator.push(context, route);
                },
                color: Colors.blue,
                height: 50,
                shape: const StadiumBorder(),
                child: const Text("Web View Class"),
              ),
              const SizedBox(
                height: 10,
              ),
              //WebViewPractical
              MaterialButton(
                onPressed: () {
                  var route = MaterialPageRoute(
                    builder: (context) => const WebViewPractical(),
                  );
                  Navigator.push(context, route);
                },
                color: Colors.blue,
                height: 50,
                shape: const StadiumBorder(),
                child: const Text("Web View Practical"),
              ),
              const SizedBox(
                height: 10,
              ),
              //Carousel Slider
              MaterialButton(
                onPressed: () {
                  var route = MaterialPageRoute(
                    builder: (context) => const CarouselClass(),
                  );
                  Navigator.push(context, route);
                },
                color: Colors.blue,
                height: 50,
                shape: const StadiumBorder(),
                child: const Text("Web View Practical"),
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
