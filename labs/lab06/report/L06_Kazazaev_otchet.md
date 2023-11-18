---
## Front matter
title: "Отчет по лабораторной работе № 6"
subtitle: "Дисциплина: архитектура компьютеров"
author: "Казазаев Даниил Михайлович"

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
lot: false # List of tables
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

Целью работы является освоение арифметических инструкций языка ассемблера NASM.

# Задания Лабораторной работы

1. Создать файл lab6-1.asm.
2. Отредактировать файл lab6-1.asm.
3. Трансилровать файл lab6-1.asm в объектный файл и запустить его.
4. Изменить текст программы.
5. Трансилровать отредактированный файл lab6-1.asm в объектный файл и запустить его.
6. Создать файл lab6-2.asm.
7. Отредактировать файл lab6-2.asm.
8. Трансилровать файл lab6-1.asm в объектный файл и запустить его.
9. Сделать аналогично файлу lab6-1.asm
10. Создать файл lab6-3.asm.
11. Отредактировать файл lab6-3.asm для вычисления функции (5 * 2 + 3)/3.
12. Трансилровать отредактированный файл lab6-3.asm в объектный файл и запустить его.
13. Отредактировать файл lab6-3.asm для вычисления функции (4 * 6 + 2)/5.
14. Трансилровать отредактированный файл lab6-3.asm в объектный файл и запустить его.
15. Создать файл variant.asm.
16. Отредактировать файл variant.asm, чтобы получить номер варианта для самостоятьной работы.
17. Трансилровать файл variant.asm в объектный файл и запустить его.
18. Ответить на вопросы, связанные с файлом variant.asm.
# Задания Самостоятельной работы
1. Написать программу вычисления выражения 𝑦 = 𝑓(𝑥). 

# Выполнение лабораторной работы

Создаю файл lab6-1.asm. (рис. [-@fig:001])

![Создание файла lab6-1.asm](image/1.png){#fig:001 width=70%}

Редактирую файл lab6-1.asm. (рис. [-@fig:002])

![Редактирование файла lab6-1.asm](image/2.png){#fig:002 width=70%}

Транислирую файл lab6-1.asm в объектный файл, после чего запускаю его. (рис. [-@fig:003])

![Трансляция и запуск файла lab6-1.asm](image/3.png){#fig:003 width=70%}

Немного редактирую файл lab6-1.asm. (рис. [-@fig:004])

![Редактирование файла lab6-1.asm](image/4.png){#fig:004 width=70%}

Транислирую файл lab6-1.asm в объектный файл, после чего запускаю его. (рис. [-@fig:005])

![Трансляция и запуск файла lab6-1.asm](image/5.png){#fig:005 width=70%}

Созадю файл lab6-2.asm. (рис. [-@fig:006])

![Создание файла lab6-2.asm](image/6.png){#fig:006 width=70%}

Редактирую файл lab6-2.asm. (рис. [-@fig:007])

![Редактирование файла lab6-2.asm](image/7.png){#fig:007 width=70%}

Транислирую файл lab6-2.asm в объектный файл, после чего запускаю его. (рис. [-@fig:008])

![Трансляция и запуск файла lab6-2.asm](image/8.png){#fig:008 width=70%}

Редактирую файл. (рис. [-@fig:009])

![Редактирование файла](image/9.png){#fig:009 width=70%}

Транислирую файл lab6-2.asm в объектный файл, после чего запускаю его. (рис. [-@fig:010])

![Трансляция и запуск файла](image/10.png){#fig:010 width=70%}

Меняю sprintLF на sprint в файле lab6-2.asm. (рис. [-@fig:011])

![Редактирование файла lab6-2.asm](image/11.png){#fig:011 width=70%}

Транислирую файл lab6-2.asm в объектный файл, после чего запускаю его. (рис. [-@fig:012])

![Трансляция и запуск файла](image/12.png){#fig:012 width=70%}

Отличие заключается в том, что с использованием sprintLF ввод происходит с новой строки, а при использовании sprint ввод продолжается на той же строке, на которой находится надпись, выведенная программой 

Создаю файл lab6-3.asm. (рис. [-@fig:013])

![Создание файла lab6-3.asm](image/13.png){#fig:013 width=70%}

Редактирую файл lab6-3.asm для вычисления функции (5 * 2 + 3)/3. (рис. [-@fig:014])

![Редактирование файла](image/14.png){#fig:014 width=70%}

Транислирую файл lab6-3.asm в объектный файл, после чего запускаю его. (рис. [-@fig:015])

![Трансляция и запуск файла](image/15.png){#fig:015 width=70%}

Редактирую файл lab6-3.asm для вычисления функции (4 * 6 + 2)/5. (рис. [-@fig:016])

![Редактирую файл](image/16.png){#fig:016 width=70%}

Транислирую файл lab6-3.asm в объектный файл, после чего запускаю его. (рис. [-@fig:017])

![Трансляция и запуск файла](image/17.png){#fig:017 width=70%}

Создаю файл variant.asm. (рис. [-@fig:018])

![Созадние файла variant.asm](image/18.png){#fig:018 width=70%}

Редактирую файл variant.asm. (рис. [-@fig:019])

![Редактирую файл](image/19.png){#fig:019 width=70%}

Транислирую файл variant.asm в объектный файл, после чего запускаю его, чтобы получить номер варианта. (рис. [-@fig:020])

![Трансляция и запуск файла](image/20.png){#fig:020 width=70%}

## Ответы на вопросы

1. Какие строки листинга 6.4 отвечают за вывод на экран сообщения ‘Ваш вариант:’?

Ответ:
```
mov eax,rem
call sprint
```

2. Для чего используется следующие инструкции?

```
mov ecx, x
mov edx, 80
call sread
```

Ответ:
Инструкция ```mov ecx, x``` используется, чтобы положить адрес вводимой строки x в регистр ecx, ```mov edx, 80``` - запись в регистр edx длины вводимой строки, ```call sread``` - вызов подпрограммы из внешнего файла, обеспечивающей ввод сообщения с клавиатуры

3. Для чего используется инструкция “call atoi”?

Ответ:
С помощью “call atoi” мы вызываем функцию atoi, которая преобразует ascii-код символа в целое число и записывает результат в регистр eax (перед вызовом atoi в регистр eax необходимо записать число). 

4. Какие строки листинга 6.4 отвечают за вычисления варианта?

Ответ:
```
xor edx,edx
mov ebx,20
div ebx
inc edx
```

5. В какой регистр записывается остаток от деления при выполнении инструкции “div ebx”?

Ответ:

Остаток запиысвается в регистр edx.

6. Для чего используется инструкция “inc edx”?

Ответ:

Для того, чтобы инкрементировать значение в регистре edx.

7. Какие строки листинга 6.4 отвечают за вывод на экран результата вычислений?

Ответ:
```
mov eax,edx
call iprintLF
```

# Выполнение самостоятельной работы

После выполнения прошлой программы я получил вариант 8.

Создаю файл х.asm, в котором буду выполнять задание. (рис. [-@fig:021])

![Созадние файла ъ.asm](image/21.png){#fig:021 width=70%}

Редактирую файл х.asm. (рис. [-@fig:022])

![Редактирую файл](image/22.png){#fig:022 width=70%}

Транислирую файл х.asm в объектный файл, после чего запускаю его. (рис. [-@fig:023])

![Трансляция и запуск файла](image/23.png){#fig:023 width=70%}

Листинг файла х

```
%include 'in_out.asm'

SECTION .data

msg: DB 'Введите значение х: ',0
rem: DB 'Ответ: ',0

SECTION .bss
x: RESB 80

SECTION .text
GLOBAL _start
_start:

mov eax,msg
call sprintLF

mov ecx,x
mov edx, 80
call sread

mov eax, x
call atoi

add eax, 11
mov ebx, 2
mul ebx
sub eax, 6
mov edx,eax

mov eax,rem
call sprint
mov eax,edx
call iprintLF

call quit
```

# Вывод

При выполнении данной лаборатной работы я освоил арифметические инструкции языка ассемблера NASM.

