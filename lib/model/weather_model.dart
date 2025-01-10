class WeatherResponse {
  Location location;
  Current current;
  Forecast forecast;

  WeatherResponse({
    required this.location,
    required this.current,
    required this.forecast,
  });

  factory WeatherResponse.fromJson(Map<String, dynamic> json) {
    return WeatherResponse(
      location: Location.fromJson(json['location']),
      current: Current.fromJson(json['current']),
      forecast: Forecast.fromJson(json['forecast']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'location': location.toJson(),
      'current': current.toJson(),
      'forecast': forecast.toJson(),
    };
  }
}

class Location {
  String name;
  String region;
  String country;
  double lat;
  double lon;
  String tzId;
  String localtime;

  Location({
    required this.name,
    required this.region,
    required this.country,
    required this.lat,
    required this.lon,
    required this.tzId,
    required this.localtime,
  });

  factory Location.fromJson(Map<String, dynamic> json) {
    return Location(
      name: json['name'],
      region: json['region'],
      country: json['country'],
      lat: json['lat'].toDouble(),
      lon: json['lon'].toDouble(),
      tzId: json['tz_id'],
      localtime: json['localtime'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'region': region,
      'country': country,
      'lat': lat,
      'lon': lon,
      'tz_id': tzId,
      'localtime': localtime,
    };
  }
}

class Current {
  double tempC;
  double tempF;
  int isDay;
  Condition condition;

  Current({
    required this.tempC,
    required this.tempF,
    required this.isDay,
    required this.condition,
  });

  factory Current.fromJson(Map<String, dynamic> json) {
    return Current(
      tempC: json['temp_c'].toDouble(),
      tempF: json['temp_f'].toDouble(),
      isDay: json['is_day'],
      condition: Condition.fromJson(json['condition']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'temp_c': tempC,
      'temp_f': tempF,
      'is_day': isDay,
      'condition': condition.toJson(),
    };
  }
}

class Condition {
  String text;
  String icon;
  int code;

  Condition({
    required this.text,
    required this.icon,
    required this.code,
  });

  factory Condition.fromJson(Map<String, dynamic> json) {
    return Condition(
      text: json['text'],
      icon: json['icon'],
      code: json['code'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'text': text,
      'icon': icon,
      'code': code,
    };
  }
}

class Forecast {
  List<ForecastDay> forecastDay;

  Forecast({
    required this.forecastDay,
  });

  factory Forecast.fromJson(Map<String, dynamic> json) {
    return Forecast(
      forecastDay: List<ForecastDay>.from(
          json['forecastday'].map((x) => ForecastDay.fromJson(x))),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'forecastday': forecastDay.map((x) => x.toJson()).toList(),
    };
  }
}

class ForecastDay {
  String date;
  int dateEpoch;
  Day day;

  ForecastDay({
    required this.date,
    required this.dateEpoch,
    required this.day,
  });

  factory ForecastDay.fromJson(Map<String, dynamic> json) {
    return ForecastDay(
      date: json['date'],
      dateEpoch: json['date_epoch'],
      day: Day.fromJson(json['day']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'date': date,
      'date_epoch': dateEpoch,
      'day': day.toJson(),
    };
  }
}

class Day {
  double maxTempC;
  double maxTempF;
  double minTempC;
  double minTempF;
  double avgTempC;
  double avgTempF;

  Day({
    required this.maxTempC,
    required this.maxTempF,
    required this.minTempC,
    required this.minTempF,
    required this.avgTempC,
    required this.avgTempF,
  });

  factory Day.fromJson(Map<String, dynamic> json) {
    return Day(
      maxTempC: json['maxtemp_c'].toDouble(),
      maxTempF: json['maxtemp_f'].toDouble(),
      minTempC: json['mintemp_c'].toDouble(),
      minTempF: json['mintemp_f'].toDouble(),
      avgTempC: json['avgtemp_c'].toDouble(),
      avgTempF: json['avgtemp_f'].toDouble(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'maxtemp_c': maxTempC,
      'maxtemp_f': maxTempF,
      'mintemp_c': minTempC,
      'mintemp_f': minTempF,
      'avgtemp_c': avgTempC,
      'avgtemp_f': avgTempF,
    };
  }
}
