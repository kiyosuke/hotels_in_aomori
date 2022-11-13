class HotelCsvDto {
  final String no;
  final String type;
  final String name;
  final String prefecture;
  final String city;
  final String address;
  final String building;
  final String floor;
  final String tel;
  final String applicant;
  final String applicantPosition;
  final String representative;
  final String healthCenterName;
  final String allowedDate;
  final String allowedNo;
  final String latitude;
  final String longitude;

  const HotelCsvDto(
    this.no,
    this.type,
    this.name,
    this.prefecture,
    this.city,
    this.address,
    this.building,
    this.floor,
    this.tel,
    this.applicant,
    this.applicantPosition,
    this.representative,
    this.healthCenterName,
    this.allowedDate,
    this.allowedNo,
    this.latitude,
    this.longitude,
  );

  factory HotelCsvDto.fromCsv(List<String> csv) {
    return HotelCsvDto(
      csv[0],
      csv[1],
      csv[2],
      csv[3],
      csv[4],
      csv[5],
      csv[6],
      csv[7],
      csv[8],
      csv[9],
      csv[10],
      csv[11],
      csv[12],
      csv[13],
      csv[14],
      csv[15],
      csv[16],
    );
  }
}
