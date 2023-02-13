import '../String Files/image_string.dart';
import '../String Files/text_string.dart';

class UnbordingContent {
  String? image;
  String? title;
  String? discription;

  UnbordingContent({this.image, this.title, this.discription});
}

List<UnbordingContent> contents = [
  UnbordingContent(
      title: knowledge, image: gif1, discription: Knowledge_sub_tex),
  UnbordingContent(
      title: Training, image: send_gif, discription: Training_sub_tex),
  UnbordingContent(
      title: Realization, image: gif3, discription: Realization_sub_tex),
];
