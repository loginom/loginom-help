# Синтаксис регулярного выражения

При замене значений, не найденных при помощи таблицы замен, используется зарезервированное обозначение "$1". В строке, задающей новое значение, символы "$1" будут заменены на исходное значение.

Пример:

<table>
 <tr><th>Исходные данные</th><th>Значения полей таблицы замен:</th><th>Результат замены</th></tr>

 <tr><td>40147000</td><td rowspan="4" valign="top">БИК $1 указывается в платежном поручении</td><td>БИК 40147000 указывается в платежном поручении</td></tr>
 <tr><td>40147781</td><td>БИК 40147781 указывается в платежном поручении</td></tr>
 <tr><td>40155000</td><td>БИК 40155000 указывается в платежном поручении</td></tr>
 <tr><td>40173001</td><td>БИК 40173001 указывается в платежном поручении</td></tr>
</table>