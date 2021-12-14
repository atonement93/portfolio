# 엠카운트다운 개발 프로젝트



  ### :loudspeaker: 개요
  


* #### 프로젝트 설명


    학습을 목적으로 구현하기에 적합한 엠카운트다운 웹 사이트를 클론코딩하였다. 
    
    
    UI가 비교적 깔끔하며, 백엔드의 핵심적인 기능으로 구현할 게시판과 댓글 기능을 클론코딩 해볼 수 있는 좋은 표본으로 판단되어 엠카운트 웹 사이트를 선택하게 되었다.
 

* #### 개발인원


   :raising_hand::raising_hand::raising_hand: 3명(프론트엔드 2명, 백엔드 1명)


* #### 개발기간


   2021년 10월 1일 - 2021년 10월 29일
   
   
 ### :loudspeaker: 사용한 기술
 
 
 * #### 프론트엔드


    HTML5, CSS3, ES6, JQuery
    
 
 
 * #### 백엔드


    Java, Spring 4, Oracle 
    
    
 
 ### :loudspeaker: 구현을 담당한 기능
  

 
 * #### 프론트엔드


    메뉴바, 컨텐츠 가져오기 및 정렬, 푸터, 모달 기능 구현
    
 
 
 ### :loudspeaker: 담당한 핵심 기능
 
 
 
 #### 1) 헤더 및 푸터 고정
 
 
엠카운트다운 웹 사이트에는 주메뉴가 있다. 이들을 클릭하여 각 메뉴의 페이지로 이동 시 헤더와 푸터는 고정된 채 중간에 위치한 페이지의 내용만 변경된다.


이를 페이지마다 스크립틀릿으로 include 코드를 넣어 헤더와 푸터를 상단과 하단에 삽입 및 고정해주었고, 그 사이에 위치하는 페이지의 내용만 변경되도록 구현하였다.



HTML


        <body>
          <%@ include file="header.jsp"%>
            // 페이지의 내용
          <%@ include file="footer.jsp"%>  
        </body>



 #### 2) 소메뉴 UI 및 
 
 
소메뉴를 구현하였다. 엠카운트다운 웹 사이트의 주메뉴 중 '투표' 메뉴와 '다시보기' 메뉴는 클릭하면 메뉴의 바로 아래에 다시 소메뉴가 등장한다. 이 때, 클릭 시 상단의 헤더 및 주메뉴와 하단의 푸터는 고정되어있지만, 페이지는 클릭된 메뉴의 페이지로 이동하며 페이지가 변경된다. 


클릭한 메뉴로 이동되며 페이지가 변경되었다는 것을 표현하기 위해 메뉴 하단에 파란색의 네모박스가 이동하는데, **디자인적 구현 및 직관적 이해를 통한 편리한 사이트 이용을 위한 부분**으로 인식하고 이를 구현하였다.


네모박스는 CSS의 border를 이용해 개발하였다.


HTML



      <ul id="menu">
        <li>
          <button class="pre" onclick="location.href='${pageContext.request.contextPath}/board/vote'">사전 온라인투표</button>
        </li>
        <li>
          <button class="live" onclick="location.href='${pageContext.request.contextPath}/board/voteLive'">실시간 1위 투표</button>
        </li>
        <div class="click"></div>
      </ul>
      
      
      
CSS


      #menu {
        list-style: none;
        margin: 0;
        padding: 0;
        text-align: center;
        border-bottom: 0.5px solid #f2f2f2;
      }

      #menu li {
        display: inline;
      }

      #menu button {
        display: inline-block;
        padding: 10px;
        width: 180px;
        height: 60px;
        border: 0;
        outline: 0;
        font-size: 20px;
      }

      .pre {
        color: blue;
      }

      .click {
        width: 70px;
        height: 0px;
        border-top: 4px solid blue;
        margin: 0 auto;
        transform: translateX(-130%);
      }

 
 
 #### 3) 모달 기능
 
 
 
 다시보기 메뉴에서 '포토 다시보기'를 클릭하여 나열된 사진들을 하나씩 클릭해보면 모달이 나타난다. 모달을 통해 관련된 여러 장의 사진을 볼 수 있다.
 
 
 모달이 나타나면 뒤의 배경은 검은색으로 덮여 모달 창에만 집중할 수 있도록 구현된다.
 
 
 이러한 동적 기능을 구현하기 위해 JS를 사용하여 사용자가 이미지 클릭 시 모달이 나타날 수 있도록 개발하였다.
 

 이미지를 클릭하면 onmodal() 함수가 호출되고, JS의 onmodal() 함수에서는 classList에서 hidden을 제거하여 검은색 배경색을 띄우고, 모달 창을 고정시킨다.
 
 
 모달 창 내에서 버튼을 클릭하여 모달 창을 종료시키면, onclose() 함수가 호출되어 검은색 배경색과 모달 창은 none 값을 통해 사라지도록 구현하였다.
 
 
 HTML
 
 

       <body>
        <%@ include file="header.jsp"%>

        <div id="bg" style="display: none; position: absolute; top: 0px; left: 0px; right: 0px; z-index: 99; height: 2659px; background-color: rgb(0, 0, 0); opacity: 0.75;"></div>

        <ul id="menu">
          <li>
            <button class="vod" onclick="location.href='${pageContext.request.contextPath}/board/vod'">영상 다시보기</button>
          </li>
          <li>
            <button class="photo" onclick="location.href='${pageContext.request.contextPath}/board/photo'">포토 다시보기</button>
          </li>
          <div class="click"></div>
        </ul>

        <section class="replay">
          <div class="contents">
            <ul class="vod_list photo">
              <li><a href="javascript:;" onclick="onmodal();">
                  <div class="thum">
                    <img src="https://image.genie.co.kr/Y/IMAGE/MCOUNTDOWN/PHOTO//2021/10/1630/071743_1.jpg" onerror="https://image.genie.co.kr">
                  </div>
                  <div class="tit">
                    <strong>[엠카 727회] Ending</strong>
                    <span class="date">
                      2021.10.07<em>7</em>
                    </span>
                  </div>
                </a>
              </li>
            // 이하 반복
 
 
 JS
 
 
      const bg = document.getElementById("bg");
      const popup = document.getElementById("photo-pop");
      const closeBtn = document.querySelector(".layer-close");

      function onmodal() {
        bg.style.display="flex";
        popup.style.display="block";
        popup.classList.remove("hidden");
      }

      function onclose() {
        bg.style.display="none";
        popup.style.display="none";
      }

      closeBtn.addEventListener("click", onclose);


 
 ### :loudspeaker: 트러블슈팅
 
 

 #### 투표 리스트에서 요소가 하나씩 뒤로 밀리는 현상
 
 
##### 문제.
    

투표 메뉴를 클릭하면 투표 가능한 앨범의 목록이 한 줄에 3개씩 나타난다. 이 때, 미디어쿼리는 화면이 아주 작아졌을 때를 제외하고는 적용하지 않았으나 프로젝트를 함께한 팀원들의 개인 컴퓨터에서마다 화면이 다르게 나타나는 문제를 발견하였다. 즉, 한 줄에 3개씩 앨범의 목록이 나타나야 하는데 중간부터 줄이 어긋나버려 한 줄에 2개씩만 앨범의 목록이 나타나 순서가 밀린 것이다.
    

    
##### 해결.


기존 코드에는 이상이 없음을 확인하였고 앨범 목록이 밀려서 나타나는 구간부터 앨범이 차지하고 있는 영역의 크기가 달라짐을 확인하였다. 이 부분은 크롬 자체의 오류 현상으로 파악하고, 밀려나기 시작하는 구간의 앨범 영역 크기만 개별적으로 선택자를 넣어 CSS를 통해 정상적인 크기로 변경하였다.


개별 선택자는 class 선택자의 값을 excep으로 넣어주었다.


HTML


          <li class="excep">
            <div class="thum">

              <a href="javascript:;" onclick="fnPlayerCall('94160633', '', '1');return false;" class="play">재생</a>
              <a href="#">
                <span class="mask" onclick="fnViewAlbum('82226115');return false;"></span>
                <img src="https://image.genie.co.kr/Y/IMAGE/IMG_MUZICAT/VoteEvent/188/ARTIST_94160633_20210924100831.jpg" alt="" />
              </a>
            </div> <span class="rank">
              <strong>12</strong>0%
            </span> <strong><a href="javascript:;" onclick="fnViewSong('94160633'); return false;">Movin'(너에게로...)</a></strong> <span class="artist">
              <a href="javascript:;" onclick="fnViewArtist('80789185');return false;">MCND</a>
            </span> <a href="javascript:;" class="go_vote end">투표마감</a>

         </li>
    
 
 
 CSS
 
 
       .excep {
        height:499.6px;
      }
      
      
 ### :sparkles: 회고
 
 
 간단할거라 생각했는데 오산이었다. 특히 CSS 파트가 정말 쉽지 않았다. 눈으로 간단해보여도, 코드는 절대 그렇지 않다는 것을 몸소 경험할 수 있었던 시간이었다.
 
 
 그래도 가장 헤메었던 CSS에서 그만큼 많이 배워갈 수 있었는데, 무엇보다 **부모와 자식 요소의 관계로 인해 전체적인 연결성을 생각하며 코드를 작성해야 하는 것**에 대한 중요성을 크게 깨우칠 수 있어서 보람이 있었던 프로젝트였다고 생각한다.
 
 
 이 외에도 팀 내에서 서로 모르는 부분을 함께 공부해나가며 도움을 주고 받으면서 개발할 수 있어 프로그래밍을 해 나가는 데 있어 의지가 많이 되었고, 배워가는 좋은 시간이었다. 협업하는 과정의 일부로서 서로 이끌기도 하고 배우기도 하는 과정을 경험했다고 생각한다. 현업에서 개발할 때에 가장 중요한 덕목 중 하나인 협업에 대해서도 이렇게 배울 수 있어 여러모로 좋은 경험으로 남은 프로젝트였다.
 
 

