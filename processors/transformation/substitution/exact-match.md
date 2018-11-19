# Замена по точному совпадению

Поле `Значение` таблицы замен содержит значения, подлежащие замене. Алгоритм ищет точное совпадение исходных данных со значениями данного поля. Если такое совпадение находится, то оно заменяется на значение поля `Замена`.

Пример:

<table> 
<thead>
<tr><th>Значение исходных данных</th><th colspan="2">Значения строк таблицы замен</th><th>Совпадение</th><th>Новое значение</th></tr>
</thead>
<tbody>
<tr><td> </td><th>поле<br>"Замена"</th><th>поле<br>"Значение"</th><td> </td><td> </td></tr>
<tr><td rowspan="5" valign="top" align="right">48</td><td align="right">12</td><td align="left">"Плохо"</td><td>Нет</td><td rowspan="5" valign="top" align="left">"Отлично"</td></tr>
<tr><td align="right">24</td><td align="left">"Удовлетворительно"</td><td>Нет</td></tr>
<tr><td align="right">36</td><td align="left">"Хорошо"</td><td>Нет</td></tr>
<tr><td align="right">48</td><td align="left">"Отлично"</td><td>Да</td></tr>
<tr><td align="right">60</td><td align="left">"Восхитительно"</td><td>Нет</td></tr>
</tbody>
</table>

## Применение допустимого интервала

При поиске среди вещественных и целых данных в дополнительных параметрах мастера возможно указание допустимого интервала поиска. В случае, если с учетом интервала будут найдены несколько совпадений, то применяться будет наиболее близкое к исходному.

Пример:

<table>
<thead>
<tr><th>Значение исходных данных</th><th colspan="2">Значения строк таблицы замен </th><th>Допустимый интервал</th><th>Интервал совпадения</th><th>Совпадение</th><th>Наиболее близкое к исходному</th><th>Новое значение</th></tr>
</thead>
<tbody>
<tr><th></th><th>поле<br>"Замена"</th><th>поле<br>"Значение" </th><th></th><th></th><th></th><th></th><th></th></tr>
<tr><td rowspan="5" valign="top" align="right">50</td><td align="right">12</td><td>"Плохо"</td><td rowspan="5" valign="top" align="right">20</td><td>от -8 до 32</td><td>Нет</td><td>Нет</td><td rowspan="5" valign="top" align="center">"Отлично"</td></tr>
<tr><td align="right">24</td><td>"Удовлетворительно"</td></td><td> от 4 до 44</td><td>Нет</td><td>Нет</td></tr>
<tr><td align="right">36</td><td>"Хорошо"</td></td><td>от 16 до 56</td><td>Да</td><td>Нет</td></tr>
<tr><td align="right">48</td><td>"Отлично"</td></td><td>от 28 до 68</td><td>Да</td><td>Да</td></tr>
<tr><td align="right">60</td><td>"Восхитительно"</td></td><td>от 40 до 80</td><td>Да</td><td>Нет</td></tr>
</tbody>
</table>