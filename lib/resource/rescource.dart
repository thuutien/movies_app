import '../models/movie.dart';
export '../models/movie.dart';

class Resource {
  static List<Movie> movies = [
    Movie("Annabelle Comes Home", "lib/assets/movies/annabell.jpg"),
    Movie("Avenger: End Game", "lib/assets/movies/avenger.jpg"),
    Movie("Child's Play", "lib/assets/movies/child_play.jpg"),
    Movie("Dark Phoenix", "lib/assets/movies/dark_phoenix.jpg"),
    Movie("Godzilla", "lib/assets/movies/godzilla.jpg"),
    Movie("Men in Black", "lib/assets/movies/men_in_black.jpg"),
    Movie("Secret Life of Pets 2", "lib/assets/movies/secret_life_pet.jpg"),
    Movie("Toy Story 4", "lib/assets/movies/toy_story.jpg"),
  ];
}
