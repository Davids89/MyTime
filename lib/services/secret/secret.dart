class Secret {
  Secret({this.apiKey = ""});

  final String apiKey;

  factory Secret.fromJson(Map<String, dynamic> jsonMap) {
    return new Secret(apiKey: jsonMap["apiKey"]);
  }
}
