# CI
Para crear la imagen realizar commit al repor o un pull-request y generar el tag.

```
git tag v0.0.1 -m "Primera versión"
git push --tags
```
ó

```
git commit ...
git tag v0.0.1 -m "version 0.0.1"
git push origin master --tags
```
