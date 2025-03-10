# resume

LaTeX template for my personal resume

Based off of [sb2nov/resume](https://github.com/sb2nov/resume/)

### Build ENG using Docker

```sh
docker build -t latex .
docker run --rm -v "$PWD":/data latex pdflatex resume_eng.tex
```

### Build RUS using Docker

```sh
docker build -t latex .
docker run --rm -v "$PWD":/data latex pdflatex resume_rus.tex
```
