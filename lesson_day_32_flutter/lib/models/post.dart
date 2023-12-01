import 'package:cloud_firestore/cloud_firestore.dart';

class Post {
  final String uid;
  final String description;
  final String postId;
  final String username;
  final DateTime datePublished;
  final String postUrl;
  final String profImage;
  final like;

  Post({
    required this.uid,
    required this.description,
    required this.postId,
    required this.username,
    required this.datePublished,
    required this.postUrl,
    required this.like,
    required this.profImage,
  });
  static Post fromSnap(DocumentSnapshot snap) {
    var snapshop = snap.data() as Map<String, dynamic>;

    return Post(
      uid: snapshop['uid'],
      description: snapshop['description'],
      postId: snapshop['postId'],
      username: snapshop['username'],
      datePublished: snapshop['datePublished'],
      postUrl: snapshop['postUrl'],
      like: snapshop['like'],
      profImage: snapshop['profImage'],
    );
  }
  Map<String, dynamic> toJson(){
    return{
      'uid': uid,
      'description': description,
      'postId': postId,
      'username':username,
      'datePublished':datePublished,
      'postUrl':postUrl,
      'like': like,
      'profImage': profImage,
    };
  }
}
