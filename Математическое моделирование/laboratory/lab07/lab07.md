---

# Front matter
lang: ru-RU
title: "Лабораторная работа №7"
subtitle: "Эффективность рекламы"
author: "Аль-Дорихим Рамзи Авад"

# Formatting
toc-title: "Содержание"
toc: true # Table of contents
toc_depth: 2
lof: true # List of figures
lot: true # List of tables
fontsize: 12pt
linestretch: 1.5
papersize: a4paper
documentclass: scrreprt
polyglossia-lang: russian
polyglossia-otherlangs: english
mainfont: PT Serif
romanfont: PT Serif
sansfont: PT Sans
monofont: PT Mono
mainfontoptions: Ligatures=TeX
romanfontoptions: Ligatures=TeX
sansfontoptions: Ligatures=TeX,Scale=MatchLowercase
monofontoptions: Scale=MatchLowercase
indent: true
pdf-engine: lualatex
header-includes:
  - \linepenalty=10 # the penalty added to the badness of each line within a paragraph (no associated penalty node) Increasing the value makes tex try to have fewer lines in the paragraph.
  - \interlinepenalty=0 # value of the penalty (node) added after each line of a paragraph.
  - \hyphenpenalty=50 # the penalty for line breaking at an automatically inserted hyphen
  - \exhyphenpenalty=50 # the penalty for line breaking at an explicit hyphen
  - \binoppenalty=700 # the penalty for breaking a line at a binary operator
  - \relpenalty=500 # the penalty for breaking a line at a relation
  - \clubpenalty=150 # extra penalty for breaking after first line of a paragraph
  - \widowpenalty=150 # extra penalty for breaking before last line of a paragraph
  - \displaywidowpenalty=50 # extra penalty for breaking before last line before a display math
  - \brokenpenalty=100 # extra penalty for page breaking after a hyphenated line
  - \predisplaypenalty=10000 # penalty for breaking before a display
  - \postdisplaypenalty=0 # penalty for breaking after a display
  - \floatingpenalty = 20000 # penalty for splitting an insertion (can only be split footnote in standard LaTeX)
  - \raggedbottom # or \flushbottom
  - \usepackage{float} # keep figures where there are in the text
  - \floatplacement{figure}{H} # keep figures where there are in the text
---

# Цель работы

1. Рассмотреть модель эффективности рекламы в разных случаях.
2. Сравнить решения, учитывающее вклад только платной рекламы и учитывающее вклад только сарафанного радио.

# Задание №43

Постройте график распространения рекламы, математическая модель которой описывается следующим уравнением:

- $$
  \frac{\partial n}{\partial t} = (0.211 + 0.000011n(t))(N - n(t))
  $$

  

- $$
  \frac{\partial n}{\partial t} = (0.0000311 + 0.2n(t))(N - n(t))
  $$

  

- $$
  \frac{\partial n}{\partial t} = (0.511sin(t) + 0.311sin(t)n(t))(N - n(t))
  $$

  

При этом объем аудитории N = 3310 , в начальный момент о товаре знает 22 человек. Для случая 2 определите в какой момент времени скорость распространения рекламы будет иметь максимальное значение.

# Краткая теоретическая справка

Организуется рекламная кампания нового товара или услуги. Необходимо, чтобы прибыль будущих продаж с избытком покрывала издержки на рекламу. Вначале расходы могут превышать прибыль, поскольку лишь малая часть потенциальных покупателей будет информирована о новинке. Затем, при увеличении числа продаж, возрастает и прибыль, и, наконец, наступит момент, когда рынок насытится, и рекламировать товар станет бесполезным.

Предположим, что торговыми учреждениями реализуется некоторая продукция, о которой в момент времени $t$ из числа потенциальных покупателей $N$ знает лишь $n$ покупателей. Для ускорения сбыта продукции запускается реклама по радио, телевидению и других средств массовой информации. После запуска рекламной кампании информация о продукции начнет распространяться среди потенциальных покупателей путем общения друг с другом. Таким образом, после запуска рекламных объявлений скорость изменения числа знающих о продукции людей пропорциональна как числу знающих о товаре покупателей, так и числу покупателей о нем не знающих.

Модель рекламной кампании описывается следующими величинами. Считаем, что
$$
\frac{\partial n}{\partial t}
$$
— скорость изменения со временем числа потребителей, узнавших о товаре и готовых его купить;

t — время, прошедшее с начала рекламной кампании;

n(t)— число уже информированных клиентов. Эта величина пропорциональна числу покупателей, еще не знающих о нем. Это описывается следующим образом:
$$
\alpha_1(t)(N-n(t)) 
$$
N — общее число потенциальных платежеспособных покупателей;
$$
\alpha_1(t)>0
$$
 — характеризует интенсивность рекламной кампании (зависит от затрат на рекламу в данный момент времени).

Помимо этого, узнавшие о товаре потребители также распространяют полученную информацию среди потенциальных покупателей, не знающих о нем (в этом случае работает т.н. сарафанное радио). Этот вклад в рекламу описывается величиной
$$
\alpha_2(t)n(t)(N-n(t))
$$
эта величина увеличивается с увеличением потребителей узнавших о товаре.

Математическая модель распространения рекламы описывается уравнением:
$$
\frac{\partial n}{\partial t} = (\alpha_1(t) + \alpha_2(t)n(t))(N - n(t))
$$

# Выполнение лабораторной работы

**Случай 1:  a1>a2**

model lab07

constant Real N = 3310; 

Real a1; 
Real a2; 
Real n; 

initial equation
n = 22; 

equation
a1 = 0.211; 
a2 = 0.000011; 
der(n) = (a1+a2*n)*(N-n); 

end lab07;

<figure>
    <img src = image\1.JPG alt = "a1>>a2">
    <figcaption>рис.01</figcaption>
</figure>



**Случай 2:  a1<a2**

model lab7
constant Real N = 3310; 

Real a1; 
Real a2; 
Real n; 

initial equation
  n = 22; 

equation
  a1 = 0.0000311; 
  a2 = 0.2; 
  der(n) = (a1+a2*n)*(N-n); 
end lab7;

<figure>
    <img src = image\2.JPG alt = "a1<<a2">
    <figcaption>рис.02</figcaption>
</figure>

Максимальное значение n достигается при time  = 0.02.



**Случай 3:  a1≈a2**

constant Real N = 3310; 

  Real a1; 
  Real a2; 
  Real n; 

initial equation
  n = 22; 

equation
  a1 = 0.511*sin(time); 
  a2 = 0.311*sin(time); 
  der(n) = (a1+a2*n)*(N-n); 



<figure>
    <img src = image\3.JPG alt = "a1=a2">
    <figcaption>рис.02</figcaption>
</figure>

Максимальное значение достигается при time = 0.19.



**Сравнение  эффективности сарафанного радио и платной рекламы**

<figure>
    <img src = image\4.JPG alt = "a1=a2">
    <figcaption>рис.02</figcaption>
</figure>
## Вопросы к лабораторной

**Записать модель Мальтуса (дать пояснение, где используется данная модель)**
$$
 \frac{\partial N}{\partial t} = rN
$$
где

- N — исходная численность населения,
- r — коэффициент пропорциональности, для которого r = b - d, где
  - b — коэффициент рождаемости
  - d — коэффициент смертности
- t — время.

Модель используется в экологии для расчета изменения популяции особей животных.

**Записать уравнение логистической кривой (дать пояснение, что описывает данное уравнение)**
$$
\frac{\partial P}{\partial t} = rP(1 - \frac{P}{K})
$$


- r — характеризует скорость роста (размножения)
- K — поддерживающая ёмкость среды (то есть, максимально возможная численность популяции)

Исходные предположения для вывода уравнения при рассмотрении популяционной динамики выглядят следующим образом:

- скорость размножения популяции пропорциональна её текущей численности, при прочих равных условиях;
- скорость размножения популяции пропорциональна количеству доступных ресурсов, при прочих равных условиях. Таким образом, второй член уравнения отражает конкуренцию за ресурсы, которая ограничивает рост популяции.

**На что влияет коэффициент **
$$
\alpha_1(t)
$$
**и** 
$$
\alpha_2(t)
$$
 **в модели распространения рекламы****
$$
\alpha_1(t)
$$
 — интенсивность рекламной кампании, зависящая от затрат
$$
\alpha_2(t)
$$
— интенсивность рекламной кампании, зависящая от сарафанного радио



# Вывод

1. Рассмотрел модель эффективности рекламы в разных случаях.
2. Сравнил решения, учитывающее вклад только платной рекламы и учитывающее вклад только сарафанного радио.

# Список литературы

Кулябов Д.С "Лабораторная работа №7":https://esystem.rudn.ru/pluginfile.php/1343821/mod_resource/content/2/Лабораторная%20работа%20№%206.pdf
