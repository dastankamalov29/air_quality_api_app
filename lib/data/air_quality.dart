class AirQuality {
  int aqi;
  String cityName;
  String? message;
  String? emojiRef;

  AirQuality(
      {required this.aqi, required this.cityName, this.emojiRef, this.message});

  factory AirQuality.fromJson(Map<String, dynamic> json) {
    return AirQuality(
      aqi: json['data']['aqi'] as int,
      cityName: json['data']['city']['name'] as String,
    );
  }


  @override
  String toString(){
    return 'AirQuality(aqi: $aqi, cityName: $cityName, message: $message, emojiRef: $emojiRef)';
  }
}
