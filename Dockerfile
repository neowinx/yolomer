FROM         base/archlinux

MAINTAINER   Pedro Flores <pflores@codelab.com.py>

RUN          pacman -Sy --noconfirm && \
             pacman-key --refresh-keys && \
             pacman-db-upgrade && \
             pacman -S --noconfirm nodejs npm openssl git && \
             pacman -Scc --noconfirm && \
             mkdir "${HOME}/.npm-packages" && \
             export NPM_PACKAGES="${HOME}/.npm-packages" && \
             echo "NPM_PACKAGES=\"${HOME}/.npm-packages\"" >> "${HOME}/.bashrc" && \
             echo "prefix=${HOME}/.npm-packages" >> "${HOME}/.npmrc" && \
             echo "NODE_PATH=\"$NPM_PACKAGES/lib/node_modules:$NODE_PATH\"" >> "${HOME}/.bashrc" && \
             echo "PATH=\"$NPM_PACKAGES/bin:$PATH\"" >> "${HOME}/.bashrc" && \
             echo "unset MANPATH" >> "${HOME}/.bashrc" && \
             npm install --global npm@latest && \
             npm install --global yo bower grunt-cli
             # Man no se encuentra instalado por defecto en la imagen docker de base/arch, se ignora esta parte
             # echo "MANPATH=\"$NPM_PACKAGES/share/man:$(manpath)\"" >> "${HOME}/.bashrc"

ENTRYPOINT   /bin/bash
