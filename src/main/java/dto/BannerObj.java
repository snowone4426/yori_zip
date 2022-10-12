package dto;

import java.util.Date;

public class BannerObj {
	private String banner_id;
	private String photo;
	private String alt;
	private Date created_at;
	private Date start_date;
	private Date end_date;
	private String search; // 이걸 태그 ID로 생각하자
	
	public BannerObj() {}

	public String getBanner_id() {
		return banner_id;
	}

	public void setBanner_id(String banner_id) {
		this.banner_id = banner_id;
	}

	public String getPhoto() {
		return photo;      
	}

	public void setPhoto(String photo) {
		this.photo = photo;
	}

	public String getAlt() {
		return alt;
	}

	public void setAlt(String alt) {
		this.alt = alt;
	}

	public Date getCreated_at() {
		return created_at;
	}

	public void setCreated_at(Date created_at) {
		this.created_at = created_at;
	}

	public Date getStart_date() {
		return start_date;
	}

	public void setStart_date(Date start_date) {
		this.start_date = start_date;
	}

	public Date getEnd_date() {
		return end_date;
	}

	public void setEnd_date(Date end_date) {
		this.end_date = end_date;
	}

	public String getSearch() {
		return search;
	}

	public void setSearch(String search) {
		this.search = search;
	}
	
	
}
