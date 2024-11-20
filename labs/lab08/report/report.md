---
## Front matter
title: "Отчёт по лабораторной работе 8"
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

Целью работы является приобретение навыков написания программ с использованием циклов и обработкой аргументов командной строки..

# Выполнение лабораторной работы

## Реализация циклов в NASM

Создала каталог для программам лабораторной работы № 8 и файл lab8-1.asm (рис. [-@fig:001])

![Создан каталог](image/01.png){ #fig:001 width=70%, height=70% }

При реализации циклов в NASM с использованием инструкции loop необходимо помнить
о том, что эта инструкция использует регистр ecx в качестве счетчика и на каждом шаге
уменьшает его значение на единицу. В качестве примера рассмотрим программу, которая
выводит значение регистра ecx. 

Написала в файл lab8-1.asm текст программы из листинга 8.1. (рис. [-@fig:002])
Создала исполняемый файл и проверила его работу. (рис. [-@fig:003])

![Программа lab8-1.asm](image/02.png){ #fig:002 width=70%, height=70% }

![Запуск программы lab8-1.asm](image/03.png){ #fig:003 width=70%, height=70% }

Данный пример показывает, что использование регистра ecx в теле цилка
loop может привести к некорректной работе программы. 
Изменяю текст программы, добавив изменение значение регистра ecx в цикле. (рис. [-@fig:004])
Программа запускает бесконечный цикл при нечетном N и выводит только нечетные числа при четном N. (рис. [-@fig:005])

![Программа lab8-1.asm](image/04.png){ #fig:004 width=70%, height=70% }

![Запуск программы lab8-1.asm](image/05.png){ #fig:005 width=70%, height=70% }

Для использования регистра ecx в цикле и сохранения корректности работы программы можно использовать стек. Внес изменения в текст программы
добавив команды push и pop (добавления в стек и извлечения из стека) для сохранения значения счетчика цикла loop. (рис. [-@fig:006])
Создаю исполняемый файл и проверяю его работу. (рис. [-@fig:007])
Программа выводит числа от N-1 до 0, число проходов цикла соответсвует N.

![Программа lab8-1.asm](image/06.png){ #fig:006 width=70%, height=70% }

![Запуск программы lab8-1.asm](image/07.png){ #fig:007 width=70%, height=70% }

Создала файл lab8-2.asm в каталоге ~/work/arch-pc/lab08 и написала в него текст программы из листинга 8.2. (рис. [-@fig:008])
Компилирую исполняемый файл и запускаю его, указав аргументы.
Программа обработала 4 аргумента. Аргументами считаются слова/числа, разделенные пробелом. (рис. [-@fig:009])

![Программа lab8-2.asm](image/08.png){ #fig:008 width=70%, height=70% }

![Запуск программы lab8-2.asm](image/09.png){ #fig:009 width=70%, height=70% }

Рассмотрим еще один пример программы, которая выводит сумму чисел,
которые передаются в программу как аргументы. (рис. [-@fig:010]) (рис. [-@fig:011])

![Программа lab8-3.asm](image/10.png){ #fig:010 width=70%, height=70% }

![Запуск программы lab8-3.asm](image/11.png){ #fig:011 width=70%, height=70% }

Изменю текст программы из листинга 8.3 для вычисления произведения
аргументов командной строки. (рис. [-@fig:012]) (рис. [-@fig:013])

![Программа lab8-3.asm](image/12.png){ #fig:012 width=70%, height=70% }

![Запуск программы lab8-3.asm](image/13.png){ #fig:013 width=70%, height=70% }

## Самостоятельное задание

Напишите программу, которая находит сумму значений функции 
$f(x)$ для $x = x_1, x_2, ..., x_n$, т.е. программа должна выводить значение 
$f(x_1) + f(x_2)+ ... +f(x_n)$. 
Значения $x$ передаются как аргументы. 
Вид функции $f(x)$ выбрать из таблицы 8.1 вариантов заданий в соответствии с вариантом, 
полученным при выполнении лабораторной работы № 7. 
Создайте исполняемый файл и проверьте его работу на нескольких наборах $x$.(рис. [-@fig:014]) (рис. [-@fig:015])

для варианта 7 $$f(x) = 3(x + 2)$$ 

![Программа lab8-task1.asm](image/14.png){ #fig:014 width=70%, height=70% }

![Запуск программы lab8-task1.asm](image/15.png){ #fig:015 width=70%, height=70% }

Убедились, что программа считает правильно $f(0)=6, f(2)=12$.

# Выводы

Освоили работы со стеком, циклом и аргументами на ассемблере nasm.