/// строковые ресуры проекта
abstract class ProjectStrings {
  static const String pinCodeTitle = 'Введите код';

  static const String pinCodeButton = 'Запросить еще раз';

  static String pincodeHint(String phone) {
    return 'На ваш телефон $phone поступит звонок. Введите последние 4 цифры звонящего номера';
  }
}
