# 개발학습 플랫폼 '디공' 개발 프로젝트



  ### :loudspeaker: 개요
  


* #### 제작 의도


    개발자로서 학습을 위해 이용할 수 있는 다양한 플랫폼 웹 사이트들과 자료가 있지만, 필요한 자료가 있을 때마다 이 모든 사이트들에 한 번씩 방문하여 확인을 해야하는 번거로움이 있다.
    
    
    
    이러한 문제의식에서 출발하여 학습하려는 언어와 난이도, 학습 수단을 분류 기준으로 삼아 해당 자료들을 한 곳에 모았다. 이를 통해 **간편하게 하나의 사이트에서 원하는 학습 자료를 찾아보고 공부할 수 있어, 시간과 학습관리 측면에서 효율을 가져다주는 '디공' 서비스**를 제작하였다.
    
    
    
    여기서 '디공'이라는 서비스명은, 개발자 Developer에서 De를, 공부에서 공을 따와 이름지었다.
    
 

* #### 개발인원


   :raising_hand: 1명


* #### 개발기간


   2021년 11월 14일 - 2021년 12월 8일
   
   
 ### :loudspeaker: 사용한 기술
 
 
 * #### 프론트엔드


    HTML5, CSS3, ES6, JQuery
    
 
 
 * #### 백엔드


    Java, Spring Boot, MySQL 
 
 
 ### :loudspeaker: 핵심 기능
 
 
 #### 1) 선택 시 해당되는 결과 페이지로 이동(프론트엔드)
 
 
 
 아래처럼 총 3개의 질문을 거쳐 해당하는 결과 페이지(추천 학습자료 페이지)로 이동하게 된다.
 ![](./images/destudy1.gif)
 ![](./images/destudy2.gif)
 ![](./images/destudy3.gif)
 
        //버튼 클릭 시 다음페이지 이동
        button.addEventListener("click", function() {
          let link = window.location.href;
          if(link == "http://localhost:8080/common/ch1"){
            choice = $(this).attr('class');
            const a = {"a1" : choice};
            localStorage.setItem('a1', JSON.stringify(a));
            location.href="ch2";
          }else if(link == "http://localhost:8080/common/ch2"){
            choice = $(this).attr('class');
            const a = {"a2" : choice};
            localStorage.setItem('a2', JSON.stringify(a));
            location.href="ch3";
          }else {
            choice = $(this).attr('class');
            const a = {"a3" : choice};
            localStorage.setItem('a3', JSON.stringify(a));
            result();
          }
        })
  
        //결과 출력 후 해당 페이지로 이동
      function result() {
        const r1 = JSON.parse(localStorage.getItem('a1'));
        const r2= JSON.parse(localStorage.getItem('a2'));
        const r3= JSON.parse(localStorage.getItem('a3'));

        //선택된 결과
        const result = [r1.a1, r2.a2, r3.a3];

        //존재하는 결과들 14개
        const results = [
          ["0", "0", "0"], //0, 컴퓨터공학 기초 기본서
          ["0", "0", "1"], //1, 컴퓨터공학 기초 온라인 강의
          ["1", "0", "0"], //2, HTML/CSS 초급 기본서
          ["1", "0", "1"], //3, HTML/CSS 초급 온라인 강의
          ["1", "1", "0"], //4, HTML/CSS 중상급 기본서
          ["1", "1", "1"], //5, HTML/CSS 중상급 온라인 강의
          ["2", "0", "0"], //6, Javascript 초급 기본서
          ["2", "0", "1"], //7, Javascript 초급 온라인 강의
          ["2", "1", "0"], //8, Javascript 중상급 기본서
          ["2", "1", "1"], //9, Javascript 중상급 온라인 강의
          ["3", "0", "0"], //10, Java 초급 기본서
          ["3", "0", "1"], //11, Java 초급 온라인 강의
          ["3", "1", "0"], //12, Java 중상급 기본서
          ["3", "1", "1"], //13, Java 중상급 온라인 강의
        ];

        for(let i=0;i<14;i++){
          if(JSON.stringify(result) == JSON.stringify(results[i])){
            location.href="../result/"+i;
          }else {
          }	
        }
      }
 
 
 #### 2) '더 알아보기' JS 마우스 이벤트(프론트엔드)
 
 
   추천 자료들을 한 눈에 볼 수 있도록 선택지의 결과들을 한 페이지에 정리하였다.
   
   
   해당 페이지에서 항목에 마우스를 대면 '더 알아보기' 폰트가 나타나면서 이미지는 흐려지는 이벤트가 나타나며, 클릭 시 자세한 정보를 알 수 있는 페이지로 이동한다.
   
   
   ![](./images/destudy4.gif)
   
 
   ##### HTML
   
   
   
                <ul>
                  <li>
                    <button class="button">
                      <div class="more hidden">
                        <a href="https://www.aladin.co.kr/shop/wproduct.aspx?ItemId=141042179" target="_blank"><h5>더 알아보기</h5></a>
                      </div>
                      <article class="contents">
                        <img src="../images/컴퓨터과학.jpg" alt="책사진" width="250" height="290">
                        <br><h6>한 권으로 그리는 컴퓨터과학 로드맵</h6>
                      </article>
                    </button>
                  </li>
                  <li>
                    <button class="button">
                      <div class="more hidden">
                        <a href="https://www.aladin.co.kr/shop/wproduct.aspx?ItemId=83064510" target="_blank"><h5>더 알아보기</h5></a>
                      </div>
                      <article class="contents">
                        <img src="../images/기초튼튼.png" alt="책사진" width="250" height="290">
                        <br><h6>다 함께 프로그래밍</h6>
                      </article>
                    </button>
                  </li>
                  <li>
                    <button class="button">
                      <div class="more hidden">
                        <a href="https://www.aladin.co.kr/shop/wproduct.aspx?ItemId=268444562" target="_blank"><h5>더 알아보기</h5></a>
                      </div>
                      <article class="contents">
                        <img src="../images/한권으로읽는컴퓨터.jpg" alt="책사진" width="250" height="290">
                        <br><h6>한 권으로 읽는 컴퓨터 구조와 프로그래밍</h6>
                      </article>
                    </button>
                  </li>
                </ul>
                
  ##### JS
  
  
  
                
              const more = document.querySelectorAll(".more");
              const contents = document.querySelectorAll(".contents");
              const button = document.querySelectorAll(".button");

              for(let i=0;i<button.length;i++){
                button[i].addEventListener("mouseover", function(){
                    more[i].classList.remove("hidden");
                    contents[i].classList.add("opacity");
                })
              }

              for(let i=0;i<button.length;i++){
                button[i].addEventListener("mouseout", function(){
                  more[i].classList.add("hidden");
                  contents[i].classList.remove("opacity");
                })
              }
 
 #### 3) 게시판 답글 기능(백엔드)
 
 
 의견 게시판에서는 회원이 홈페이지에 추가를 요청하는 추천 자료를 게시글로 건의할 수 있는데,
 관리자가 이를 확인하여 답글을 작성할 수 있도록 답글 기능을 구현하였다.
 
 
 ![](./images/답글.png)
 
 
 
 Controller
          //답글
          @GetMapping("reply")
          public String reply(@ModelAttribute QnaVO qnaVO) throws Exception {
            return "qna/reply";
          }

          @PostMapping("reply")
          public String reply(QnaVO qnaVO, BindingResult bindingResult, HttpSession session) throws Exception {
            MemberVO memberVO = (MemberVO)session.getAttribute("member");
            qnaVO.setWriter(memberVO.getId());
            int result = qnaService.setReplyInsert(qnaVO);
            return "redirect:../qna/list";
          }
          
    
    
 Service
        //답글
        public int setReplyInsert(QnaVO qnaVO) throws Exception {
          int result = qnaRepository.setReplyUpdate(qnaVO);
          result = qnaRepository.setReplyInsert(qnaVO);
          return result;
        }
        
        
        
 Repository
        //답글
        public int setReplyInsert(QnaVO qnaVO)throws Exception;
        public int setReplyUpdate(QnaVO qnaVO)throws Exception;
        public int setRefUpdate(QnaVO qnaVO)throws Exception;
        
        
        
 Mapper
        <insert id="setReplyInsert" parameterType="QnaVO" useGeneratedKeys="true" keyProperty="num">
          insert into destudyqna (num, title, contents, writer, hit, date, ref, step, depth)
          values (null, #{title}, #{contents}, #{writer}, 0, now(),
          (select R.ref from (select * from destudyqna where num=#{num}) R),
          (select S.step+1 from (select * from destudyqna where num=#{num}) S),
          (select D.depth+1 from (select * from destudyqna where num=#{num}) D)
          )
        </insert>

        <update id="setReplyUpdate" parameterType="QnaVO">
          update destudyqna set step=step+1
          where ref=(select R.ref from (select ref from destudyqna where num=#{num}) R)
          and
          step > (select S.step from (select step from destudyqna where num=#{num}) S)
        </update>

        <update id="setRefUpdate" parameterType="QnaVO">
          update destudyqna set ref=#{num} where num=#{num}
        </update>
 
 
 #### 4) 관리자와 일반회원 구분에 따라 접근 제한(백엔드)
 
 
 #### 5) 회원가입 시 아이디 중복확인 기능(백엔드)
 
 
 #### 6) 회원가입 시 이메일 가져오기 기능(프론트엔드 & 백엔드)
 
 
 
 ### :loudspeaker: 트러블슈팅
 
 
 
 ### :loudspeaker: 회고
