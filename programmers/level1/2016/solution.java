import java.time.LocalDate;

class Solution {
  public String solution(int a, int b) {
      LocalDate localDate = LocalDate.of(2016, a, b);
      String parse = localDate.getDayOfWeek().toString();
      return parse.substring(0,3);
  }
}
