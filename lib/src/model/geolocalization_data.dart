class GeolocationData {
  String country;
  String countryCode;
  String timeZone;
  String ip;
  String latitude;
  String longitude;
  GeolocationData(
      {required this.country,
      required this.countryCode,
      required this.timeZone,
      required this.ip,
      required this.latitude,
      required this.longitude});

  factory GeolocationData.fromJson(Map<String, dynamic> json) {
    return GeolocationData(
        country: json["country_name"],
        countryCode: json["country_code2"],
        timeZone: json["time_zone"]["name"],
        ip: json["ip"],
        latitude: json["latitude"],
        longitude: json["longitude"]);
  }

  Map<String, dynamic> toJson() {
    return {
      "country_name": country,
      "country_code2": countryCode,
      "time_zone": timeZone,
      "ip": ip,
      "latitude": latitude,
      "longitude": longitude
    };
  }
}
