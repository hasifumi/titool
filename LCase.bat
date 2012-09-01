@echo off
set env=%*
for %%i in (a b c d e f g h i j k l m n o p q r s t u v w x y z) do call set env=%%env:%%i=%%i%%
echo %env%
