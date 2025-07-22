import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../providers/search_provider.dart';

class SearchFieldWidget extends ConsumerWidget {
  const SearchFieldWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
      child: TextFormField(
        onChanged: (query) {
          ref.read(searchQueryProvider.notifier).state = query;
        },
        decoration: const InputDecoration(
          hintText: "Suralarni qidirish...",
          prefixIcon: Icon(Icons.search),
        ),
      ),
    );
  }
}