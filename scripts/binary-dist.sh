#!/usr/bin/env zsh

LAZYGIT_VERSION=0.54.2
KIND_VERSION=0.29.0
NEOVIDE_VERSION=0.15.1
ZELLIJ_VERSION=0.43.1
JJ_VERSION=0.32.0
DOTBOT_VERSION=1.23.1

APPS_DIR=${HOME}/.apps

mkdir -p $APPS_DIR

# ---
echo "Installing minikube"
rm -rf $APPS_DIR/minikube
mkdir -p $APPS_DIR/minikube/bin
curl -L -o $APPS_DIR/minikube/bin/minikube https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
chmod +x $APPS_DIR/minikube/bin/minikube

# --- 
echo "Installing xplr"
rm -rf $APPS_DIR/xplr/
mkdir -p $APPS_DIR/xplr/bin
curl -L -o ${APPS_DIR}/xplr/xplr-linux.tar.gz https://github.com/sayanarijit/xplr/releases/latest/download/xplr-linux.tar.gz
tar -zvxf ${APPS_DIR}/xplr/xplr-linux.tar.gz -C ${APPS_DIR}/xplr/bin/ 1>/dev/null
chmod +x ${APPS_DIR}/xplr/bin/xplr
rm -rf ${APPS_DIR}/xplr/xplr-linux.tar.gz

# --- 
echo "Installing kind"
rm -rf $APPS_DIR/kind/
mkdir -p $APPS_DIR/kind/bin
curl -Lo $APPS_DIR/kind/bin/kind https://kind.sigs.k8s.io/dl/v${KIND_VERSION}/kind-linux-amd64
chmod +x $APPS_DIR/kind/bin/kind

# --- 
echo "Installing zellij"
rm -rf $APPS_DIR/zellij/
mkdir -p $APPS_DIR/zellij/bin
curl -Lo $APPS_DIR/zellij/zellij.tar.gz https://github.com/zellij-org/zellij/releases/download/v${ZELLIJ_VERSION}/zellij-x86_64-unknown-linux-musl.tar.gz
tar -zvxf $APPS_DIR/zellij/zellij.tar.gz -C ${APPS_DIR}/zellij/bin/ 1>/dev/null
chmod +x $APPS_DIR/zellij/bin/zellij

# ---
echo "Installing helm"
rm -rf $APPS_DIR/helm/
mkdir -p $APPS_DIR/helm/bin
curl -fsSL -o ${APPS_DIR}/helm/get_helm.sh https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3
chmod 700 ${APPS_DIR}/helm/get_helm.sh
chmod +x ${APPS_DIR}/helm/get_helm.sh
export USE_SUDO=false
export HELM_INSTALL_DIR=${APPS_DIR}/helm/bin
${APPS_DIR}/helm/./get_helm.sh
rm ${APPS_DIR}/helm/get_helm.sh

 
# ---
echo "Installing kubectl"
rm -rf $APPS_DIR/kubectl/
mkdir -p $APPS_DIR/kubectl/bin
curl -L -o ${APPS_DIR}/kubectl/bin/kubectl "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
chmod +x ${APPS_DIR}/kubectl/bin/kubectl

# ---
echo "Installing kustomize"
rm -rf $APPS_DIR/kustomize/
mkdir -p $APPS_DIR/kustomize/bin
curl -L -o $APPS_DIR/kustomize/install_kustomize.sh "https://raw.githubusercontent.com/kubernetes-sigs/kustomize/master/hack/install_kustomize.sh"
chmod +x $APPS_DIR/kustomize/install_kustomize.sh
$APPS_DIR/kustomize/./install_kustomize.sh $APPS_DIR/kustomize/bin
rm -rf $APPS_DIR/kustomize/install_kustomize.sh


# --- 
echo "Installing neovide"
rm -rf $APPS_DIR/neovide/
mkdir -p $APPS_DIR/neovide/bin
curl -L -o ${APPS_DIR}/neovide/neovide.tar.gz https://github.com/neovide/neovide/releases/download/${NEOVIDE_VERSION}/neovide-linux-x86_64.tar.gz

tar -zvxf ${APPS_DIR}/neovide/neovide.tar.gz -C ${APPS_DIR}/neovide/bin/ 1>/dev/null
chmod +x ${APPS_DIR}/neovide/bin/neovide
rm -rf ${APPS_DIR}/neovide/neovide.tar.gz


# --- 
echo "Installing neovim"
rm -rf $APPS_DIR/neovim/
mkdir -p $APPS_DIR/neovim/bin
curl -L -o ${APPS_DIR}/neovim/neovim.tar.gz https://github.com/neovim/neovim/releases/latest/download/nvim-linux-x86_64.tar.gz
tar -zvxf ${APPS_DIR}/neovim/neovim.tar.gz -C ${APPS_DIR}/neovim/ 1>/dev/null
mv --force ${APPS_DIR}/neovim/nvim-linux-x86_64/* ${APPS_DIR}/neovim 
chmod +x ${APPS_DIR}/neovim/bin/nvim
ln -sf ${APPS_DIR}/neovim/bin/nvim ${APPS_DIR}/neovim/bin/neovim 
ln -sf ${APPS_DIR}/neovim/bin/nvim ${APPS_DIR}/neovim/bin/vim 

sudo ln -sf ${APPS_DIR}/neovim/bin/nvim /usr/local/bin/neovim 
sudo ln -sf ${APPS_DIR}/neovim/bin/nvim /usr/local/bin/vim 
sudo ln -sf ${APPS_DIR}/neovim/bin/nvim /usr/local/bin/nvim 
sudo ln -sf ${APPS_DIR}/neovim/bin/nvim /usr/bin/nvim 
sudo ln -sf ${APPS_DIR}/neovim/bin/nvim /usr/bin/neovim


rm -rf ${APPS_DIR}/neovim/neovim.tar.gz
rm -rf ${APPS_DIR}/neovim/nvim-linux-x86_64/

# ---
echo "Installing lazygit"
mkdir -p $APPS_DIR/lazygit/bin
curl -L -o ${APPS_DIR}/lazygit/lazygit.tar.gz https://github.com/jesseduffield/lazygit/releases/download/v${LAZYGIT_VERSION}/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz

tar -zvxf ${APPS_DIR}/lazygit/lazygit.tar.gz -C ${APPS_DIR}/lazygit/bin/ 1>/dev/null
chmod +x ${APPS_DIR}/lazygit/bin/lazygit
ln -sf ${APPS_DIR}/lazygit/bin/lazygit ${APPS_DIR}/lazygit/bin/lzg 

rm -rf ${APPS_DIR}/lazygit/lazygit.tar.gz

# ---

echo "Installing jujutsu"
mkdir -p $APPS_DIR/jujutsu/bin
curl -L -o ${APPS_DIR}/jujutsu/jj.tar.gz https://github.com/jj-vcs/jj/releases/download/v${JJ_VERSION}/jj-v${JJ_VERSION}-x86_64-unknown-linux-musl.tar.gz
tar -zvxf ${APPS_DIR}/jujutsu/jj.tar.gz -C ${APPS_DIR}/jujutsu/bin/ 1>/dev/null
chmod +x ${APPS_DIR}/jujutsu/bin/jj

ln -sf ${APPS_DIR}/jujutsu/bin/jj ${APPS_DIR}/jujutsu/bin/jj-scm
ln -sf ${APPS_DIR}/jujutsu/bin/jj ${APPS_DIR}/jujutsu/bin/jujutsu

# ---

echo "Installing dotbot"
rm -rf $APPS_DIR/dotbot/
mkdir -p $APPS_DIR/dotbot/bin
curl -L -o ${APPS_DIR}/dotbot/dotbot.tar.gz https://github.com/anishathalye/dotbot/releases/download/v${DOTBOT_VERSION}/dotbot-linux-x64.tar.gz
tar -zvxf ${APPS_DIR}/dotbot/dotbot.tar.gz -C ${APPS_DIR}/dotbot/bin/ 1>/dev/null
chmod +x ${APPS_DIR}/dotbot/bin/dotbot

rm -rf ${APPS_DIR}/dotbot/dotbot.tar.gz
