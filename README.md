# satni

A flutter frontend for Divvun's GraphQL [dictionary and term api backend](https://github.com/divvun/satni-backend).

## Build and deploy for web

1. `flutter build web --release --base-href /flutter/`
1. `rsync -vaz  --info=progress2 --delete build/web/* <host>:<web-directory>/flutter/`
