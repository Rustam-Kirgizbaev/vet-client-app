class SliderHomeData {
  final String title;
  final String content;
  final String image;

  SliderHomeData({
    required this.title,
    required this.content,
    required this.image,
  });
}

List<SliderHomeData> sliderHomeContents = [
  SliderHomeData(
    title: 'Cat Story',
    content:
        'Sed ut perspici\nunde omnis iste\nnatus error sit\nvolupm, eaque\nipsa quae ab illo\ninventore verita\net quasi archit.',
    image: 'images/story1.jpg',
  ),
  SliderHomeData(
    title: 'Tortoise Story',
    content:
        'Sed ut perspici\nunde omnis iste\nnatus error sit\nvolupm, eaque\nipsa quae ab illo\ninventore verita\net quasi archit.',
    image: 'images/story2.jpg',
  ),
  SliderHomeData(
    title: 'Dog Story',
    content:
        'Sed ut perspici\nunde omnis iste\nnatus error sit\nvolupm, eaque\nipsa quae ab illo\ninventore verita\net quasi archit.',
    image: 'images/story3.jpg',
  ),
];
