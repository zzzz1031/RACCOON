package com.mycom.raccoon.controller.user;

import com.mycom.raccoon.common.UtilClass;
import com.mycom.raccoon.entity.Userinfo;
import com.mycom.raccoon.service.UserService;
import lombok.RequiredArgsConstructor;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.env.Environment;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
@RequestMapping(value = "user")
@RequiredArgsConstructor
@PropertySource("classpath:/properties/key.properties")
public class UserController {

  //private DefaultMessageService messageService;

  private final UserService userService;

  private final Environment environment;

//  @Autowired
//  public UserController(@Value("#{keyPropertiesFactoryBean['coolsms.key']}")String coolsmsKey,
//                        @Value("#{keyPropertiesFactoryBean['coolsms.secret']}")String coolsmsSecret) {
//    // 반드시 계정 내 등록된 유효한 API 키, API Secret Key를 입력해주셔야 합니다!
//    this.messageService = NurigoApp.INSTANCE.initialize(coolsmsKey, coolsmsSecret, "https://api.coolsms.co.kr");
//  }

  @GetMapping("signUpList")
  public String selectReg(HttpServletRequest request, HttpServletResponse response, ModelMap model){

    return "user/signUpList";
  }

  /**
   * 회원가입 페이지 진입
   * @param userinfo
   * @param request
   * @param response
   * @param model
   * @return String view
   */
  @GetMapping("signUp")
  public String signUp(Userinfo userinfo, HttpServletRequest request, HttpServletResponse response, Model model) {
    model.addAttribute("userinfo", userinfo);
    return "user/signUp";
  }

  @PostMapping("signUpPost")
  public String signUpPost(Userinfo userinfo, HttpServletRequest request, HttpServletResponse response, ModelMap model){
    userService.insertUserinfo(userinfo);
    model.addAttribute("userinfo", userinfo);
    return "user/signUpFinish";
  }

  /**
   * 단일 메시지 발송
   */
  @PostMapping("sendAuthSMS")
  public String sendOne(HttpServletRequest request, HttpServletResponse response, ModelMap model) {
    String coolsmsKey = environment.getProperty("coolsms.key"); // sms발송 키
    String coolsmsSecret = environment.getProperty("coolsms.secret"); // sms발송 시크릿 키

    String authCode = UtilClass.getRandomNumber(6);
    //UtilClass.sendCoolSms(coolsmsKey, coolsmsSecret, "01041850434", "01084676191", "RACCOON [인증번호] : " + authCode);

    //return authCode;
    return "000000";
  }
}
