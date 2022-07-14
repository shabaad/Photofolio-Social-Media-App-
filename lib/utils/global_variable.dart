import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:social_media_app/screens/add_post_screen.dart';
import 'package:social_media_app/screens/feed_screen.dart';
import 'package:social_media_app/screens/profile_screen.dart';
import 'package:social_media_app/screens/search_screen.dart';

const webScreenSize = 600;

List<Widget> homeScreenItems = [
  const FeedScreen(),
  const SearchScreen(),
  const AddPostScreen(),
  Center(child: const Text('Your notifications will appear here')),
  ProfileScreen(
    uid: FirebaseAuth.instance.currentUser!.uid,
  ),
];
