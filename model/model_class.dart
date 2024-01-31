// ! OOP (Object Oriented Programming) -  Obyekt yönumlü proqramlaşdırma
// ! OOP-nin 3 əsas prinsipi var
// ! 1. Inheritance - Miras alma
// ! 2. Polymorphism - Çox biçimlilik (çox formalılıq)
// ! 3. Encapsulation - Kapsulasiya

// ! 2. Polymorphism - Çox biçimlilik (çox formalılıq)
// ! Polymorphism - Çox biçimlilik (çox formalılıq) - bir elementin çox formalı olmasıdır
// ! Bir element eyni anda birdən çox formalı ola bilər.
// ! Məsələn: bir insan həm tələbə, həm müəllim, həm də ata ola bilər.
// ! Bir elementin çox formalı olması üçün onun bir class-dan miras alması lazımdır.
// ! Polimorfizm əsasən funksiyalar üzərində işləyir.
// ! Polimorfizm vasitəsilə bir funksiyanı fərqli class-larda fərqli işlədə bilərik.

class Human {
  String name;
  int age;

  Human({
    required this.name,
    required this.age,
  });

// ! Aşağıdakı funksiya Human class-ının parametrlərini göstərir.
// ! Bu Human class-ından miras alan bütün class-larda istifadə oluna bilər.
  void showInfo() {
    print("Name: $name, Age: $age");
  }
}

class Student extends Human {
  int studentId;
  String field;

  Student({
    required super.name,
    required super.age,
    required this.studentId,
    required this.field,
  });

// ! @override - bu funksiyanın Human class-ındakı funksiyanı eyniləşdirdiyini göstərir.
// ! Yəni, Student class-ında showInfo() funksiyasını yenidən formalaşdırırıq.
// ! @override MÜTLƏQİDİR! (OVERRAYD)
  @override
  void showInfo() {
    super.showInfo();
    print("Student ID: $studentId, Field: $field");
  }
}

// ! Polimorfizm bizə funksiyanı yeniləmək və ya yenidən formalaşdırmaq imkanı verir.
// ! showInfo() funksiyası eyni anda hem Human class-ında, hem də Student class-ında var.