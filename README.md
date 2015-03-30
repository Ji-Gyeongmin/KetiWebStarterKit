# KETI Web Starter Kit

케티에서 프론트엔드 관련 프로젝트를 할 때 빌드, 테스트, 의존성 라이브러리 관리등을

간편하게 하기 위한 킷

구글의 [Web Starter Kit](https://developers.google.com/web/starter-kit) 을 기반으로 제작


## Prerequisites

### [Node.js](https://nodejs.org)

Node.js 설치 필요

### [Gulp](http://gulpjs.com)

프론트엔드를 위한 빌드 시스템

```sh
$ npm install -g gulp
```

### [Bower](http://bower.io/)

프론트엔드를 위한 의존성 라이브러리 관리 시스템

```sh
$ npm install -g bower
```

### [Karma](http://bower.io/)

프론트엔드를 위한 의존성 라이브러리 관리 시스템

```sh
$ npm install -g karma-cli
```

### Local dependencies

의존성 라이브러리 설치

```sh
$ npm install
```

### Front-End dependencies

프론트 엔드 의존성 라이브러리 설치

```sh
$ bower install
또는
$ gulp install
```


## 계층 구조

```sh
├── app
│   ├── fonts                 # 폰트 관련 리소스
│   ├── images                # 이미지 관련 리소스
│   ├── partials              # html 조각 리소스
│   ├── scripts               # Javascript 관련 리소스
│   │   ├── controllers       # AngularJS를 위한 컨트롤러 리소스
│   │   ├── directives        # AngularJS를 위한 디렉티브 리소스
│   │   ├── filters           # AngularJS를 위한 필터 리소스
│   │   ├── services          # AngularJS를 위한 서비 리소스
│   │   ├── app.coffee        # AngularJS의 의존성 모듈 관리 및 CommonController 설정
│   │   ├── main.coffee       # RequireJS 설정
│   │   └── routes.coffee     # SPA를 위한 라우트 설정
│   ├── scripts-test          # 테스트 관련 리소스
│   │   ├── controllers       # AngularJS 테스트를 위한 컨트롤러 리소스
│   │   ├── directives        # AngularJS 테스트를 위한 디렉티브 리소스
│   │   ├── filters           # AngularJS 테스트를 위한 필터 리소스
│   │   ├── services          # AngularJS 테스트를 위한 서비스 리소스
│   │   └── main-test.coffee  # 테스트를 위한 RequireJS 설정 파일
│   ├── styles                # CSS(SASS)관련 리소스 
│   ├── basic.html
│   ├── favicon.ico
│   ├── humans.txt
│   ├── index.html            # 웹 메인 페이지 html 파일
│   ├── manifest.json
│   ├── manifest.webapp
│   └── robots.txt            # 검색 엔진 노출 관련 설정 파일
├── dist                      # 빌드 된 프로젝트 파일이 저장되는 위치
├── docs                      # 프로젝트 관련 문서
│   ├── commands.md
│   └── install.md
├── bower.json                # Bower 관련 설정 파일
├── LICENSE   
├── README.md
├── gulpfile.js               # Gulp 관련 설정 파일
├── karma.conf.coffee         # Karma 관련 설정 파일
└── package.json              # npm(node) 관련 설정 파일
```

## 실행

### 빌드

```sh
$ gulp
```

### 웹서버 실행

```sh
$ gulp serve
```

## 명령어

### 빌드

```sh
$ gulp
```

### Bower 의존 라이브러리 설치

```sh
$ gulp bower
```

### 웹 서버 실행

```sh
$ gulp serve
```

### 빌드된 웹 서버 실행

```sh
$ gulp serve:dist
```

### Clean

```sh
$ gulp clean
```
