#!/bin/sh

HEADLESS_DIR=/app/headless

/app/depotdl/DepotDownloader -username ${STEAM_USER} -password "${STEAM_PASS}" -app 2519830 -beta ${STEAM_BRANCH} -betapassword "${BETA_CODE}" -dir "/app/headless" -osarch 64

rsync -acL /app/libs/ /app/headless/Headless



