import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class MyYojnaList extends StatefulWidget {

  const MyYojnaList({super.key});

  @override
  State<MyYojnaList> createState() => _MyYojnaListState();
}

class _MyYojnaListState extends State<MyYojnaList> {
  final List<Map<String, String>> schemes = [
    {'title': 'Pradhan Mantri Kisan Samman Nidhi', 'url': 'https://pmkisan.gov.in/'},
    {'title': 'Scheme 2', 'url': 'https://www.scheme2.com'},
    {'title': 'Scheme 3', 'url': 'https://www.scheme3.com'},
    // Add more schemes as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Krishi Yojna"),
        //leading: Icon(Icons.arrow_back),
      ),
      body: ListView.builder(
      itemCount: schemes.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(schemes[index]['title']!),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SchemeWebView(schemes[index]['url']!),
              ),
            );
          },
        );
      },
      )
    );
  }
}

class SchemeWebView extends StatelessWidget {
  final String url;

  const SchemeWebView(this.url, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Scheme Details')),
      body: WebView(
        initialUrl: url,
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}