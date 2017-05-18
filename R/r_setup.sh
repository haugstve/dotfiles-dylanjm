#!/bin/sh
#
# R Setup
#
# This is an R setup and installation script for dylanjm/dotfiles.
# This downloads and sets up R, Rstudio, and all the compiliers not default on macOS

set -e

# Check for xcode-CLT
if test ! $(xcode-select -p)
then
  echo "  Installing Xcode Command Line Tools for you."
  xcode-select --install
fi

# Check for Homebrew
if test ! $(which brew)
then
  echo "  Installing Homebrew for you."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

cd "$(dirname "$0")"

TAPS=(
    homebrew/science
)

FORMULAS=(
    gcc --without-multilib
    ccache
    cmake
    pkg-config
    autoconf
    automake
    freetype
    fontconfig
    pixman
    gettext
    openssl
    libressl
    libssh2
    icu4c
    libxml2
    libiconv
    libxslt
    boost --with-icu4c --with-mpi --without-single
    gpg2 --with-readline
    gpgme
    cairo
    libsvg
    librsvg
    pandoc
    openblas --with-openmp
    eigen
    veclibfort
    armadillo --with-hdf5
    v8-315
    r --with-openblas --with-pango
    mlpack
    gsl
    libyaml
)

CASKS=(
    java
    xquartz
    rstudio
)

for tap in ${TAPS[@]}
do
    brew tap $tap
done

brew cask install ${CASKS[@]}

brew install ${FORMULAS[@]}

R CMD javareconf JAVA_CPPFLAGS=-I/System/Library/Frameworks/JavaVM.framework/Headers

cd /usr/local/bin
ln -s gcov-6 gcov
ln -s gcc-6 gcc
ln -s g++-6 g++
ln -s cpp-6 cpp
ln -s c++-6 c++
cd -

# Setup $HOME/.r/Makevars file to properly link against homebrew packages.
mkdir $HOME/.r
cat > $HOME/.r/Makevars << END
CC=ccache clang
CXX=ccache clang++
SHLIB_CXXLD=ccache clang++
FC=gfortran-6
F77=gfortran-6
MAKE=make -j8
PKG_CONFIG_PATH=/usr/local/lib/pkgconfig:/opt/X11/lib/pkgconfig:/usr/local/opt/icu4c/lib/pkgconfig

PKG_LIBS += -L/usr/local/opt/icu4c/lib -L/usr/local/lib
END

brew cleanup

brew cask cleanup

exit
