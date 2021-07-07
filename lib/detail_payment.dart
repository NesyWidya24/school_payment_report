import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:school_payment_report/model/payment.dart';

class DetailPayment extends StatelessWidget {
  final Payment payment;

  DetailPayment({required this.payment});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth <= 600) {
          return DetailPaymentMobile(
            payment: payment,
          );
        } else {
          return DetailPaymentWeb(
            payment: payment,
          );
        }
      },
    ));
  }
}

class DetailPaymentMobile extends StatelessWidget {
  final Payment payment;

  DetailPaymentMobile({required this.payment});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 16.0, bottom: 16.0),
                  child: Container(
                    margin: EdgeInsets.only(top: 10.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xFF407BFF),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(17.0),
                      child: Text(
                        'Detail Payment',
                        style: TextStyle(
                            fontSize: 21,
                            color: Colors.white,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                ),
              ),
              //profile
              Container(
                margin: EdgeInsets.all(16.0),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      //get name from previous page
                      Card(
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Align(
                                alignment: Alignment.centerRight,
                                child: Text(
                                  payment.date,
                                  style: TextStyle(fontSize: 16),
                                ),
                              ),
                              Text(
                                'Kepada Yth,',
                                style: TextStyle(fontSize: 17),
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Berikut informasi untuk tagihan ',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                  Text(
                                    payment.typeOfBill,
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.indigoAccent),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      'Nominal : ',
                                      style: TextStyle(fontSize: 16.0),
                                    ),
                                    flex: 1,
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: Text(
                                      payment.nominal,
                                      style: TextStyle(
                                          fontSize: 16.0,
                                          color: Colors.indigoAccent),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      'Administration Fee : ',
                                      style: TextStyle(fontSize: 16.0),
                                    ),
                                    flex: 1,
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: Text(
                                      payment.administrationFee,
                                      style: TextStyle(
                                          fontSize: 16.0,
                                          color: Colors.indigoAccent),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      'Status Payment : ',
                                      style: TextStyle(fontSize: 16.0),
                                    ),
                                    flex: 1,
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: Text(
                                      payment.statPayment,
                                      style: TextStyle(
                                          fontSize: 16.0, color: Colors.red),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Card(
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(3),
                                    color: Color(0x65E34343),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.stretch,
                                      children: <Widget>[
                                        Text(
                                          'Mohon melakukan pembayaran paling lambat tanggal',
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.black87,
                                              fontFamily: 'CrimsonText'),
                                          textAlign: TextAlign.center,
                                        ),
                                        Text(
                                          payment.deadlinePayment,
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.red,
                                              fontWeight: FontWeight.bold,
                                              fontFamily: 'CrimsonText'),
                                          textAlign: TextAlign.center,
                                        ),
                                        SizedBox(
                                          height: 15,
                                        ),
                                        Text(
                                          'dengan total nominal yang harus dibayar:',
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.black87,
                                              fontFamily: 'CrimsonText'),
                                          textAlign: TextAlign.center,
                                        ),
                                        Text(
                                          payment.total,
                                          style: TextStyle(
                                              fontSize: 19,
                                              color: Colors.indigoAccent,
                                              fontWeight: FontWeight.bold,
                                              fontFamily: 'CrimsonText'),
                                          textAlign: TextAlign.center,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DetailPaymentWeb extends StatelessWidget {
  final Payment payment;

  DetailPaymentWeb({required this.payment});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 16.0, bottom: 16.0),
                child: Container(
                  margin: EdgeInsets.only(top: 10.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xFF407BFF),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(17.0),
                    child: Text(
                      'Detail Payment',
                      style: TextStyle(
                          fontSize: 21,
                          color: Colors.white,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
              ),
            ),
            //profile
            Container(
              margin: EdgeInsets.all(16.0),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    //get name from previous page
                    Card(
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Align(
                              alignment: Alignment.centerRight,
                              child: Text(
                                payment.date,
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                            Text(
                              'Kepada Yth,',
                              style: TextStyle(fontSize: 17),
                            ),
                            Row(
                              children: [
                                Text(
                                  'Berikut informasi untuk tagihan ',
                                  style: TextStyle(fontSize: 16),
                                ),
                                Text(
                                  payment.typeOfBill,
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.indigoAccent),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    'Nominal : ',
                                    style: TextStyle(fontSize: 16.0),
                                  ),
                                  flex: 1,
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Text(
                                    payment.nominal,
                                    style: TextStyle(
                                        fontSize: 16.0,
                                        color: Colors.indigoAccent),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    'Administration Fee : ',
                                    style: TextStyle(fontSize: 16.0),
                                  ),
                                  flex: 1,
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Text(
                                    payment.administrationFee,
                                    style: TextStyle(
                                        fontSize: 16.0,
                                        color: Colors.indigoAccent),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    'Status Payment : ',
                                    style: TextStyle(fontSize: 16.0),
                                  ),
                                  flex: 1,
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Text(
                                    payment.statPayment,
                                    style: TextStyle(
                                        fontSize: 16.0, color: Colors.red),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Card(
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(3),
                                  color: Color(0x65E34343),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    children: <Widget>[
                                      Text(
                                        'Mohon melakukan pembayaran paling lambat tanggal',
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.black87,
                                            fontFamily: 'CrimsonText'),
                                        textAlign: TextAlign.center,
                                      ),
                                      Text(
                                        payment.deadlinePayment,
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.red,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: 'CrimsonText'),
                                        textAlign: TextAlign.center,
                                      ),
                                      SizedBox(
                                        height: 15,
                                      ),
                                      Text(
                                        'dengan total nominal yang harus dibayar:',
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.black87,
                                            fontFamily: 'CrimsonText'),
                                        textAlign: TextAlign.center,
                                      ),
                                      Text(
                                        payment.total,
                                        style: TextStyle(
                                            fontSize: 19,
                                            color: Colors.indigoAccent,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: 'CrimsonText'),
                                        textAlign: TextAlign.center,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
