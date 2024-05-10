import 'package:we_chat/Model/UserModel.dart';

class ChatRoomModel {
String? id;
UserModel? sender;
UserModel? receiver;
List<Null>? messages;
int? unReadMessNo;
String? lastMessage;
String? lastMessageTimeStamp;
String? timestamp;

ChatRoomModel({this.id, this.sender, this.receiver, this.messages, this.unReadMessNo, this.lastMessage, this.lastMessageTimeStamp, this.timestamp});

ChatRoomModel.fromJson(Map<String, dynamic> json) {
id = json['id'];
sender = json['sender'] != null ? UserModel.fromJson(json['sender']) : null;
receiver = json['receiver'] != null ? UserModel.fromJson(json['receiver']) : null;
if (json['messages'] != null) {
messages = <Null>[];
json['messages'].forEach((v) { messages!.add(v); });
}
unReadMessNo = json['unReadMessNo'];
lastMessage = json['lastMessage'];
lastMessageTimeStamp = json['lastMessageTimeStamp'];
timestamp = json['timestamp'];
}

Map<String, dynamic> toJson() {
final Map<String, dynamic> data = Map<String, dynamic>();
data['id'] = this.id;
if (this.sender != null) {
data['sender'] = this.sender!.toJson();
}
if (this.receiver != null) {
data['receiver'] = this.receiver!.toJson();
}
if (this.messages != null) {
data['messages'] = this.messages!.map((v) => v).toList();
}
data['unReadMessNo'] = this.unReadMessNo;
data['lastMessage'] = this.lastMessage;
data['lastMessageTimeStamp'] = this.lastMessageTimeStamp;
data['timestamp'] = this.timestamp;
return data;
}
}
