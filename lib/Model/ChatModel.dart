/// id : "h"
/// message : "d"
/// senderName : "a"
/// senderId : "a"
/// receiverId : "d"
/// timestamp : "e"
/// readStatus : "eq"
/// imageUrl : "k"
/// videoUrl : "kl"
/// audioUrl : "d"
/// documentUrl : "r"
/// reactions : ["f","r"]
/// replies : []

class ChatModel {
  ChatModel({
      String? id, 
      String? message, 
      String? senderName, 
      String? senderId, 
      String? receiverId, 
      String? timestamp, 
      String? readStatus, 
      String? imageUrl, 
      String? videoUrl, 
      String? audioUrl, 
      String? documentUrl, 
      List<String>? reactions, 
      List<dynamic>? replies,}){
    _id = id;
    _message = message;
    _senderName = senderName;
    _senderId = senderId;
    _receiverId = receiverId;
    _timestamp = timestamp;
    _readStatus = readStatus;
    _imageUrl = imageUrl;
    _videoUrl = videoUrl;
    _audioUrl = audioUrl;
    _documentUrl = documentUrl;
    _reactions = reactions;
    _replies = replies;
}

  ChatModel.fromJson(dynamic json) {
    _id = json['id'];
    _message = json['message'];
    _senderName = json['senderName'];
    _senderId = json['senderId'];
    _receiverId = json['receiverId'];
    _timestamp = json['timestamp'];
    _readStatus = json['readStatus'];
    _imageUrl = json['imageUrl'];
    _videoUrl = json['videoUrl'];
    _audioUrl = json['audioUrl'];
    _documentUrl = json['documentUrl'];
    _reactions = json['reactions'] != null ? json['reactions'].cast<String>() : [];
    if (json['replies'] != null) {
      _replies = [];
      json['replies'].forEach((v) {
        _replies?.add(v);
      });
    }
  }
  String? _id;
  String? _message;
  String? _senderName;
  String? _senderId;
  String? _receiverId;
  String? _timestamp;
  String? _readStatus;
  String? _imageUrl;
  String? _videoUrl;
  String? _audioUrl;
  String? _documentUrl;
  List<String>? _reactions;
  List<dynamic>? _replies;

  String? get id => _id;
  String? get message => _message;
  String? get senderName => _senderName;
  String? get senderId => _senderId;
  String? get receiverId => _receiverId;
  String? get timestamp => _timestamp;
  String? get readStatus => _readStatus;
  String? get imageUrl => _imageUrl;
  String? get videoUrl => _videoUrl;
  String? get audioUrl => _audioUrl;
  String? get documentUrl => _documentUrl;
  List<String>? get reactions => _reactions;
  List<dynamic>? get replies => _replies;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['message'] = _message;
    map['senderName'] = _senderName;
    map['senderId'] = _senderId;
    map['receiverId'] = _receiverId;
    map['timestamp'] = _timestamp;
    map['readStatus'] = _readStatus;
    map['imageUrl'] = _imageUrl;
    map['videoUrl'] = _videoUrl;
    map['audioUrl'] = _audioUrl;
    map['documentUrl'] = _documentUrl;
    map['reactions'] = _reactions;
    if (_replies != null) {
      map['replies'] = _replies?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}