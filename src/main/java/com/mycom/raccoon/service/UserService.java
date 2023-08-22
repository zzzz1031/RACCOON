package com.mycom.raccoon.service;

import com.mycom.raccoon.entity.ResponseDTO;
import com.mycom.raccoon.entity.Userinfo;
import org.springframework.transaction.annotation.Transactional;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

public interface UserService {


  /**
   * 회원정보 입력
   * @param Userinfo to
   */
  public void insertUserinfo(Userinfo to);

  /**
   * 회원여부 조회하여 로그인 프로세스 작동
   * @param HttpServletRequest request
   * @param Userinfo to
   * @return ResponseDTO
   */
  @Transactional(readOnly = true)
  public ResponseDTO selectLogin(HttpServletRequest request, Userinfo to);

  /**
   * 로그인 후 기본 세션 값 설정
   * @param HttpServletRequest request
   * @param Userinfo userinfo
   */
  public void setSession(HttpServletRequest request, Userinfo userinfo);

  /**
   * 로그아웃 처리
   * @param HttpServletRequest request
   */
  public void getLogout(HttpServletRequest request);

  /**
   * 세션 삭제
   * @param HttpServletRequest request
   */
  public void deleteSession(HttpServletRequest request);

  /**
   * 유저 아이디 조회
   * @param String userid
   * @return String
   * @throws Exception
   */
  @Transactional(readOnly = true)
  public String selectUseridByUserid(String userid) throws Exception;

  /**
   * 닉네임 존재여부 조회
   * @param String nickname
   * @return String
   */
  @Transactional(readOnly = true)
  public String selectNicknameByNickname(String nickname) throws Exception;

  /**
   * Userinfo 리스트 조회
   * @param String celno
   * @return List<Userinfo>
   */
  @Transactional(readOnly = true)
  public List<Userinfo> selectUserinfoListByCelno(String celno);

  /**
   * userid, celno 정보로 유저 조회
   * @param String userid
   * @param String celno
   * @return
   */
  @Transactional(readOnly = true)
  public ResponseDTO selectUserinfoByUseridAndCelno(String userid, String celno);
}
