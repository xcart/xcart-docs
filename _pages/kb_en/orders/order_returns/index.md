---
lang: en
layout: article_with_sidebar
updated_at: '2018-04-26 14:53 +0400'
identifier: ref_30bVFfXt
title: Order Returns
order: 130
published: false
---
The Order Returns module is designed to simplify the process of managing product returns, which may be very annoying if you do not have a special tool to deal with it. With this module product returns become quick and convenient; the module organizes the whole process and allows your customers and you to avoid negative experience by getting rid of endless email correspondence.

The key features of the Order Returns module include:

* Automatic generation of return slips;
* Configurable product return reasons;
* Email notifications about submitted return request to the store staff;
* Email notifications about authorized and declined requests to customers.

_In this section_:
Enabling and Configuring Order Returns
Managing Return Requests
Customer Experience

claim return (customer) status=issued -> authorized (admin) -> Fulfilment status:Returned + Payment status:Refunded (automatically) -> customer status = completed

modify активизируется толко если изменить что-то в ордере

claim return (customer) status=issued -> decline (admin) -> status = declined -> Fulfilment status:+ Payment status: не меняется (automatically) -> customer status = declined
если добавить коммент к ордеру в админке, коммент появится в кастомерке
