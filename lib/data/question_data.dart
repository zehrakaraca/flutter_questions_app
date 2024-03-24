import 'package:questions/models/question.dart';

const List<Question> questions = [
  Question(
    question: 'Flutter nedir?',
    answer: ['Bir oyun motoru', 'Bir web framework', 'Bir mobil uygulama SDK\'sı', 'Bir veritabanı yönetim sistemi'],
    correctAnswerIndex: 2,
  ),
  Question(
    question: 'Dart nedir?',
    answer: ['Bir veritabanı yönetim sistemi', 'Bir programlama dili', 'Bir IDE', 'Bir oyun','Bir donanım parçası'],
    correctAnswerIndex: 1,
  ),
  Question(
    question: 'Widget\'lar Flutter\'da neyi temsil eder?',
    answer: ['Veritabanı objeleri', 'Ağ çağrıları', 'Arka plan servisleri', 'UI bileşenleri'],
    correctAnswerIndex: 3,
  ),
  Question(
    question: 'StatelessWidget ve StatefulWidget arasındaki fark nedir?',
    answer: ['Durum yönetimi yoktur ve vardır', 'Birisi Dart\'ta diğeri Flutter\'da kullanılır', 'Birisi widget oluşturur diğeri oluşturmaz'],
    correctAnswerIndex: 0,
  ),
  Question(
    question: 'Hot Reload özelliği ne işe yarar?',
    answer: ['Uygulamanın tamamını yeniden başlatır', 'Dart dosyalarını siler', 'Değişiklik yapılan kodu uygulamada günceller', 'Yukarıdakilerin hiçbiri'],
    correctAnswerIndex: 2,
  ),
];
