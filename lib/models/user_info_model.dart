class UserInfoModel {
  UserInfoModel({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.maidenName,
    required this.age,
    required this.gender,
    required this.email,
    required this.phone,
    required this.username,
    required this.password,
    required this.birthDate,
    required this.image,
    required this.bloodGroup,
    required this.height,
    required this.weight,
    required this.eyeColor,
    required this.hair,
    required this.ip,
    required this.address,
    required this.macAddress,
    required this.university,
    required this.bank,
    required this.company,
    required this.ein,
    required this.ssn,
    required this.userAgent,
    required this.crypto,
    required this.role,
  });

  final int? id;
  final String? firstName;
  final String? lastName;
  final String? maidenName;
  final int? age;
  final String? gender;
  final String? email;
  final String? phone;
  final String? username;
  final String? password;
  final String? birthDate;
  final String? image;
  final String? bloodGroup;
  final double? height;
  final double? weight;
  final String? eyeColor;
  final Hair? hair;
  final String? ip;
  final Address? address;
  final String? macAddress;
  final String? university;
  final Bank? bank;
  final Company? company;
  final String? ein;
  final String? ssn;
  final String? userAgent;
  final Crypto? crypto;
  final String? role;

  factory UserInfoModel.fromMap(Map<String, dynamic> json) {
    return UserInfoModel(
      id: json["id"],
      firstName: json["firstName"],
      lastName: json["lastName"],
      maidenName: json["maidenName"],
      age: json["age"],
      gender: json["gender"],
      email: json["email"],
      phone: json["phone"],
      username: json["username"],
      password: json["password"],
      birthDate: json["birthDate"],
      image: json["image"],
      bloodGroup: json["bloodGroup"],
      height: json["height"],
      weight: json["weight"],
      eyeColor: json["eyeColor"],
      hair: json["hair"] == null ? null : Hair.fromMap(json["hair"]),
      ip: json["ip"],
      address:
          json["address"] == null ? null : Address.fromMap(json["address"]),
      macAddress: json["macAddress"],
      university: json["university"],
      bank: json["bank"] == null ? null : Bank.fromMap(json["bank"]),
      company:
          json["company"] == null ? null : Company.fromMap(json["company"]),
      ein: json["ein"],
      ssn: json["ssn"],
      userAgent: json["userAgent"],
      crypto: json["crypto"] == null ? null : Crypto.fromMap(json["crypto"]),
      role: json["role"],
    );
  }

  Map<String, dynamic> toMap() => {
        "id": id,
        "firstName": firstName,
        "lastName": lastName,
        "maidenName": maidenName,
        "age": age,
        "gender": gender,
        "email": email,
        "phone": phone,
        "username": username,
        "password": password,
        "birthDate": birthDate,
        "image": image,
        "bloodGroup": bloodGroup,
        "height": height,
        "weight": weight,
        "eyeColor": eyeColor,
        "hair": hair?.toMap(),
        "ip": ip,
        "address": address?.toMap(),
        "macAddress": macAddress,
        "university": university,
        "bank": bank?.toMap(),
        "company": company?.toMap(),
        "ein": ein,
        "ssn": ssn,
        "userAgent": userAgent,
        "crypto": crypto?.toMap(),
        "role": role,
      };
}

class Address {
  Address({
    required this.address,
    required this.city,
    required this.state,
    required this.stateCode,
    required this.postalCode,
    required this.coordinates,
    required this.country,
  });

  final String? address;
  final String? city;
  final String? state;
  final String? stateCode;
  final String? postalCode;
  final Coordinates? coordinates;
  final String? country;

  factory Address.fromMap(Map<String, dynamic> json) {
    return Address(
      address: json["address"],
      city: json["city"],
      state: json["state"],
      stateCode: json["stateCode"],
      postalCode: json["postalCode"],
      coordinates: json["coordinates"] == null
          ? null
          : Coordinates.fromMap(json["coordinates"]),
      country: json["country"],
    );
  }

  Map<String, dynamic> toMap() => {
        "address": address,
        "city": city,
        "state": state,
        "stateCode": stateCode,
        "postalCode": postalCode,
        "coordinates": coordinates?.toMap(),
        "country": country,
      };
}

class Coordinates {
  Coordinates({
    required this.lat,
    required this.lng,
  });

  final double? lat;
  final double? lng;

  factory Coordinates.fromMap(Map<String, dynamic> json) {
    return Coordinates(
      lat: json["lat"],
      lng: json["lng"],
    );
  }

  Map<String, dynamic> toMap() => {
        "lat": lat,
        "lng": lng,
      };
}

class Bank {
  Bank({
    required this.cardExpire,
    required this.cardNumber,
    required this.cardType,
    required this.currency,
    required this.iban,
  });

  final String? cardExpire;
  final String? cardNumber;
  final String? cardType;
  final String? currency;
  final String? iban;

  factory Bank.fromMap(Map<String, dynamic> json) {
    return Bank(
      cardExpire: json["cardExpire"],
      cardNumber: json["cardNumber"],
      cardType: json["cardType"],
      currency: json["currency"],
      iban: json["iban"],
    );
  }

  Map<String, dynamic> toMap() => {
        "cardExpire": cardExpire,
        "cardNumber": cardNumber,
        "cardType": cardType,
        "currency": currency,
        "iban": iban,
      };
}

class Company {
  Company({
    required this.department,
    required this.name,
    required this.title,
    required this.address,
  });

  final String? department;
  final String? name;
  final String? title;
  final Address? address;

  factory Company.fromMap(Map<String, dynamic> json) {
    return Company(
      department: json["department"],
      name: json["name"],
      title: json["title"],
      address:
          json["address"] == null ? null : Address.fromMap(json["address"]),
    );
  }

  Map<String, dynamic> toMap() => {
        "department": department,
        "name": name,
        "title": title,
        "address": address?.toMap(),
      };
}

class Crypto {
  Crypto({
    required this.coin,
    required this.wallet,
    required this.network,
  });

  final String? coin;
  final String? wallet;
  final String? network;

  factory Crypto.fromMap(Map<String, dynamic> json) {
    return Crypto(
      coin: json["coin"],
      wallet: json["wallet"],
      network: json["network"],
    );
  }

  Map<String, dynamic> toMap() => {
        "coin": coin,
        "wallet": wallet,
        "network": network,
      };
}

class Hair {
  Hair({
    required this.color,
    required this.type,
  });

  final String? color;
  final String? type;

  factory Hair.fromMap(Map<String, dynamic> json) {
    return Hair(
      color: json["color"],
      type: json["type"],
    );
  }

  Map<String, dynamic> toMap() => {
        "color": color,
        "type": type,
      };
}
