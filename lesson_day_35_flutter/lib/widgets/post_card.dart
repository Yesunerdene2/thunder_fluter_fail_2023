import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:lesson_day_35_flutter/utils.dart';

import '../firestore_methods.dart';

class PostCard extends StatefulWidget {
  final snap;

  const PostCard({super.key, this.snap});

  @override
  State<PostCard> createState() => _PostCardState();
}

class _PostCardState extends State<PostCard> {
  int commentlen = 0;
  bool isLikeAnimating = false;
  @override
  void initState() {
    super.initState();
    fetchCommentLen();
  }

  fetchCommentLen() async {
    try {
      QuerySnapshot snap = await FirebaseFirestore.instance
          .collection('posts')
          .doc(widget.snap['postId'])
          .collection('comments')
          .get();
      commentlen = snap.docs.length;
    } catch (err) {
      showSnackBar(context, err.toString());
    }
    setState(() {});
  }

  deletePost(String postId) async {
    try {
      await FireStoreMethods().deletePost(postId);
    } catch (err) {
      showSnackBar(
        context,
        err.toString(),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Column(children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 16)
                .copyWith(right: 0),
            child: Row(children: [
              CircleAvatar(
                radius: 16,
                backgroundImage:
                    NetworkImage(widget.snap['profImage'].toString()),
              ),
              const SizedBox(
                height: 8,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'John Doe',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              IconButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) => Dialog(
                        child: ListView(
                            padding: const EdgeInsets.symmetric(vertical: 16.0),
                            shrinkWrap: true,
                            children: ['Delete']
                                .map((e) => InkWell(
                                      onTap: () {
                                        deletePost(
                                          widget.snap['postId'].toString(),
                                        );
                                        Navigator.pop(context);
                                      },
                                      child: Container(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 12.0, horizontal: 16.0),
                                        child: Text(e),
                                      ),
                                    ))
                                .toList()),
                      ),
                    );
                  },
                  icon: const Icon(Icons.more_vert)),
            ]),
          ),
          // IMAGE SECTION
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.35,
            width: double.infinity,
            child: Image.network(
              'https://plus.unsplash.com/premium_photo-1676200985941-1a8d456c5b25?q=80&w=2500&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
              fit: BoxFit.cover,
            ),
          )
        ]));
  }
}
