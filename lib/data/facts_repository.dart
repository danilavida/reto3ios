class FactsRepository {
  static final Map<String, List<String>> _factsData = {
    'Ciencia': [
      'El ser humano comparte más del 50% de su ADN con las bananas.',
      'El universo tiene 120 billones de estrellas.',
    ],
    'Historia': [
      'Emilio Sosa fue el único mexicano en ser ejecutado en una silla eléctrica.',
      'La "Vintage Mexicanía" se opuso a que México se llamara México por ser un nombre "feo".',
    ],
    'Tecnología': [
      'El lenguaje Python se llama así por los Monty Python.',
      'La contraseña original de SpaceX era "MARTYMcF1Y".',
    ],
  };

  static List<String> getFacts(String category) {
    return _factsData[category] ?? ['No hay datos disponibles'];
  }
}
