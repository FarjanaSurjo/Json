class YouTube {
  final String kind;
  final String etag;
  final String nextPageToken;
  final String? regionCode;
  final PageInfo pageInfo;
  final List<Items> items;
  YouTube(
      {required this.kind,
      required this.etag,
      required this.nextPageToken,
      required this.regionCode,
      required this.pageInfo,
      required this.items});
  factory YouTube.fromJson(Map<String, dynamic> json) {
    var itemsFromJson = json['youtube'] as List;
    List<Items> itemsList =
        itemsFromJson.map((i) => Items.fromJson(i)).toList();
    return YouTube(
        kind: json['kind'],
        etag: json['etag'],
        nextPageToken: json['nextPageToken'],
        regionCode: json['regionCode'],
        pageInfo: PageInfo.fromJson(json['pageInfo']),
        items: itemsList);
  }
}

class PageInfo {
  final int totalResults;
  final int resultsPerPage;
  PageInfo({required this.totalResults, required this.resultsPerPage});
  factory PageInfo.fromJson(Map<String, dynamic> json) {
    return PageInfo(
        totalResults: json['totalResults'],
        resultsPerPage: json['resultsPerPage']);
  }
}

class Items {
  final String kind;
  final String etag;
  final Id id;
  final Snippet snippet;
  Items(
      {required this.kind,
      required this.etag,
      required this.id,
      required this.snippet});
  factory Items.fromJson(Map<String, dynamic> json) {
    return Items(
        kind: json['kind'],
        etag: json['etag'],
        id: Id.fromJson(json['id']),
        snippet: Snippet.fromJson(json['snippet']));
  }
}

class Id {
  final String kind;
  final String videoId;
  Id({required this.kind, required this.videoId});
  factory Id.fromJson(Map<String, dynamic> json) {
    return Id(kind: json['kind'], videoId: json['videoId']);
  }
}

class Snippet {
  final String publishedAt;
  final String channelId;
  final String title;
  final String description;
  final Thumbnails thumbnails;
  final String channelTitle;
  final String liveBroadcastContent;
  final String publishTime;

  Snippet(
      {required this.publishedAt,
      required this.channelId,
      required this.title,
      required this.description,
      required this.thumbnails,
      required this.channelTitle,
      required this.liveBroadcastContent,
      required this.publishTime});
  factory Snippet.fromJson(Map<String, dynamic> json) {
    return Snippet(
        publishedAt: json['publishedAt'],
        channelId: json['channelId'],
        title: json['title'],
        description: json['description'],
        thumbnails: Thumbnails.fromJson(json['thumbnails']),
        channelTitle: json['channelId'],
        liveBroadcastContent: json['liveBroadcastContent'],
        publishTime: json['publishTime']);
  }
}

class Thumbnails {
  final Default defaults;
  final Medium medium;
  final High high;
  Thumbnails(
      {required this.defaults, required this.medium, required this.high});
  factory Thumbnails.fromJson(Map<String, dynamic> json) {
    return Thumbnails(
        defaults: Default.fromJson(json['defaults']),
        medium: Medium.fromJson(json['medium']),
        high: High.fromJson(json['high']));
  }
}

class Default {
  final String url;
  final int width;
  final int height;
  Default({required this.url, required this.width, required this.height});
  factory Default.fromJson(Map<String, dynamic> json) {
    return Default(
        url: json['url'], width: json['width'], height: json['height']);
  }
}

class Medium {
  final String url;
  final int width;
  final int height;
  Medium({required this.url, required this.width, required this.height});
  factory Medium.fromJson(Map<String, dynamic> json) {
    return Medium(
        url: json['url'], width: json['width'], height: json['height']);
  }
}

class High {
  final String url;
  final int width;
  final int height;
  High({required this.url, required this.width, required this.height});
  factory High.fromJson(Map<String, dynamic> json) {
    return High(url: json['url'], width: json['width'], height: json['height']);
  }
}
