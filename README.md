## Type 3 font pdf
The submission system often requires the pdf to be type 1 font only. But the
included images could have type 3 fonts built in. Use the following command to
convert it to type 1 font image:
```
gs -sDEVICE=epswrite -dNOCACHE -sOutputFile=<Filename> -q -dbatch -dNOPAUSE
<Input Filename> -c quit
```
