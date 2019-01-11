---
lang: en
layout: article_with_sidebar
updated_at: '2016-06-16 00:00'
identifier: ref_JobVfzZg
title: 'CSV Import: Customers'
categories:
  - User manual
published: true
order: 100
---

Below is a list of supported fields and their respective value types for the import of customers:

<div class="responsive-table">
<table class="ui celled padded compact small table">
  <thead>
    <tr>
      <th class="confluenceTh">Field in CSV file</th>
      <th colspan="1" class="confluenceTh">What this field describes</th>
      <th colspan="1" class="confluenceTh" markdown="1">{% link 'Value type' ref_2LwMTTTW %}</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td colspan="3" class="confluenceTd"><em> Fields supported by <strong>X-Cart core</strong></em>
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd"><strong>login*</strong>
      </td>
      <td colspan="1" class="confluenceTd">Unique identifier of the user. Email is used as login.</td>
      <td colspan="1" class="confluenceTd">
        <p>String,
          <br>Max. length: 128</p>
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd"><strong>status*</strong>
      </td>
      <td colspan="1" class="confluenceTd">
        <p>User status. Possible values are:</p>
        <ul>
          <li>E - user is enabled;</li>
          <li>D - user is disabled.</li>
        </ul>
      </td>
      <td colspan="1" class="confluenceTd">Enum</td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">added</td>
      <td colspan="1" class="confluenceTd">Service field containing the date of registration</td>
      <td colspan="1" class="confluenceTd">Date</td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">firstLogin</td>
      <td colspan="1" class="confluenceTd">Service field containing the date of first successful login</td>
      <td colspan="1" class="confluenceTd">Date</td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">lastLogin</td>
      <td colspan="1" class="confluenceTd">Service field containing the date of last successful login</td>
      <td colspan="1" class="confluenceTd">Date</td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">referer</td>
      <td colspan="1" class="confluenceTd">Referer link</td>
      <td colspan="1" class="confluenceTd">&nbsp;</td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">language</td>
      <td colspan="1" class="confluenceTd">Two-symbol code of the language (e.g. <strong>en</strong>)</td>
      <td colspan="1" class="confluenceTd">
        <p>String,
          <br>Max. length: 2&nbsp;</p>
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">membership</td>
      <td colspan="1" class="confluenceTd">Membership of the user</td>
      <td colspan="1" class="confluenceTd">String</td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">password</td>
      <td colspan="1" class="confluenceTd">Password. Will be encrypted and stored as a hash.</td>
      <td colspan="1" class="confluenceTd">String</td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">forceChangePassword</td>
      <td colspan="1" class="confluenceTd">Should be Yes if user is required to change his password on next logon and No otherwise.</td>
      <td colspan="1" class="confluenceTd">Yes/No</td>
    </tr>
    <tr>
      <td class="confluenceTd">addressField</td>
      <td class="confluenceTd">
        <p>Very special service field. Has a row on each address and a column on each address part, such as zipcode. Column name is combined from part name and 'addressField' word.</p>
        <p>Example:</p>
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
                <td class="confluenceTd">Edmond</td>
                <td class="confluenceTd">US</td>
              </tr>
              <tr>
                <td colspan="1" class="confluenceTd">&nbsp;</td>
                <td class="confluenceTd">Richmond Hill</td>
                <td class="confluenceTd">CA</td>
              </tr>
            </tbody>
          </table>
        </div>
      </td>
      <td class="confluenceTd">
        <p>Multicolumn,
          <br>Multirow</p>
      </td>
    </tr>
  </tbody>
</table>
</div>

<sub>* Required field.</sub>

<sub markdown="1">** See {% link "CSV field attributes" ref_2LwMTTTW %} for more info.</sub>

**Tips**: 

*   If you are going to import data into X-Cart and do not wish to update certain X-Cart fields during the import process, you should not include these fields into your CSV file for import. Simply remove the respective column(s) from the file.
