class Info {
  final String? title;
  final String? value;
  final bool? status;

  Info({
    this.title,
    this.value,
    this.status,
  });
}

class Infos {
  static List<Info> infos() {
    return [
      Info(
        title: 'Engine',
        value: 'Sleeping Mode',
        status: false,
      ),
      Info(
        title: 'Climate',
        value: 'A/C is ON',
        status: true,
      ),
      Info(
        title: 'Tires',
        value: 'Low preasure',
        status: true,
      ),
    ];
  }
}
