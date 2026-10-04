#!/usr/bin/env bash
set -euo pipefail

PIN="d949bd75870bfd49f6d12b297e6cca02de107f9c"
RAW="https://raw.githubusercontent.com/GeoGeekLab/GeoGeekLab.github.io/${PIN}/site"

rm -rf _site
mkdir -p _site/runtime
cp index.html README.md PRODUCTION.md _site/
touch _site/.nojekyll

curl --fail --silent --show-error --location --retry 3 \
  "${RAW}/flow-lab.js" \
  --output _site/runtime/flow-lab.js

test -s _site/runtime/flow-lab.js
grep -q 'window.GeoFlowLab' _site/runtime/flow-lab.js
if grep -R -q 'cdn.jsdelivr.net/gh/GeoGeekLab/GeoGeekLab.github.io' _site; then
  echo 'Runtime still depends on the GeoGeek main-site CDN.' >&2
  exit 1
fi

(
  cd _site
  find runtime -type f -print0 | sort -z | xargs -0 sha256sum > runtime-manifest.sha256
)
