/// id : "1"
/// sender : {}
/// receiver : {}
/// messages : []
/// unReadMessNo : 1
/// lastMessage : "Hello"
/// lastMessageTimeStamp : "2021-09-01T12:00:00"
/// timestamp : "2021-09-01T12:00:00"

class ChatRoomModel {
  ChatRoomModel({
      String? id, 
      dynamic sender, 
      dynamic receiver, 
      List<dynamic>? messages, 
      int? unReadMessNo, 
      String? lastMessage, 
      String? lastMessageTimeStamp, 
      String? timestamp,}){
    _id = id;
    _sender = sender;
    _receiver = receiver;
    _messages = messages;
    _unReadMessNo = unReadMessNo;
    _lastMessage = lastMessage;
    _lastMessageTimeStamp = lastMessageTimeStamp;
    _timestamp = timestamp;
}

  ChatRoomModel.fromJson(dynamic json) {
    _id = json['id'];
    _sender = json['sender'];
    _receiver = json['receiver'];
    if (json['messages'] != null) {
      _messages = [];
      json['messages'].forEach((v) {
        _messages?.add(Dynamic.fromJson(v));
      });
    }
    _unReadMessNo = json['unReadMessNo'];
    _lastMessage = json['lastMessage'];
    _lastMessageTimeStamp = json['lastMessageTimeStamp'];
    _timestamp = json['timestamp'];
  }
  String? _id;
  dynamic _sender;
  dynamic _receiver;
  List<dynamic>? _messages;
  int? _unReadMessNo;
  String? _lastMessage;
  String? _lastMessageTimeStamp;
  String? _timestamp;

  String? get id => _id;
  dynamic get sender => _sender;
  dynamic get receiver => _receiver;
  List<dynamic>? get messages => _messages;
  int? get unReadMessNo => _unReadMessNo;
  String? get lastMessage => _lastMessage;
  String? get lastMessageTimeStamp => _lastMessageTimeStamp;
  String? get timestamp => _timestamp;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['sender'] = _sender;
    map['receiver'] = _receiver;
    if (_messages != null) {
      map['messages'] = _messages?.map((v) => v.toJson()).toList();
    }
    map['unReadMessNo'] = _unReadMessNo;
    map['lastMessage'] = _lastMessage;
    map['lastMessageTimeStamp'] = _lastMessageTimeStamp;
    map['timestamp'] = _timestamp;
    return map;
  }

}