# flutterapp
flutter学习

## 环境配置信息

repositories {
    maven { url 'https://maven.aliyun.com/repository/public' } // 可选：使用阿里云镜像提高国内访问速度
    maven { url 'https://maven.aliyun.com/repository/google' }
    maven { url 'https://maven.aliyun.com/repository/jcenter' }
    maven { url 'https://maven.aliyun.com/nexus/content/groups/public' }
    google()
    mavenCentral()
}

plugins {
    id "dev.flutter.flutter-plugin-loader" version "1.0.0"
    id "com.android.application" version "8.0.0" apply false
    id "org.jetbrains.kotlin.android" version "1.8.22" apply false
}

public final int compileSdkVersion = 34
public  final int minSdkVersion = 21
public final int targetSdkVersion = 34


java  17

distributionUrl=https\://services.gradle.org/distributions/gradle-8.0.1-all.zip


