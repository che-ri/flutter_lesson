class WeatherModel {
  LocationModel location;
  CurrentModel current;

  WeatherModel({
    required this.location,
    required this.current,
  });

  /// 역직렬화 : JSON을 데이터구조로 변환합니다.
  WeatherModel.fromJson(Map<String, dynamic> json)
      : location = LocationModel.fromJson(json['location']),
        current = CurrentModel.fromJson(json['current']);

  /// 직렬화 : 데이터구조를 JSON 형식으로 변환합니다.
  Map<String, dynamic> toJson() => {
        'location': location.toJson(),
        'current': current.toJson(),
      };
}

class LocationModel {
  String name;
  String region;
  String country;
  double lat;
  double lon;
  String tz_id;
  int localtime_epoch;
  String localtime;

  LocationModel(
      {required this.name,
      required this.region,
      required this.country,
      required this.lat,
      required this.lon,
      required this.tz_id,
      required this.localtime_epoch,
      required this.localtime});

  LocationModel.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        region = json['region'],
        country = json['country'],
        lat = json['lat'],
        lon = json['lon'],
        tz_id = json['tz_id'],
        localtime_epoch = json['localtime_epoch'],
        localtime = json['localtime'];

  Map<String, dynamic> toJson() => {
        'name': name,
        'region': region,
        'country': country,
        'lat': lat,
        'lon': lon,
        'tz_id': tz_id,
        'localtime_epoch': localtime_epoch,
        'localtime': localtime
      };
}

class CurrentModel {
  int last_updated_epoch;
  String last_updated;
  double temp_c;
  double temp_f;
  int is_day;
  ConditionModel condition;
  double wind_mph;
  double wind_kph;
  int wind_degree;
  String wind_dir;
  double pressure_mb;
  double pressure_in;
  double precip_mm;
  double precip_in;
  int humidity;
  int cloud;
  double feelslike_c;
  double feelslike_f;
  double vis_km;
  double vis_miles;
  double uv;
  double gust_mph;
  double gust_kph;

  CurrentModel({
    required this.last_updated_epoch,
    required this.last_updated,
    required this.temp_c,
    required this.temp_f,
    required this.is_day,
    required this.condition,
    required this.wind_mph,
    required this.wind_kph,
    required this.wind_degree,
    required this.wind_dir,
    required this.pressure_mb,
    required this.pressure_in,
    required this.precip_mm,
    required this.precip_in,
    required this.humidity,
    required this.cloud,
    required this.feelslike_c,
    required this.feelslike_f,
    required this.vis_km,
    required this.vis_miles,
    required this.uv,
    required this.gust_mph,
    required this.gust_kph,
  });

  CurrentModel.fromJson(Map<String, dynamic> json)
      : last_updated_epoch = json['last_updated_epoch'],
        last_updated = json['last_updated'],
        temp_c = json['temp_c'],
        temp_f = json['temp_f'],
        is_day = json['is_day'],
        condition = ConditionModel.fromJson(json['condition']),
        wind_mph = json['wind_mph'],
        wind_kph = json['wind_kph'],
        wind_degree = json['wind_degree'],
        wind_dir = json['wind_dir'],
        pressure_mb = json['pressure_mb'],
        pressure_in = json['pressure_in'],
        precip_mm = json['precip_mm'],
        precip_in = json['precip_in'],
        humidity = json['humidity'],
        cloud = json['cloud'],
        feelslike_c = json['feelslike_c'],
        feelslike_f = json['feelslike_f'],
        vis_km = json['vis_km'],
        vis_miles = json['vis_miles'],
        uv = json['uv'],
        gust_mph = json['gust_mph'],
        gust_kph = json['gust_kph'];

  Map<String, dynamic> toJson() => {
        'last_updated_epoch': last_updated_epoch,
        'last_updated': last_updated,
        'temp_c': temp_c,
        'temp_f': temp_f,
        'is_day': is_day,
        'condition': condition.toJson(),
        'wind_mph': wind_mph,
        'wind_kph': wind_kph,
        'wind_degree': wind_degree,
        'wind_dir': wind_dir,
        'pressure_mb': pressure_mb,
        'pressure_in': pressure_in,
        'precip_mm': precip_mm,
        'precip_in': precip_in,
        'humidity': humidity,
        'cloud': cloud,
        'feelslike_c': feelslike_c,
        'feelslike_f': feelslike_f,
        'vis_km': vis_km,
        'vis_miles': vis_miles,
        'uv': uv,
        'gust_mph': gust_mph,
        'gust_kph': gust_kph,
      };
}

class ConditionModel {
  String text;
  String icon;
  int code;

  ConditionModel({required this.text, required this.icon, required this.code});

  ConditionModel.fromJson(Map<String, dynamic> json)
      : text = json['text'],
        icon = json['icon'],
        code = json['code'];

  Map<String, dynamic> toJson() => {'text': text, 'icon': icon, 'code': code};
}
