import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:redid/src/styles/colors.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);
  static String tag = 'NotificationScreen';

  @override
  NotificationScreenState createState() => NotificationScreenState();
}

class NotificationScreenState extends State<NotificationScreen> {
  String apiUrl = 'https://jsonplaceholder.typicode.com/albums/1/photos';
  int pageNo = 1;
  final ScrollController _scrollController = ScrollController();
  bool isLoading = false;
  List albums = [];
  void _fetchData() async {
    if (!isLoading) {
      setState(() {
        isLoading = true;
      });
      final response = await http.get(Uri.parse(apiUrl));
      if (response.statusCode == 200) {
        List albumList = [];
        // ignore: prefer_typing_uninitialized_variables
        var resultBody;
        pageNo = (pageNo > 100) ? 1 : pageNo++;
        apiUrl = "https://jsonplaceholder.typicode.com/albums/$pageNo/photos";
        resultBody = jsonDecode(response.body);
        for (int i = 0; i < resultBody.length; i++) {
          albumList.add(resultBody[i]);
        }
        setState(() {
          isLoading = false;
          albums.addAll(albumList);
        });
      } else {
        setState(() {
          isLoading = false;
        });
      }
    }
  }

  @override
  void initState() {
    _fetchData();
    super.initState();
    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        _fetchData();
      }
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  Widget _buildProgressIndicator() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Opacity(
          opacity: isLoading ? 1.0 : 00,
          child: const CircularProgressIndicator(),
        ),
      ),
    );
  }

  Widget _buildList() {
    return albums.isEmpty
        ? Center(
            child: Container(
              padding: const EdgeInsets.all(5),
              child: const Text(
                'No new notifications.',
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
            ),
          )
        : ListView.builder(
            itemCount: albums.length + 1,
            itemBuilder: (BuildContext context, int index) {
              if (index == albums.length) {
                return _buildProgressIndicator();
              } else {
                return Padding(
                  padding: const EdgeInsets.only(
                      left: 8.0, top: 2.0, bottom: 2.0, right: 8.0),
                  child: Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: SizedBox(
                      height: 80,
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundImage:
                              NetworkImage(albums[index]['thumbnailUrl']),
                        ),
                        title: Text(
                          (albums[index]['title']),
                          style: const TextStyle(fontFamily: 'Book-Antiqua'),
                        ),
                        onTap: () {
                          //print(albums[index]);
                        },
                      ),
                    ),
                  ),
                );
              }
            },
            controller: _scrollController,
          );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: kBackgroundColor,
        centerTitle: true,
        toolbarHeight: 50,
        leadingWidth: 28,
        iconTheme: const IconThemeData(color: kBaseColor),
        title: const Text(
          'Notifications',
          style: TextStyle(
            fontFamily: 'Chiller',
            fontSize: 25,
            color: kBaseColor,
            fontWeight: FontWeight.w900,
          ),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.only(top: 10.0),
        child: _buildList(),
      ),
      resizeToAvoidBottomInset: false,
    );
  }
}
