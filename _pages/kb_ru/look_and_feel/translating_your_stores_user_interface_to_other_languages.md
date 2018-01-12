---
lang: ru
layout: article_with_sidebar
updated_at: '2018-01-12 13:47 +0400'
title: Перевод интерфейса магазина на другие языки
order: 140
published: false
identifier: ref_translation
---
[Скачав](https://www.x-cart.ru/download.html "Перевод интерфейса магазина на другие языки") и установив X-Cart, вы получаете магазин на русском языке. 

Представьте магазин на разных языках, установив модули перевода из Маркетплейса:

*   Русский (Russian)
*   Французский (French)
*   Немецкий (German)
*   Голландский (Dutch)
*   Британский английский (British English)

Если необходимого перевода нет в Маркетплейсе, обратитесь к команде X-Cart ("developers@x-cart.com" mailto:developers@x-cart.com %}). Мы расскажем, как создать модуль перевода.

Как установить модуль перевода из Маркетплейса:

1.  В зоне администратора магазина откройте страницу **Мои модули** и пройдите по ссылке **Установить из Маркетплейса**.
    ![xc5_translations_goto_marketplace.png]({{site.baseurl}}/attachments/ref_NH3w8sSS/xc5_translations_goto_marketplace.png)

2.  Найдите нужный язык. Если в поле поиска ввести слово _translation_, найдутся все доступные переводы:
    ![xc5_translations_search4translations.png]({{site.baseurl}}/attachments/ref_NH3w8sSS/xc5_translations_search4translations.png)

3.  {% link "Установите и активируйте" ref_gpeZtm28 %} выбранные модули. Для примера установим немецкий перевод. 
    ![xc5_translations_install_german.png]({{site.baseurl}}/attachments/ref_NH3w8sSS/xc5_translations_install_german.png)

Установленный перевод появится на странице **Мои модули**:
    ![xc5_translations_aktiviert.png]({{site.baseurl}}/attachments/ref_NH3w8sSS/xc5_translations_aktiviert.png)

После установки языковых модулей в интерфейсах администратора и покупателей появятся переключатели языка.

В панели управления магазина:

   ![xc5_translations_lng_selector_admin.png]({{site.baseurl}}/attachments/ref_NH3w8sSS/xc5_translations_lng_selector_admin.png)

В магазине:

   ![xc5_translations_lng_selector_customer.png]({{site.baseurl}}/attachments/ref_NH3w8sSS/xc5_translations_lng_selector_customer.png)

Попробуйте переключить язык, интерфейс магазина поменяется на выбранную языковую версию. Например, так выглядит зона администратора на немецком языке (знак _DE_ в переключателе):

   ![xc5_translations_installed_addons_german.png]({{site.baseurl}}/attachments/ref_NH3w8sSS/xc5_translations_installed_addons_german.png)

Можно заметить, что при переключении на немецкий язык, не весь текст изменяется. Например, на странице **Мои модули** описания модулей остаются на английском языке, а текст ссылки _View more addons in Marketplace_ - на русском. Так и должно быть, т.к. описания модулей берутся из маркетплейса, и модуль перевода в магазине просто не имеет доступа к этим текстам. Что касается ссылки _View more addons in Marketplace_, она не переведена, т.к. в модуле немецкого языка отсутствует языковая метка с этим текстом. Если сравнить установленные языки на странице **Настройка магазина / Переводы**, можно увидеть, что у русского языка намного больше языковых меток, чем у  немецкого:

   ![xc5_translations_num_of_labels.png]({{site.baseurl}}/attachments/ref_NH3w8sSS/xc5_translations_num_of_labels.png)

Вполне нормально, что интерфейс магазина не полностью меняется на другой язык после установки модуля перевода. Но это можно легко изменить, редактируя языковые версии магазина вручную. Например, переведём текст ссылки _View more addons in Marketplace_ на немецкий язык:

1.  На странице **Настройка магазина / Переводы** откройте вкладку **Языковые метки**.

2.  Сделайте поиск по тексту _View more addons in Marketplace_:
    ![xc5_translations_search_view_more_addons.png]({{site.baseurl}}/attachments/ref_NH3w8sSS/xc5_translations_search_view_more_addons.png)

    Языковая метка найдена, и мы видим, в каком из языковых модулей отсутствует ее перевод, код этого языка серого цвета. В нашем примере код _DE_ серого цвета, т.к. текст ссылки _View more addons in Marketplace_ не переведен на немецкий:
    ![xc5_translations_de_label_missing.png]({{site.baseurl}}/attachments/ref_NH3w8sSS/xc5_translations_de_label_missing.png)
    
3.  Нажмите на значок земного шара справа, в открывшемся окне вы можете редактировать все языковые версии текста. Сделайте перевод на немецкий язык и нажмите **Сохранить**.
    ![xc5_translations_add_de_label.png]({{site.baseurl}}/attachments/ref_NH3w8sSS/xc5_translations_add_de_label.png)

    (Подробная информация о языковых метках и переводах представлена в статье {% link "Editing text labels" ref_IyGxQ1DN#editing-text-labels %}).

Теперь при переключении языка на немецкий текст ссылки также будет на немецком.

_Дополнительная информация:_

*   {% link "Switching the language in Admin area" ref_x5oSN86B %}
