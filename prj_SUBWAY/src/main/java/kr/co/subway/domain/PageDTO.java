package kr.co.subway.domain;

import lombok.Data;

@Data	
public class PageDTO {
	private int startPage;	//시작 페이지 번호
	private int endPage;	//끝 페이지 번호
	private boolean prev, next;	//이전페이지, 다음페이지
	private int total;	//전체 게시물 수
	private Criteria cri;
	
	//페이지 번호를 10개씩 본다
	public PageDTO(Criteria cri, int total) {	
		this.total = total;	//객체 저장
		this.cri = cri;
		
		//끝페이지
		this.endPage = (int)(Math.ceil(cri.getPageNum() / 10.0)) * 10;
		
		this.startPage = this.endPage - 9;
		//만약 10개씩 보여준다면 시작 번호는 무조건 끝 번호에서 9만큼 뺴면 된다.
		//ex) 2 3 4 5 6 7 8 9 10 11 일때 11-9=2

		//실제endPage구하기
		int realEnd = (int)(Math.ceil((total * 1.0) / cri.getAmount()));
		
		if(realEnd < this.endPage) {
			this.endPage = realEnd;
		}
		
		this.prev = this.startPage > 1;	//시작번호가 1보다 크면 무조건 true
		this.next = this.endPage < realEnd;	//현재 보고있는 페이지 끝번호보다 실제 끝 페이지가 더 크면 true
		
		
	}
}
