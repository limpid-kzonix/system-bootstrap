#!/usr/bin/env zsh

curl -s "https://get.sdkman.io" | zsh -y
source "$HOME/.sdkman/bin/sdkman-init.sh"
sdk version

source "$HOME/.sdkman/bin/sdkman-init.sh" && sdk i java
source "$HOME/.sdkman/bin/sdkman-init.sh" && sdk i gradle
source "$HOME/.sdkman/bin/sdkman-init.sh" && sdk i maven
source "$HOME/.sdkman/bin/sdkman-init.sh" && sdk i sbt
source "$HOME/.sdkman/bin/sdkman-init.sh" && sdk i scala
source "$HOME/.sdkman/bin/sdkman-init.sh" && sdk i micronaut
source "$HOME/.sdkman/bin/sdkman-init.sh" && sdk i vertx
source "$HOME/.sdkman/bin/sdkman-init.sh" && sdk i visualvm
