#!/usr/bin/env sh

# 이 스크립트는 Linux/Unix에서 사용합니다
GRADLE_APP_NAME="Gradle"
GRADLE_APP_BASE_NAME=`basename "$0"`

exec java -Dorg.gradle.appname=$GRADLE_APP_NAME -classpath "$APP_HOME/lib/gradle-launcher-8.8.jar" org.gradle.launcher.GradleMain "$@"
