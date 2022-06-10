import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

class RandomWords extends StatefulWidget {
  const RandomWords({Key? key}) : super(key: key);

  @override
  State<RandomWords> createState() => _RandomWordsState();
}

class _RandomWordsState extends State<RandomWords> {
  final _suggestions = <WordPair>[];
  final _biggerFonts = const TextStyle(fontSize: 18);
  final _savedWordPair = <WordPair>{};

  void _pushSaved() {
    Navigator.of(context).push(
      MaterialPageRoute<void>(
        builder: (context) {
          final tiles = _savedWordPair.map(
            (pair) {
              return ListTile(
                title: Text(
                  pair.asPascalCase,
                  style: _biggerFonts,
                ),
              );
            },
          );
          final divided = tiles.isNotEmpty
              ? ListTile.divideTiles(
                  tiles: tiles,
                  context: context,
                ).toList()
              : <Widget>[];
          return Scaffold(
            appBar: AppBar(title: const Text("Saved Words")),
            body: ListView(children: divided),
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Name Generator"),
        actions: [IconButton(onPressed: _pushSaved, icon: Icon(Icons.list))],
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemBuilder: (context, i) {
          if (i.isOdd) {
            return const Divider(thickness: 1, color: Colors.black);
          } else {
            int index = i ~/ 2;
            if (index >= _suggestions.length) {
              _suggestions.addAll(generateWordPairs().take(10));
            }
            final alreadySaved = _savedWordPair.contains(_suggestions[index]);
            return ListTile(
              title:
                  Text(_suggestions[index].asPascalCase, style: _biggerFonts),
              trailing: Icon(
                alreadySaved ? Icons.favorite : Icons.favorite_border,
                color: alreadySaved ? Colors.red : null,
                semanticLabel: alreadySaved ? "remove from saved" : "save",
              ),
              onTap: () {
                setState(() {
                  alreadySaved
                      ? _savedWordPair.remove(_suggestions[index])
                      : _savedWordPair.add(_suggestions[index]);
                });
              },
            );
          }
        },
      ),
    );
  }
}
