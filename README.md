# point_treat
アプリ「point&amp;treat!」開発リポジトリ

# 設計ドキュメント
https://www.notion.so/Point-Treat-a62381e399124852b71aae231a1c3870

# melos コマンド

本プロジェクトはmulti package（Monorepo）で構築してます。
package管理としてmelosを採用しており、開発におけるmelosコマンドは下記の通りです。

```
// package含む全てを初期化
melos bootstrap

// package含む全てをclean
melos clean

// TODO: package含む全てのtest実行
```
