HUGO setup

First we need hugo to support pandoc because pandoc get much better math formula render than other render tools.

Second we need extentions. So we need to build hugo with parameter `go build --tag extend` . This will make hugo support extensions.

I want hugo can regonize folder name as catergories instead of specific category in each markdown. But unfortunately hugo did not support this function. So I will write a program to modify the categories automatically make it support by hugo category.

Old code in pastern 