//주어진 정수 배열 또는 리스트에서 가장 큰 두 수를 찾아 더한 값을 반환하는 함수를 작성하세요.
//     예시: [1, 2, 5, 3, 9, 8] 이 주어졌을 때, 가장 큰 두 수는 9와 8이므로 9 + 8 = 17이 반환되어야 합니다.


int maxTwoSum(List<int> numbers) {
       numbers.sort((a, b) => b.compareTo(a)); // 리스트를 내림차순으로 정렬
    return numbers[0] + numbers[1]; // 가장 큰 두 수의 합 반환

