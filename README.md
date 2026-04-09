# Sodium Custom Client - Fabric Edition

Minecraft 1.26.1용 Fabric 모드입니다. Sodium (Fabric 버전)과 호환됩니다.

## ✅ 빌드 방법

### **방법 1: Gradle 설치 후 빌드 (권장)**

1. **Gradle 8.8 설치**
   - [gradle.org](https://gradle.org/install/) 방문
   - 설치 후 `gradle --version` 으로 확인

2. **빌드 명령어**
   ```bash
   cd D:\현\마크 클라 만들기 대작전
   gradle build
   ```

3. **완료**
   - JAR 파일: `build\libs\sodium_customclient-1.0.0.jar`

### **방법 2: Online Fabric Generator 사용**

1. [Fabric Generator](https://fabricmc.net/develop/) 방문
2. **Minecraft 1.26.1** 선택
3. **Generate Project** 클릭
4. 다운로드된 프로젝트의 `src/` 폴더 내용을 이 폴더의 `src/`로 복사

## 📦 설치

1. **Fabric Installer 설치**
   - [Fabric Installer](https://fabricmc.net/use/) 다운로드
   - Minecraft 1.26.1 버전 선택 후 설치

2. **모드 설치**
   - 생성된 JAR 파일을 다음 경로에 복사:
   ```
   %APPDATA%\.minecraft\mods\
   ```

3. **Minecraft 실행**
   - **Fabric Loader** 프로필로 실행

## 📁 프로젝트 구조

```
├── src/main/java/com/example/sodium_customclient/
│   ├── SodiumCustomClientMod.java         # 모드 진입점
│   ├── gui/
│   │   ├── CustomScreen.java               # 기본 GUI 클래스
│   │   └── components/
│   │       └── CustomButton.java           # 커스텀 버튼
├── src/main/resources/
│   ├── fabric.mod.json                     # 모드 메타데이터
│   └── assets/sodium_customclient/lang/
│       ├── en_us.json
│       └── ko_kr.json
├── build.gradle                            # Gradle 설정
├── gradle.properties                       # 버전 설정
└── settings.gradle
```

## 🛠️ 의존성

- **Minecraft**: 1.26.1
- **Fabric Loader**: 0.15.11+
- **Fabric API**: 0.100.0+
- **Java**: 21

## 💡 GUI 커스터마이징

### 새로운 GUI 클래스 추가

```java
package com.example.sodium_customclient.gui;

import net.minecraft.client.gui.GuiGraphics;
import net.minecraft.client.gui.screens.Screen;
import net.minecraft.network.chat.Component;

public class MyCustomScreen extends CustomScreen {
    
    public MyCustomScreen(Component title) {
        super(title);
    }

    @Override
    protected void init() {
        super.init();
        // 여기에 커스텀 컴포넌트 추가
    }

    @Override
    public void render(GuiGraphics guiGraphics, int pMouseX, int pMouseY, float pPartialTick) {
        super.render(guiGraphics, pMouseX, pMouseY, pPartialTick);
        // 렌더링 로직
    }
}
```

## 🐛 문제 해결

### Gradle 설치 안 됨
```bash
# 환경변수 PATH에 Gradle\bin 추가 후 재시작
```

### JAR 파일 인식 안 됨
- Minecraft를 완전히 닫고 재시작
- 다른 모드 먼저 제거 후 테스트

### Fabric Loader 안 뜸
- Fabric Installer 재실행
- Minecraft 1.26.1 버전 확인

## 📝 라이선스

MIT

## 🤝 기여

개선 사항이 있으면 언제든지 연락주세요!

## 📞 지원

문제가 발생하면:
1. 로그 파일 확인: `%APPDATA%\.minecraft\logs\latest.log`
2. Fabric 문서: [docs.fabricmc.net](https://docs.fabricmc.net/)
