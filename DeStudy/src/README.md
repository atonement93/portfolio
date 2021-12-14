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
    
    
 
 ### :loudspeaker: 구현 기능
  
 
 * #### 프론트엔드


    웹사이트 전체 UI(헤더, 푸터, 메인화면, 한눈에보기 화면, 선택지 화면, 게시판, 로그인 및 회원가입 화면), 선택지 알고리즘, 앵커, 콘텐츠 링크 연결 기능 구현
    
 
 
 * #### 백엔드


    로그인, 회원가입, 페이징처리, Ajax를 이용한 아이디 중복확인, 이메일 가져오기, 게시판 글 불러오기⬝글쓰기⬝글 수정하기⬝글 삭제하기⬝답글쓰기, 페이징처리, 인터셉터를 통한 회원 구분, MySQL 연동 기능 구현 
    
    
 
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
   
 
   HTML
   
   
   
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
                
  JS
  
  
  
                
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
 
 
 
 공지사항 게시판의 경우, 관리자만 글쓰기 및 글 수정하기, 글 삭제하기가 가능하다.
 
 
 
 공지사항 게시판에서 해당 기능으로 이동하면 인터셉터를 통해 회원인지부터 검사하는데, 로그인이 되어있지 않다면 로그인 페이지로 이동하고, 로그인이 되어있는데 일반회원이라면 경고창과 함께 다시 글 목록 페이지로 이동한다.
 
 
 
 ![](./images/공지사항.png)
 
 
 
        @Override
        public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
            throws Exception {

          HttpSession session = request.getSession();
          MemberVO memberVO = (MemberVO)session.getAttribute("member");

          // 로그인 안됨 or 로그인 되었으나 관리자가 아님
          if(memberVO == null || memberVO.getRole().equals("2")){
              request.setAttribute("message", "접근권한이 없습니다.");
              request.setAttribute("path", "/notice/list");
              RequestDispatcher view = request.getRequestDispatcher("/WEB-INF/views/common/adminAccess.jsp");
              view.forward(request, response);
              return false;
          //관리자 확인됨
          }else {
            return true;
          }
        }
 
 
 
 
 의견 게시판의 경우, 글쓰기 및 글 상세보기는 관리자와 일반회원만 가능하다.
 
 
 
 글쓰기 및 글 상세보기로 이동했을 때 인터셉터를 통해 검사하는데, 로그인이 되어있지 않다면 경고창과 함께 로그인 페이지로 이동한다.
 
 
 
 ![](./images/의견.png)
 
 
 
        @Override
        public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
            throws Exception {

          HttpSession session = request.getSession();
          MemberVO memberVO = (MemberVO)session.getAttribute("member");

          //로그인 안됨
          if(memberVO == null) {
            request.setAttribute("message", "등록된 회원이 아닙니다.");
            request.setAttribute("path", "/member/login");
            RequestDispatcher view = request.getRequestDispatcher("/WEB-INF/views/common/memberAccess.jsp");
            view.forward(request, response);
            return false;
          //로그인 되어있음
          }else {
            return true;
          }
        }
 
 
 
 
 #### 5) 회원가입 시 아이디 중복확인 기능(프론트엔드 & 백엔드)
 
 
 
 회원가입 시 아이디 중복확인 검사가 가능하다. 아이디 입력 후 중복확인 버튼을 클릭했을 때, 이미 존재하는 아이디라면 사용불가 안내를, 존재하지 않는 아이디라면 사용가능 안내를 표시한다.
 
 
 
 
 ![](./images/아이디중복1.png)
 ![](./images/아이디중복2.png)
 
 
 
 JS
 
 
 
        //아이디 중복확인
        $("#overlappedID").click(function(){
          $("#signup").attr("type", "button");
          const id = $("#user_id").val();
          $.ajax({
          type: "get",
          async: false,
          url: "http://localhost:8080/member/idCheck",
          data: {id: id},
          success: function (data) {
          if(data == 1) {
            $("#olmessage").text("이미 사용중인 ID 입니다.");
            $("#olmessage").addClass("olmessagef");
            $("#olmessage").removeClass("olmessaget");
            }else {
            $("#olmessage").text("사용 가능한 ID 입니다.");
            $("#olmessage").addClass("olmessaget");
            $("#olmessage").removeClass("olmessagef");
            $("#signup").attr("type", "submit");
            }
            }
          })
          });
          
          
          
 Controller
 
 
 
        //아이디 중복확인
        @ResponseBody
        @GetMapping("idCheck")
        public int overlappedID(MemberVO memberVO) throws Exception{
          int result = memberService.overlappedID(memberVO);
          //System.out.println(result);
          return result;
        }
 
 
 
 Service
 
 
 
        //아이디 중복확인
        public int overlappedID(MemberVO memberVO) throws Exception{
          int result = memberRepository.overlappedID(memberVO);
          return result;
        }
        
        
        
 Repository
 
 
 
        //아이디 중복확인
        public int overlappedID(MemberVO memberVO) throws Exception;
        
        
        
 Mapper
 
 
        <select id="overlappedID" parameterType="MemberVO" resultType="int">
          select count(id) From destudymember where id=#{id}
        </select>
 
 
 
 #### 6) 회원가입 시 이메일 가져오기 기능(프론트엔드 & 백엔드)
 
 
 
 회원가입 시 작성하는 이메일은 총 3개의 값을 갖는다. 아이디, '@' 기호, 도메인주소다.
 
 
 
 프론트엔드에서는 이들 세 영역을 나누었고, 도메인주소는 datalist 태그를 이용하여 기존 값에서 선택도 가능하도록 하였다.
 
 
 
 그 다음 입력된 값을 모두 가져와 3개의 값을 하나의 이메일 주소로 합쳐 서버로 보내면, 서버가 이를 1개의 이메일 주소로 인식하고 DB에 저장할 수 있도록 구현하였다.
 
 
 
 ![](./images/이메일.gif)
 
 
 
 
 HTML
 
 
 
        <h3>이메일</h3>
          <input type="text" id="user_email" required><span id="middle">@</span><input type="text" id="email_address" list="user_email_address">
          <datalist id="user_email_address">
            <option value="naver.com"></option>
            <option value="daum.com"></option>
            <option value="google.com"></option>
            <option value="직접입력"></option>
          </datalist>
          <input type="hidden" id="totalemail" name="email" value="">
 
 
 
 JS
 
 

        //이메일주소 가져오기
        $("#user_email").blur(function(){
          email();	
        });

        $("#email_address").change(function(){
          email();	
        });

        function email() {
          //console.log('change');
          const email = $("#user_email").val();
          const middle = $("#middle").text();
          const address = $("#email_address").val();
          if(email != "" && address != "") {
            $("#totalemail").val(email+middle+address);
          }
        };
        
 
 
 ### :loudspeaker: 트러블슈팅
 
 
 
 ### :loudspeaker: 회고
