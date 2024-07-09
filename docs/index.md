# FireFlutter 이해

FireFlutter 는 Flutter 와 Firebase 를 사용하여 빠르게 앱을 구축하기 위한 패키지이다. 아름다운 UI 디자인 뿐만아니라 회원 가입, 게시판, 채팅, 소셜 기능을 모두 포함하는 완전한 소셜 앱 패키지로 매우 쉽게 사용이 가능하도록 해 주며 원하는대로 쉽게 커스터마이징을 할 수 있다.


## 개요

- 누구나 참여할 수 있다.
- 라이센스는 MIT 이며, 누구든지 어떤 목적으로든 사용 할 수 있다.
- 지원하는 플랫폼은 ANDROID, IOS, MACOS, LINUX, WEB, WINDOWS 이다.
- 백엔드는 파이어베이스 함수를 사용한다. 가능한 많은 것을 플러터에서 하되, 벡엔드가 꼭 필요하면 파이어베이스 내에서 모든 처리를 하기 위해서 파이어베이스 함수를 사용한다.
- 과거 FireFlutter 버전은 많은 기능을 포함하는 거대한 패키지였는데, 0.4.x 에서는 각 기능별로 패키지를 나누어서 개발하였다. 그래서 개발자가 필요한 부분만 패키지로 설치해서 사용 할 수 있도록 하였다. 


## 기능


- 2024년 7월 FireFlutter 는 하나의 거대 패키지에서 기능별 패키지로 나뉘어졌으며 각 패키지는 완전히 분리되어 어떤 앱에서든 원하는 것만 골라서 쓸 수 있다. 다음은 기존의 FireFlutter 패키지 기능에 속해있었는데 분리되었거나 FireFlutter 와 함께 쓰면 유용한 패키지를 나열 하였다.


- [FireFlutter](https://pub.dev/packages/fireflutter) 패키지는 회원 관리, 회원 정보 수정, 회원 탈퇴, 활동 기록, 활동 제한, 좋아요, 즐겨찾기, 신고, 블럭, 관리작 사용자를 차단 등 기본적인 기능들을 제공한다.

- [Easy Chat](https://pub.dev/packages/easychat) 비용 절감을 위해서 채팅방 관리저 정보는 Firestore 를 쓰며, 채팅방 메시지는 Realtime Database 를 사용한다. 대용량 채팅방 서비스에 적합하다. 과거에 FireFlutter 의 기능이었지만 완전히 분리되어, 원한다면 이 패키지만 따로 골라서 쓸 수 있다.

- [Easy Forum](https://...) 은 게시판이다.

- [Task Management System](https://github.com/thruthesky/task_management_system)은 `해야 할 일` 또는 `이슈 트래킹 시스템` 등으로 활용을 할 수 있다. 원래 FireFlutter 의 기능이었지만 이제는 완전히 분리된 패키지이다. 따라서 완전히 독립적으로 사용 할 수 있으며 원한다면 여러분의 앱에 이 패키지만 쓸 수 있다.


- [Phone Sign In](https://pub.dev/packages/phone_sign_in) 은 전화번호 로그인을 위한 패키지이며, link with credential 을 지원하며 특별히 리뷰를 위한 가짜 로그인을 지원한다.




## 참여 방법

가장 먼저 협업하는 방법에 대해서 배워한다. 협업을 하기 위해서는

- Git 을 알아야하고, [Dart 스타일 가이드](https://dart-ko.dev/guides/language/effective-dart),
- [Flutter 스타일 가이드](https://github.com/flutter/flutter/blob/master/docs/contributing/Style-guide-for-Flutter-repo.md)을 잘 알고 있어야 한다.
- 또한 필수적으로 문서화를 잘 해야 한다. 문서화는 소스 코드에 하고 Markdown 파일에 해야 한다.
- 소스 코드 포멧의 통일을 위해서 편집기는 VSCode 만 사용한다. VSCode 를 사용해서, 각종 설정 까지 공유를 한다. 
- 모델하우스 코드 컨벤션을 통해서 통일성있는 코드를 작성해 나간다.

### Git

팀 작업을 위한 Git 명령어 사용법을 꼭 익혀야 한다.

예를 들면 fork 후 pr 을 하고, origin 에서 업데이트 된 내용을 local 로 받아오는 등의 작업이 필요하므로 이에 대한 이해를 충분히 해야 한다.


### 문서화

패키지로 만들어 공개하고 많은 개발자들이 이용하기를 바란다면 문서화를 잘 해 놓는 것이 가장 중요하겠다. 같은 맛이면 보기 좋은 떡이 점수가 더 높은 법이다.

그래서 가장 먼저 해야 할 것이 문서화를 어떻게 하는 것이다.

소스 코드 내에 문서화를 하는 방법과 Markdown 에 문서화를 하는 두가지 방법을 배워야 한다.


### 소스 코드 업데이트 방법: fork 와 pr

협업을 하는 가장 일반적인 방법 중 하나가 `fork 후 pr` 이라고 하겠다. 아래와 같이 하면 된다.

- 프로젝트 홈페이지: https://github.com/thruthesky/model_house 로 접한다.
- fork 한다.
- fork 한 것을 clone 한다.
- 자신 만의 branch 를 만든다.
- branch 에서 작업하고 push 한다.
- pr 한다.
- pr 이 완료되기 까지 기다린다 또는 핵심 개발자에게 요청한다.

그리고 업데이트가 있을 때마다 origin 에서 다운받는다.





## 스타일 가이드

PR 하기 전에 스타일 가이드에 맞게 작성되었는지 확인을 바란다.

참고: [스타일 가이드](./style_guide.md)

