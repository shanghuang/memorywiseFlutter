class Input$CoinInput {
  factory Input$CoinInput({
    String? walletAddress,
    String? privateKey,
    String? coinName,
    String? coinSymbol,
  }) =>
      Input$CoinInput._({
        if (walletAddress != null) r'walletAddress': walletAddress,
        if (privateKey != null) r'privateKey': privateKey,
        if (coinName != null) r'coinName': coinName,
        if (coinSymbol != null) r'coinSymbol': coinSymbol,
      });

  Input$CoinInput._(this._$data);

  factory Input$CoinInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('walletAddress')) {
      final l$walletAddress = data['walletAddress'];
      result$data['walletAddress'] = (l$walletAddress as String?);
    }
    if (data.containsKey('privateKey')) {
      final l$privateKey = data['privateKey'];
      result$data['privateKey'] = (l$privateKey as String?);
    }
    if (data.containsKey('coinName')) {
      final l$coinName = data['coinName'];
      result$data['coinName'] = (l$coinName as String?);
    }
    if (data.containsKey('coinSymbol')) {
      final l$coinSymbol = data['coinSymbol'];
      result$data['coinSymbol'] = (l$coinSymbol as String?);
    }
    return Input$CoinInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get walletAddress => (_$data['walletAddress'] as String?);

  String? get privateKey => (_$data['privateKey'] as String?);

  String? get coinName => (_$data['coinName'] as String?);

  String? get coinSymbol => (_$data['coinSymbol'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('walletAddress')) {
      final l$walletAddress = walletAddress;
      result$data['walletAddress'] = l$walletAddress;
    }
    if (_$data.containsKey('privateKey')) {
      final l$privateKey = privateKey;
      result$data['privateKey'] = l$privateKey;
    }
    if (_$data.containsKey('coinName')) {
      final l$coinName = coinName;
      result$data['coinName'] = l$coinName;
    }
    if (_$data.containsKey('coinSymbol')) {
      final l$coinSymbol = coinSymbol;
      result$data['coinSymbol'] = l$coinSymbol;
    }
    return result$data;
  }

  CopyWith$Input$CoinInput<Input$CoinInput> get copyWith =>
      CopyWith$Input$CoinInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$CoinInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$walletAddress = walletAddress;
    final lOther$walletAddress = other.walletAddress;
    if (_$data.containsKey('walletAddress') !=
        other._$data.containsKey('walletAddress')) {
      return false;
    }
    if (l$walletAddress != lOther$walletAddress) {
      return false;
    }
    final l$privateKey = privateKey;
    final lOther$privateKey = other.privateKey;
    if (_$data.containsKey('privateKey') !=
        other._$data.containsKey('privateKey')) {
      return false;
    }
    if (l$privateKey != lOther$privateKey) {
      return false;
    }
    final l$coinName = coinName;
    final lOther$coinName = other.coinName;
    if (_$data.containsKey('coinName') !=
        other._$data.containsKey('coinName')) {
      return false;
    }
    if (l$coinName != lOther$coinName) {
      return false;
    }
    final l$coinSymbol = coinSymbol;
    final lOther$coinSymbol = other.coinSymbol;
    if (_$data.containsKey('coinSymbol') !=
        other._$data.containsKey('coinSymbol')) {
      return false;
    }
    if (l$coinSymbol != lOther$coinSymbol) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$walletAddress = walletAddress;
    final l$privateKey = privateKey;
    final l$coinName = coinName;
    final l$coinSymbol = coinSymbol;
    return Object.hashAll([
      _$data.containsKey('walletAddress') ? l$walletAddress : const {},
      _$data.containsKey('privateKey') ? l$privateKey : const {},
      _$data.containsKey('coinName') ? l$coinName : const {},
      _$data.containsKey('coinSymbol') ? l$coinSymbol : const {},
    ]);
  }
}

abstract class CopyWith$Input$CoinInput<TRes> {
  factory CopyWith$Input$CoinInput(
    Input$CoinInput instance,
    TRes Function(Input$CoinInput) then,
  ) = _CopyWithImpl$Input$CoinInput;

  factory CopyWith$Input$CoinInput.stub(TRes res) =
      _CopyWithStubImpl$Input$CoinInput;

  TRes call({
    String? walletAddress,
    String? privateKey,
    String? coinName,
    String? coinSymbol,
  });
}

class _CopyWithImpl$Input$CoinInput<TRes>
    implements CopyWith$Input$CoinInput<TRes> {
  _CopyWithImpl$Input$CoinInput(
    this._instance,
    this._then,
  );

  final Input$CoinInput _instance;

  final TRes Function(Input$CoinInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? walletAddress = _undefined,
    Object? privateKey = _undefined,
    Object? coinName = _undefined,
    Object? coinSymbol = _undefined,
  }) =>
      _then(Input$CoinInput._({
        ..._instance._$data,
        if (walletAddress != _undefined)
          'walletAddress': (walletAddress as String?),
        if (privateKey != _undefined) 'privateKey': (privateKey as String?),
        if (coinName != _undefined) 'coinName': (coinName as String?),
        if (coinSymbol != _undefined) 'coinSymbol': (coinSymbol as String?),
      }));
}

class _CopyWithStubImpl$Input$CoinInput<TRes>
    implements CopyWith$Input$CoinInput<TRes> {
  _CopyWithStubImpl$Input$CoinInput(this._res);

  TRes _res;

  call({
    String? walletAddress,
    String? privateKey,
    String? coinName,
    String? coinSymbol,
  }) =>
      _res;
}

class Input$CommentInput {
  factory Input$CommentInput({
    String? parent,
    String? userId,
    String? username,
    String? text,
    String? date,
  }) =>
      Input$CommentInput._({
        if (parent != null) r'parent': parent,
        if (userId != null) r'userId': userId,
        if (username != null) r'username': username,
        if (text != null) r'text': text,
        if (date != null) r'date': date,
      });

  Input$CommentInput._(this._$data);

  factory Input$CommentInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('parent')) {
      final l$parent = data['parent'];
      result$data['parent'] = (l$parent as String?);
    }
    if (data.containsKey('userId')) {
      final l$userId = data['userId'];
      result$data['userId'] = (l$userId as String?);
    }
    if (data.containsKey('username')) {
      final l$username = data['username'];
      result$data['username'] = (l$username as String?);
    }
    if (data.containsKey('text')) {
      final l$text = data['text'];
      result$data['text'] = (l$text as String?);
    }
    if (data.containsKey('date')) {
      final l$date = data['date'];
      result$data['date'] = (l$date as String?);
    }
    return Input$CommentInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get parent => (_$data['parent'] as String?);

  String? get userId => (_$data['userId'] as String?);

  String? get username => (_$data['username'] as String?);

  String? get text => (_$data['text'] as String?);

  String? get date => (_$data['date'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('parent')) {
      final l$parent = parent;
      result$data['parent'] = l$parent;
    }
    if (_$data.containsKey('userId')) {
      final l$userId = userId;
      result$data['userId'] = l$userId;
    }
    if (_$data.containsKey('username')) {
      final l$username = username;
      result$data['username'] = l$username;
    }
    if (_$data.containsKey('text')) {
      final l$text = text;
      result$data['text'] = l$text;
    }
    if (_$data.containsKey('date')) {
      final l$date = date;
      result$data['date'] = l$date;
    }
    return result$data;
  }

  CopyWith$Input$CommentInput<Input$CommentInput> get copyWith =>
      CopyWith$Input$CommentInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$CommentInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$parent = parent;
    final lOther$parent = other.parent;
    if (_$data.containsKey('parent') != other._$data.containsKey('parent')) {
      return false;
    }
    if (l$parent != lOther$parent) {
      return false;
    }
    final l$userId = userId;
    final lOther$userId = other.userId;
    if (_$data.containsKey('userId') != other._$data.containsKey('userId')) {
      return false;
    }
    if (l$userId != lOther$userId) {
      return false;
    }
    final l$username = username;
    final lOther$username = other.username;
    if (_$data.containsKey('username') !=
        other._$data.containsKey('username')) {
      return false;
    }
    if (l$username != lOther$username) {
      return false;
    }
    final l$text = text;
    final lOther$text = other.text;
    if (_$data.containsKey('text') != other._$data.containsKey('text')) {
      return false;
    }
    if (l$text != lOther$text) {
      return false;
    }
    final l$date = date;
    final lOther$date = other.date;
    if (_$data.containsKey('date') != other._$data.containsKey('date')) {
      return false;
    }
    if (l$date != lOther$date) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$parent = parent;
    final l$userId = userId;
    final l$username = username;
    final l$text = text;
    final l$date = date;
    return Object.hashAll([
      _$data.containsKey('parent') ? l$parent : const {},
      _$data.containsKey('userId') ? l$userId : const {},
      _$data.containsKey('username') ? l$username : const {},
      _$data.containsKey('text') ? l$text : const {},
      _$data.containsKey('date') ? l$date : const {},
    ]);
  }
}

abstract class CopyWith$Input$CommentInput<TRes> {
  factory CopyWith$Input$CommentInput(
    Input$CommentInput instance,
    TRes Function(Input$CommentInput) then,
  ) = _CopyWithImpl$Input$CommentInput;

  factory CopyWith$Input$CommentInput.stub(TRes res) =
      _CopyWithStubImpl$Input$CommentInput;

  TRes call({
    String? parent,
    String? userId,
    String? username,
    String? text,
    String? date,
  });
}

class _CopyWithImpl$Input$CommentInput<TRes>
    implements CopyWith$Input$CommentInput<TRes> {
  _CopyWithImpl$Input$CommentInput(
    this._instance,
    this._then,
  );

  final Input$CommentInput _instance;

  final TRes Function(Input$CommentInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? parent = _undefined,
    Object? userId = _undefined,
    Object? username = _undefined,
    Object? text = _undefined,
    Object? date = _undefined,
  }) =>
      _then(Input$CommentInput._({
        ..._instance._$data,
        if (parent != _undefined) 'parent': (parent as String?),
        if (userId != _undefined) 'userId': (userId as String?),
        if (username != _undefined) 'username': (username as String?),
        if (text != _undefined) 'text': (text as String?),
        if (date != _undefined) 'date': (date as String?),
      }));
}

class _CopyWithStubImpl$Input$CommentInput<TRes>
    implements CopyWith$Input$CommentInput<TRes> {
  _CopyWithStubImpl$Input$CommentInput(this._res);

  TRes _res;

  call({
    String? parent,
    String? userId,
    String? username,
    String? text,
    String? date,
  }) =>
      _res;
}

class Input$ContactInput {
  factory Input$ContactInput({
    String? firstName,
    String? lastName,
  }) =>
      Input$ContactInput._({
        if (firstName != null) r'firstName': firstName,
        if (lastName != null) r'lastName': lastName,
      });

  Input$ContactInput._(this._$data);

  factory Input$ContactInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('firstName')) {
      final l$firstName = data['firstName'];
      result$data['firstName'] = (l$firstName as String?);
    }
    if (data.containsKey('lastName')) {
      final l$lastName = data['lastName'];
      result$data['lastName'] = (l$lastName as String?);
    }
    return Input$ContactInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get firstName => (_$data['firstName'] as String?);

  String? get lastName => (_$data['lastName'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('firstName')) {
      final l$firstName = firstName;
      result$data['firstName'] = l$firstName;
    }
    if (_$data.containsKey('lastName')) {
      final l$lastName = lastName;
      result$data['lastName'] = l$lastName;
    }
    return result$data;
  }

  CopyWith$Input$ContactInput<Input$ContactInput> get copyWith =>
      CopyWith$Input$ContactInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$ContactInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$firstName = firstName;
    final lOther$firstName = other.firstName;
    if (_$data.containsKey('firstName') !=
        other._$data.containsKey('firstName')) {
      return false;
    }
    if (l$firstName != lOther$firstName) {
      return false;
    }
    final l$lastName = lastName;
    final lOther$lastName = other.lastName;
    if (_$data.containsKey('lastName') !=
        other._$data.containsKey('lastName')) {
      return false;
    }
    if (l$lastName != lOther$lastName) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$firstName = firstName;
    final l$lastName = lastName;
    return Object.hashAll([
      _$data.containsKey('firstName') ? l$firstName : const {},
      _$data.containsKey('lastName') ? l$lastName : const {},
    ]);
  }
}

abstract class CopyWith$Input$ContactInput<TRes> {
  factory CopyWith$Input$ContactInput(
    Input$ContactInput instance,
    TRes Function(Input$ContactInput) then,
  ) = _CopyWithImpl$Input$ContactInput;

  factory CopyWith$Input$ContactInput.stub(TRes res) =
      _CopyWithStubImpl$Input$ContactInput;

  TRes call({
    String? firstName,
    String? lastName,
  });
}

class _CopyWithImpl$Input$ContactInput<TRes>
    implements CopyWith$Input$ContactInput<TRes> {
  _CopyWithImpl$Input$ContactInput(
    this._instance,
    this._then,
  );

  final Input$ContactInput _instance;

  final TRes Function(Input$ContactInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? firstName = _undefined,
    Object? lastName = _undefined,
  }) =>
      _then(Input$ContactInput._({
        ..._instance._$data,
        if (firstName != _undefined) 'firstName': (firstName as String?),
        if (lastName != _undefined) 'lastName': (lastName as String?),
      }));
}

class _CopyWithStubImpl$Input$ContactInput<TRes>
    implements CopyWith$Input$ContactInput<TRes> {
  _CopyWithStubImpl$Input$ContactInput(this._res);

  TRes _res;

  call({
    String? firstName,
    String? lastName,
  }) =>
      _res;
}

class Input$FriendInput {
  factory Input$FriendInput({
    String? id,
    String? firstName,
    String? lastName,
    Enum$Gender? gender,
    String? language,
    int? age,
    String? email,
    List<Input$ContactInput?>? contacts,
  }) =>
      Input$FriendInput._({
        if (id != null) r'id': id,
        if (firstName != null) r'firstName': firstName,
        if (lastName != null) r'lastName': lastName,
        if (gender != null) r'gender': gender,
        if (language != null) r'language': language,
        if (age != null) r'age': age,
        if (email != null) r'email': email,
        if (contacts != null) r'contacts': contacts,
      });

  Input$FriendInput._(this._$data);

  factory Input$FriendInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = (l$id as String?);
    }
    if (data.containsKey('firstName')) {
      final l$firstName = data['firstName'];
      result$data['firstName'] = (l$firstName as String?);
    }
    if (data.containsKey('lastName')) {
      final l$lastName = data['lastName'];
      result$data['lastName'] = (l$lastName as String?);
    }
    if (data.containsKey('gender')) {
      final l$gender = data['gender'];
      result$data['gender'] =
          l$gender == null ? null : fromJson$Enum$Gender((l$gender as String));
    }
    if (data.containsKey('language')) {
      final l$language = data['language'];
      result$data['language'] = (l$language as String?);
    }
    if (data.containsKey('age')) {
      final l$age = data['age'];
      result$data['age'] = (l$age as int?);
    }
    if (data.containsKey('email')) {
      final l$email = data['email'];
      result$data['email'] = (l$email as String?);
    }
    if (data.containsKey('contacts')) {
      final l$contacts = data['contacts'];
      result$data['contacts'] = (l$contacts as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Input$ContactInput.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    return Input$FriendInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get id => (_$data['id'] as String?);

  String? get firstName => (_$data['firstName'] as String?);

  String? get lastName => (_$data['lastName'] as String?);

  Enum$Gender? get gender => (_$data['gender'] as Enum$Gender?);

  String? get language => (_$data['language'] as String?);

  int? get age => (_$data['age'] as int?);

  String? get email => (_$data['email'] as String?);

  List<Input$ContactInput?>? get contacts =>
      (_$data['contacts'] as List<Input$ContactInput?>?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id;
    }
    if (_$data.containsKey('firstName')) {
      final l$firstName = firstName;
      result$data['firstName'] = l$firstName;
    }
    if (_$data.containsKey('lastName')) {
      final l$lastName = lastName;
      result$data['lastName'] = l$lastName;
    }
    if (_$data.containsKey('gender')) {
      final l$gender = gender;
      result$data['gender'] =
          l$gender == null ? null : toJson$Enum$Gender(l$gender);
    }
    if (_$data.containsKey('language')) {
      final l$language = language;
      result$data['language'] = l$language;
    }
    if (_$data.containsKey('age')) {
      final l$age = age;
      result$data['age'] = l$age;
    }
    if (_$data.containsKey('email')) {
      final l$email = email;
      result$data['email'] = l$email;
    }
    if (_$data.containsKey('contacts')) {
      final l$contacts = contacts;
      result$data['contacts'] = l$contacts?.map((e) => e?.toJson()).toList();
    }
    return result$data;
  }

  CopyWith$Input$FriendInput<Input$FriendInput> get copyWith =>
      CopyWith$Input$FriendInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$FriendInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$firstName = firstName;
    final lOther$firstName = other.firstName;
    if (_$data.containsKey('firstName') !=
        other._$data.containsKey('firstName')) {
      return false;
    }
    if (l$firstName != lOther$firstName) {
      return false;
    }
    final l$lastName = lastName;
    final lOther$lastName = other.lastName;
    if (_$data.containsKey('lastName') !=
        other._$data.containsKey('lastName')) {
      return false;
    }
    if (l$lastName != lOther$lastName) {
      return false;
    }
    final l$gender = gender;
    final lOther$gender = other.gender;
    if (_$data.containsKey('gender') != other._$data.containsKey('gender')) {
      return false;
    }
    if (l$gender != lOther$gender) {
      return false;
    }
    final l$language = language;
    final lOther$language = other.language;
    if (_$data.containsKey('language') !=
        other._$data.containsKey('language')) {
      return false;
    }
    if (l$language != lOther$language) {
      return false;
    }
    final l$age = age;
    final lOther$age = other.age;
    if (_$data.containsKey('age') != other._$data.containsKey('age')) {
      return false;
    }
    if (l$age != lOther$age) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (_$data.containsKey('email') != other._$data.containsKey('email')) {
      return false;
    }
    if (l$email != lOther$email) {
      return false;
    }
    final l$contacts = contacts;
    final lOther$contacts = other.contacts;
    if (_$data.containsKey('contacts') !=
        other._$data.containsKey('contacts')) {
      return false;
    }
    if (l$contacts != null && lOther$contacts != null) {
      if (l$contacts.length != lOther$contacts.length) {
        return false;
      }
      for (int i = 0; i < l$contacts.length; i++) {
        final l$contacts$entry = l$contacts[i];
        final lOther$contacts$entry = lOther$contacts[i];
        if (l$contacts$entry != lOther$contacts$entry) {
          return false;
        }
      }
    } else if (l$contacts != lOther$contacts) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$firstName = firstName;
    final l$lastName = lastName;
    final l$gender = gender;
    final l$language = language;
    final l$age = age;
    final l$email = email;
    final l$contacts = contacts;
    return Object.hashAll([
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('firstName') ? l$firstName : const {},
      _$data.containsKey('lastName') ? l$lastName : const {},
      _$data.containsKey('gender') ? l$gender : const {},
      _$data.containsKey('language') ? l$language : const {},
      _$data.containsKey('age') ? l$age : const {},
      _$data.containsKey('email') ? l$email : const {},
      _$data.containsKey('contacts')
          ? l$contacts == null
              ? null
              : Object.hashAll(l$contacts.map((v) => v))
          : const {},
    ]);
  }
}

abstract class CopyWith$Input$FriendInput<TRes> {
  factory CopyWith$Input$FriendInput(
    Input$FriendInput instance,
    TRes Function(Input$FriendInput) then,
  ) = _CopyWithImpl$Input$FriendInput;

  factory CopyWith$Input$FriendInput.stub(TRes res) =
      _CopyWithStubImpl$Input$FriendInput;

  TRes call({
    String? id,
    String? firstName,
    String? lastName,
    Enum$Gender? gender,
    String? language,
    int? age,
    String? email,
    List<Input$ContactInput?>? contacts,
  });
  TRes contacts(
      Iterable<Input$ContactInput?>? Function(
              Iterable<CopyWith$Input$ContactInput<Input$ContactInput>?>?)
          _fn);
}

class _CopyWithImpl$Input$FriendInput<TRes>
    implements CopyWith$Input$FriendInput<TRes> {
  _CopyWithImpl$Input$FriendInput(
    this._instance,
    this._then,
  );

  final Input$FriendInput _instance;

  final TRes Function(Input$FriendInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? firstName = _undefined,
    Object? lastName = _undefined,
    Object? gender = _undefined,
    Object? language = _undefined,
    Object? age = _undefined,
    Object? email = _undefined,
    Object? contacts = _undefined,
  }) =>
      _then(Input$FriendInput._({
        ..._instance._$data,
        if (id != _undefined) 'id': (id as String?),
        if (firstName != _undefined) 'firstName': (firstName as String?),
        if (lastName != _undefined) 'lastName': (lastName as String?),
        if (gender != _undefined) 'gender': (gender as Enum$Gender?),
        if (language != _undefined) 'language': (language as String?),
        if (age != _undefined) 'age': (age as int?),
        if (email != _undefined) 'email': (email as String?),
        if (contacts != _undefined)
          'contacts': (contacts as List<Input$ContactInput?>?),
      }));

  TRes contacts(
          Iterable<Input$ContactInput?>? Function(
                  Iterable<CopyWith$Input$ContactInput<Input$ContactInput>?>?)
              _fn) =>
      call(
          contacts: _fn(_instance.contacts?.map((e) => e == null
              ? null
              : CopyWith$Input$ContactInput(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Input$FriendInput<TRes>
    implements CopyWith$Input$FriendInput<TRes> {
  _CopyWithStubImpl$Input$FriendInput(this._res);

  TRes _res;

  call({
    String? id,
    String? firstName,
    String? lastName,
    Enum$Gender? gender,
    String? language,
    int? age,
    String? email,
    List<Input$ContactInput?>? contacts,
  }) =>
      _res;

  contacts(_fn) => _res;
}

class Input$OrderInput {
  factory Input$OrderInput({
    String? user,
    int? ken3Amount,
    int? ken5Amount,
    String? receiverName,
    String? receiverAddress,
    String? receiverPhone,
    int? totalPrice,
    String? date,
  }) =>
      Input$OrderInput._({
        if (user != null) r'user': user,
        if (ken3Amount != null) r'ken3Amount': ken3Amount,
        if (ken5Amount != null) r'ken5Amount': ken5Amount,
        if (receiverName != null) r'receiverName': receiverName,
        if (receiverAddress != null) r'receiverAddress': receiverAddress,
        if (receiverPhone != null) r'receiverPhone': receiverPhone,
        if (totalPrice != null) r'totalPrice': totalPrice,
        if (date != null) r'date': date,
      });

  Input$OrderInput._(this._$data);

  factory Input$OrderInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('user')) {
      final l$user = data['user'];
      result$data['user'] = (l$user as String?);
    }
    if (data.containsKey('ken3Amount')) {
      final l$ken3Amount = data['ken3Amount'];
      result$data['ken3Amount'] = (l$ken3Amount as int?);
    }
    if (data.containsKey('ken5Amount')) {
      final l$ken5Amount = data['ken5Amount'];
      result$data['ken5Amount'] = (l$ken5Amount as int?);
    }
    if (data.containsKey('receiverName')) {
      final l$receiverName = data['receiverName'];
      result$data['receiverName'] = (l$receiverName as String?);
    }
    if (data.containsKey('receiverAddress')) {
      final l$receiverAddress = data['receiverAddress'];
      result$data['receiverAddress'] = (l$receiverAddress as String?);
    }
    if (data.containsKey('receiverPhone')) {
      final l$receiverPhone = data['receiverPhone'];
      result$data['receiverPhone'] = (l$receiverPhone as String?);
    }
    if (data.containsKey('totalPrice')) {
      final l$totalPrice = data['totalPrice'];
      result$data['totalPrice'] = (l$totalPrice as int?);
    }
    if (data.containsKey('date')) {
      final l$date = data['date'];
      result$data['date'] = (l$date as String?);
    }
    return Input$OrderInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get user => (_$data['user'] as String?);

  int? get ken3Amount => (_$data['ken3Amount'] as int?);

  int? get ken5Amount => (_$data['ken5Amount'] as int?);

  String? get receiverName => (_$data['receiverName'] as String?);

  String? get receiverAddress => (_$data['receiverAddress'] as String?);

  String? get receiverPhone => (_$data['receiverPhone'] as String?);

  int? get totalPrice => (_$data['totalPrice'] as int?);

  String? get date => (_$data['date'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('user')) {
      final l$user = user;
      result$data['user'] = l$user;
    }
    if (_$data.containsKey('ken3Amount')) {
      final l$ken3Amount = ken3Amount;
      result$data['ken3Amount'] = l$ken3Amount;
    }
    if (_$data.containsKey('ken5Amount')) {
      final l$ken5Amount = ken5Amount;
      result$data['ken5Amount'] = l$ken5Amount;
    }
    if (_$data.containsKey('receiverName')) {
      final l$receiverName = receiverName;
      result$data['receiverName'] = l$receiverName;
    }
    if (_$data.containsKey('receiverAddress')) {
      final l$receiverAddress = receiverAddress;
      result$data['receiverAddress'] = l$receiverAddress;
    }
    if (_$data.containsKey('receiverPhone')) {
      final l$receiverPhone = receiverPhone;
      result$data['receiverPhone'] = l$receiverPhone;
    }
    if (_$data.containsKey('totalPrice')) {
      final l$totalPrice = totalPrice;
      result$data['totalPrice'] = l$totalPrice;
    }
    if (_$data.containsKey('date')) {
      final l$date = date;
      result$data['date'] = l$date;
    }
    return result$data;
  }

  CopyWith$Input$OrderInput<Input$OrderInput> get copyWith =>
      CopyWith$Input$OrderInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$OrderInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$user = user;
    final lOther$user = other.user;
    if (_$data.containsKey('user') != other._$data.containsKey('user')) {
      return false;
    }
    if (l$user != lOther$user) {
      return false;
    }
    final l$ken3Amount = ken3Amount;
    final lOther$ken3Amount = other.ken3Amount;
    if (_$data.containsKey('ken3Amount') !=
        other._$data.containsKey('ken3Amount')) {
      return false;
    }
    if (l$ken3Amount != lOther$ken3Amount) {
      return false;
    }
    final l$ken5Amount = ken5Amount;
    final lOther$ken5Amount = other.ken5Amount;
    if (_$data.containsKey('ken5Amount') !=
        other._$data.containsKey('ken5Amount')) {
      return false;
    }
    if (l$ken5Amount != lOther$ken5Amount) {
      return false;
    }
    final l$receiverName = receiverName;
    final lOther$receiverName = other.receiverName;
    if (_$data.containsKey('receiverName') !=
        other._$data.containsKey('receiverName')) {
      return false;
    }
    if (l$receiverName != lOther$receiverName) {
      return false;
    }
    final l$receiverAddress = receiverAddress;
    final lOther$receiverAddress = other.receiverAddress;
    if (_$data.containsKey('receiverAddress') !=
        other._$data.containsKey('receiverAddress')) {
      return false;
    }
    if (l$receiverAddress != lOther$receiverAddress) {
      return false;
    }
    final l$receiverPhone = receiverPhone;
    final lOther$receiverPhone = other.receiverPhone;
    if (_$data.containsKey('receiverPhone') !=
        other._$data.containsKey('receiverPhone')) {
      return false;
    }
    if (l$receiverPhone != lOther$receiverPhone) {
      return false;
    }
    final l$totalPrice = totalPrice;
    final lOther$totalPrice = other.totalPrice;
    if (_$data.containsKey('totalPrice') !=
        other._$data.containsKey('totalPrice')) {
      return false;
    }
    if (l$totalPrice != lOther$totalPrice) {
      return false;
    }
    final l$date = date;
    final lOther$date = other.date;
    if (_$data.containsKey('date') != other._$data.containsKey('date')) {
      return false;
    }
    if (l$date != lOther$date) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$user = user;
    final l$ken3Amount = ken3Amount;
    final l$ken5Amount = ken5Amount;
    final l$receiverName = receiverName;
    final l$receiverAddress = receiverAddress;
    final l$receiverPhone = receiverPhone;
    final l$totalPrice = totalPrice;
    final l$date = date;
    return Object.hashAll([
      _$data.containsKey('user') ? l$user : const {},
      _$data.containsKey('ken3Amount') ? l$ken3Amount : const {},
      _$data.containsKey('ken5Amount') ? l$ken5Amount : const {},
      _$data.containsKey('receiverName') ? l$receiverName : const {},
      _$data.containsKey('receiverAddress') ? l$receiverAddress : const {},
      _$data.containsKey('receiverPhone') ? l$receiverPhone : const {},
      _$data.containsKey('totalPrice') ? l$totalPrice : const {},
      _$data.containsKey('date') ? l$date : const {},
    ]);
  }
}

abstract class CopyWith$Input$OrderInput<TRes> {
  factory CopyWith$Input$OrderInput(
    Input$OrderInput instance,
    TRes Function(Input$OrderInput) then,
  ) = _CopyWithImpl$Input$OrderInput;

  factory CopyWith$Input$OrderInput.stub(TRes res) =
      _CopyWithStubImpl$Input$OrderInput;

  TRes call({
    String? user,
    int? ken3Amount,
    int? ken5Amount,
    String? receiverName,
    String? receiverAddress,
    String? receiverPhone,
    int? totalPrice,
    String? date,
  });
}

class _CopyWithImpl$Input$OrderInput<TRes>
    implements CopyWith$Input$OrderInput<TRes> {
  _CopyWithImpl$Input$OrderInput(
    this._instance,
    this._then,
  );

  final Input$OrderInput _instance;

  final TRes Function(Input$OrderInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? user = _undefined,
    Object? ken3Amount = _undefined,
    Object? ken5Amount = _undefined,
    Object? receiverName = _undefined,
    Object? receiverAddress = _undefined,
    Object? receiverPhone = _undefined,
    Object? totalPrice = _undefined,
    Object? date = _undefined,
  }) =>
      _then(Input$OrderInput._({
        ..._instance._$data,
        if (user != _undefined) 'user': (user as String?),
        if (ken3Amount != _undefined) 'ken3Amount': (ken3Amount as int?),
        if (ken5Amount != _undefined) 'ken5Amount': (ken5Amount as int?),
        if (receiverName != _undefined)
          'receiverName': (receiverName as String?),
        if (receiverAddress != _undefined)
          'receiverAddress': (receiverAddress as String?),
        if (receiverPhone != _undefined)
          'receiverPhone': (receiverPhone as String?),
        if (totalPrice != _undefined) 'totalPrice': (totalPrice as int?),
        if (date != _undefined) 'date': (date as String?),
      }));
}

class _CopyWithStubImpl$Input$OrderInput<TRes>
    implements CopyWith$Input$OrderInput<TRes> {
  _CopyWithStubImpl$Input$OrderInput(this._res);

  TRes _res;

  call({
    String? user,
    int? ken3Amount,
    int? ken5Amount,
    String? receiverName,
    String? receiverAddress,
    String? receiverPhone,
    int? totalPrice,
    String? date,
  }) =>
      _res;
}

class Input$PostInput {
  factory Input$PostInput({
    String? user,
    String? username,
    String? keyword,
    String? text,
    String? image,
    String? date,
  }) =>
      Input$PostInput._({
        if (user != null) r'user': user,
        if (username != null) r'username': username,
        if (keyword != null) r'keyword': keyword,
        if (text != null) r'text': text,
        if (image != null) r'image': image,
        if (date != null) r'date': date,
      });

  Input$PostInput._(this._$data);

  factory Input$PostInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('user')) {
      final l$user = data['user'];
      result$data['user'] = (l$user as String?);
    }
    if (data.containsKey('username')) {
      final l$username = data['username'];
      result$data['username'] = (l$username as String?);
    }
    if (data.containsKey('keyword')) {
      final l$keyword = data['keyword'];
      result$data['keyword'] = (l$keyword as String?);
    }
    if (data.containsKey('text')) {
      final l$text = data['text'];
      result$data['text'] = (l$text as String?);
    }
    if (data.containsKey('image')) {
      final l$image = data['image'];
      result$data['image'] = (l$image as String?);
    }
    if (data.containsKey('date')) {
      final l$date = data['date'];
      result$data['date'] = (l$date as String?);
    }
    return Input$PostInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get user => (_$data['user'] as String?);

  String? get username => (_$data['username'] as String?);

  String? get keyword => (_$data['keyword'] as String?);

  String? get text => (_$data['text'] as String?);

  String? get image => (_$data['image'] as String?);

  String? get date => (_$data['date'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('user')) {
      final l$user = user;
      result$data['user'] = l$user;
    }
    if (_$data.containsKey('username')) {
      final l$username = username;
      result$data['username'] = l$username;
    }
    if (_$data.containsKey('keyword')) {
      final l$keyword = keyword;
      result$data['keyword'] = l$keyword;
    }
    if (_$data.containsKey('text')) {
      final l$text = text;
      result$data['text'] = l$text;
    }
    if (_$data.containsKey('image')) {
      final l$image = image;
      result$data['image'] = l$image;
    }
    if (_$data.containsKey('date')) {
      final l$date = date;
      result$data['date'] = l$date;
    }
    return result$data;
  }

  CopyWith$Input$PostInput<Input$PostInput> get copyWith =>
      CopyWith$Input$PostInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$PostInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$user = user;
    final lOther$user = other.user;
    if (_$data.containsKey('user') != other._$data.containsKey('user')) {
      return false;
    }
    if (l$user != lOther$user) {
      return false;
    }
    final l$username = username;
    final lOther$username = other.username;
    if (_$data.containsKey('username') !=
        other._$data.containsKey('username')) {
      return false;
    }
    if (l$username != lOther$username) {
      return false;
    }
    final l$keyword = keyword;
    final lOther$keyword = other.keyword;
    if (_$data.containsKey('keyword') != other._$data.containsKey('keyword')) {
      return false;
    }
    if (l$keyword != lOther$keyword) {
      return false;
    }
    final l$text = text;
    final lOther$text = other.text;
    if (_$data.containsKey('text') != other._$data.containsKey('text')) {
      return false;
    }
    if (l$text != lOther$text) {
      return false;
    }
    final l$image = image;
    final lOther$image = other.image;
    if (_$data.containsKey('image') != other._$data.containsKey('image')) {
      return false;
    }
    if (l$image != lOther$image) {
      return false;
    }
    final l$date = date;
    final lOther$date = other.date;
    if (_$data.containsKey('date') != other._$data.containsKey('date')) {
      return false;
    }
    if (l$date != lOther$date) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$user = user;
    final l$username = username;
    final l$keyword = keyword;
    final l$text = text;
    final l$image = image;
    final l$date = date;
    return Object.hashAll([
      _$data.containsKey('user') ? l$user : const {},
      _$data.containsKey('username') ? l$username : const {},
      _$data.containsKey('keyword') ? l$keyword : const {},
      _$data.containsKey('text') ? l$text : const {},
      _$data.containsKey('image') ? l$image : const {},
      _$data.containsKey('date') ? l$date : const {},
    ]);
  }
}

abstract class CopyWith$Input$PostInput<TRes> {
  factory CopyWith$Input$PostInput(
    Input$PostInput instance,
    TRes Function(Input$PostInput) then,
  ) = _CopyWithImpl$Input$PostInput;

  factory CopyWith$Input$PostInput.stub(TRes res) =
      _CopyWithStubImpl$Input$PostInput;

  TRes call({
    String? user,
    String? username,
    String? keyword,
    String? text,
    String? image,
    String? date,
  });
}

class _CopyWithImpl$Input$PostInput<TRes>
    implements CopyWith$Input$PostInput<TRes> {
  _CopyWithImpl$Input$PostInput(
    this._instance,
    this._then,
  );

  final Input$PostInput _instance;

  final TRes Function(Input$PostInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? user = _undefined,
    Object? username = _undefined,
    Object? keyword = _undefined,
    Object? text = _undefined,
    Object? image = _undefined,
    Object? date = _undefined,
  }) =>
      _then(Input$PostInput._({
        ..._instance._$data,
        if (user != _undefined) 'user': (user as String?),
        if (username != _undefined) 'username': (username as String?),
        if (keyword != _undefined) 'keyword': (keyword as String?),
        if (text != _undefined) 'text': (text as String?),
        if (image != _undefined) 'image': (image as String?),
        if (date != _undefined) 'date': (date as String?),
      }));
}

class _CopyWithStubImpl$Input$PostInput<TRes>
    implements CopyWith$Input$PostInput<TRes> {
  _CopyWithStubImpl$Input$PostInput(this._res);

  TRes _res;

  call({
    String? user,
    String? username,
    String? keyword,
    String? text,
    String? image,
    String? date,
  }) =>
      _res;
}

class Input$QAAnswer {
  factory Input$QAAnswer({
    String? id,
    String? userId,
    String? question,
    String? text,
    String? image,
    String? date,
  }) =>
      Input$QAAnswer._({
        if (id != null) r'id': id,
        if (userId != null) r'userId': userId,
        if (question != null) r'question': question,
        if (text != null) r'text': text,
        if (image != null) r'image': image,
        if (date != null) r'date': date,
      });

  Input$QAAnswer._(this._$data);

  factory Input$QAAnswer.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = (l$id as String?);
    }
    if (data.containsKey('userId')) {
      final l$userId = data['userId'];
      result$data['userId'] = (l$userId as String?);
    }
    if (data.containsKey('question')) {
      final l$question = data['question'];
      result$data['question'] = (l$question as String?);
    }
    if (data.containsKey('text')) {
      final l$text = data['text'];
      result$data['text'] = (l$text as String?);
    }
    if (data.containsKey('image')) {
      final l$image = data['image'];
      result$data['image'] = (l$image as String?);
    }
    if (data.containsKey('date')) {
      final l$date = data['date'];
      result$data['date'] = (l$date as String?);
    }
    return Input$QAAnswer._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get id => (_$data['id'] as String?);

  String? get userId => (_$data['userId'] as String?);

  String? get question => (_$data['question'] as String?);

  String? get text => (_$data['text'] as String?);

  String? get image => (_$data['image'] as String?);

  String? get date => (_$data['date'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id;
    }
    if (_$data.containsKey('userId')) {
      final l$userId = userId;
      result$data['userId'] = l$userId;
    }
    if (_$data.containsKey('question')) {
      final l$question = question;
      result$data['question'] = l$question;
    }
    if (_$data.containsKey('text')) {
      final l$text = text;
      result$data['text'] = l$text;
    }
    if (_$data.containsKey('image')) {
      final l$image = image;
      result$data['image'] = l$image;
    }
    if (_$data.containsKey('date')) {
      final l$date = date;
      result$data['date'] = l$date;
    }
    return result$data;
  }

  CopyWith$Input$QAAnswer<Input$QAAnswer> get copyWith =>
      CopyWith$Input$QAAnswer(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$QAAnswer || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$userId = userId;
    final lOther$userId = other.userId;
    if (_$data.containsKey('userId') != other._$data.containsKey('userId')) {
      return false;
    }
    if (l$userId != lOther$userId) {
      return false;
    }
    final l$question = question;
    final lOther$question = other.question;
    if (_$data.containsKey('question') !=
        other._$data.containsKey('question')) {
      return false;
    }
    if (l$question != lOther$question) {
      return false;
    }
    final l$text = text;
    final lOther$text = other.text;
    if (_$data.containsKey('text') != other._$data.containsKey('text')) {
      return false;
    }
    if (l$text != lOther$text) {
      return false;
    }
    final l$image = image;
    final lOther$image = other.image;
    if (_$data.containsKey('image') != other._$data.containsKey('image')) {
      return false;
    }
    if (l$image != lOther$image) {
      return false;
    }
    final l$date = date;
    final lOther$date = other.date;
    if (_$data.containsKey('date') != other._$data.containsKey('date')) {
      return false;
    }
    if (l$date != lOther$date) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$userId = userId;
    final l$question = question;
    final l$text = text;
    final l$image = image;
    final l$date = date;
    return Object.hashAll([
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('userId') ? l$userId : const {},
      _$data.containsKey('question') ? l$question : const {},
      _$data.containsKey('text') ? l$text : const {},
      _$data.containsKey('image') ? l$image : const {},
      _$data.containsKey('date') ? l$date : const {},
    ]);
  }
}

abstract class CopyWith$Input$QAAnswer<TRes> {
  factory CopyWith$Input$QAAnswer(
    Input$QAAnswer instance,
    TRes Function(Input$QAAnswer) then,
  ) = _CopyWithImpl$Input$QAAnswer;

  factory CopyWith$Input$QAAnswer.stub(TRes res) =
      _CopyWithStubImpl$Input$QAAnswer;

  TRes call({
    String? id,
    String? userId,
    String? question,
    String? text,
    String? image,
    String? date,
  });
}

class _CopyWithImpl$Input$QAAnswer<TRes>
    implements CopyWith$Input$QAAnswer<TRes> {
  _CopyWithImpl$Input$QAAnswer(
    this._instance,
    this._then,
  );

  final Input$QAAnswer _instance;

  final TRes Function(Input$QAAnswer) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? userId = _undefined,
    Object? question = _undefined,
    Object? text = _undefined,
    Object? image = _undefined,
    Object? date = _undefined,
  }) =>
      _then(Input$QAAnswer._({
        ..._instance._$data,
        if (id != _undefined) 'id': (id as String?),
        if (userId != _undefined) 'userId': (userId as String?),
        if (question != _undefined) 'question': (question as String?),
        if (text != _undefined) 'text': (text as String?),
        if (image != _undefined) 'image': (image as String?),
        if (date != _undefined) 'date': (date as String?),
      }));
}

class _CopyWithStubImpl$Input$QAAnswer<TRes>
    implements CopyWith$Input$QAAnswer<TRes> {
  _CopyWithStubImpl$Input$QAAnswer(this._res);

  TRes _res;

  call({
    String? id,
    String? userId,
    String? question,
    String? text,
    String? image,
    String? date,
  }) =>
      _res;
}

class Input$QAAnswerScore {
  factory Input$QAAnswerScore({
    String? id,
    String? userId,
    int? score,
    String? text,
    String? date,
  }) =>
      Input$QAAnswerScore._({
        if (id != null) r'id': id,
        if (userId != null) r'userId': userId,
        if (score != null) r'score': score,
        if (text != null) r'text': text,
        if (date != null) r'date': date,
      });

  Input$QAAnswerScore._(this._$data);

  factory Input$QAAnswerScore.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = (l$id as String?);
    }
    if (data.containsKey('userId')) {
      final l$userId = data['userId'];
      result$data['userId'] = (l$userId as String?);
    }
    if (data.containsKey('score')) {
      final l$score = data['score'];
      result$data['score'] = (l$score as int?);
    }
    if (data.containsKey('text')) {
      final l$text = data['text'];
      result$data['text'] = (l$text as String?);
    }
    if (data.containsKey('date')) {
      final l$date = data['date'];
      result$data['date'] = (l$date as String?);
    }
    return Input$QAAnswerScore._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get id => (_$data['id'] as String?);

  String? get userId => (_$data['userId'] as String?);

  int? get score => (_$data['score'] as int?);

  String? get text => (_$data['text'] as String?);

  String? get date => (_$data['date'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id;
    }
    if (_$data.containsKey('userId')) {
      final l$userId = userId;
      result$data['userId'] = l$userId;
    }
    if (_$data.containsKey('score')) {
      final l$score = score;
      result$data['score'] = l$score;
    }
    if (_$data.containsKey('text')) {
      final l$text = text;
      result$data['text'] = l$text;
    }
    if (_$data.containsKey('date')) {
      final l$date = date;
      result$data['date'] = l$date;
    }
    return result$data;
  }

  CopyWith$Input$QAAnswerScore<Input$QAAnswerScore> get copyWith =>
      CopyWith$Input$QAAnswerScore(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$QAAnswerScore || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$userId = userId;
    final lOther$userId = other.userId;
    if (_$data.containsKey('userId') != other._$data.containsKey('userId')) {
      return false;
    }
    if (l$userId != lOther$userId) {
      return false;
    }
    final l$score = score;
    final lOther$score = other.score;
    if (_$data.containsKey('score') != other._$data.containsKey('score')) {
      return false;
    }
    if (l$score != lOther$score) {
      return false;
    }
    final l$text = text;
    final lOther$text = other.text;
    if (_$data.containsKey('text') != other._$data.containsKey('text')) {
      return false;
    }
    if (l$text != lOther$text) {
      return false;
    }
    final l$date = date;
    final lOther$date = other.date;
    if (_$data.containsKey('date') != other._$data.containsKey('date')) {
      return false;
    }
    if (l$date != lOther$date) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$userId = userId;
    final l$score = score;
    final l$text = text;
    final l$date = date;
    return Object.hashAll([
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('userId') ? l$userId : const {},
      _$data.containsKey('score') ? l$score : const {},
      _$data.containsKey('text') ? l$text : const {},
      _$data.containsKey('date') ? l$date : const {},
    ]);
  }
}

abstract class CopyWith$Input$QAAnswerScore<TRes> {
  factory CopyWith$Input$QAAnswerScore(
    Input$QAAnswerScore instance,
    TRes Function(Input$QAAnswerScore) then,
  ) = _CopyWithImpl$Input$QAAnswerScore;

  factory CopyWith$Input$QAAnswerScore.stub(TRes res) =
      _CopyWithStubImpl$Input$QAAnswerScore;

  TRes call({
    String? id,
    String? userId,
    int? score,
    String? text,
    String? date,
  });
}

class _CopyWithImpl$Input$QAAnswerScore<TRes>
    implements CopyWith$Input$QAAnswerScore<TRes> {
  _CopyWithImpl$Input$QAAnswerScore(
    this._instance,
    this._then,
  );

  final Input$QAAnswerScore _instance;

  final TRes Function(Input$QAAnswerScore) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? userId = _undefined,
    Object? score = _undefined,
    Object? text = _undefined,
    Object? date = _undefined,
  }) =>
      _then(Input$QAAnswerScore._({
        ..._instance._$data,
        if (id != _undefined) 'id': (id as String?),
        if (userId != _undefined) 'userId': (userId as String?),
        if (score != _undefined) 'score': (score as int?),
        if (text != _undefined) 'text': (text as String?),
        if (date != _undefined) 'date': (date as String?),
      }));
}

class _CopyWithStubImpl$Input$QAAnswerScore<TRes>
    implements CopyWith$Input$QAAnswerScore<TRes> {
  _CopyWithStubImpl$Input$QAAnswerScore(this._res);

  TRes _res;

  call({
    String? id,
    String? userId,
    int? score,
    String? text,
    String? date,
  }) =>
      _res;
}

class Input$QAPost {
  factory Input$QAPost({
    String? user,
    String? text,
    String? image,
    String? date,
  }) =>
      Input$QAPost._({
        if (user != null) r'user': user,
        if (text != null) r'text': text,
        if (image != null) r'image': image,
        if (date != null) r'date': date,
      });

  Input$QAPost._(this._$data);

  factory Input$QAPost.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('user')) {
      final l$user = data['user'];
      result$data['user'] = (l$user as String?);
    }
    if (data.containsKey('text')) {
      final l$text = data['text'];
      result$data['text'] = (l$text as String?);
    }
    if (data.containsKey('image')) {
      final l$image = data['image'];
      result$data['image'] = (l$image as String?);
    }
    if (data.containsKey('date')) {
      final l$date = data['date'];
      result$data['date'] = (l$date as String?);
    }
    return Input$QAPost._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get user => (_$data['user'] as String?);

  String? get text => (_$data['text'] as String?);

  String? get image => (_$data['image'] as String?);

  String? get date => (_$data['date'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('user')) {
      final l$user = user;
      result$data['user'] = l$user;
    }
    if (_$data.containsKey('text')) {
      final l$text = text;
      result$data['text'] = l$text;
    }
    if (_$data.containsKey('image')) {
      final l$image = image;
      result$data['image'] = l$image;
    }
    if (_$data.containsKey('date')) {
      final l$date = date;
      result$data['date'] = l$date;
    }
    return result$data;
  }

  CopyWith$Input$QAPost<Input$QAPost> get copyWith => CopyWith$Input$QAPost(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$QAPost || runtimeType != other.runtimeType) {
      return false;
    }
    final l$user = user;
    final lOther$user = other.user;
    if (_$data.containsKey('user') != other._$data.containsKey('user')) {
      return false;
    }
    if (l$user != lOther$user) {
      return false;
    }
    final l$text = text;
    final lOther$text = other.text;
    if (_$data.containsKey('text') != other._$data.containsKey('text')) {
      return false;
    }
    if (l$text != lOther$text) {
      return false;
    }
    final l$image = image;
    final lOther$image = other.image;
    if (_$data.containsKey('image') != other._$data.containsKey('image')) {
      return false;
    }
    if (l$image != lOther$image) {
      return false;
    }
    final l$date = date;
    final lOther$date = other.date;
    if (_$data.containsKey('date') != other._$data.containsKey('date')) {
      return false;
    }
    if (l$date != lOther$date) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$user = user;
    final l$text = text;
    final l$image = image;
    final l$date = date;
    return Object.hashAll([
      _$data.containsKey('user') ? l$user : const {},
      _$data.containsKey('text') ? l$text : const {},
      _$data.containsKey('image') ? l$image : const {},
      _$data.containsKey('date') ? l$date : const {},
    ]);
  }
}

abstract class CopyWith$Input$QAPost<TRes> {
  factory CopyWith$Input$QAPost(
    Input$QAPost instance,
    TRes Function(Input$QAPost) then,
  ) = _CopyWithImpl$Input$QAPost;

  factory CopyWith$Input$QAPost.stub(TRes res) = _CopyWithStubImpl$Input$QAPost;

  TRes call({
    String? user,
    String? text,
    String? image,
    String? date,
  });
}

class _CopyWithImpl$Input$QAPost<TRes> implements CopyWith$Input$QAPost<TRes> {
  _CopyWithImpl$Input$QAPost(
    this._instance,
    this._then,
  );

  final Input$QAPost _instance;

  final TRes Function(Input$QAPost) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? user = _undefined,
    Object? text = _undefined,
    Object? image = _undefined,
    Object? date = _undefined,
  }) =>
      _then(Input$QAPost._({
        ..._instance._$data,
        if (user != _undefined) 'user': (user as String?),
        if (text != _undefined) 'text': (text as String?),
        if (image != _undefined) 'image': (image as String?),
        if (date != _undefined) 'date': (date as String?),
      }));
}

class _CopyWithStubImpl$Input$QAPost<TRes>
    implements CopyWith$Input$QAPost<TRes> {
  _CopyWithStubImpl$Input$QAPost(this._res);

  TRes _res;

  call({
    String? user,
    String? text,
    String? image,
    String? date,
  }) =>
      _res;
}

class Input$SeriesInput {
  factory Input$SeriesInput({
    String? id,
    String? seriesName,
    int? year,
    Enum$Rating? rating,
  }) =>
      Input$SeriesInput._({
        if (id != null) r'id': id,
        if (seriesName != null) r'seriesName': seriesName,
        if (year != null) r'year': year,
        if (rating != null) r'rating': rating,
      });

  Input$SeriesInput._(this._$data);

  factory Input$SeriesInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = (l$id as String?);
    }
    if (data.containsKey('seriesName')) {
      final l$seriesName = data['seriesName'];
      result$data['seriesName'] = (l$seriesName as String?);
    }
    if (data.containsKey('year')) {
      final l$year = data['year'];
      result$data['year'] = (l$year as int?);
    }
    if (data.containsKey('rating')) {
      final l$rating = data['rating'];
      result$data['rating'] =
          l$rating == null ? null : fromJson$Enum$Rating((l$rating as String));
    }
    return Input$SeriesInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get id => (_$data['id'] as String?);

  String? get seriesName => (_$data['seriesName'] as String?);

  int? get year => (_$data['year'] as int?);

  Enum$Rating? get rating => (_$data['rating'] as Enum$Rating?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id;
    }
    if (_$data.containsKey('seriesName')) {
      final l$seriesName = seriesName;
      result$data['seriesName'] = l$seriesName;
    }
    if (_$data.containsKey('year')) {
      final l$year = year;
      result$data['year'] = l$year;
    }
    if (_$data.containsKey('rating')) {
      final l$rating = rating;
      result$data['rating'] =
          l$rating == null ? null : toJson$Enum$Rating(l$rating);
    }
    return result$data;
  }

  CopyWith$Input$SeriesInput<Input$SeriesInput> get copyWith =>
      CopyWith$Input$SeriesInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$SeriesInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$seriesName = seriesName;
    final lOther$seriesName = other.seriesName;
    if (_$data.containsKey('seriesName') !=
        other._$data.containsKey('seriesName')) {
      return false;
    }
    if (l$seriesName != lOther$seriesName) {
      return false;
    }
    final l$year = year;
    final lOther$year = other.year;
    if (_$data.containsKey('year') != other._$data.containsKey('year')) {
      return false;
    }
    if (l$year != lOther$year) {
      return false;
    }
    final l$rating = rating;
    final lOther$rating = other.rating;
    if (_$data.containsKey('rating') != other._$data.containsKey('rating')) {
      return false;
    }
    if (l$rating != lOther$rating) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$seriesName = seriesName;
    final l$year = year;
    final l$rating = rating;
    return Object.hashAll([
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('seriesName') ? l$seriesName : const {},
      _$data.containsKey('year') ? l$year : const {},
      _$data.containsKey('rating') ? l$rating : const {},
    ]);
  }
}

abstract class CopyWith$Input$SeriesInput<TRes> {
  factory CopyWith$Input$SeriesInput(
    Input$SeriesInput instance,
    TRes Function(Input$SeriesInput) then,
  ) = _CopyWithImpl$Input$SeriesInput;

  factory CopyWith$Input$SeriesInput.stub(TRes res) =
      _CopyWithStubImpl$Input$SeriesInput;

  TRes call({
    String? id,
    String? seriesName,
    int? year,
    Enum$Rating? rating,
  });
}

class _CopyWithImpl$Input$SeriesInput<TRes>
    implements CopyWith$Input$SeriesInput<TRes> {
  _CopyWithImpl$Input$SeriesInput(
    this._instance,
    this._then,
  );

  final Input$SeriesInput _instance;

  final TRes Function(Input$SeriesInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? seriesName = _undefined,
    Object? year = _undefined,
    Object? rating = _undefined,
  }) =>
      _then(Input$SeriesInput._({
        ..._instance._$data,
        if (id != _undefined) 'id': (id as String?),
        if (seriesName != _undefined) 'seriesName': (seriesName as String?),
        if (year != _undefined) 'year': (year as int?),
        if (rating != _undefined) 'rating': (rating as Enum$Rating?),
      }));
}

class _CopyWithStubImpl$Input$SeriesInput<TRes>
    implements CopyWith$Input$SeriesInput<TRes> {
  _CopyWithStubImpl$Input$SeriesInput(this._res);

  TRes _res;

  call({
    String? id,
    String? seriesName,
    int? year,
    Enum$Rating? rating,
  }) =>
      _res;
}

class Input$UserInput {
  factory Input$UserInput({
    String? id,
    String? firstName,
    String? lastName,
    String? userName,
    Enum$Gender? gender,
    String? language,
    int? age,
    String? email,
    String? password,
    String? address,
    String? phoneNumber,
    List<Input$ContactInput?>? contacts,
  }) =>
      Input$UserInput._({
        if (id != null) r'id': id,
        if (firstName != null) r'firstName': firstName,
        if (lastName != null) r'lastName': lastName,
        if (userName != null) r'userName': userName,
        if (gender != null) r'gender': gender,
        if (language != null) r'language': language,
        if (age != null) r'age': age,
        if (email != null) r'email': email,
        if (password != null) r'password': password,
        if (address != null) r'address': address,
        if (phoneNumber != null) r'phoneNumber': phoneNumber,
        if (contacts != null) r'contacts': contacts,
      });

  Input$UserInput._(this._$data);

  factory Input$UserInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = (l$id as String?);
    }
    if (data.containsKey('firstName')) {
      final l$firstName = data['firstName'];
      result$data['firstName'] = (l$firstName as String?);
    }
    if (data.containsKey('lastName')) {
      final l$lastName = data['lastName'];
      result$data['lastName'] = (l$lastName as String?);
    }
    if (data.containsKey('userName')) {
      final l$userName = data['userName'];
      result$data['userName'] = (l$userName as String?);
    }
    if (data.containsKey('gender')) {
      final l$gender = data['gender'];
      result$data['gender'] =
          l$gender == null ? null : fromJson$Enum$Gender((l$gender as String));
    }
    if (data.containsKey('language')) {
      final l$language = data['language'];
      result$data['language'] = (l$language as String?);
    }
    if (data.containsKey('age')) {
      final l$age = data['age'];
      result$data['age'] = (l$age as int?);
    }
    if (data.containsKey('email')) {
      final l$email = data['email'];
      result$data['email'] = (l$email as String?);
    }
    if (data.containsKey('password')) {
      final l$password = data['password'];
      result$data['password'] = (l$password as String?);
    }
    if (data.containsKey('address')) {
      final l$address = data['address'];
      result$data['address'] = (l$address as String?);
    }
    if (data.containsKey('phoneNumber')) {
      final l$phoneNumber = data['phoneNumber'];
      result$data['phoneNumber'] = (l$phoneNumber as String?);
    }
    if (data.containsKey('contacts')) {
      final l$contacts = data['contacts'];
      result$data['contacts'] = (l$contacts as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Input$ContactInput.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    return Input$UserInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get id => (_$data['id'] as String?);

  String? get firstName => (_$data['firstName'] as String?);

  String? get lastName => (_$data['lastName'] as String?);

  String? get userName => (_$data['userName'] as String?);

  Enum$Gender? get gender => (_$data['gender'] as Enum$Gender?);

  String? get language => (_$data['language'] as String?);

  int? get age => (_$data['age'] as int?);

  String? get email => (_$data['email'] as String?);

  String? get password => (_$data['password'] as String?);

  String? get address => (_$data['address'] as String?);

  String? get phoneNumber => (_$data['phoneNumber'] as String?);

  List<Input$ContactInput?>? get contacts =>
      (_$data['contacts'] as List<Input$ContactInput?>?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id;
    }
    if (_$data.containsKey('firstName')) {
      final l$firstName = firstName;
      result$data['firstName'] = l$firstName;
    }
    if (_$data.containsKey('lastName')) {
      final l$lastName = lastName;
      result$data['lastName'] = l$lastName;
    }
    if (_$data.containsKey('userName')) {
      final l$userName = userName;
      result$data['userName'] = l$userName;
    }
    if (_$data.containsKey('gender')) {
      final l$gender = gender;
      result$data['gender'] =
          l$gender == null ? null : toJson$Enum$Gender(l$gender);
    }
    if (_$data.containsKey('language')) {
      final l$language = language;
      result$data['language'] = l$language;
    }
    if (_$data.containsKey('age')) {
      final l$age = age;
      result$data['age'] = l$age;
    }
    if (_$data.containsKey('email')) {
      final l$email = email;
      result$data['email'] = l$email;
    }
    if (_$data.containsKey('password')) {
      final l$password = password;
      result$data['password'] = l$password;
    }
    if (_$data.containsKey('address')) {
      final l$address = address;
      result$data['address'] = l$address;
    }
    if (_$data.containsKey('phoneNumber')) {
      final l$phoneNumber = phoneNumber;
      result$data['phoneNumber'] = l$phoneNumber;
    }
    if (_$data.containsKey('contacts')) {
      final l$contacts = contacts;
      result$data['contacts'] = l$contacts?.map((e) => e?.toJson()).toList();
    }
    return result$data;
  }

  CopyWith$Input$UserInput<Input$UserInput> get copyWith =>
      CopyWith$Input$UserInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$UserInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$firstName = firstName;
    final lOther$firstName = other.firstName;
    if (_$data.containsKey('firstName') !=
        other._$data.containsKey('firstName')) {
      return false;
    }
    if (l$firstName != lOther$firstName) {
      return false;
    }
    final l$lastName = lastName;
    final lOther$lastName = other.lastName;
    if (_$data.containsKey('lastName') !=
        other._$data.containsKey('lastName')) {
      return false;
    }
    if (l$lastName != lOther$lastName) {
      return false;
    }
    final l$userName = userName;
    final lOther$userName = other.userName;
    if (_$data.containsKey('userName') !=
        other._$data.containsKey('userName')) {
      return false;
    }
    if (l$userName != lOther$userName) {
      return false;
    }
    final l$gender = gender;
    final lOther$gender = other.gender;
    if (_$data.containsKey('gender') != other._$data.containsKey('gender')) {
      return false;
    }
    if (l$gender != lOther$gender) {
      return false;
    }
    final l$language = language;
    final lOther$language = other.language;
    if (_$data.containsKey('language') !=
        other._$data.containsKey('language')) {
      return false;
    }
    if (l$language != lOther$language) {
      return false;
    }
    final l$age = age;
    final lOther$age = other.age;
    if (_$data.containsKey('age') != other._$data.containsKey('age')) {
      return false;
    }
    if (l$age != lOther$age) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (_$data.containsKey('email') != other._$data.containsKey('email')) {
      return false;
    }
    if (l$email != lOther$email) {
      return false;
    }
    final l$password = password;
    final lOther$password = other.password;
    if (_$data.containsKey('password') !=
        other._$data.containsKey('password')) {
      return false;
    }
    if (l$password != lOther$password) {
      return false;
    }
    final l$address = address;
    final lOther$address = other.address;
    if (_$data.containsKey('address') != other._$data.containsKey('address')) {
      return false;
    }
    if (l$address != lOther$address) {
      return false;
    }
    final l$phoneNumber = phoneNumber;
    final lOther$phoneNumber = other.phoneNumber;
    if (_$data.containsKey('phoneNumber') !=
        other._$data.containsKey('phoneNumber')) {
      return false;
    }
    if (l$phoneNumber != lOther$phoneNumber) {
      return false;
    }
    final l$contacts = contacts;
    final lOther$contacts = other.contacts;
    if (_$data.containsKey('contacts') !=
        other._$data.containsKey('contacts')) {
      return false;
    }
    if (l$contacts != null && lOther$contacts != null) {
      if (l$contacts.length != lOther$contacts.length) {
        return false;
      }
      for (int i = 0; i < l$contacts.length; i++) {
        final l$contacts$entry = l$contacts[i];
        final lOther$contacts$entry = lOther$contacts[i];
        if (l$contacts$entry != lOther$contacts$entry) {
          return false;
        }
      }
    } else if (l$contacts != lOther$contacts) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$firstName = firstName;
    final l$lastName = lastName;
    final l$userName = userName;
    final l$gender = gender;
    final l$language = language;
    final l$age = age;
    final l$email = email;
    final l$password = password;
    final l$address = address;
    final l$phoneNumber = phoneNumber;
    final l$contacts = contacts;
    return Object.hashAll([
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('firstName') ? l$firstName : const {},
      _$data.containsKey('lastName') ? l$lastName : const {},
      _$data.containsKey('userName') ? l$userName : const {},
      _$data.containsKey('gender') ? l$gender : const {},
      _$data.containsKey('language') ? l$language : const {},
      _$data.containsKey('age') ? l$age : const {},
      _$data.containsKey('email') ? l$email : const {},
      _$data.containsKey('password') ? l$password : const {},
      _$data.containsKey('address') ? l$address : const {},
      _$data.containsKey('phoneNumber') ? l$phoneNumber : const {},
      _$data.containsKey('contacts')
          ? l$contacts == null
              ? null
              : Object.hashAll(l$contacts.map((v) => v))
          : const {},
    ]);
  }
}

abstract class CopyWith$Input$UserInput<TRes> {
  factory CopyWith$Input$UserInput(
    Input$UserInput instance,
    TRes Function(Input$UserInput) then,
  ) = _CopyWithImpl$Input$UserInput;

  factory CopyWith$Input$UserInput.stub(TRes res) =
      _CopyWithStubImpl$Input$UserInput;

  TRes call({
    String? id,
    String? firstName,
    String? lastName,
    String? userName,
    Enum$Gender? gender,
    String? language,
    int? age,
    String? email,
    String? password,
    String? address,
    String? phoneNumber,
    List<Input$ContactInput?>? contacts,
  });
  TRes contacts(
      Iterable<Input$ContactInput?>? Function(
              Iterable<CopyWith$Input$ContactInput<Input$ContactInput>?>?)
          _fn);
}

class _CopyWithImpl$Input$UserInput<TRes>
    implements CopyWith$Input$UserInput<TRes> {
  _CopyWithImpl$Input$UserInput(
    this._instance,
    this._then,
  );

  final Input$UserInput _instance;

  final TRes Function(Input$UserInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? firstName = _undefined,
    Object? lastName = _undefined,
    Object? userName = _undefined,
    Object? gender = _undefined,
    Object? language = _undefined,
    Object? age = _undefined,
    Object? email = _undefined,
    Object? password = _undefined,
    Object? address = _undefined,
    Object? phoneNumber = _undefined,
    Object? contacts = _undefined,
  }) =>
      _then(Input$UserInput._({
        ..._instance._$data,
        if (id != _undefined) 'id': (id as String?),
        if (firstName != _undefined) 'firstName': (firstName as String?),
        if (lastName != _undefined) 'lastName': (lastName as String?),
        if (userName != _undefined) 'userName': (userName as String?),
        if (gender != _undefined) 'gender': (gender as Enum$Gender?),
        if (language != _undefined) 'language': (language as String?),
        if (age != _undefined) 'age': (age as int?),
        if (email != _undefined) 'email': (email as String?),
        if (password != _undefined) 'password': (password as String?),
        if (address != _undefined) 'address': (address as String?),
        if (phoneNumber != _undefined) 'phoneNumber': (phoneNumber as String?),
        if (contacts != _undefined)
          'contacts': (contacts as List<Input$ContactInput?>?),
      }));

  TRes contacts(
          Iterable<Input$ContactInput?>? Function(
                  Iterable<CopyWith$Input$ContactInput<Input$ContactInput>?>?)
              _fn) =>
      call(
          contacts: _fn(_instance.contacts?.map((e) => e == null
              ? null
              : CopyWith$Input$ContactInput(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Input$UserInput<TRes>
    implements CopyWith$Input$UserInput<TRes> {
  _CopyWithStubImpl$Input$UserInput(this._res);

  TRes _res;

  call({
    String? id,
    String? firstName,
    String? lastName,
    String? userName,
    Enum$Gender? gender,
    String? language,
    int? age,
    String? email,
    String? password,
    String? address,
    String? phoneNumber,
    List<Input$ContactInput?>? contacts,
  }) =>
      _res;

  contacts(_fn) => _res;
}

enum Enum$Gender {
  MALE,
  FEMALE,
  OTHER,
  $unknown;

  factory Enum$Gender.fromJson(String value) => fromJson$Enum$Gender(value);

  String toJson() => toJson$Enum$Gender(this);
}

String toJson$Enum$Gender(Enum$Gender e) {
  switch (e) {
    case Enum$Gender.MALE:
      return r'MALE';
    case Enum$Gender.FEMALE:
      return r'FEMALE';
    case Enum$Gender.OTHER:
      return r'OTHER';
    case Enum$Gender.$unknown:
      return r'$unknown';
  }
}

Enum$Gender fromJson$Enum$Gender(String value) {
  switch (value) {
    case r'MALE':
      return Enum$Gender.MALE;
    case r'FEMALE':
      return Enum$Gender.FEMALE;
    case r'OTHER':
      return Enum$Gender.OTHER;
    default:
      return Enum$Gender.$unknown;
  }
}

enum Enum$Rating {
  ONE,
  TWO,
  THREE,
  $unknown;

  factory Enum$Rating.fromJson(String value) => fromJson$Enum$Rating(value);

  String toJson() => toJson$Enum$Rating(this);
}

String toJson$Enum$Rating(Enum$Rating e) {
  switch (e) {
    case Enum$Rating.ONE:
      return r'ONE';
    case Enum$Rating.TWO:
      return r'TWO';
    case Enum$Rating.THREE:
      return r'THREE';
    case Enum$Rating.$unknown:
      return r'$unknown';
  }
}

Enum$Rating fromJson$Enum$Rating(String value) {
  switch (value) {
    case r'ONE':
      return Enum$Rating.ONE;
    case r'TWO':
      return Enum$Rating.TWO;
    case r'THREE':
      return Enum$Rating.THREE;
    default:
      return Enum$Rating.$unknown;
  }
}

enum Enum$__TypeKind {
  SCALAR,
  OBJECT,
  INTERFACE,
  UNION,
  ENUM,
  INPUT_OBJECT,
  LIST,
  NON_NULL,
  $unknown;

  factory Enum$__TypeKind.fromJson(String value) =>
      fromJson$Enum$__TypeKind(value);

  String toJson() => toJson$Enum$__TypeKind(this);
}

String toJson$Enum$__TypeKind(Enum$__TypeKind e) {
  switch (e) {
    case Enum$__TypeKind.SCALAR:
      return r'SCALAR';
    case Enum$__TypeKind.OBJECT:
      return r'OBJECT';
    case Enum$__TypeKind.INTERFACE:
      return r'INTERFACE';
    case Enum$__TypeKind.UNION:
      return r'UNION';
    case Enum$__TypeKind.ENUM:
      return r'ENUM';
    case Enum$__TypeKind.INPUT_OBJECT:
      return r'INPUT_OBJECT';
    case Enum$__TypeKind.LIST:
      return r'LIST';
    case Enum$__TypeKind.NON_NULL:
      return r'NON_NULL';
    case Enum$__TypeKind.$unknown:
      return r'$unknown';
  }
}

Enum$__TypeKind fromJson$Enum$__TypeKind(String value) {
  switch (value) {
    case r'SCALAR':
      return Enum$__TypeKind.SCALAR;
    case r'OBJECT':
      return Enum$__TypeKind.OBJECT;
    case r'INTERFACE':
      return Enum$__TypeKind.INTERFACE;
    case r'UNION':
      return Enum$__TypeKind.UNION;
    case r'ENUM':
      return Enum$__TypeKind.ENUM;
    case r'INPUT_OBJECT':
      return Enum$__TypeKind.INPUT_OBJECT;
    case r'LIST':
      return Enum$__TypeKind.LIST;
    case r'NON_NULL':
      return Enum$__TypeKind.NON_NULL;
    default:
      return Enum$__TypeKind.$unknown;
  }
}

enum Enum$__DirectiveLocation {
  QUERY,
  MUTATION,
  SUBSCRIPTION,
  FIELD,
  FRAGMENT_DEFINITION,
  FRAGMENT_SPREAD,
  INLINE_FRAGMENT,
  VARIABLE_DEFINITION,
  SCHEMA,
  SCALAR,
  OBJECT,
  FIELD_DEFINITION,
  ARGUMENT_DEFINITION,
  INTERFACE,
  UNION,
  ENUM,
  ENUM_VALUE,
  INPUT_OBJECT,
  INPUT_FIELD_DEFINITION,
  $unknown;

  factory Enum$__DirectiveLocation.fromJson(String value) =>
      fromJson$Enum$__DirectiveLocation(value);

  String toJson() => toJson$Enum$__DirectiveLocation(this);
}

String toJson$Enum$__DirectiveLocation(Enum$__DirectiveLocation e) {
  switch (e) {
    case Enum$__DirectiveLocation.QUERY:
      return r'QUERY';
    case Enum$__DirectiveLocation.MUTATION:
      return r'MUTATION';
    case Enum$__DirectiveLocation.SUBSCRIPTION:
      return r'SUBSCRIPTION';
    case Enum$__DirectiveLocation.FIELD:
      return r'FIELD';
    case Enum$__DirectiveLocation.FRAGMENT_DEFINITION:
      return r'FRAGMENT_DEFINITION';
    case Enum$__DirectiveLocation.FRAGMENT_SPREAD:
      return r'FRAGMENT_SPREAD';
    case Enum$__DirectiveLocation.INLINE_FRAGMENT:
      return r'INLINE_FRAGMENT';
    case Enum$__DirectiveLocation.VARIABLE_DEFINITION:
      return r'VARIABLE_DEFINITION';
    case Enum$__DirectiveLocation.SCHEMA:
      return r'SCHEMA';
    case Enum$__DirectiveLocation.SCALAR:
      return r'SCALAR';
    case Enum$__DirectiveLocation.OBJECT:
      return r'OBJECT';
    case Enum$__DirectiveLocation.FIELD_DEFINITION:
      return r'FIELD_DEFINITION';
    case Enum$__DirectiveLocation.ARGUMENT_DEFINITION:
      return r'ARGUMENT_DEFINITION';
    case Enum$__DirectiveLocation.INTERFACE:
      return r'INTERFACE';
    case Enum$__DirectiveLocation.UNION:
      return r'UNION';
    case Enum$__DirectiveLocation.ENUM:
      return r'ENUM';
    case Enum$__DirectiveLocation.ENUM_VALUE:
      return r'ENUM_VALUE';
    case Enum$__DirectiveLocation.INPUT_OBJECT:
      return r'INPUT_OBJECT';
    case Enum$__DirectiveLocation.INPUT_FIELD_DEFINITION:
      return r'INPUT_FIELD_DEFINITION';
    case Enum$__DirectiveLocation.$unknown:
      return r'$unknown';
  }
}

Enum$__DirectiveLocation fromJson$Enum$__DirectiveLocation(String value) {
  switch (value) {
    case r'QUERY':
      return Enum$__DirectiveLocation.QUERY;
    case r'MUTATION':
      return Enum$__DirectiveLocation.MUTATION;
    case r'SUBSCRIPTION':
      return Enum$__DirectiveLocation.SUBSCRIPTION;
    case r'FIELD':
      return Enum$__DirectiveLocation.FIELD;
    case r'FRAGMENT_DEFINITION':
      return Enum$__DirectiveLocation.FRAGMENT_DEFINITION;
    case r'FRAGMENT_SPREAD':
      return Enum$__DirectiveLocation.FRAGMENT_SPREAD;
    case r'INLINE_FRAGMENT':
      return Enum$__DirectiveLocation.INLINE_FRAGMENT;
    case r'VARIABLE_DEFINITION':
      return Enum$__DirectiveLocation.VARIABLE_DEFINITION;
    case r'SCHEMA':
      return Enum$__DirectiveLocation.SCHEMA;
    case r'SCALAR':
      return Enum$__DirectiveLocation.SCALAR;
    case r'OBJECT':
      return Enum$__DirectiveLocation.OBJECT;
    case r'FIELD_DEFINITION':
      return Enum$__DirectiveLocation.FIELD_DEFINITION;
    case r'ARGUMENT_DEFINITION':
      return Enum$__DirectiveLocation.ARGUMENT_DEFINITION;
    case r'INTERFACE':
      return Enum$__DirectiveLocation.INTERFACE;
    case r'UNION':
      return Enum$__DirectiveLocation.UNION;
    case r'ENUM':
      return Enum$__DirectiveLocation.ENUM;
    case r'ENUM_VALUE':
      return Enum$__DirectiveLocation.ENUM_VALUE;
    case r'INPUT_OBJECT':
      return Enum$__DirectiveLocation.INPUT_OBJECT;
    case r'INPUT_FIELD_DEFINITION':
      return Enum$__DirectiveLocation.INPUT_FIELD_DEFINITION;
    default:
      return Enum$__DirectiveLocation.$unknown;
  }
}

const possibleTypesMap = <String, Set<String>>{};
