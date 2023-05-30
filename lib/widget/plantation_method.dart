import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class PlantationMethod extends StatefulWidget {
  const PlantationMethod({super.key});

  @override
  State<PlantationMethod> createState() => _PlantationMethodState();
}

class _PlantationMethodState extends State<PlantationMethod> {
  final List<Map<String, String>> plantationMethod = [
    {
      'title': 'Hydroponics',
      'url': 'https://www.verticalroots.com/the-what-and-why-of-hydroponic-farming/',
    },
    {
      'title': 'Aquaponics',
      'url': 'https://gogreenaquaponics.com/blogs/news/what-is-aquaponics-and-how-does-it-work',
    },
    {
      'title': 'Aeroponics',
      'url': 'https://www.trees.com/gardening-and-landscaping/aeroponic',
    },
    {
      'title': 'Crop rotation',
      'url': 'https://rodaleinstitute.org/why-organic/organic-farming-practices/crop-rotations/',
    },
    {
      'title': 'Monoculture',
      'url': 'https://eos.com/blog/monoculture-farming/',
    },
    {
      'title': 'Regenerative agriculture',
      'url': 'https://www.syngentagroup.com/en/regenerative-agriculture',
    },
    // Add more schemes as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Plantation Method"),
        backgroundColor: Colors.green,
      ),
      body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.5 / 0.5,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20),
          itemCount: plantationMethod.length,
          itemBuilder: (BuildContext context, index) {
            return Padding(
              padding: const EdgeInsets.only(top: 8.0, left: 8.0, right: 8.0),
              child: InkWell(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          PlantationWebView(plantationMethod[index]['url']!),
                    )),
                child: Card(
                  elevation: 8,
                  shadowColor: Colors.grey,
                  color: Colors.lightGreen.shade600,
                  child: Center(
                    child: Text(
                      plantationMethod[index]["title"]!,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 24,
                      ),
                    ),
                  ),
                ),
              ),
            );
          }),
    );
  }
}

class PlantationWebView extends StatelessWidget {
  final String url;

  const PlantationWebView(this.url, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Plantation Details'),
        backgroundColor: Colors.blue,
      ),
      body: WebView(
        initialUrl: url,
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
