class Logic {
  String convertToBin(String numS, String converterS) {
    int num = int.parse(numS);
    int converter = int.parse(converterS);
    String numBin = converterMethod(num, converter);
    return numBin;
  }

  String converterMethod(int num, int converter) {
    String numConverted = "";
    int i = 0;
    do {
      if (converter == 16 && num % converter > 9) {
        numConverted = numConverted + convertToHex(num % converter);
      } else {
        numConverted = numConverted + (num % converter).toString();
      }

      num = (num / converter).floor();
      i++;
    } while (num >= 1);

    if (i > 1) {
      return rotate(numConverted);
    } else {
      return numConverted;
    }
  }

  String convertToHex(int numToConvert) {
    String numConverted = "";
    switch (numToConvert) {
      case 10:
        numConverted = "A";
        break;
      case 11:
        numConverted = "B";
        break;
      case 12:
        numConverted = "C";
        break;
      case 13:
        numConverted = "D";
        break;
      case 14:
        numConverted = "E";
        break;
      case 15:
        numConverted = "F";
        break;
      default:
        break;
    }

    return numConverted;
  }

  static String rotate(String word) {
    List<String> wordArray = word.split('');
    int k = wordArray.length;
    for (int i = 0; i < wordArray.length / 2; i++) {
      String temp = wordArray[i];
      wordArray[i] = wordArray[k - 1];
      wordArray[k - 1] = temp;
      k--;
    }
    String wordRotate = wordArray.join('');
    print(wordRotate);
    return wordRotate;
  }
}
