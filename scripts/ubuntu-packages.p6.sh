#!/usr/bin/env zsh

DIVE_VERSION=0.10.0
NEOVIM_VERSION=0.8.0
LAZYGIT_VERSION=0.35
KIND_VERSION=0.16.0

APPS_DIR=${HOME}/.apps
mkdir -p $APPS_DIR


# --- 
rm -rf $APPS_DIR/kind/
mkdir -p $APPS_DIR/kind/bin
curl -Lo $APPS_DIR/kind/bin/kind https://kind.sigs.k8s.io/dl/v${KIND_VERSION}/kind-linux-amd64
chmod +x $APPS_DIR/kind/bin/kind


# ---
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
mkdir -p $APPS_DIR/kubectl/bin
curl -L -o ${APPS_DIR}/kubectl/bin/kubectl "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
chmod +x ${APPS_DIR}/kubectl/bin/kubectl

# ---
mkdir -p $APPS_DIR/kustomize/bin
curl -L -o $APPS_DIR/kustomize/install_kustomize.sh "https://raw.githubusercontent.com/kubernetes-sigs/kustomize/master/hack/install_kustomize.sh"
chmod +x $APPS_DIR/kustomize/install_kustomize.sh
$APPS_DIR/kustomize/./install_kustomize.sh $APPS_DIR/kustomize/bin
rm -rf $APPS_DIR/kustomize/install_kustomize.sh

# ---
mkdir -p $APPS_DIR/dive/bin
curl -L -o ${APPS_DIR}/dive/dive.tar.gz https://github.com/wagoodman/dive/releases/download/v${DIVE_VERSION}/dive_${DIVE_VERSION}_linux_amd64.tar.gz

tar -zvxf ${APPS_DIR}/dive/dive.tar.gz -C ${APPS_DIR}/dive/bin/ 1>/dev/null
chmod +x ${APPS_DIR}/dive/bin/dive

rm -rf ${APPS_DIR}/dive/dive.tar.gz


# --- 
rm -rf $APPS_DIR/neovide/
mkdir -p $APPS_DIR/neovide/bin
curl -L -o ${APPS_DIR}/neovide/neovide.tar.gz https://github.com/neovide/neovide/releases/latest/download/neovide.tar.gz

tar -zvxf ${APPS_DIR}/neovide/neovide.tar.gz -C ${APPS_DIR}/neovide/bin/ 1>/dev/null
chmod +x ${APPS_DIR}/neovide/bin/neovide
rm -rf ${APPS_DIR}/neovide/neovide.tar.gz


# --- 
rm -rf $APPS_DIR/neovim/
mkdir -p $APPS_DIR/neovim/bin
curl -L -o ${APPS_DIR}/neovim/neovim.tar.gz https://github.com/neovim/neovim/releases/download/v${NEOVIM_VERSION}/nvim-linux64.tar.gz

tar -zvxf ${APPS_DIR}/neovim/neovim.tar.gz -C ${APPS_DIR}/neovim/ 1>/dev/null
mv --force ${APPS_DIR}/neovim/nvim-linux64/* ${APPS_DIR}/neovim 
chmod +x ${APPS_DIR}/neovim/bin/nvim
ln -sf ${APPS_DIR}/neovim/bin/nvim ${APPS_DIR}/neovim/bin/neovim 
ln -sf ${APPS_DIR}/neovim/bin/nvim ${APPS_DIR}/neovim/bin/vim 

rm -rf ${APPS_DIR}/neovim/neovim.tar.gz
rm -rf ${APPS_DIR}/neovim/nvim-linux64/

# ---
mkdir -p $APPS_DIR/lazygit/bin
curl -L -o ${APPS_DIR}/lazygit/lazygit.tar.gz https://github.com/jesseduffield/lazygit/releases/download/v${LAZYGIT_VERSION}/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz

tar -zvxf ${APPS_DIR}/lazygit/lazygit.tar.gz -C ${APPS_DIR}/lazygit/bin/ 1>/dev/null
chmod +x ${APPS_DIR}/lazygit/bin/lazygit
ln -sf ${APPS_DIR}/lazygit/bin/lazygit ${APPS_DIR}/lazygit/bin/lzg 

rm -rf ${APPS_DIR}/lazygit/lazygit.tar.gz
