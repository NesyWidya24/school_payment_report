import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StepPayment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth <= 600) {
          return StepPaymentMobile();
        } else {
          return StepPaymentWeb();
        }
      },
    ));
  }
}

class StepPaymentMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Center(
              child: Container(
                margin: EdgeInsets.only(top: 10.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xFF85A9F8),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    'Berikut adalah tata cara pembayaran',
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        fontWeight: FontWeight.w100),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              width: 600,
              decoration: BoxDecoration(
                color: Colors.black54,
                borderRadius: BorderRadiusDirectional.circular(10),
              ),
              margin: EdgeInsets.only(left: 16.0, right: 16.0),
              padding: EdgeInsets.only(left: 16.0, right: 16.0, bottom: 16.0),
              child: Column(
                children: [
                  Image.asset(
                    'images/logo_tokped.png',
                    height: 70,
                    width: 170,
                  ),
                  Text(
                    '1. Login ke aplikasi Tokopedia'
                    '\n2. Pilih menu Semua Kategori'
                    '\n3. Pada bagian Top Up & Tagihan, pilih Biaya Pendidikan'
                    '\n4. Pilih institusi Pendidikan dan masukan nomor Pembayaran atau nomor Mahasiswa dengan ID Pendaftar, Klik Bayar'
                    '\n5. Contoh ID Pendaftar 71717700 (8 digit)'
                    '\n6. Periksa total Tagihan & Total pembayaran, jika sudah sesuai klik Lanjut '
                    '\n7. Pilih Metode pembayaran & ikuti instruksi untuk menyalesaikan transaksi',
                    style: TextStyle(
                        fontSize: 17,
                        color: Colors.white,
                        fontFamily: 'CrimsonText'),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              width: 600,
              decoration: BoxDecoration(
                color: Colors.black54,
                borderRadius: BorderRadiusDirectional.circular(10),
              ),
              margin: EdgeInsets.only(left: 16.0, right: 16.0),
              padding: EdgeInsets.only(left: 16.0, right: 16.0, bottom: 16.0),
              child: Column(
                children: [
                  Image.asset(
                    'images/logo_indomaret.png',
                    height: 70,
                    width: 170,
                  ),
                  Text(
                    '\n1. Lakukan pembayaran langsung melalui kasir Indomaret terdekat di daerah anda'
                    '\n2. Sebutkan institusi Pendidikan dan masukan Nomor Pembayaran atau Nomor Mahasiswa dengan ID Pendaftar.'
                    '\nContoh: ID Pendaftar 17282780 (8 digit)',
                    style: TextStyle(
                        fontSize: 17,
                        color: Colors.white,
                        fontFamily: 'CrimsonText'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class StepPaymentWeb extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 16.0, bottom: 16.0),
                  child: Container(
                    margin: EdgeInsets.only(top: 10.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xFF85A9F8),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        'Berikut adalah tata cara pembayaran',
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                            fontWeight: FontWeight.w100),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 600,
                  decoration: BoxDecoration(
                    color: Colors.black54,
                    borderRadius: BorderRadiusDirectional.circular(10),
                  ),
                  margin: EdgeInsets.only(left: 16.0, right: 16.0),
                  padding:
                      EdgeInsets.only(left: 16.0, right: 16.0, bottom: 16.0),
                  child: Column(
                    children: [
                      Image.asset(
                        'images/logo_tokped.png',
                        height: 70,
                        width: 170,
                      ),
                      Text(
                        '1. Login ke aplikasi Tokopedia'
                        '\n2. Pilih menu Semua Kategori'
                        '\n3. Pada bagian Top Up & Tagihan, pilih Biaya Pendidikan'
                        '\n4. Pilih institusi Pendidikan dan masukan nomor Pembayaran atau nomor Mahasiswa dengan ID Pendaftar, Klik Bayar'
                        '\n5. Contoh ID Pendaftar 71717700 (8 digit)'
                        '\n6. Periksa total Tagihan & Total pembayaran, jika sudah sesuai klik Lanjut '
                        '\n7. Pilih Metode pembayaran & ikuti instruksi untuk menyalesaikan transaksi',
                        style: TextStyle(
                            fontSize: 17,
                            color: Colors.white,
                            fontFamily: 'CrimsonText'),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  width: 600,
                  decoration: BoxDecoration(
                    color: Colors.black54,
                    borderRadius: BorderRadiusDirectional.circular(10),
                  ),
                  margin: EdgeInsets.only(left: 16.0, right: 16.0),
                  padding:
                      EdgeInsets.only(left: 16.0, right: 16.0, bottom: 16.0),
                  child: Column(
                    children: [
                      Image.asset(
                        'images/logo_indomaret.png',
                        height: 70,
                        width: 170,
                      ),
                      Text(
                        '1. Lakukan pembayaran langsung melalui kasir Indomaret terdekat di daerah anda'
                        '\n2. Sebutkan institusi Pendidikan dan masukan Nomor Pembayaran atau Nomor Mahasiswa dengan ID Pendaftar.'
                        '\nContoh: ID Pendaftar 17282780 (8 digit)',
                        style: TextStyle(
                            fontSize: 17,
                            color: Colors.white,
                            fontFamily: 'CrimsonText'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
