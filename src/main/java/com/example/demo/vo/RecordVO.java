package com.example.demo.vo;
import java.util.Date;
import java.util.List;
public class RecordVO {
   // 공부 기록 vo
   private Integer saveNum; // 글 번호
   private String sTime;      // 공부한 시간
   private String mId;      // 아이디
   private Integer sNum;   // 방 번호
   private String sCATEGORY;   // 내용
   private String sDate;      // 현재 시간
   private Integer k ;       // 일 별 평균 계산 위한 리스트 수 
   
   private String todayStudyTime; // 오늘 누적 시간
   private String todayAvgTime;    // 일 별 평균 시간
   private String totalStudyTime; // 월 별 누적 시간
   
   private String date1;   // 첫 번째 날짜
   private String date2 ;  // 두 번째 날짜
   

   private Integer rank;  // 랭킹
   
   
   
   public String getDate1() {
      return date1;
   }
   public void setDate1(String date1) {
      this.date1 = date1;
   }
   public String getDate2() {
      return date2;
   }
   public void setDate2(String date2) {
      this.date2 = date2;
   }
   public Integer getK() {
      return k;
   }
   public String getTodayStudyTime() {
      return todayStudyTime;
   }
   public void setTodayStudyTime(String todayStudyTime) {
      this.todayStudyTime = todayStudyTime;
   }
   public String getTodayAvgTime() {
      return todayAvgTime;
   }
   public void setTodayAvgTime(String todayAvgTime) {
      this.todayAvgTime = todayAvgTime;
   }
   public String getTotalStudyTime() {
      return totalStudyTime;
   }
   public void setTotalStudyTime(String totalStudyTime) {
      this.totalStudyTime = totalStudyTime;
   }
   public void setK(Integer k) {
      this.k = k;
   }
   public Integer getSaveNum() {
      return saveNum;
   }
   public void setSaveNum(Integer saveNum) {
      this.saveNum = saveNum;
   }
   public String getsTime() {
      return sTime;
   }
   public void setsTime(String sTime) {
      this.sTime = sTime;
   }
   public String getmId() {
      return mId;
   }
   public void setmId(String mId) {
      this.mId = mId;
   }
   public Integer getsNum() {
      return sNum;
   }
   public void setsNum(Integer sNum) {
      this.sNum = sNum;
   }
   public String getsCATEGORY() {
      return sCATEGORY;
   }
   public void setsCATEGORY(String sCATEGORY) {
      this.sCATEGORY = sCATEGORY;
   }
   public String getsDate() {
      return sDate;
   }
   public void setsDate(String sDate) {
      this.sDate = sDate;
   }
   public Integer getRank() {
      return rank;
   }
   public void setRank(Integer rank) {
      this.rank = rank;
   }
   @Override
   public String toString() {
      return "RecordVO [saveNum=" + saveNum + ", sTime=" + sTime + ", mId=" + mId + ", sNum=" + sNum + ", sCATEGORY="
            + sCATEGORY + ", sDate=" + sDate + ", k=" + k + ", todayStudyTime=" + todayStudyTime + ", todayAvgTime="
            + todayAvgTime + ", totalStudyTime=" + totalStudyTime + ", date1=" + date1 + ", date2=" + date2
            + ", rank=" + rank + "]";
   }

   
   
}