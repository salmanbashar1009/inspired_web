class Urls{
  /// All trip data will be fetched from this url
  static const String baseURL = "https://script.google.com/macros/s/AKfycbw0YsBhpLP6PvdpMsKHEE2ypNaUt02hHgbzeiaSUFh2nk9aZjS6lREd4M6MiJX2Cv2Zww/exec";

  static const String createTrip = "$baseURL?action=add";
  static const String updateTrip = "$baseURL?action=update";
  static const String deleteTrip = "$baseURL?action=delete";
  static  String getSingleTrip = "$baseURL?action=read&id=";

  /// Next trip data will be fetched from this url
  static const String nextTripBaseURL = "https://script.google.com/macros/s/AKfycbxEKW35WiSUCPAHlDAzcRK6HuaoW04AxP3ijKmT9wAGg9fW99-Z6YM_jj-5jcQcJYZmBA/exec";
  static const String getAllNextTrip = "$nextTripBaseURL?action=readAll";
  static const String updateNextTrip = "$nextTripBaseURL?action=update";
  static  String getSingleNextTrip = "$nextTripBaseURL?action=read&id=";



}