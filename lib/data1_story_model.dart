class StoryModel {
  final int id;
  final String title;
  final int index;
  final bool seen;
  final String iconUrl;
  final List<Stories> stories;

  StoryModel({
    required this.id,
    required this.title,
    required this.index,
    required this.seen,
    required this.iconUrl,
    required this.stories,
  });

  factory StoryModel.fromJson(Map<String, dynamic> json) {
    var storiesFromJson = json['stories'] as List;
    List<Stories> storiesList =
        storiesFromJson.map((i) => Stories.fromJson(i)).toList();

    return StoryModel(
        id: json['id'],
        title: json['title'],
        index: json['index'],
        seen: json['seen'],
        iconUrl: json['iconUrl'],
        stories: storiesList);
  }
}

class Stories {
  final int id;
  final String title;
  final int index;
  final bool seen;
  final Media media;

  Stories({
    required this.id,
    required this.title,
    required this.index,
    required this.seen,
    required this.media,
  });

  factory Stories.fromJson(Map<String, dynamic> json) {
    return Stories(
      id: json['id'],
      title: json['title'],
      index: json['index'],
      seen: json['seen'],
      media: Media.fromJson(json['media']),
    );
  }
}

class Media {
  final int type;
  final String url;
  final String? actionUrl;

  Media({
    required this.type,
    required this.url,
    required this.actionUrl,
  });

  factory Media.fromJson(Map<String, dynamic> json) {
    return Media(
        type: json['type'], url: json['url'], actionUrl: json['actionUrl']);
  }
}

class Story {
  final int id;
  final String title;
  final int index;
  final bool seen;
  final Media media;

  Story({
    required this.id,
    required this.title,
    required this.index,
    required this.seen,
    required this.media,
  });

  factory Story.fromJson(Map<String, dynamic> json) {
    return Story(
      id: json['id'],
      title: json['title'],
      index: json['index'],
      seen: json['seen'],
      media: Media.fromJson(json['media']),
    );
  }
}

class StoryComponent {
  final String type;
  final List<String> emojiCodes;
  final int selectedEmojiIndex;
  final String customPayload;

  StoryComponent(
      {required this.type,
      required this.emojiCodes,
      required this.selectedEmojiIndex,
      required this.customPayload});

  factory StoryComponent.fromJson(Map<String, dynamic> json) {
    return StoryComponent(
        type: json['type'],
        emojiCodes: List<String>.from(json['emojiCodes']),
        selectedEmojiIndex: json['selectedEmojiIndex'],
        customPayload: json['customPayload']);
  }
}
