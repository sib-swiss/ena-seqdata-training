

WORKDIR=/Users/geertvangeest/Documents/repositories/ena-seqdata-training/reads

cd "$WORKDIR"

java -jar webin-cli-6.4.1.jar \
-context reads \
-userName Webin-57046 \
-password "$WEBIN_PW" \
-manifest ../scripts/manifest_LIS001.json \
-outputDir . \
-validate \
-submit \
-test
