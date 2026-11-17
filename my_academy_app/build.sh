#!/bin/bash
set -e
FLUTTER_VERSION="3.38.4"

echo "=========================================="
echo " Starting Quaid Academy Vercel Web Build  "
echo "=========================================="

# 1. Clone Flutter SDK if not cached
if [ ! -d "flutter" ]; then
  echo "--> Cloning Flutter SDK $FLUTTER_VERSION..."
  git clone https://github.com/flutter/flutter.git -b "$FLUTTER_VERSION" --depth 1
else
  echo "--> Flutter SDK already exists. Checking out $FLUTTER_VERSION..."
  git -C flutter fetch --depth 1 origin "refs/tags/$FLUTTER_VERSION:refs/tags/$FLUTTER_VERSION"
  git -C flutter checkout "$FLUTTER_VERSION"
fi

# 2. Setup PATH
export PATH="$(pwd)/flutter/bin:$PATH"

# 3. Disable telemetry & print version
flutter config --no-analytics
flutter --version

# 4. Get pub dependencies
echo "--> Installing dependencies via pub get..."
flutter pub get

# 5. Build Web Release
echo "--> Building Flutter Web Release..."
flutter build web --release --no-tree-shake-icons

echo "=========================================="
echo " Flutter Web Build Completed Successfully! "
echo "=========================================="
