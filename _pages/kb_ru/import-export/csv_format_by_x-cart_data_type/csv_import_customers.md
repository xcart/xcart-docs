---
lang: ru
layout: article_with_sidebar
updated_at: '2017-11-14 13:20 +0400'
identifier: ref_1dudPSA4
title: 'Импорт CSV: Покупатели'
order: 50
published: true
---
В таблице представлены поля и их содержание для импорта покупателей:

<div class="responsive-table">
<table class="ui celled padded compact small table">
  <thead>
    <tr>
      <th class="confluenceTh">Поле в CSV файле</th>
      <th colspan="1" class="confluenceTh">Что описывает поле</th>
      <th colspan="1" class="confluenceTh" markdown="1">{% link 'Значение поля' ref_2LwMTTTW %}</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td colspan="3" class="confluenceTd"><em> Поля <strong>в ядре X-Cart</strong></em>
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd"><strong>login*</strong>
      </td>
      <td colspan="1" class="confluenceTd">Уникальный идентификатор пользователя. В качестве логина используется адрес электронной почты.</td>
      <td colspan="1" class="confluenceTd">
        <p>Текст,
          <br>Максимум 128 знаков</p>
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd"><strong>status*</strong>
      </td>
      <td colspan="1" class="confluenceTd">
        <p>Статус пользователя. Возможные значения:</p>
        <ul>
          <li>E - пользователь активен;</li>
          <li>D - пользователь неактивен.</li>
        </ul>
      </td>
      <td colspan="1" class="confluenceTd">Значение перечислимого типа</td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">added</td>
      <td colspan="1" class="confluenceTd">Сервисное поле, показывающее дату регистрации</td>
      <td colspan="1" class="confluenceTd">Дата</td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">firstLogin</td>
      <td colspan="1" class="confluenceTd">Сервисное поле, показывающее дату первой успешной авторизации</td>
      <td colspan="1" class="confluenceTd">Дата</td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">lastLogin</td>
      <td colspan="1" class="confluenceTd">Сервисное поле, показывающее дату последней успешной авторизации</td>
      <td colspan="1" class="confluenceTd">Дата</td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">referer</td>
      <td colspan="1" class="confluenceTd">Реферальная ссылка</td>
      <td colspan="1" class="confluenceTd">&nbsp;</td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">language</td>
      <td colspan="1" class="confluenceTd">Двузначный код языка (например, <strong>ru</strong>)</td>
      <td colspan="1" class="confluenceTd">
        <p>Текст,
          <br>Максимум 2 знака&nbsp;</p>
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">membership</td>
      <td colspan="1" class="confluenceTd">Членство покупателя в магазине</td>
      <td colspan="1" class="confluenceTd">Текст</td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">password</td>
      <td colspan="1" class="confluenceTd">Пароль. Зашифровывается и сохраняется как хэш.</td>
      <td colspan="1" class="confluenceTd">Текст</td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">forceChangePassword</td>
      <td colspan="1" class="confluenceTd">Поставьте Yes, если пользователю необходимо сменить пароль при следующем входе. Если пароль менять не требуется - поставьте No.</td>
      <td colspan="1" class="confluenceTd">Да/Нет</td>
    </tr>
    <tr>
      <td class="confluenceTd">addressField</td>
      <td class="confluenceTd">
        <p>Особенное сервисное поле. Поле содержит по ряду на каждый адрес и по колонке на каждую часть адреса. Название колонки составляется из названия части адреса и записи addressField. </p>
        <p>Пример:</p>
        <div class="table-wrap">
          <table class="confluenceTable">
            <tbody>
              <tr>
                <td colspan="1" class="confluenceTd">login</td>
                <td class="confluenceTd">cityAddressField</td>
                <td class="confluenceTd">countryCodeAddressField</td>
              </tr>
              <tr>
                <td colspan="1" class="confluenceTd">greg.bowes@gmail.com</td>
                <td class="confluenceTd">Санкт-Петербург</td>
                <td class="confluenceTd">РФ</td>
              </tr>
              <tr>
                <td colspan="1" class="confluenceTd">&nbsp;</td>
                <td class="confluenceTd">Москва</td>
                <td class="confluenceTd">РФ</td>
              </tr>
            </tbody>
          </table>
        </div>
      </td>
      <td class="confluenceTd">
        <p>Колонки,
          <br>Столбцы</p>
      </td>
    </tr>
  </tbody>
</table>
</div>

<sub>* Обязательное поле.</sub>

<sub markdown="1">** Дополнительная информация {% link "CSV field attributes" ref_2LwMTTTW %}</sub>

**Рекомендации**: 

*   Если вы собираетесь импортировать данные в X-Cart и не хотите обновлять определенные поля во время импорта, эти поля не нужно вносить в CSV файл импорта. Просто удалите соответствующие столбцы из файла.

