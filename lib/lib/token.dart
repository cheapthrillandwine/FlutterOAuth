// Customized for Stripe login
class Token {

  String accessToken;
  bool livemode;
  String refreshToken;
  String tokenType;
  String publishableKey;
  String accountId;
  String scope;

  Token();

  factory Token.fromJson(Map<String, dynamic> json) =>
      Token.fromMap(json);

  Map toMap() => Token.toJsonMap(this);

  @override
  String toString() => Token.toJsonMap(this).toString();

  static Map toJsonMap(Token model) {
    Map ret = Map();
    if (model != null) {
      if (model.accessToken != null) {
        ret["access_token"] = model.accessToken;
      }
      if (model.accessToken != null) {
        ret["livemode"] = model.livemode;
      }
      if (model.tokenType != null) {
        ret["refresh_token"] = model.refreshToken;
      }
      if (model.tokenType != null) {
        ret["token_type"] = model.tokenType;
      }
      if (model.tokenType != null) {
        ret["stripe_publishable_key"] = model.publishableKey;
      }
      if (model.tokenType != null) {
        ret["stripe_user_id"] = model.accountId;
      }
      if (model.tokenType != null) {
        ret["scope"] = model.scope;
      }
    }
    return ret;
  }

  static Token fromMap(Map<String, dynamic> map) {
    if (map == null) return null;
    Token model = Token();
    model.accessToken = map["access_token"];
    model.livemode = map["livemode"];
    model.refreshToken = map["refresh_token"];
    model.tokenType = map["token_type"];
    model.publishableKey = map["stripe_publishable_key"];
    model.accountId = map["stripe_user_id"];
    model.scope = map["scope"];
    return model;
  }

}
