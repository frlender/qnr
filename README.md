# qnr
###Pythonic module import

This function allows you to import a R file as a module like in python
so that its content won't contaminate your working environment.

#####Examples
```R
module <- import('xxx.R')
module <- import(xxx.R)
module <- import('xxx')
module <- import(xxx)
```
Then any functions attached to the module (written in the xxx.R file) can be called in the way:
```R
module$func()
```

