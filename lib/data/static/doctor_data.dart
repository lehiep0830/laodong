final List<DoctorModel> doctorData = [
  DoctorModel(
    id: 1,
    image: "assets/images/doctor/doctor_1.png",
    title: "Modern House",
    name: "Dr. James B. Mummert",
    specialty: "Cardiology",
    price: "\$35.00",
    review: "540",
    averageRating: 4.5,
    activeStatus: "Online",
    schedule: [
      Schedule(day: "Monday", date: "2025-02-05", timeSlots: ["10:00 AM - 1:00 PM", "3:00 PM - 6:00 PM"]),
      Schedule(
          day: "Wednesday",
          date: "2025-02-07",
          timeSlots: ["11:00 AM - 2:00 PM", "5:00 PM - 7:00 PM", "10:00 PM - 12:00 AM"]),
      Schedule(day: "Friday", date: "2025-02-09", timeSlots: ["9:00 AM - 12:00 PM", "2:00 PM - 5:00 PM"]),
      Schedule(day: "Saturday", date: "2025-02-10", timeSlots: ["10:00 AM - 12:00 PM", "3:00 PM - 5:00 PM"]),
    ],
    experience: [
      Experience(
        designation: "Allergist/immunologist",
        department: "Center for Health",
        employmentStatus: "Jan 1, 2023 - Present",
        period: "1 Year 6 Months",
        jobPlace: "Dhaka University Medical Center & Hospital",
      ),
      Experience(
        designation: "Allergist/immunologist",
        department: "Center for Health",
        employmentStatus: "Jan 1, 2018 - Dec 31, 2022",
        period: "4 Year",
        jobPlace: "Northern International Medical College Hospital ",
      ),
    ],
  ),
  DoctorModel(
    id: 2,
    image: "assets/images/doctor/doctor_2.png",
    title: "Modern House",
    name: "Dr. Linda Mercer",
    specialty: "Dermatology",
    price: "\$29.00",
    review: "640",
    averageRating: 4.8,
    activeStatus: "10.00 AM - 12.00 PM",
    schedule: [
      Schedule(day: "Monday", date: "2025-02-05", timeSlots: ["10:00 AM - 1:00 PM", "3:00 PM - 6:00 PM"]),
      Schedule(day: "Wednesday", date: "2025-02-07", timeSlots: ["11:00 AM - 2:00 PM", "4:00 PM - 7:00 PM"]),
      Schedule(day: "Friday", date: "2025-02-09", timeSlots: ["9:00 AM - 12:00 PM", "2:00 PM - 5:00 PM"]),
    ],
    experience: [
      Experience(
        designation: "Allergist/immunologist",
        department: "Center for Health",
        employmentStatus: "Jan 1, 2023 - Present",
        period: "1 Year 6 Months",
        jobPlace: "Dhaka University Medical Center & Hospital",
      ),
      Experience(
        designation: "Allergist/immunologist",
        department: "Center for Health",
        employmentStatus: "Jan 1, 2018 - Dec 31, 2022",
        period: "4 Year",
        jobPlace: "Northern International Medical College Hospital ",
      ),
    ],
  ),
  DoctorModel(
    id: 3,
    image: "assets/images/doctor/doctor_3.png",
    title: "Contemporary House",
    name: "Dr. Robert C. Davis",
    specialty: "Paediatrics",
    price: "\$55.00",
    review: "190",
    averageRating: 4.0,
    activeStatus: "Online",
    schedule: [
      Schedule(day: "Monday", date: "2025-02-05", timeSlots: ["10:00 AM - 1:00 PM", "3:00 PM - 6:00 PM"]),
      Schedule(day: "Wednesday", date: "2025-02-07", timeSlots: ["11:00 AM - 2:00 PM", "4:00 PM - 7:00 PM"]),
      Schedule(day: "Friday", date: "2025-02-09", timeSlots: ["9:00 AM - 12:00 PM", "2:00 PM - 5:00 PM"]),
    ],
    experience: [
      Experience(
        designation: "Allergist/immunologist",
        department: "Center for Health",
        employmentStatus: "Jan 1, 2023 - Present",
        period: "1 Year 6 Months",
        jobPlace: "Dhaka University Medical Center & Hospital",
      ),
      Experience(
        designation: "Allergist/immunologist",
        department: "Center for Health",
        employmentStatus: "Jan 1, 2018 - Dec 31, 2022",
        period: "4 Year",
        jobPlace: "Northern International Medical College Hospital ",
      ),
    ],
  ),
  DoctorModel(
    id: 4,
    image: "assets/images/doctor/doctor_4.png",
    title: "Luxury Villa",
    name: "Dr. Linda Mercer",
    specialty: "Pathology",
    price: "\$30.00",
    review: "230",
    averageRating: 5.0,
    activeStatus: "4.00 PM - 8.00 PM",
    schedule: [
      Schedule(day: "Monday", date: "2025-02-05", timeSlots: ["10:00 AM - 1:00 PM", "3:00 PM - 6:00 PM"]),
      Schedule(day: "Wednesday", date: "2025-02-07", timeSlots: ["11:00 AM - 2:00 PM", "4:00 PM - 7:00 PM"]),
      Schedule(day: "Friday", date: "2025-02-09", timeSlots: ["9:00 AM - 12:00 PM", "2:00 PM - 5:00 PM"]),
    ],
    experience: [
      Experience(
        designation: "Allergist/immunologist",
        department: "Center for Health",
        employmentStatus: "Jan 1, 2023 - Present",
        period: "1 Year 6 Months",
        jobPlace: "Dhaka University Medical Center & Hospital",
      ),
      Experience(
        designation: "Allergist/immunologist",
        department: "Center for Health",
        employmentStatus: "Jan 1, 2018 - Dec 31, 2022",
        period: "4 Year",
        jobPlace: "Northern International Medical College Hospital ",
      ),
    ],
  ),
  DoctorModel(
    id: 5,
    image: "assets/images/doctor/doctor_5.png",
    title: "Apartment Painting",
    name: "Dr. Jack Hamilton",
    specialty: "Psychiatry",
    price: "\$25.00",
    review: "180",
    averageRating: 4.8,
    activeStatus: "10.00 AM - 12.00 PM",
    schedule: [
      Schedule(day: "Monday", date: "2025-02-05", timeSlots: ["10:00 AM - 1:00 PM", "3:00 PM - 6:00 PM"]),
      Schedule(day: "Wednesday", date: "2025-02-07", timeSlots: ["11:00 AM - 2:00 PM", "4:00 PM - 7:00 PM"]),
      Schedule(day: "Friday", date: "2025-02-09", timeSlots: ["9:00 AM - 12:00 PM", "2:00 PM - 5:00 PM"]),
    ],
    experience: [
      Experience(
        designation: "Allergist/immunologist",
        department: "Center for Health",
        employmentStatus: "Jan 1, 2023 - Present",
        period: "1 Year 6 Months",
        jobPlace: "Dhaka University Medical Center & Hospital",
      ),
      Experience(
        designation: "Allergist/immunologist",
        department: "Center for Health",
        employmentStatus: "Jan 1, 2018 - Dec 31, 2022",
        period: "4 Year",
        jobPlace: "Northern International Medical College Hospital ",
      ),
    ],
  ),
  DoctorModel(
    id: 6,
    image: "assets/images/doctor/doctor_3.png",
    title: "Futuristic House",
    name: "Dr. Linda Mercer",
    specialty: "Internal medicine",
    price: "\$25.00",
    review: "180",
    averageRating: 4.8,
    activeStatus: "Online",
    schedule: [
      Schedule(day: "Monday", date: "2025-02-05", timeSlots: ["10:00 AM - 1:00 PM", "3:00 PM - 6:00 PM"]),
      Schedule(day: "Wednesday", date: "2025-02-07", timeSlots: ["11:00 AM - 2:00 PM", "4:00 PM - 7:00 PM"]),
      Schedule(day: "Friday", date: "2025-02-09", timeSlots: ["9:00 AM - 12:00 PM", "2:00 PM - 5:00 PM"]),
    ],
    experience: [
      Experience(
        designation: "Allergist/immunologist",
        department: "Center for Health",
        employmentStatus: "Jan 1, 2023 - Present",
        period: "1 Year 6 Months",
        jobPlace: "Dhaka University Medical Center & Hospital",
      ),
      Experience(
        designation: "Allergist/immunologist",
        department: "Center for Health",
        employmentStatus: "Jan 1, 2018 - Dec 31, 2022",
        period: "4 Year",
        jobPlace: "Northern International Medical College Hospital ",
      ),
    ],
  ),
  DoctorModel(
    id: 7,
    image: "assets/images/doctor/doctor_1.png",
    title: "Modern House",
    name: "Dr. James B. Mummert",
    specialty: "Cardiology",
    price: "\$35.00",
    review: "540",
    averageRating: 4.5,
    activeStatus: "Online",
    schedule: [
      Schedule(day: "Monday", date: "2025-02-05", timeSlots: ["10:00 AM - 1:00 PM", "3:00 PM - 6:00 PM"]),
      Schedule(day: "Wednesday", date: "2025-02-07", timeSlots: ["11:00 AM - 2:00 PM", "4:00 PM - 7:00 PM"]),
      Schedule(day: "Friday", date: "2025-02-09", timeSlots: ["9:00 AM - 12:00 PM", "2:00 PM - 5:00 PM"]),
    ],
    experience: [
      Experience(
        designation: "Allergist/immunologist",
        department: "Center for Health",
        employmentStatus: "Jan 1, 2023 - Present",
        period: "1 Year 6 Months",
        jobPlace: "Dhaka University Medical Center & Hospital",
      ),
      Experience(
        designation: "Allergist/immunologist",
        department: "Center for Health",
        employmentStatus: "Jan 1, 2018 - Dec 31, 2022",
        period: "4 Year",
        jobPlace: "Northern International Medical College Hospital ",
      ),
    ],
  ),
  DoctorModel(
    id: 8,
    image: "assets/images/doctor/doctor_2.png",
    title: "Modern House",
    name: "Dr. Linda Mercer",
    specialty: "Dermatology",
    price: "\$29.00",
    review: "640",
    averageRating: 4.8,
    activeStatus: "10.00 AM - 12.00 PM",
    schedule: [
      Schedule(day: "Monday", date: "2025-02-05", timeSlots: ["10:00 AM - 1:00 PM", "3:00 PM - 6:00 PM"]),
      Schedule(day: "Wednesday", date: "2025-02-07", timeSlots: ["11:00 AM - 2:00 PM", "4:00 PM - 7:00 PM"]),
      Schedule(day: "Friday", date: "2025-02-09", timeSlots: ["9:00 AM - 12:00 PM", "2:00 PM - 5:00 PM"]),
    ],
    experience: [
      Experience(
        designation: "Allergist/immunologist",
        department: "Center for Health",
        employmentStatus: "Jan 1, 2023 - Present",
        period: "1 Year 6 Months",
        jobPlace: "Dhaka University Medical Center & Hospital",
      ),
      Experience(
        designation: "Allergist/immunologist",
        department: "Center for Health",
        employmentStatus: "Jan 1, 2018 - Dec 31, 2022",
        period: "4 Year",
        jobPlace: "Northern International Medical College Hospital ",
      ),
    ],
  ),
  DoctorModel(
    id: 9,
    image: "assets/images/doctor/doctor_3.png",
    title: "Contemporary House",
    name: "Dr. Robert C. Davis",
    specialty: "Paediatrics",
    price: "\$55.00",
    review: "190",
    averageRating: 4.0,
    activeStatus: "Online",
    schedule: [
      Schedule(day: "Monday", date: "2025-02-05", timeSlots: ["10:00 AM - 1:00 PM", "3:00 PM - 6:00 PM"]),
      Schedule(day: "Wednesday", date: "2025-02-07", timeSlots: ["11:00 AM - 2:00 PM", "4:00 PM - 7:00 PM"]),
      Schedule(day: "Friday", date: "2025-02-09", timeSlots: ["9:00 AM - 12:00 PM", "2:00 PM - 5:00 PM"]),
    ],
    experience: [
      Experience(
        designation: "Allergist/immunologist",
        department: "Center for Health",
        employmentStatus: "Jan 1, 2023 - Present",
        period: "1 Year 6 Months",
        jobPlace: "Dhaka University Medical Center & Hospital",
      ),
      Experience(
        designation: "Allergist/immunologist",
        department: "Center for Health",
        employmentStatus: "Jan 1, 2018 - Dec 31, 2022",
        period: "4 Year",
        jobPlace: "Northern International Medical College Hospital ",
      ),
    ],
  ),
  DoctorModel(
    id: 10,
    image: "assets/images/doctor/doctor_4.png",
    title: "Luxury Villa",
    name: "Dr. Linda Mercer",
    specialty: "Pathology",
    price: "\$30.00",
    review: "230",
    averageRating: 5.0,
    activeStatus: "4.00 PM - 8.00 PM",
    schedule: [
      Schedule(day: "Monday", date: "2025-02-05", timeSlots: ["10:00 AM - 1:00 PM", "3:00 PM - 6:00 PM"]),
      Schedule(day: "Wednesday", date: "2025-02-07", timeSlots: ["11:00 AM - 2:00 PM", "4:00 PM - 7:00 PM"]),
      Schedule(day: "Friday", date: "2025-02-09", timeSlots: ["9:00 AM - 12:00 PM", "2:00 PM - 5:00 PM"]),
    ],
    experience: [
      Experience(
        designation: "Allergist/immunologist",
        department: "Center for Health",
        employmentStatus: "Jan 1, 2023 - Present",
        period: "1 Year 6 Months",
        jobPlace: "Dhaka University Medical Center & Hospital",
      ),
      Experience(
        designation: "Allergist/immunologist",
        department: "Center for Health",
        employmentStatus: "Jan 1, 2018 - Dec 31, 2022",
        period: "4 Year",
        jobPlace: "Northern International Medical College Hospital ",
      ),
    ],
  ),
  DoctorModel(
    id: 11,
    image: "assets/images/doctor/doctor_5.png",
    title: "Apartment Painting",
    name: "Dr. Jack Hamilton",
    specialty: "Psychiatry",
    price: "\$25.00",
    review: "180",
    averageRating: 4.8,
    activeStatus: "10.00 AM - 12.00 PM",
    schedule: [
      Schedule(day: "Monday", date: "2025-02-05", timeSlots: ["10:00 AM - 1:00 PM", "3:00 PM - 6:00 PM"]),
      Schedule(day: "Wednesday", date: "2025-02-07", timeSlots: ["11:00 AM - 2:00 PM", "4:00 PM - 7:00 PM"]),
      Schedule(day: "Friday", date: "2025-02-09", timeSlots: ["9:00 AM - 12:00 PM", "2:00 PM - 5:00 PM"]),
    ],
    experience: [
      Experience(
        designation: "Allergist/immunologist",
        department: "Center for Health",
        employmentStatus: "Jan 1, 2023 - Present",
        period: "1 Year 6 Months",
        jobPlace: "Dhaka University Medical Center & Hospital",
      ),
      Experience(
        designation: "Allergist/immunologist",
        department: "Center for Health",
        employmentStatus: "Jan 1, 2018 - Dec 31, 2022",
        period: "4 Year",
        jobPlace: "Northern International Medical College Hospital ",
      ),
    ],
  ),
  DoctorModel(
    id: 12,
    image: "assets/images/doctor/doctor_3.png",
    title: "Futuristic House",
    name: "Dr. Linda Mercer",
    specialty: "Internal medicine",
    price: "\$25.00",
    review: "180",
    averageRating: 4.8,
    activeStatus: "Online",
    schedule: [
      Schedule(day: "Monday", date: "2025-02-05", timeSlots: ["10:00 AM - 1:00 PM", "3:00 PM - 6:00 PM"]),
      Schedule(day: "Wednesday", date: "2025-02-07", timeSlots: ["11:00 AM - 2:00 PM", "4:00 PM - 7:00 PM"]),
      Schedule(day: "Friday", date: "2025-02-09", timeSlots: ["9:00 AM - 12:00 PM", "2:00 PM - 5:00 PM"]),
    ],
    experience: [
      Experience(
        designation: "Allergist/immunologist",
        department: "Center for Health",
        employmentStatus: "Jan 1, 2023 - Present",
        period: "1 Year 6 Months",
        jobPlace: "Dhaka University Medical Center & Hospital",
      ),
      Experience(
        designation: "Allergist/immunologist",
        department: "Center for Health",
        employmentStatus: "Jan 1, 2018 - Dec 31, 2022",
        period: "4 Year",
        jobPlace: "Northern International Medical College Hospital ",
      ),
    ],
  ),
];

class DoctorModel {
  final int id;
  final String image;
  final String title;
  final String name;
  final String specialty;
  final String price;
  final String review;
  final double averageRating;
  final String activeStatus;
  final List<Schedule> schedule;
  final List<Experience> experience;

  DoctorModel({
    required this.id,
    required this.image,
    required this.title,
    required this.name,
    required this.specialty,
    required this.price,
    required this.review,
    required this.averageRating,
    required this.activeStatus,
    required this.schedule,
    required this.experience,
  });
}

class Experience {
  final String designation;
  final String department;
  final String employmentStatus;
  final String period;
  final String jobPlace;

  Experience({
    required this.designation,
    required this.department,
    required this.employmentStatus,
    required this.period,
    required this.jobPlace,
  });
}

class Schedule {
  final String day;
  final String date;
  final List<dynamic> timeSlots;

  Schedule({
    required this.day,
    required this.date,
    required this.timeSlots,
  });
}
