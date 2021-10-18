extension ListExtensions<T> on List<T> {
  List<List<T>> chunks(int n) {
    if (this.length < n) return <List<T>>[this];

    List<List<T>> chunks = [];

    int fullChunks = this.length ~/ n;
    int remainder = this.length % n;
    //int totalChunks = hasRemainder ? fullChunks + 1 : fullChunks;

    for (int i = 0; i < fullChunks; i++) {
      List<T> chunk = [];
      int index = i * n;
      int end = i == 0 ? n : n * (i + 1);
      for (int j = index; j < end; j++) {
        chunk.add(this[j]);
      }
      chunks.add(chunk);
    }

    if (remainder != 0) {
      List<T> chunk = [];
      for (int i = 0, j = fullChunks * 2; i < remainder; i++) {
        chunk.add(this[j]);
      }
      chunks.add(chunk);
    }

    return chunks;
  }

  Iterable<T> takeUpTo(int count) {
    if (this.length < count) count = this.length;
    return this.take(count);
  }
}
