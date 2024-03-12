class Collection {
  // 1. 대한민국 도시 이름 모음 (순서 상관 없음), 중복값 허용x
  Set<String> cities = {'서울', '인천', '광주', '울산', '부산'};

  // 2. 10명 학생의 시험 점수
  List<Map<String, int>> scores = [
    {'홍길동': 100},
    {'임꺽정': 80}
  ];

  // 3. 대한민국의 도시별 인구수 (순서 상관 없음)
  List<Map<String, int>> cityPopulation = [
    {'서울': 10000000},
    {'수원': 1200000},
    {'대구': 2500000}
  ];

// Collection collection1 = Collection();
//
// print(collection1.cities);
// print(collection1.scores);
// print(collection1.cityPopulation);
}
