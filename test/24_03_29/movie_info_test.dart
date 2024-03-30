import 'package:collection/collection.dart';
import 'package:learn_dart_together/24_03_29/data_source/upcoming_movies_api.dart';
import 'package:learn_dart_together/24_03_29/dto/upcoming_movies_dto.dart';
import 'package:learn_dart_together/24_03_29/mapper/upcoming_movies_mapper.dart';
import 'package:learn_dart_together/24_03_29/repository/upcoming_movies_repo_impl.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  test('movie_info 리스트가 expected 와 일치하는지', () async {
    final movieInfoList =
        await UpcomingMoviesRepoImpl(UpcomingMoviesApi()).getMovieInfoList();

    final expectedMap = UpcomingMoviesDto.fromJson(expectedData);
    final upcomingExpected = expectedMap.toUpcomingMovies();

    expect(movieInfoList.equals(upcomingExpected.results), true);
  });
}

final expectedData = {
  "dates": {"maximum": "2024-04-24", "minimum": "2024-04-03"},
  "page": 1,
  "results": [
    {
      "adult": false,
      "backdrop_path": "/1XDDXPXGiI8id7MrUxK36ke7gkX.jpg",
      "genre_ids": [28, 12, 16, 35, 10751],
      "id": 1011985,
      "original_language": "en",
      "original_title": "Kung Fu Panda 4",
      "overview":
          "마침내 내면의 평화… 냉면의 평화…가 찾아왔다고 믿는 용의 전사 ‘포’ 이젠 평화의 계곡의 영적 지도자가 되고, 자신을 대신할 후계자를 찾아야만 한다. “이제 용의 전사는 그만둬야 해요?” 용의 전사로의 모습이 익숙해지고 새로운 성장을 하기보다 지금 이대로가 좋은 ‘포’ 하지만 모든 쿵푸 마스터들의 능력을 그대로 복제하는 강력한 빌런 ‘카멜레온’이 나타나고 그녀를 막기 위해 정체를 알 수 없는 쿵푸 고수 ‘젠’과 함께 모험을 떠나게 되는데… 포는 가장 강력한 빌런과 자기 자신마저 뛰어넘고 진정한 변화를 할 수 있을까?",
      "popularity": 4028.167,
      "poster_path": "/1ZNOOMmILNUzVYbzG1j7GYb5bEV.jpg",
      "release_date": "2024-03-02",
      "title": "쿵푸팬더 4",
      "video": false,
      "vote_average": 6.927,
      "vote_count": 393
    },
    {
      "adult": false,
      "backdrop_path": "/qrGtVFxaD8c7et0jUtaYhyTzzPg.jpg",
      "genre_ids": [28, 878, 12],
      "id": 823464,
      "original_language": "en",
      "original_title": "Godzilla x Kong: The New Empire",
      "overview":
          "고질라 X 콩, 이번에는 한 팀이다! ‘고질라’ VS ‘콩’, 두 타이탄의 전설적인 대결 이후 할로우 어스에 남은 ‘콩’은 드디어 애타게 찾던 동족을 발견하지만 그 뒤에 도사리고 있는 예상치 못한 위협에 맞닥뜨린다. 한편, 깊은 동면에 빠진 ‘고질라’는 알 수 없는 신호로 인해 깨어나고 푸른 눈의 폭군 ‘스카 킹’의 지배 아래 위기에 처한 할로우 어스를 마주하게 된다. 할로우 어스는 물론, 지구상에도 출몰해 전세계를 초토화시키는 타이탄들의 도발 속에서 ‘고질라’와 ‘콩’은 사상 처음으로 한 팀을 이뤄 반격에 나서기로 하는데…",
      "popularity": 2461.857,
      "poster_path": "/4z1VMmlxHrziG45901esjB4dpIa.jpg",
      "release_date": "2024-03-27",
      "title": "고질라 X 콩: 뉴 엠파이어",
      "video": false,
      "vote_average": 7.405,
      "vote_count": 111
    },
    {
      "adult": false,
      "backdrop_path": "/zAepSrO99owYwQqi0QG2AS0dHXw.jpg",
      "genre_ids": [28, 14],
      "id": 634492,
      "original_language": "en",
      "original_title": "Madame Web",
      "overview":
          "우연한 사고로 미래를 볼 수 있게 된 구급대원 '캐시 웹'이 거미줄처럼 엮인 운명을 마주하며, 같은 예지 능력을 가진 적 '심스'에 맞서 세상을 구할 히어로 '마담 웹'으로 거듭나게 되는 과정을 그린 마블의 NEW 히어로 드라마",
      "popularity": 2201.481,
      "poster_path": "/eqEzpQNusV9XSdnA9HAvlLMeuPs.jpg",
      "release_date": "2024-02-14",
      "title": "마담 웹",
      "video": false,
      "vote_average": 5.636,
      "vote_count": 841
    },
    {
      "adult": false,
      "backdrop_path": "/meyhnvssZOPPjud4F1CjOb4snET.jpg",
      "genre_ids": [16, 28, 12, 35, 10751],
      "id": 940551,
      "original_language": "en",
      "original_title": "Migration",
      "overview":
          "가족을 과잉보호하는 아빠 ‘맥’ 때문에 평생을 작은 연못에서 안전하게 살아온 말러드 가족. 하지만 호기심 가득한 남매 ‘댁스’와 ‘그웬’을 위해 새로운 세상을 모험하고 싶은 엄마 ‘팸’의 설득으로 가족들은 항상 꿈꿔온 자메이카로 생애 첫 가족 모험을 떠나기로 한다! 설렘 넘치는 시작과 달리 태풍을 만나 길을 잃고, 낯선 친구들을 만나고, 위험 가득한 뉴욕에 불시착하게 된다. 인생 처음으로 모든 계획이 틀어지고 위기에 빠진 말러드 가족은 서툴지만 서로를 의지하며 모험을 계속한다. 새로운 세상, 함께라면 두려울 것 없어!",
      "popularity": 935.68,
      "poster_path": "/2xE3NI6zElWhwN9WJ92fqbZKmzZ.jpg",
      "release_date": "2023-12-06",
      "title": "인투 더 월드",
      "video": false,
      "vote_average": 7.554,
      "vote_count": 1024
    },
    {
      "adult": false,
      "backdrop_path": "/87IVlclAfWL6mdicU1DDuxdwXwe.jpg",
      "genre_ids": [878, 12],
      "id": 693134,
      "original_language": "en",
      "original_title": "Dune: Part Two",
      "overview":
          "황제의 모략으로 멸문한 가문의 유일한 후계자 폴. 어머니 레이디 제시카와 간신히 목숨만 부지한 채 사막으로 도망친다. 그곳에서 만난 반란군들과 숨어 지내다 그들과 함께 황제의 모든 것을 파괴할 전투를 준비한다. 한편 반란군들의 기세가 높아질수록 불안해진 황제와 귀족 가문은 잔혹한 암살자 페이드 로타를 보내 반란군을 몰살하려 하는데…",
      "popularity": 778.73,
      "poster_path": "/8uUU2pxm6IYZw8UgnKJyx7Dqwu9.jpg",
      "release_date": "2024-02-27",
      "title": "듄: 파트 2",
      "video": false,
      "vote_average": 8.378,
      "vote_count": 2238
    },
    {
      "adult": false,
      "backdrop_path": "/3IoSYT0gnuImnZ73rqYySJnmefA.jpg",
      "genre_ids": [14, 12, 35],
      "id": 967847,
      "original_language": "en",
      "original_title": "Ghostbusters: Frozen Empire",
      "overview":
          "무더운 여름의 뉴욕의 어느 날, 고대 유물 속 깨어난 ‘데스칠’로 인해 정체불명의 냉기가 몰려오고 마침내 도시는 얼어붙고 만다. 유령을 퇴치하는 ‘그루버슨’(폴 러드)과 라이즈 버스터즈 멤버들은 얼어붙은 세상을 깨부수기 위해 유령 군단을 쫓기 시작하는데…",
      "popularity": 498.697,
      "poster_path": "/mGzSIfzmcf9H91DS06cnka1SYrP.jpg",
      "release_date": "2024-03-20",
      "title": "고스트버스터즈: 오싹한 뉴욕",
      "video": false,
      "vote_average": 6.81,
      "vote_count": 117
    },
    {
      "adult": false,
      "backdrop_path": "/1ZSKH5GGFlM8M32K34GMdaNS2Ew.jpg",
      "genre_ids": [10402, 36, 18],
      "id": 802219,
      "original_language": "en",
      "original_title": "Bob Marley: One Love",
      "overview":
          "혁명적인 음악으로 사랑과 화합의 메시지를 전한 시대의 아이콘 ‘밥 말리’의 전설적인 무대와 나아가 세상을 바꾼 그의 뜨거웠던 삶을 그린 감동 음악 영화",
      "popularity": 402.513,
      "poster_path": "/fgUmmFzdESEEKfUcDJ3JKReDqUT.jpg",
      "release_date": "2024-02-14",
      "title": "밥 말리: 원 러브",
      "video": false,
      "vote_average": 7.051,
      "vote_count": 411
    },
    {
      "adult": false,
      "backdrop_path": "/4MCKNAc6AbWjEsM2h9Xc29owo4z.jpg",
      "genre_ids": [28, 53, 18],
      "id": 866398,
      "original_language": "en",
      "original_title": "The Beekeeper",
      "overview":
          "법 위에 있는 비밀 기관 '비키퍼' 그곳의 전설로 남은 탑티어 에이전트 '애덤 클레이'는 기관의 눈을 피해 자취를 감추고 양봉가로 살아간다. 그러던 어느 날, 거대 보이스 피싱 조직으로부터 유일한 친구 '엘로이즈'를 잃게 된 그는 피의 복수를 위해 잠재웠던 진짜 모습을 드러내기 시작하는데....",
      "popularity": 351.432,
      "poster_path": "/ekHemOB84SoKi6fqG0ciwvKWM2i.jpg",
      "release_date": "2024-01-08",
      "title": "비키퍼",
      "video": false,
      "vote_average": 7.471,
      "vote_count": 1843
    },
    {
      "adult": false,
      "backdrop_path": "/TGsfNWkASegCfAn6ED1b08a9O6.jpg",
      "genre_ids": [27, 9648, 53],
      "id": 1125311,
      "original_language": "en",
      "original_title": "Imaginary",
      "overview": "",
      "popularity": 334.567,
      "poster_path": "/9u6HEtZJdZDjPGGJq6YEuhPnoan.jpg",
      "release_date": "2024-03-06",
      "title": "Imaginary",
      "video": false,
      "vote_average": 5.933,
      "vote_count": 97
    },
    {
      "adult": false,
      "backdrop_path": "/zCViszfnUOCJBTCTr9YN1VWvqnn.jpg",
      "genre_ids": [28, 35],
      "id": 897087,
      "original_language": "en",
      "original_title": "Freelance",
      "overview": "",
      "popularity": 324.801,
      "poster_path": "/7Bd4EUOqQDKZXA6Od5gkfzRNb0.jpg",
      "release_date": "2023-10-05",
      "title": "프리랜스",
      "video": false,
      "vote_average": 6.561,
      "vote_count": 649
    },
    {
      "adult": false,
      "backdrop_path": "/a0GM57AnJtNi7lMOCamniiyV10W.jpg",
      "genre_ids": [16, 12, 14],
      "id": 508883,
      "original_language": "ja",
      "original_title": "君たちはどう生きるか",
      "overview":
          "화재로 어머니를 잃은 11살 소년 ‘마히토’는 아버지와 함께 어머니의 고향으로 간다. 어머니에 대한 그리움과 새로운 보금자리에 적응하느라 힘들어하던 ‘마히토’ 앞에 정체를 알 수 없는 왜가리 한 마리가 나타나고, 저택에서 일하는 일곱 할멈으로부터 왜가리가 살고 있는 탑에 대한 신비로운 이야기를 듣게 된다. 그러던 어느 날, ‘마히토’는 사라져버린 새엄마 ‘나츠코’를 찾기 위해 탑으로 들어가고, 왜가리가 안내하는 대로 이세계(異世界)의 문을 통과하는데…!",
      "popularity": 286.593,
      "poster_path": "/kmoScy628A6JWv8mmd2ofrYv16T.jpg",
      "release_date": "2023-07-14",
      "title": "그대들은 어떻게 살 것인가",
      "video": false,
      "vote_average": 7.444,
      "vote_count": 1133
    },
    {
      "adult": false,
      "backdrop_path": "/aINel9503ompOlGKn4sIVMg09Un.jpg",
      "genre_ids": [9648, 27, 53],
      "id": 838209,
      "original_language": "ko",
      "original_title": "파묘",
      "overview":
          "미국 LA, 거액의 의뢰를 받은 무당 화림과 봉길은 기이한 병이 대물림되는 집안의 장손을 만난다. 조상의 묫자리가 화근임을 알아챈 화림은 이장을 권하고, 돈 냄새를 맡은 최고의 풍수사 상덕과 장의사 영근이 합류한다. 절대 사람이 묻힐 수 없는 악지에 자리한 기이한 묘. 상덕은 불길한 기운을 느끼고 제안을 거절하지만, 화림의 설득으로 결국 파묘가 시작되고… 나와서는 안될 것이 나왔다.",
      "popularity": 234.354,
      "poster_path": "/aJLOmEwCLJIznN96m3t9IMz12or.jpg",
      "release_date": "2024-02-22",
      "title": "파묘",
      "video": false,
      "vote_average": 8.031,
      "vote_count": 32
    },
    {
      "adult": false,
      "backdrop_path": "/hIeEpk2w1dnC9ly9ZJwwbunH2Cx.jpg",
      "genre_ids": [16, 35, 18, 10751],
      "id": 838240,
      "original_language": "es",
      "original_title": "Robot Dreams",
      "overview":
          "뉴욕 맨해튼에서 홀로 외롭게 살던 ‘도그’는 TV를 보다 홀린 듯 반려 로봇을 주문하고 그와 둘도 없는 단짝이 되어 행복한 나날을 보낸다. 그러던 어느 날, 해수욕장에 놀러간 ‘도그’와 ‘로봇’은 예기치 못한 상황에 휩쓸려 이별을 맞이하게 되는데···",
      "popularity": 226.663,
      "poster_path": "/3TfgJPOx7lzuopbXimsvYGq4vn6.jpg",
      "release_date": "2023-10-20",
      "title": "로봇 드림",
      "video": false,
      "vote_average": 7.592,
      "vote_count": 147
    },
    {
      "adult": false,
      "backdrop_path": "/p4INKu77iuTG1o1a5N3Y9vqeEGq.jpg",
      "genre_ids": [27, 53, 9648],
      "id": 1079485,
      "original_language": "en",
      "original_title": "Winnie-the-Pooh: Blood and Honey 2",
      "overview": "",
      "popularity": 216.676,
      "poster_path": "/2sADrLwMQof6yYmrJRSa04tFZuS.jpg",
      "release_date": "2024-03-26",
      "title": "곰돌이 푸: 피와 꿀 2",
      "video": false,
      "vote_average": 7.0,
      "vote_count": 2
    },
    {
      "adult": false,
      "backdrop_path": "/j11RoLbvHGmJsBHcKqvbZxc5drh.jpg",
      "genre_ids": [18, 28, 53],
      "id": 1053592,
      "original_language": "es",
      "original_title": "Todos los nombres de Dios",
      "overview":
          "공항에서 손님을 기다리던 택시 운전사 산티, 일순간 공항은 폭탄 테러로 인해 혼비백산 상태가 되고 산티는 그곳에서 테러리스트인 함자에 의해 인질로 잡히게 된다. 산티는 테러리스트에 의해 움직임을 멈추면 폭탄이 폭발해버리는 위험천만한 조끼를 입고 마드리드 중심부를 걸어 다니는 인간 폭탄이 되는데…",
      "popularity": 193.149,
      "poster_path": "/kx3X00Q1XSozAA60gpVFCVxMNQm.jpg",
      "release_date": "2023-09-15",
      "title": "올 더 네임즈 오브 갓",
      "video": false,
      "vote_average": 6.507,
      "vote_count": 72
    },
    {
      "adult": false,
      "backdrop_path": "/fOy2Jurz9k6RnJnMUMRDAgBwru2.jpg",
      "genre_ids": [16, 10751, 35, 14],
      "id": 508947,
      "original_language": "en",
      "original_title": "Turning Red",
      "overview":
          "엄마의 착한 딸, 아니면 미운 13살? 성적도 우수하고 친구들과 사이도 좋은 데다 부모와도 친밀한 관계를 유지하고 있는, 똑 부러지면서도 엉뚱한 매력의 소유자 메이는 요즘 질풍노도의 시기를 겪느라 고민이 많다. 이 나이에 엄마의 과잉보호를 받자니 스트레스가 이만저만이 아닌 데다, 관심사, 인간관계, 신체 등 그녀의 모든 것이 변하고 있기 때문. 그런데 이 와중에 흥분하면 거대한 레서판다로 변신하는 비밀까지 떠안게 되다니! 아침도 먹어야 하고 학교도 가야 하는데, 이 엄청난 비밀을 어떻게 숨겨야 할까?",
      "popularity": 186.206,
      "poster_path": "/hsOhOcX7qDy7bPwbrt1OoITngrf.jpg",
      "release_date": "2022-03-10",
      "title": "메이의 새빨간 비밀",
      "video": false,
      "vote_average": 7.399,
      "vote_count": 4858
    },
    {
      "adult": false,
      "backdrop_path": "/z5AUKpMcvF7Grw7JDTgoNzOU6LD.jpg",
      "genre_ids": [18, 36],
      "id": 850165,
      "original_language": "en",
      "original_title": "The Iron Claw",
      "overview": "",
      "popularity": 141.897,
      "poster_path": "/nfs7DCYhgrEIgxKYbITHTzKsggf.jpg",
      "release_date": "2023-12-21",
      "title": "디 아이언 클로",
      "video": false,
      "vote_average": 7.578,
      "vote_count": 395
    },
    {
      "adult": false,
      "backdrop_path": "/zVMdsmRUH2U1bZSYr8GLZkfs3mi.jpg",
      "genre_ids": [35, 80],
      "id": 957304,
      "original_language": "en",
      "original_title": "Drive-Away Dolls",
      "overview": "",
      "popularity": 138.886,
      "poster_path": "/gavGnAMTXPkpoFgG0stwgIgKb64.jpg",
      "release_date": "2024-02-22",
      "title": "드라이브어웨이 돌스",
      "video": false,
      "vote_average": 5.776,
      "vote_count": 107
    },
    {
      "adult": false,
      "backdrop_path": "/mIBG74mhGEJnBubhYLkCtvplcNr.jpg",
      "genre_ids": [27],
      "id": 437342,
      "original_language": "en",
      "original_title": "The First Omen",
      "overview":
          "수녀가 되기 위해 로마에 가게 된 마거릿. 그곳에서 새로운 삶을 시작하려는 그때, 믿음을 뒤흔드는 어둠의 그림자를 마주한다.  서서히 조여오는 끔찍한 공포가 마침내 정체를 드러내기 시작하는데...",
      "popularity": 128.053,
      "poster_path": "/a0laJ0AVyhQONK3TNEJKqvB2uM2.jpg",
      "release_date": "2024-04-03",
      "title": "오멘: 저주의 시작",
      "video": false,
      "vote_average": 0.0,
      "vote_count": 0
    },
    {
      "adult": false,
      "backdrop_path": "/fbpRZU7gH7wrNPypbBv3vkek75w.jpg",
      "genre_ids": [28, 878, 18],
      "id": 929590,
      "original_language": "en",
      "original_title": "Civil War",
      "overview": "",
      "popularity": 105.403,
      "poster_path": "/sh7Rg8Er3tFcN9BpKIPOMvALgZd.jpg",
      "release_date": "2024-04-10",
      "title": "시빌 워",
      "video": false,
      "vote_average": 0.0,
      "vote_count": 0
    }
  ],
  "total_pages": 41,
  "total_results": 811
};
