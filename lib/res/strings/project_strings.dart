/// строковые ресуры
abstract class ProjectStrings {
  static const String pincodeTitle = 'Введите код';

  static const String pincodeButton = 'Запросить еще раз';

  static String pincodeHint(String phone) {
    return 'На ваш телефон $phone поступит звонок. Введите последние 4 цифры звонящего номера';
  }
}
