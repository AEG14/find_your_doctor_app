class Doctor {
  Doctor(
      {this.topDoctorName = '',
      this.topDoctorSpecialty = '',
      this.topDoctorRating = '',
      this.topDoctorHospital = '',
      this.topDoctorNumberOfPatient = '',
      this.topDoctorYearOfExperience = '',
      this.topDoctorDescription = '',
      this.topDoctorPicture = '',
      this.isDoctorOpen = false});
  String topDoctorName;
  String topDoctorSpecialty;
  String topDoctorRating;
  String topDoctorHospital;
  String topDoctorNumberOfPatient;
  String topDoctorYearOfExperience;
  String topDoctorDescription;
  String topDoctorPicture;
  bool isDoctorOpen;
}

var topDoctors = [
  Doctor(
    topDoctorName: 'dr. Gilang Segara Bening',
    topDoctorSpecialty: 'Heart',
    topDoctorRating: '4.8',
    topDoctorHospital: 'Persahabatan Hospital',
    topDoctorNumberOfPatient: '1221',
    topDoctorYearOfExperience: '3',
    topDoctorDescription:
        'dr. Gilang is one of the best doctors in the Persahabatan Hospital. He has saved more than 1000 patients in the past 3 years. He has also received many awards from domestic and abroad as the best doctors. He is available on a private or schedule. ',
    topDoctorPicture: 'doctor1.png',
    isDoctorOpen: true,
  ),
  Doctor(
    topDoctorName: 'dr. Shabil Chan',
    topDoctorSpecialty: 'Dental',
    topDoctorRating: '4.7',
    topDoctorHospital: 'Columbia Hospital',
    topDoctorNumberOfPatient: '964',
    topDoctorYearOfExperience: '2',
    topDoctorDescription:
        'dr. Shabil is one of the best doctors in the Columbia Hospital. She has saved more than 900 patients in the past 2 years. She has also received many awards from domestic and abroad as the best doctors. She is available on a private or schedule. ',
    topDoctorPicture: 'doctor2.png',
    isDoctorOpen: true,
  ),
  Doctor(
    topDoctorName: 'dr. Mustakim',
    topDoctorSpecialty: 'Eye',
    topDoctorRating: '4.6',
    topDoctorHospital: 'Salemba Carolus Hospital',
    topDoctorNumberOfPatient: '762',
    topDoctorYearOfExperience: '2',
    topDoctorDescription:
        'dr. Mustakim is one of the best doctors in the Salemba Carolus Hospital. He has saved more than 900 patients in the past 3 years. He has also received many awards from domestic and abroad as the best doctors. He is available on a private or schedule. ',
    topDoctorPicture: 'doctor3.png',
    isDoctorOpen: false,
  ),
  Doctor(
    topDoctorName: 'dr. Suprihatini',
    topDoctorSpecialty: 'Eye',
    topDoctorRating: '4.7',
    topDoctorHospital: 'Salemba Carolus Hospital',
    topDoctorNumberOfPatient: '606',
    topDoctorYearOfExperience: '3',
    topDoctorDescription:
        'dr. Suprihatini is one of the best doctors in the Salemba Carolus Hospital. She has saved more than 860 patients in the past 3 years. She has also received many awards from domestic and abroad as the best doctors. She is available on a private or schedule. ',
    topDoctorPicture: 'doctor4.png',
    isDoctorOpen: true,
  ),
];
