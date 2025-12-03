import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/post_bloc.dart';

class PostPage extends StatelessWidget {
  const PostPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Post Page')),
      body: BlocBuilder<PostBloc, PostState>(
        builder: (context, state) {
          if (state is PostLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is PostLoaded) {
            return Padding(
              padding: const EdgeInsets.all(16),
              child: Text(state.post.toString()),
            );
          } else if (state is PostError) {
            return Center(child: Text("Error: ${state.message}"));
          }

          return const Center(child: Text("Press Post Tab"));
        },
      ),
    );
  }
}
