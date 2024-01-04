enum EventImages {futbol,basketbol,voleybol,konser,standup}

extension EventImagesExtension on EventImages {
  String _imagePath() {
    switch (this) {
      
      case EventImages.futbol:
        return "futbol";
      case EventImages.basketbol:
       return "basketbol";
      case EventImages.voleybol:
       return "voleybol";
      case EventImages.konser:
       return "konser";
      case EventImages.standup:
       return "standup";
    }
  }

  String get imagePath => "assets/${_imagePath()}.jpg";
}