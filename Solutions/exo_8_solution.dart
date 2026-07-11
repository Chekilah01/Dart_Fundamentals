class Game {
  final String title;
  late String highScore;      // TODO 1: set in loadSaveData()
  late List<String> players;  // TODO 2: also set in loadSaveData()
  bool _loaded = false ;

  Game(this.title);

  /*
  Game(String title){
  title = this.title;
  }
  */

  void loadSaveData() {
    highScore = '9999';
    players = ['Alice', 'Bob'];
    this._loaded = true ;
  }

  // TODO 3: Add a boolean flag _loaded that starts false and becomes true
  // in loadSaveData(). Check it in showSummary().
  void showSummary() {
    // Crash-safe: only access late fields if data is loaded
    if(_loaded){
      print('$title — High score: $highScore');
    print('Players: $players');
    }else{
      print("Data not loaded");
    }
  }
}

void main() {
  Game g = Game('Pac-Man');
  g.showSummary();   // TODO 4: Fix — this is called BEFORE loadSaveData()
  g.loadSaveData();
  g.showSummary();
}