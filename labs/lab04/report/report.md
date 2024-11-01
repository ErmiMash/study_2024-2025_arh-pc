---
## Front matter
title: "Лабораторная работа №4"
subtitle: "Архитектура компьютеров"
author: "Ермишина Мария Кирилловна"

## Generic otions
lang: ru-RU
toc-title: "Содержание"

## Bibliography
bibliography: bib/cite.bib
csl: pandoc/csl/gost-r-7-0-5-2008-numeric.csl

## Pdf output format
toc: true # Table of contents
toc-depth: 2
lof: true # List of figures
lot: true # List of tables
fontsize: 12pt
linestretch: 1.5
papersize: a4
documentclass: scrreprt
## I18n polyglossia
polyglossia-lang:
  name: russian
  options:
	- spelling=modern
	- babelshorthands=true
polyglossia-otherlangs:
  name: english
## I18n babel
babel-lang: russian
babel-otherlangs: english
## Fonts
mainfont: PT Serif
romanfont: PT Serif
sansfont: PT Sans
monofont: PT Mono
mainfontoptions: Ligatures=TeX
romanfontoptions: Ligatures=TeX
sansfontoptions: Ligatures=TeX,Scale=MatchLowercase
monofontoptions: Scale=MatchLowercase,Scale=0.9
## Biblatex
biblatex: true
biblio-style: "gost-numeric"
biblatexoptions:
  - parentracker=true
  - backend=biber
  - hyperref=auto
  - language=auto
  - autolang=other*
  - citestyle=gost-numeric
## Pandoc-crossref LaTeX customization
figureTitle: "Рис."
tableTitle: "Таблица"
listingTitle: "Листинг"
lofTitle: "Список иллюстраций"
lotTitle: "Список таблиц"
lolTitle: "Листинги"
## Misc options
indent: true
header-includes:
  - \usepackage{indentfirst}
  - \usepackage{float} # keep figures where there are in the text
  - \floatplacement{figure}{H} # keep figures where there are in the text
---

# Цель работы

Целью работы является освоение процедуры компиляции и сборки программ, написанных на ассемблере NASM.

# Выполнение лабораторной работы

## Программа Hello world!

Создаю каталог lab04 командой `mkdir`, перехожу в него с помощью команды `cd`, создаю файл `hello.asm`.

![Создание каталога и файла](image/01.png){ #fig:001 width=70%, height=70% }

Открываю файл и пишу код программы по заданию.

![Программа hello.asm](image/02.png){ #fig:002 width=70%, height=70% }

## Транслятор NASM 

Транслирую файл командой `nasm`. Получился объектный файл `hello.o`.

![Трансляция hello.asm](image/03.png){ #fig:003 width=70%, height=70% }

Транслирую файл командой `nasm` с дополнительными опциями. Получился файл листинга `list.lst`, объектный файл `obj.o`, и в программу добавилась отладочная информация.

![Трансляция hello.asm с дополнительными опциями](image/04.png){ #fig:004 width=70%, height=70% }

## Компоновщик LD

Выполняю линковку командой `ld` и получаю исполняемый файл.

![Линковка программы](image/05.png){ #fig:005 width=70%, height=70% }

Еще раз выполняю линковку для объектного файла `obj.o` и получаю исполняемый файл `main`.

![Линковка программы](image/06.png){ #fig:006 width=70%, height=70% }

Запускаю исполняемые файлы.

![Запуск программ](image/07.png){ #fig:007 width=70%, height=70% }

## Выполнение заданий для самостоятельной работы.

Копирую программу в новый файл, изменяю сообщение Hello world на свое имя и запускаю новую программу.

![Код программы в файле lab4.asm](image/08.png){ #fig:008 width=70%, height=70% }

![Запуск программы lab4.asm](image/09.png){ #fig:009 width=70%, height=70% }

# Выводы

При выполнении данной лабораторной работы освоили процесс компиляции и сборки программ, написанных на ассемблере nasm.