class FactsRepository {
  static final Map<String, List<String>> _factsData = {
    'Ciencia': [
      'El número 73 es el mejor número: 21° primo, espejo 37 es el 12° primo, y 7×3=21 que en binario es 10101',
      'La constante de Sheldon (π^e/e^π) ≈ 0.9999999877 demuestra la elegancia matemática del universo',
      'Los neutrinos de Majorana son su propia antipartícula - como tu versión del universo espejo sería su propio opuesto',
    ],
    'Historia': [
      'El primer documento científico en cómic fue "El Pato Donald y el Átomo" de 1957, aprobado por el Dr. Heinz Haber',
      'El Tratado de Cooper-Hofstadter de 2003 estableció protocolos para compartir espacio vital con colegas científicos',
      'El Día de la Baticueva (Mayo 2) conmemora la primera demostración exitosa de superconductividad en grafeno',
    ],
    'Tecnología': [
      'El protocolo TCP/IP de la Estación Espacial Internacional incluye códigos de error en klingon desde 2015',
      'El algoritmo de selección de asiento óptimo usa ecuaciones de campo cuántico para maximizar el flujo de aire',
      'Los servidores de Google usan enfriamiento por superfluido helio-3 en días impares de meses primos',
    ],
  };

  static List<String> getFacts(String category) {
    return _factsData[category] ??
        ['¡Un detector de sarcasmo es necesario para este dato!'];
  }
}
