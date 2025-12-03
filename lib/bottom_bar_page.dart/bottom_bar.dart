import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lab_7/animation/bloc/animation_bloc.dart';
import 'package:lab_7/animation/repository/animation_repository.dart';

import 'package:lab_7/news/bloc/news_bloc.dart';
import 'package:lab_7/news/repository/news_repository.dart';

import 'package:lab_7/news/pages/news_page.dart';
import 'package:lab_7/post/bloc/post_bloc.dart';
import 'package:lab_7/post/pages/post_page.dart';
import 'package:lab_7/animation/pages/animation_page.dart';
import 'package:lab_7/home/pages/home_page.dart';
import 'package:lab_7/post/repository/post_repository.dart';

class BottomBarPage extends StatefulWidget {
  const BottomBarPage({super.key});

  @override
  State<BottomBarPage> createState() => _BottomBarPageState();
}

class _BottomBarPageState extends State<BottomBarPage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bottom Bar Page'),
        backgroundColor: Colors.grey,
      ),
      body: _buildPage(_currentIndex),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.grey,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.orange),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite, color: Colors.orange),
            label: 'News',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.work, color: Colors.orange),
            label: 'Post',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, color: Colors.orange),
            label: 'Animation',
          ),
        ],
      ),
    );
  }

  Widget _buildPage(int index) {
    switch (index) {
      case 0:
        return const HomePage();

      case 1:
        return BlocProvider(
          create: (_) => NewsBloc(NewsRepository())..add(LoadNewsEvent()),
          child: const NewsPage(),
        );

      case 2:
        return BlocProvider(
          create: (_) => PostBloc(PostRepository()),
          child: const PostPage(),
        );

      case 3:
        return BlocProvider(
          create: (_) => AnimationBloc(AnimationRepository()),
          child: const AnimationPage(),
        );

      default:
        return Container();
    }
  }
}
