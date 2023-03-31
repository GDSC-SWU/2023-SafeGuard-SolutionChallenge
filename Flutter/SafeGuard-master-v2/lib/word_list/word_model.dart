
class Word {
  int? wordID;
  String word;
  

  Word({this.wordID, required this.word,});

  factory Word.fromJson(Map<String, dynamic> json) => Word(
        wordID: json['wordID'],
        word: json['word'],
      );

  Map<String, dynamic> toJson() => {
        "wordID": wordID,
        "word": word,
      };
  
}