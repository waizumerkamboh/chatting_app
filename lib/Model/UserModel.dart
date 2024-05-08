/// id : "c"
/// name : "s"
/// email : "w"
/// profileImage : "e"
/// phoneNumber : "d"
/// about : "d"
/// createdAt : "d"
/// lastOnlineStatus : "ff"
/// status : "ff"

class UserModel {
  UserModel({
      String? id, 
      String? name, 
      String? email, 
      String? profileImage, 
      String? phoneNumber, 
      String? about, 
      String? createdAt, 
      String? lastOnlineStatus, 
      String? status,}){
    _id = id;
    _name = name;
    _email = email;
    _profileImage = profileImage;
    _phoneNumber = phoneNumber;
    _about = about;
    _createdAt = createdAt;
    _lastOnlineStatus = lastOnlineStatus;
    _status = status;
}

  UserModel.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
    _email = json['email'];
    _profileImage = json['profileImage'];
    _phoneNumber = json['phoneNumber'];
    _about = json['about'];
    _createdAt = json['createdAt'];
    _lastOnlineStatus = json['lastOnlineStatus'];
    _status = json['status'];
  }
  String? _id;
  String? _name;
  String? _email;
  String? _profileImage;
  String? _phoneNumber;
  String? _about;
  String? _createdAt;
  String? _lastOnlineStatus;
  String? _status;

  String? get id => _id;
  String? get name => _name;
  String? get email => _email;
  String? get profileImage => _profileImage;
  String? get phoneNumber => _phoneNumber;
  String? get about => _about;
  String? get createdAt => _createdAt;
  String? get lastOnlineStatus => _lastOnlineStatus;
  String? get status => _status;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    map['email'] = _email;
    map['profileImage'] = _profileImage;
    map['phoneNumber'] = _phoneNumber;
    map['about'] = _about;
    map['createdAt'] = _createdAt;
    map['lastOnlineStatus'] = _lastOnlineStatus;
    map['status'] = _status;
    return map;
  }

}