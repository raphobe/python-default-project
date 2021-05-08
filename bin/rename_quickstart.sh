#! /bin/bash -xe

name="$1"

grep -R QuickStart src | cut -f1 -d':' | sort | uniq | xargs -I{} sh -c "sed -i 's/QuickStart/$name/g' {}"

lowercaseName="$(echo $name | tr '[:upper:]' '[:lower:]')"
grep -R quickstart src | cut -f1 -d':' | sort | uniq | xargs -I{} sh -c "sed -i 's/quickstart/$lowercaseName/g' {}"
git mv src/test/quickstart/quickstart_test.py src/test/quickstart/"$lowercaseName"_test.py
git mv src/test/quickstart src/test/$lowercaseName
git mv src/main/quickstart/quickstart.py src/main/quickstart/"$lowercaseName".py
git mv src/main/quickstart src/main/$lowercaseName

