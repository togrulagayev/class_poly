// ignore_for_file: public_member_api_docs, sort_constructors_first
// ! 3. Encapsulation - Kapsulasiya
// ! Encapsulation - bir class-dan istifadə edən digər class-ların onun daxilindəki məlumatlara girişini məhdudlaşdırmaqdır.

class Car {
  String model;
  String color;
  int year;
  // ! _isManual - bu dəyişənə _ qoyduq, çünki bu dəyişən yalnız Car class-ı tərəfindən istifadə olunacaq.
  bool? _isManual;

// ! Aşağıdakı set metodu ilə _isManual dəyişəninin dəyərini dəyişə və ya təyin edə bilərik.
  set setter(bool value) {
    _isManual = value;
  }

// ! Aşağıdakı get metodu ilə _isManual dəyişəninin dəyərini almaq istəyəndə istifadə edə bilərik.
// ? Nida işarəsi (!) ilə işarələnmiş dəyişənlərin null gəlməyəcəyini bildirir.
// * late keyword-u ilə də dəyişənlərin gec gələcəyini lakin, null gəlməyəcəyini bildirə bilərik.
  bool get getter => _isManual!;

  Car({
    required this.model,
    required this.color,
    required this.year,
  });

  void showInfo() {
    print("Model: $model, Color: $color, Year: $year");
  }
}

class Toyota extends Car {
  String fuelType;

  Toyota({
    required this.fuelType,
    required super.model,
    required super.color,
    required super.year,
  });
}
