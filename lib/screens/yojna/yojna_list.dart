import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class MyYojnaList extends StatefulWidget {
  const MyYojnaList({Key? key}) : super(key: key);

  @override
  State<MyYojnaList> createState() => _MyYojnaListState();
}

class _MyYojnaListState extends State<MyYojnaList> {
  final List<Map<String, String>> schemes = [
    {
      'title': 'Pradhan Mantri Kisan Samman Nidhi (PMKSN)',
      'url': 'https://pmkisan.gov.in/',
      'image':
          'https://img.jagranjosh.com/imported/images/E/GK/PM-Kisan-Samman-Nidhi-Yojana%202020.jpg'
    },
    {
      'title': 'Pradhan Mantri Fasal Bima Yojana (PMFBY)',
      'url': 'https://pmfby.gov.in/',
      'image':
          'https://s3.amazonaws.com/lms24x7/gsktestimonials/uploads/2020/11/24165933/Pradhan-Mantri-Fasal-Bima-Yojana.jpg'
    },
    {
      'title': 'Kisan Credit Card (KCC) Scheme (KCC)',
      'url': 'https://pib.gov.in/indexd.aspx',
      'image':
          'https://www.mppeb.org/wp-content/uploads/2022/05/Kisan-Credit-Card-Loan-Scheme.png'
    },
    {
      'title': 'Soil Health Card',
      'url' : 'https://soilhealth.dac.gov.in/home',
      'image' : 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSkxC-jgHaE1Q42xFfB62nYNvD1NyEkTS2HvA&usqp=CAU'
    },
    // Add more schemes as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Krishi Yojna"),
      ),
      body: ListView.builder(
        itemCount: schemes.length,
        itemBuilder: (context, index) {
          return SizedBox(
            height: 100,
            child: Card(margin: const EdgeInsets.all(10),
              semanticContainer: true,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              shadowColor: Colors.black87,
              elevation: 4,
              child: ListTile(
                trailing: Image.network(
                  schemes[index]['image']!,
                  width: 85,
                  height: 95,
                ),
                title: Text(schemes[index]['title']!),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SchemeWebView(schemes[index]['url']!),
                    ),
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }
}

class SchemeWebView extends StatelessWidget {
  final String url;

  const SchemeWebView(this.url, {Key? key}) : super(key: key);

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
