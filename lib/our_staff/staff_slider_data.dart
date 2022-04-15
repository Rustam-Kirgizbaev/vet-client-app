class StaffSlider {
  final String image;
  final String title;
  final String contentonetitle;
  final String contentone;
  final String contentonelorem;
  final String contenttwotitle;
  final String contenttwo;
  final String contenttwoyears;

  StaffSlider({
    required this.image,
    required this.title,
    required this.contentonetitle,
    required this.contentone,
    required this.contentonelorem,
    required this.contenttwotitle,
    required this.contenttwo,
    required this.contenttwoyears,
  });
}

List<StaffSlider> staffSliderContents = [
  StaffSlider(
    image: 'images/slide_staff1.png',
    title: 'First Staff',
    contentonetitle: 'EDUCATION: ',
    contentonelorem: 'Lorem',
    contentone: 'Ipsum University,\nTashkent, Uzbekistan',
    contenttwotitle: 'EXPERIENCE: ',
    contenttwoyears: '2 years in',
    contenttwo: 'Lorem Ipsum',
  ),
  StaffSlider(
    image: 'images/slide_staff2.png',
    title: 'Second Staff',
    contentonetitle: 'EDUCATION: ',
    contentonelorem: 'Lorem',
    contentone: 'Ipsum University,\nTashkent, Uzbekistan',
    contenttwotitle: 'EXPERIENCE: ',
    contenttwoyears: '2 years in',
    contenttwo: 'Lorem Ipsum',
  ),
  StaffSlider(
    image: 'images/slide_staff3.png',
    title: 'Third Staff',
    contentonetitle: 'EDUCATION: ',
    contentonelorem: 'Lorem',
    contentone: 'Ipsum University,\nTashkent, Uzbekistan',
    contenttwotitle: 'EXPERIENCE: ',
    contenttwoyears: '2 years in',
    contenttwo: 'Lorem Ipsum',
  ),
  StaffSlider(
    image: 'images/slide_staff4.png',
    title: 'Fourth Staff',
    contentonetitle: 'EDUCATION: ',
    contentonelorem: 'Lorem',
    contentone: 'Ipsum University,\nTashkent, Uzbekistan',
    contenttwotitle: 'EXPERIENCE: ',
    contenttwoyears: '2 years in',
    contenttwo: 'Lorem Ipsum',
  ),
];
