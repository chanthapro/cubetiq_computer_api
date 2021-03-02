class Pagination {
  Pagination({this.page, this.totalCount, this.totalPage, this.pageSize});

  int page;
  int totalPage;
  int totalCount;
  int pageSize;

  factory Pagination.fromJson(Map<String, dynamic> json) => Pagination(
      page: json["page"] == null ? null : json["page"],
      totalPage: json["totalPage"] == null ? null : json["totalPage"],
      totalCount: json["totalCount"] == null ? null : json["totalCount"],
      pageSize: json["pageSize"] == null ? null : json["pageSize"]);
}
