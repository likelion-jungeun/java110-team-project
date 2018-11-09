package bitcamp.java110.cms.web;

import java.util.List;
import javax.servlet.ServletContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import bitcamp.java110.cms.domain.Classbakt;
import bitcamp.java110.cms.domain.Classes;
import bitcamp.java110.cms.domain.Classlike;
import bitcamp.java110.cms.domain.Classorder;
import bitcamp.java110.cms.domain.Classqna;
import bitcamp.java110.cms.service.ClassService;
import bitcamp.java110.cms.service.ClassbaktService;
import bitcamp.java110.cms.service.ClasslikeService;
import bitcamp.java110.cms.service.ClassorderService;
import bitcamp.java110.cms.service.ClassqnaService;

@Controller
@RequestMapping("/class")
public class ClassController {

  ClassService classService;
  ClassqnaService classqnaService;
  ClassorderService classorderService;
  ClasslikeService classlikeService;
  ClassbaktService classbaktService;
  ServletContext sc;
  
  public ClassController(
      ClassService classService,ClassqnaService classqnaService,
      ClassorderService classorderService,ClasslikeService classlikeService
      ,ClassbaktService classbaktService) {
    this.classService = classService;
    this.classqnaService = classqnaService;
    this.classorderService = classorderService;
    this.classlikeService = classlikeService;
    this.classbaktService = classbaktService;
  }

  @GetMapping("findAll")
  public void findAll() {
    System.out.println("findAll 호출");
    List<Classes> clist= classService.classlist(5);
    

    for(Classes c : clist) {

      System.out.println(c.getNo());
      System.out.println(c.getTitl());
    }
  }

  @RequestMapping("classinsert")
  public void classinsert(Classes c) {
    
    c.setNo(6);
    c.setTitl("고정지");
    c.setConts("고정지");
    c.setPric(111);
    //c.setrgdt("now()");
    c.setTime("고정지");
    c.setCapa(5);
    c.setCfile("고정지");
    c.setTinfo("고정지");
    c.setCinfo("고정지");
    c.setPstno("고정지");
    c.setBasAddr("고정지");
    c.setDetAddr("고정지");
    //c.setEdt("고정지");
    c.setMono(4);
    c.setMtno(4);
    
    classService.classadd(c);
  }
  
  @RequestMapping("classupdate")
  public void classupdate(Classes c) {
    System.out.println("classupdate 호출");
    
    c.setNo(6);
    c.setTitl("고정지");
    c.setConts("안녕하세요 저는 둠칫둠칫");
    c.setPric(111);
    //c.setrgdt("now()");
    c.setTime("고정지");
    c.setCapa(10);
    c.setCfile("naver");
    c.setTinfo("고정지");
    c.setCinfo("안녕하ㅔ요");
    c.setPstno("고정지");
    c.setBasAddr("고정지");
    c.setDetAddr("고정지");
    //c.setEdt("고정지");
    c.setMono(3);
    c.setMtno(3);
    
    classService.classupdate(c);
  }
  
  @GetMapping("findBytag")
  public Classes findBytag() {
    
    List<Classes> clist = classService.classlist(5);

    for(Classes c : clist) {
      
      System.out.println(c.getMtno());
      System.out.println(c.getNo());
      System.out.println(c.getTitl());
      System.out.println("-------------");
    }
    
    return null;
  }
  
  @GetMapping("findByba")
  public Classes findByba() {
    
    List<Classes> clist = classService.classlist(5);
    
    for(Classes c : clist) {

      System.out.println(c.getNo());
      System.out.println(c.getTitl());
      System.out.println(c.getMtno());
      System.out.println(c.getBasAddr());
    }
    
    return null;
  }
  
  @GetMapping("findByday")
  public Classes findByday() {
    
    return null;
  }
  ////////////////////여기까지 p_cls 클래스////////////////////////
  
  @GetMapping("qnalist")
  public void qnalist() {
    
    List<Classqna> clist= classqnaService.classqnalist(5);
    

    for(Classqna c : clist) {

      System.out.println(c.getNo());
      System.out.println(c.getTitl());
      System.out.println(c.getConts());
      System.out.println(c.getRgdt());
    }
  }
  
  @RequestMapping("qnainsert")
  public void qnainsert(Classqna classqna) {
    
    classqna.setNo(7);
    classqna.setMeno(5);
    classqna.setCno(7);
    classqna.setTitl("호에에엣?");
    classqna.setConts("히이이ㅣ이엣?");
    
    classqnaService.qnaadd(classqna);
  }
  
  @RequestMapping("qnaupdate")
  public void qnaupdate(Classqna classqna) {
    
    classqna.setNo(5);
    //classqna.setMeno(7);
    //classqna.setCno(cno);
    classqna.setTitl("고정은씨는 이 글을 보시오!!");
    classqna.setConts("응 넌 낚였어");
    
    classqnaService.qnaupdate(classqna);
  }
  
  @RequestMapping("ansupdate")
  public void ansupdate(Classqna classqna) {
    
    classqna.setNo(6);
    classqna.setAnser("손님..;; 손님이 더 이상해요!!!");
    
    classqnaService.ansupdate(classqna);
    
  }
  
  ///////////////// p_cls_qna 수업질문답변//////////////////
  @PostMapping("orderinsert")
  public int orderinsert(Classorder classorder) {
    
    classorderService.orderadd(classorder);
    
    return 1;
  }
  
  @GetMapping("orderlist")
  public List<Classorder> orderlist() {
    
    List<Classorder> clist = classorderService.corderlist(5);
    
    for(Classorder c : clist) {
      System.out.println(c.getNo());
      System.out.println(c.getMeno());
      System.out.println(c.getTime());
      System.out.println(c.getTotPric());
      System.out.println(c.getPayopt());
      System.out.println(c.getPaydt());
      System.out.println(c.getCtno());
    }
    
    return null;
  }
  
  ///////////////// p_cls_order 클래스 신청내역///////////////////////
  
  @GetMapping("likelist")
  public List<Classlike> likelist() {
    
    List<Classlike> clist = classlikeService.classlikelist(5);
    
    for(Classlike c : clist) {
      System.out.println(c.getNo());
      System.out.println(c.getMeno());
      System.out.println(c.getCno());
    }
    return null;
  }
  
  @RequestMapping("likeinsert")
  public void likeinsert(Classlike classlike) {
    
    classlike.setNo(6);
    classlike.setCno(6);
    classlike.setMeno(6);
    
    classlikeService.likeadd(classlike);
    
  }
  
  @RequestMapping("likedelete")
  public void likedelete(Classlike classlike) {
    
    classlike.setNo(4);
    
    classlikeService.likesub(classlike);
  }
  
  ////////////////////////p_cls_like 찜클래스///////////////////////
  
  @PostMapping("baktinsert")
  public int baktinsert(Classbakt classbakt) {
   
    classbaktService.baktadd(classbakt);
    
    return 1;
  }
  
  @PostMapping("baktdelete")
  public int baktdelete(Classbakt classbakt) {
    
    classbaktService.baktsub(classbakt);
    
    return 1;
  }
  
  @GetMapping("baktlist")
  public List<Classbakt> baktlist(){
    
    List<Classbakt> clist = classbaktService.baktlist(5);
    
    for(Classbakt c : clist) {
      System.out.println(c.getNo());
      System.out.println(c.getMeno());
      System.out.println(c.getCtno());
    }
    
    return null;
  }
}
