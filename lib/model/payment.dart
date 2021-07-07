class Payment {
  String typeOfBill;
  String deadlinePayment;
  String nominal;
  String administrationFee;
  String total;
  String date;
  String statPayment;

  Payment(
      {required this.typeOfBill,
      required this.deadlinePayment,
      required this.nominal,
      required this.administrationFee,
      required this.total,
      required this.date,
      required this.statPayment});
}

var paymentList = [
  Payment(
      typeOfBill: 'SPP',
      deadlinePayment: '18 Juli 2021, 23:59:59',
      nominal: 'Rp.750.000',
      administrationFee: 'Rp.3000',
      total: 'Rp.753.000',
      date: '02 Februari 2019',
      statPayment: 'Lunas'),
  Payment(
      typeOfBill: 'Study Tour',
      deadlinePayment: '21 April 2021, 23:59:59',
      nominal: 'Rp.1.150.000',
      administrationFee: 'Rp.3000',
      total: 'Rp.1.153.000',
      date: '22 Februari 2019',
      statPayment: 'Belum Lunas'),
  Payment(
      typeOfBill: 'UAS',
      deadlinePayment: '12 Maret 2021, 23:59:59',
      nominal: 'Rp.900.000',
      administrationFee: 'Rp.3000',
      total: 'Rp.903.000',
      date: '25 Februari 2019',
      statPayment: 'Belum Lunas'),
  Payment(
      typeOfBill: 'UTS',
      deadlinePayment: '11 Februari 2021, 23:59:59',
      nominal: 'Rp.1.150.000',
      administrationFee: 'Rp.3000',
      total: 'Rp.1.153.000',
      date: '22 Februari 2019',
      statPayment: 'Belum Lunas'),
  Payment(
      typeOfBill: 'SPP',
      deadlinePayment: '1 Januari 2021, 23:59:59',
      nominal: 'Rp.900.000',
      administrationFee: 'Rp.3000',
      total: 'Rp.903.000',
      date: '25 Februari 2019',
      statPayment: 'Belum Lunas'),
];
