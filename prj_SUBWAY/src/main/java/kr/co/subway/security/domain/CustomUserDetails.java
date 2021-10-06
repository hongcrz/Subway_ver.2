package kr.co.subway.security.domain;

import java.sql.Date;
import java.util.ArrayList;
import java.util.Collection;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@SuppressWarnings("serial")
@Data
@AllArgsConstructor
@NoArgsConstructor
public class CustomUserDetails implements UserDetails{
	
	// 기존 MemverVO의 fields
	private String userid;
	private String userpw;
	private String uname;
	private String useremail;				// uemail@domain
	private String useraddress; 			// postcode/roadAddress/jibunAddress/detailAddress/extraAddress
	private Date regdate;
	private String auth = "ROLE_USER";				// ROLE_ADMIN, ROLE_USER
	private boolean enabled;
	
	
	// override 받는 기본 정보들 
	@Override
	public Collection<? extends GrantedAuthority> getAuthorities() {
		ArrayList<GrantedAuthority> authList = new ArrayList<GrantedAuthority>();
		authList.add(new SimpleGrantedAuthority(auth));
		
		return authList;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	@Override
	public String getUsername() {			// userid 
		return userid;
	}
	public void setUserpw(String userpw) {
		this.userpw = userpw;
	}
	@Override
	public String getPassword() {
		return userpw;
	}
	
	@Override
	public boolean isAccountNonExpired() {	// 계정 만료 여부 
		return true;	// 만료 안됨 	
	}
	@Override
	public boolean isAccountNonLocked() {	// 계정 잠김 여부 
		return true;	// 잠기지 않음 
	}
	@Override
	public boolean isCredentialsNonExpired() {	//	비밀번호 만료 여부 
		return true;	// 만료 안됨 
	}
	@Override
	public boolean isEnabled() {	// 계정 활성화 여부 
		return enabled;	// 활성화(1)
	}
	
	
	// 사용자 추가 정보들 
	// getter / setter
	public void setUseremail(String useremail, String domains) {
		this.useremail = useremail + "/" + domains;
	}
	public String getUseremail() {
		return useremail;
	}
	public String getUseraddress() {
		return useraddress;
	}
	public void setUseraddress(String useraddress) {
		this.useraddress = useraddress;
	}
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
	public String getAuth() {
		return auth;
	}
	public void setAuth(String auth) {
		this.auth = auth;
	}
	
	public String getUname() { 			// username
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	
}
