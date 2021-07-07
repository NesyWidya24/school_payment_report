class Student {
  String imageProfile;
  String nis;
  String fullName;
  String ttl;
  String phone;
  String className;
  String gender;
  String address;

  Student(
      {required this.imageProfile,
      required this.nis,
      required this.fullName,
      required this.ttl,
      required this.phone,
      required this.className,
      required this.gender,
      required this.address});
}

var studentList = [
  Student(
      imageProfile: 'images/student1.png',
      nis: '1716101010',
      fullName: 'Akai Shuichi',
      ttl: 'Bandung, 24 April 2010',
      phone: '089567987876',
      className: '4A',
      gender: 'Male',
      address: 'Kp.Bandungkulon rt 03 rw 01'),
  Student(
      imageProfile: 'images/student3.png',
      nis: '1716109110',
      fullName: 'Shukai',
      ttl: 'Bandung, 24 Desember 2010',
      phone: '089567987878',
      className: '2A',
      gender: 'Male',
      address: 'Kp.Bandungkulon rt 06 rw 01'),
  Student(
      imageProfile: 'images/student2.png',
      nis: '1716178610',
      fullName: 'Kurni',
      ttl: 'Bandung, 24 Juli 2010',
      phone: '089567987890',
      className: '4A',
      gender: 'Male',
      address: 'Kp.Bandungkulon rt 04 rw 03'),
  Student(
      imageProfile: 'images/student1.png',
      nis: '17161990010',
      fullName: 'Jay',
      ttl: 'Bandung, 1 Juni 2010',
      phone: '089567987867',
      className: '5A',
      gender: 'Male',
      address: 'Kp.Bandungkulon rt 03 rw 04'),
  Student(
      imageProfile: 'images/student2.png',
      nis: '1716111010',
      fullName: 'Yere',
      ttl: 'Bandung, 14 Februari 2010',
      phone: '089567987834',
      className: '2A',
      gender: 'Male',
      address: 'Kp.Bandungkulon rt 03 rw 01'),
  Student(
      imageProfile: 'images/student4.png',
      nis: '1716134010',
      fullName: 'Sakura',
      ttl: 'Bandung, 24 April 2010',
      phone: '08956798787687',
      className: '3A',
      gender: 'Female',
      address: 'Kp.Bandungkulon rt 05 rw 03'),
  Student(
      imageProfile: 'images/student5.png',
      nis: '1716111010',
      fullName: 'Kagu',
      ttl: 'Bandung, 24 Januari 2011',
      phone: '089567457876',
      className: '4A',
      gender: 'Female',
      address: 'Kp.Bandungkulon rt 03 rw 01'),
  Student(
      imageProfile: 'images/student4.png',
      nis: '1716101020',
      fullName: 'Hanamura',
      ttl: 'Bandung, 12 Mei 2012',
      phone: '089567987812',
      className: '6A',
      gender: 'Female',
      address: 'Kp.Gegerkalong rt 01 rw 09'),
];
