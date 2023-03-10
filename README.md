###### tags: `README`

# Personal Scheduler

## ๐๐ปโโ๏ธ ํ๋ก์ ํธ ์๊ฐ
์ํฐ๋ ํ๋ฆฌ์จ ๋ณด๋ฉ `Personal Scheduler` ์ฑ ํ๋ก์ ํธ ์๋๋ค.

> ํ๋ก์ ํธ ๊ธฐ๊ฐ: 2023-01-09 ~ 2022-01-13 (5์ผ)

## ๐ ๋ชฉ์ฐจ

- [๐ง๐ปโ๐ป๐ง๐ปโ๐ป ๊ฐ๋ฐ์ ์๊ฐ](#-๊ฐ๋ฐ์-์๊ฐ)
- [๐ ํต์ฌ๊ธฐ์ ](#-ํต์ฌ๊ธฐ์ )
- [๐ญ ํ๋ก์ ํธ ๊ตฌ์กฐ](#-ํ๋ก์ ํธ)

<br>

## ๐ง๐ปโ๐ป๐ง๐ปโ๐ป ๊ฐ๋ฐ์ ์๊ฐ

|[์ก๋น](https://github.com/wongbingg)|
|:---:|
| <image src = "https://i.imgur.com/fQDo8rV.jpg" width="250" height="250">|


<br>
    
## ๐ ํต์ฌ๊ธฐ์ 
    
- **`MVVM`**
    - ๋ฐ์ดํฐ ๊ด๋ จ ๋ก์ง์ **ViewModel**, ๋ทฐ์ ์ํ ๊ด๋ฆฌ๋ **ViewContoller**, ๋ทฐ์ ๋ก์ง์ View๋ก MVVM ํจํด์ ์ฌ์ฉํด ์ด๋ฒ ํ๋ก์ ํธ๋ฅผ ์งํํด ๋ณด์์ต๋๋ค.

- **`DIContainer`**
    - ๊ฐ Scene์ ํ์ํ ์์กด์ฑ์ ๋ชจ๋ ๊ฐ์ง๋ DIContainer๋ฅผ ๊ฐ Coordinator๋ก ์ฃผ์์์ผ์ฃผ์ด ์ฌ์ฉ ํ์ต๋๋ค.

    
- **`Coordinator`**
    - ํ๋ฉด ์ ํ ๋ก์ง์ Coordinator ์์ ์ฒ๋ฆฌํ๋๋ก ๊ตฌํ ํ์ต๋๋ค.
    - ํ๋ฉด ์ ํ์ viewController์ ํ์ํ viewModel๊ณผ viewModel์ ํ์ํ ์์กด์ฑ๋ค์ ์ฃผ์ํด์ฃผ๋ ๊ณผ์ ์ Coordinator ์์ ์ฒ๋ฆฌ ํ์์ต๋๋ค.


- **`๋์์ธํจํด`**
    - ์ต์ ๋ฒ๋ธ ํจํด
        - MVVM ๊ตฌํ์ ๋ฐ์ดํฐ ๋ฐ์ธ๋ฉ์ ์ํด ์ต์ ๋ฒ๋ธ ํจํด์ผ๋ก ๊ตฌํ์ ํด๋ณด์์ต๋๋ค.
    - ์ฑ๊ธํค ํจํด
        - ๋ฐ์ดํฐ๋ฒ ์ด์ค๋ก ์ฌ์ฉํ๋ FirestoreManager ๊ตฌํ ์ ํ๋์ ์ธ์คํด์ค๋ฅผ ์ ์งํ๊ธฐ ์ํด ์ฑ๊ธํค ํจํด์ ์ ์ฉํ์ต๋๋ค.
- **`UI ๊ตฌํ`**
    - ์ฝ๋ ๋ฒ ์ด์ค UI
    - ์คํ ๋ ์ด์์
- **`๋ฐ์ดํฐ๋ฒ ์ด์ค`**
    - Firestore
- **`์ฌ์ฉ์์ธ์ฆ`**
    - FirebaseAuth
    - Kakao Login
    - Facebook Login
- **`๋น๋๊ธฐ์ฒ๋ฆฌ`**
    - async - await
    - @escaping closure
    

<br>
    
## ๐ญ ํ๋ก์ ํธ ๊ตฌ์กฐ
```
โโโ Application
โย ย  โโโ AppCoordinator.swift
โย ย  โโโ AppDelegate.swift
โย ย  โโโ DIContainer
โย ย  โย ย  โโโ AppDIContainer.swift
โย ย  โย ย  โโโ LoginSceneDIContainer.swift
โย ย  โย ย  โโโ ScheduleSceneDIContainer.swift
โย ย  โโโ SceneDelegate.swift
โโโ Domain
โย ย  โโโ Entities
โย ย  โย ย  โโโ LoginError.swift
โย ย  โย ย  โโโ LoginInfo.swift
โย ย  โย ย  โโโ Schedule.swift
โย ย  โโโ UseCase
โย ย      โโโ FacebookLoginUseCase.swift
โย ย      โโโ FirebaseAuthUseCase.swift
โย ย      โโโ KakaoLoginUseCase.swift
โโโ Presentation
โย ย  โโโ LoginScene
โย ย  โย ย  โโโ Flows
โย ย  โย ย  โย ย  โโโ LoginFlowCoordinator.swift
โย ย  โย ย  โโโ Login
โย ย  โย ย  โย ย  โโโ View
โย ย  โย ย  โย ย  โย ย  โโโ LoginView.swift
โย ย  โย ย  โย ย  โย ย  โโโ LoginViewController.swift
โย ย  โย ย  โย ย  โย ย  โโโ Subviews
โย ย  โย ย  โย ย  โย ย      โโโ LabelSeparator.swift
โย ย  โย ย  โย ย  โย ย      โโโ LogoImageButton.swift
โย ย  โย ย  โย ย  โโโ ViewModel
โย ย  โย ย  โย ย      โโโ LoginViewModel.swift
โย ย  โย ย  โโโ Signin
โย ย  โย ย      โโโ View
โย ย  โย ย      โย ย  โโโ SigninViewController.swift
โย ย  โย ย      โโโ ViewModel
โย ย  โย ย          โโโ SigninViewModel.swift
โย ย  โโโ ScheduleScene
โย ย      โโโ Flows
โย ย      โย ย  โโโ MainFlowCoordinator.swift
โย ย      โโโ ScheduleDetail
โย ย      โย ย  โโโ View
โย ย      โย ย  โย ย  โโโ ScheduleDetailView.swift
โย ย      โย ย  โย ย  โโโ ScheduleDetailViewController.swift
โย ย      โย ย  โโโ ViewModel
โย ย      โย ย      โโโ ScheduleDetailViewModel.swift
โย ย      โโโ ScheduleList
โย ย          โโโ View
โย ย          โย ย  โโโ ListCell.swift
โย ย          โย ย  โโโ ScheduleCollectionView.swift
โย ย          โย ย  โโโ ScheduleListViewController.swift
โย ย          โโโ ViewModel
โย ย              โโโ ScheduleListViewModel.swift
โโโ Resources
โย ย  โโโ Assets.xcassets
โย ย  โย ย  โโโ AccentColor.colorset
โย ย  โย ย  โย ย  โโโ Contents.json
โย ย  โย ย  โโโ AppIcon.appiconset
โย ย  โย ย  โย ย  โโโ Contents.json
โย ย  โย ย  โโโ Contents.json
โย ย  โย ย  โโโ apple_custom.imageset
โย ย  โย ย  โย ย  โโโ Contents.json
โย ย  โย ย  โย ย  โโโ apple_custom.png
โย ย  โย ย  โโโ facebook_custom.imageset
โย ย  โย ย  โย ย  โโโ Contents.json
โย ย  โย ย  โย ย  โโโ facebook_custom.png
โย ย  โย ย  โโโ facebook_login.imageset
โย ย  โย ย  โย ย  โโโ Contents.json
โย ย  โย ย  โย ย  โโโ facebook_login.png
โย ย  โย ย  โโโ kakao_custom.imageset
โย ย  โย ย  โย ย  โโโ Contents.json
โย ย  โย ย  โย ย  โโโ kakao_custom.png
โย ย  โย ย  โโโ kakao_login_large_wide.imageset
โย ย  โย ย  โย ย  โโโ Contents.json
โย ย  โย ย  โย ย  โโโ kakao_login_large_wide.png
โย ย  โย ย  โโโ kakao_login_medium.imageset
โย ย  โย ย  โย ย  โโโ Contents.json
โย ย  โย ย  โย ย  โโโ kakao_login_medium.png
โย ย  โย ย  โโโ kakao_login_medium_wide.imageset
โย ย  โย ย      โโโ Contents.json
โย ย  โย ย      โโโ kakao_login_medium_wide.png
โย ย  โโโ Base.lproj
โย ย  โย ย  โโโ LaunchScreen.storyboard
โย ย  โโโ Info.plist
โโโ Services
โย ย  โโโ FacebookLoginService.swift
โย ย  โโโ FireStoreManager.swift
โย ย  โโโ FirebaseAuthService.swift
โย ย  โโโ KakaoLoginService.swift
โโโ Utils
    โโโ AlertBuilder.swift
    โโโ Coordinator.swift
    โโโ DateManager.swift
    โโโ Extension
    โย ย  โโโ UITextField+.swift
    โโโ LoginCacheManager.swift
    โโโ Observable.swift
```

