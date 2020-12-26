package com.korea.health.service;

public class Criteria {

   private int page, perPageNum, startRow, endRow;


   private int totalCount, totalPage, displayPageNum, startPage, endPage;


   private boolean prev, next;



   private String searchType;
   private String keyword;



   public Criteria() {
      // 초기값을 넣는다.
      // 나중에 전달되는 값으로 바뀐다. 전달되는 값이 없으면 유지된다.
      page = 1;
      perPageNum = 10;
      startRow = 1;
      endRow = 10;
      displayPageNum = 10;
      prev = false;
      next = false;
   }



   public void calc() {
      startRow = (page - 1) * perPageNum + 1;
      endRow = startRow + perPageNum - 1;
      totalPage = (totalCount - 1) / perPageNum + 1;
      startPage = (page - 1) / displayPageNum * displayPageNum + 1;
      endPage = startPage + displayPageNum - 1;

      if (endPage > totalPage) {
         endPage = totalPage;
      } 
      if (startPage != 1) {
         prev = true;
      }
      if (endPage != totalPage) {

         next = true;

      } // end of if;



   }// end of calc()



   public int getPage() {

      return page;

   }



   public void setPage(int page) {

      this.page = page;

   }



   public int getPerPageNum() {

      return perPageNum;

   }



   public void setPerPageNum(int perPageNum) {

      this.perPageNum = perPageNum;

   }



   public int getStartRow() {

      return startRow;

   }



   public void setStartRow(int startRow) {

      this.startRow = startRow;

   }



   public int getEndRow() {

      return endRow;

   }



   public void setEndRow(int endRow) {

      this.endRow = endRow;

   }



   public int getTotalCount() {

      return totalCount;

   }



   public void setTotalCount(int totalCount) {

      this.totalCount = totalCount;

   }



   public int getTotalPage() {

      return totalPage;

   }



   public void setTotalPage(int totalPage) {

      this.totalPage = totalPage;

   }



   public int getDisplayPageNum() {

      return displayPageNum;

   }



   public void setDisplayPageNum(int displayPageNum) {

      this.displayPageNum = displayPageNum;

   }



   public int getStartPage() {

      return startPage;

   }



   public void setStartPage(int startPage) {

      this.startPage = startPage;

   }



   public int getEndPage() {

      return endPage;

   }



   public void setEndPage(int endPage) {

      this.endPage = endPage;

   }



   public boolean isPrev() {

      return prev;

   }



   public void setPrev(boolean prev) {

      this.prev = prev;

   }



   public boolean isNext() {

      return next;

   }



   public void setNext(boolean next) {

      this.next = next;

   }



   public String getSearchType() {

      return searchType;

   }



   public void setSearchType(String searchType) {
      this.searchType = searchType;
   }

   public String getKeyword() {
      return keyword;
   }


   public void setKeyword(String keyword) {
      this.keyword = keyword;
   }
   @Override
   public String toString() {
      return "Criteria [page=" + page + ", perPageNum=" + perPageNum + ", startRow=" + startRow + ", endRow=" + endRow
            + ", totalCount=" + totalCount + ", totalPage=" + totalPage + ", displayPageNum=" + displayPageNum
            + ", startPage=" + startPage + ", endPage=" + endPage + ", prev=" + prev + ", next=" + next
            + ", searchType=" + searchType + ", keyword=" + keyword + "]";
   }
}