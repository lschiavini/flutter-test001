class UsersResponseDto {
  List<Results>? results;
  Info? info;

  UsersResponseDto({
    this.results,
    this.info,
  });

  UsersResponseDto.fromJson(
    Map<String, dynamic> json,
  ) {
    if (json['results'] != null) {
      results = <Results>[];
      json['results'].forEach(
        (dynamic v) {
          results!.add(
            Results.fromJson(
              v as Map<String, dynamic>,
            ),
          );
        },
      );
    }
    info = json['info'] != null
        ? Info.fromJson(
            json['info'] as Map<String, dynamic>,
          )
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (results != null) {
      data['results'] = results!
          .map(
            (v) => v.toJson(),
          )
          .toList();
    }
    if (info != null) {
      data['info'] = info!.toJson();
    }
    return data;
  }

  @override
  String toString() {
    return 'UsersResponseDto{results: $results, info: $info}';
  }
}

class Results {
  String? gender;
  Name? name;
  Location? location;
  String? email;
  Login? login;
  Dob? dob;
  Dob? registered;
  String? phone;
  String? cell;
  Id? id;
  Picture? picture;
  String? nat;

  Results({
    this.gender,
    this.name,
    this.location,
    this.email,
    this.login,
    this.dob,
    this.registered,
    this.phone,
    this.cell,
    this.id,
    this.picture,
    this.nat,
  });

  Results.fromJson(
    Map<String, dynamic> json,
  ) {
    gender = json['gender'] as String?;
    name = json['name'] != null
        ? Name.fromJson(
            json['name'] as Map<String, dynamic>,
          )
        : null;
    location = json['location'] != null
        ? Location.fromJson(
            json['location'] as Map<String, dynamic>,
          )
        : null;
    email = json['email'] as String?;
    login = json['login'] != null
        ? Login.fromJson(
            json['login'] as Map<String, dynamic>,
          )
        : null;
    dob = json['dob'] != null
        ? Dob.fromJson(
            json['dob'] as Map<String, dynamic>,
          )
        : null;
    registered = json['registered'] != null
        ? Dob.fromJson(
            json['registered'] as Map<String, dynamic>,
          )
        : null;
    phone = json['phone'] as String?;
    cell = json['cell'] as String?;
    id = json['id'] != null
        ? Id.fromJson(
            json['id'] as Map<String, dynamic>,
          )
        : null;
    picture = json['picture'] != null
        ? Picture.fromJson(
            json['picture'] as Map<String, dynamic>,
          )
        : null;
    nat = json['nat'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['gender'] = gender;
    if (name != null) {
      data['name'] = name!.toJson();
    }
    if (location != null) {
      data['location'] = location!.toJson();
    }
    data['email'] = email;
    if (login != null) {
      data['login'] = login!.toJson();
    }
    if (dob != null) {
      data['dob'] = dob!.toJson();
    }
    if (registered != null) {
      data['registered'] = registered!.toJson();
    }
    data['phone'] = phone;
    data['cell'] = cell;
    if (id != null) {
      data['id'] = id!.toJson();
    }
    if (picture != null) {
      data['picture'] = picture!.toJson();
    }
    data['nat'] = nat;
    return data;
  }

  @override
  String toString() {
    return 'Results{gender: $gender, name: $name, location: $location, email: $email, login: $login, dob: $dob, registered: $registered, phone: $phone, cell: $cell, id: $id, picture: $picture, nat: $nat}';
  }
}

class Name {
  String? title;
  String? first;
  String? last;

  Name({
    this.title,
    this.first,
    this.last,
  });

  Name.fromJson(
    Map<String, dynamic> json,
  ) {
    title = json['title'] as String?;
    first = json['first'] as String?;
    last = json['last'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['title'] = title;
    data['first'] = first;
    data['last'] = last;
    return data;
  }

  @override
  String toString() {
    return 'Name{title: $title, first: $first, last: $last}';
  }
}

class Location {
  Street? street;
  String? city;
  String? state;
  String? country;
  int? postcode;
  Coordinates? coordinates;
  Timezone? timezone;

  Location({
    this.street,
    this.city,
    this.state,
    this.country,
    this.postcode,
    this.coordinates,
    this.timezone,
  });

  Location.fromJson(
    Map<String, dynamic> json,
  ) {
    street = json['street'] != null
        ? Street.fromJson(json['street'] as Map<String, dynamic>)
        : null;
    city = json['city'] as String?;
    state = json['state'] as String?;
    country = json['country'] as String?;
    postcode = json['postcode'] as int?;
    coordinates = json['coordinates'] != null
        ? Coordinates.fromJson(json['coordinates'] as Map<String, dynamic>)
        : null;
    timezone = json['timezone'] != null
        ? Timezone.fromJson(json['timezone'] as Map<String, dynamic>)
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (street != null) {
      data['street'] = street!.toJson();
    }
    data['city'] = city;
    data['state'] = state;
    data['country'] = country;
    data['postcode'] = postcode;
    if (coordinates != null) {
      data['coordinates'] = coordinates!.toJson();
    }
    if (timezone != null) {
      data['timezone'] = timezone!.toJson();
    }
    return data;
  }

  @override
  String toString() {
    return 'Location{street: $street, city: $city, state: $state, country: $country, postcode: $postcode, coordinates: $coordinates, timezone: $timezone}';
  }
}

class Street {
  int? number;
  String? name;

  Street({
    this.number,
    this.name,
  });

  Street.fromJson(
    Map<String, dynamic> json,
  ) {
    number = json['number'] as int?;
    name = json['name'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['number'] = number;
    data['name'] = name;
    return data;
  }

  @override
  String toString() {
    return 'Street{number: $number, name: $name}';
  }
}

class Coordinates {
  String? latitude;
  String? longitude;

  Coordinates({
    this.latitude,
    this.longitude,
  });

  Coordinates.fromJson(
    Map<String, dynamic> json,
  ) {
    latitude = json['latitude'] as String?;
    longitude = json['longitude'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['latitude'] = latitude;
    data['longitude'] = longitude;
    return data;
  }

  @override
  String toString() {
    return 'Coordinates{latitude: $latitude, longitude: $longitude}';
  }
}

class Timezone {
  String? offset;
  String? description;

  Timezone({
    this.offset,
    this.description,
  });

  Timezone.fromJson(
    Map<String, dynamic> json,
  ) {
    offset = json['offset'] as String?;
    description = json['description'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['offset'] = offset;
    data['description'] = description;
    return data;
  }

  @override
  String toString() {
    return 'Timezone{offset: $offset, description: $description}';
  }
}

class Login {
  String? uuid;
  String? username;
  String? password;
  String? salt;
  String? md5;
  String? sha1;
  String? sha256;

  Login({
    this.uuid,
    this.username,
    this.password,
    this.salt,
    this.md5,
    this.sha1,
    this.sha256,
  });

  Login.fromJson(
    Map<String, dynamic> json,
  ) {
    uuid = json['uuid'] as String?;
    username = json['username'] as String?;
    password = json['password'] as String?;
    salt = json['salt'] as String?;
    md5 = json['md5'] as String?;
    sha1 = json['sha1'] as String?;
    sha256 = json['sha256'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['uuid'] = uuid;
    data['username'] = username;
    data['password'] = password;
    data['salt'] = salt;
    data['md5'] = md5;
    data['sha1'] = sha1;
    data['sha256'] = sha256;
    return data;
  }

  @override
  String toString() {
    return 'Login{uuid: $uuid, username: $username, password: $password, salt: $salt, md5: $md5, sha1: $sha1, sha256: $sha256}';
  }
}

class Dob {
  String? date;
  int? age;

  Dob({
    this.date,
    this.age,
  });

  Dob.fromJson(
    Map<String, dynamic> json,
  ) {
    date = json['date'] as String?;
    age = json['age'] as int?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['date'] = date;
    data['age'] = age;
    return data;
  }

  @override
  String toString() {
    return 'Dob{date: $date, age: $age}';
  }
}

class Id {
  String? name;
  String? value;

  Id({
    this.name,
    this.value,
  });

  Id.fromJson(
    Map<String, dynamic> json,
  ) {
    name = json['name'] as String?;
    value = json['value'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['value'] = value;
    return data;
  }

  @override
  String toString() {
    return 'Id{name: $name, value: $value}';
  }
}

class Picture {
  String? large;
  String? medium;
  String? thumbnail;

  Picture({
    this.large,
    this.medium,
    this.thumbnail,
  });

  Picture.fromJson(
    Map<String, dynamic> json,
  ) {
    large = json['large'] as String?;
    medium = json['medium'] as String?;
    thumbnail = json['thumbnail'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['large'] = large;
    data['medium'] = medium;
    data['thumbnail'] = thumbnail;
    return data;
  }

  @override
  String toString() {
    return 'Picture{large: $large, medium: $medium, thumbnail: $thumbnail}';
  }
}

class Info {
  String? seed;
  int? results;
  int? page;
  String? version;

  Info({
    this.seed,
    this.results,
    this.page,
    this.version,
  });

  Info.fromJson(Map<String, dynamic> json) {
    seed = json['seed'] as String?;
    results = json['results'] as int?;
    page = json['page'] as int?;
    version = json['version'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['seed'] = seed;
    data['results'] = results;
    data['page'] = page;
    data['version'] = version;
    return data;
  }

  @override
  String toString() {
    return 'Info{seed: $seed, results: $results, page: $page, version: $version}';
  }
}
