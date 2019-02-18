---
lang: en
layout: article_with_sidebar
updated_at: '2016-12-28 10:19 +0400'
identifier: ref_5BTPsMUx
title: Setting up a Bookable Product with Variants
categories:
  - User manual
published: true
order: 170
---

To create a bookable product with product variants, follow these steps:

1.  Start creating a new product the normal way: specify a product name, choose a category, add images, etc. 
    ![]({{site.baseurl}}/attachments/8750040/8718732.png)
2.  Leave the fields **Price** and **Quantity in stock** at their default values (Remember, we are creating a product with variants, so we'll set a price and a quantity for each variant individually a bit later). 
    ![]({{site.baseurl}}/attachments/8750040/8718733.png)
3.  Disable shipping calculation for the product by setting the **Shippable** property to "No":
    ![]({{site.baseurl}}/attachments/8750040/8718735.png)

4.  Provide the rest of general information about the product as needed and click **Add product** to save it. The product will be created.
    ![]({{site.baseurl}}/attachments/8750040/8718744.png)

5.  Continue configuring the product you have created: Switch to the **Booking** tab of the product details and set the **Product booking **option to "Enabled" to specify that this product is bookable:
    ![]({{site.baseurl}}/attachments/8750040/8718736.png)
    Be sure to click **Update** to save the changes.

6.  Configure the attributes whose values will be used to form product variants for the product. If you are going to have more than one bookable product in your store, consider setting up a product class and configuring attributes on the class level. If all your products are going to be bookable, configure attributes on the global level. For the sake of example, we'll create a product class "Hotel" with the attributes "Room type" and "Number of guests":
    1.  In the **Classes & attributes** section, select to add a new product class:
        ![]({{site.baseurl}}/attachments/8750040/8718728.png)

    2.  Provide a name for the new product class (in our case, "Hotel") and save the changes:
        ![]({{site.baseurl}}/attachments/8750040/8718729.png)

    3.  Click the Edit attributes link opposite the product class name to go to a page where you can configure attributes:
        ![]({{site.baseurl}}/attachments/8750040/8718730.png)

    4.  On the page that opens, select to add a new attribute:
        ![]({{site.baseurl}}/attachments/8750040/8718731.png)

    5.  In the **New attribute** popup, provide the details of your attribute. We've entered the attribute name "Room type" and left the attribute type set to "Plain field":
        ![]({{site.baseurl}}/attachments/8750040/8718739.png)

    6.  Click **Next**. A popup titled **Edit attribute values** will appear. In this popup, click the **New value** button a few times to add some blank new lines where you will enter your values for the attribute "Room type":
        ![]({{site.baseurl}}/attachments/8750040/8718740.png)

    7.  Enter attribute value names on the lines you have added. You'll need a value for every room type that can be booked on your site. As you can see on the screenshot below, we've added four room types: "Double or Twin Room - Attic", "Superior Double or Twin Room", "Standard Room Sea View" and "Standard Room Land View". We'll only need the former two of these values for the product we are creating right now; the latter two we'll use later for another hotel. If we need more room types, we'll be able to add them later.
        ![]({{site.baseurl}}/attachments/8750040/8718741.png)

        Click **Save changes**. The attribute values will be saved.
    8.  Repeat Steps d-h to create the attribute "Number of guests" and add values for it.
        ![]({{site.baseurl}}/attachments/8750040/8718745.png)

    9.  If necessary, add other attributes (Things like "Free WiFi: Yes/No", "Air Conditioning: Yes/No", "Meals: Room only / Half Board / Full Board").
        ![]({{site.baseurl}}/attachments/8750040/8718747.png)

7.  Assign appropriate attribute values to your bookable product via the **Attributes** tab.
    ![]({{site.baseurl}}/attachments/8750040/8718746.png)

8.  Use the **Variants** tab to create specific bookable variants for the product. 

    1.  Choose the attributes on which your variants will be based and select how you would like to create the variants (manually or automatically). We have selected to create variants based on the "Group type" attribute only and are going to use the link Create all possible variants (2) for the variants to be generated automatically:
        ![]({{site.baseurl}}/attachments/8750040/8718750.png)
        Once all the necessary variants have been created based on the available option combinations, you should have a list like the following:
        ![]({{site.baseurl}}/attachments/8750040/8718751.png)

    2.  Adjust the **Price**, **SKU**, **Quantity** (maximum bookable quantity) and **Weight** values for each of the variants; upload variant images. Be sure to save the changes.
        ![]({{site.baseurl}}/attachments/8750040/8718752.png)

That is all; you have configured a bookable product with product variants.

Now, if you haven't yet done so, go to the "Booking" addon settings page and specify which of the attributes you have added for your bookable products need to be used to display your product variants in the form of a table on the product details page on the storefront. For example, if you want the individual lines of your booking table corresponding to the product variants to have titles based on the values of the product's main variant-forming attribute ("Room type", "Car type" or similar), this attribute needs to be specified as the "Room type" attribute for your site. If you want your booking table to have a column for the number of guests per room / number of seats per car / etc., specify which of your attributes ("Number of guests", "Number of seats" or similar) should be used as the "Number of guests" attribute for your site. See {% link "Configuring the addon «Booking»" ref_PGtil8wm %} for more information.

We have adjusted the addon settings as follows:

![]({{site.baseurl}}/attachments/8750040/8718758.png)

Now the variants of our product on the storefront should look something like this:

  ![]({{site.baseurl}}/attachments/8750040/8718818.png)

Expanding a variant by clicking the arrow icon next to its title allows you to view and select product options specific for that variant. For example, on the screenshot below we can see the option selector "Meals" allowing us to choose the type of meals we want at the hotel:

![]({{site.baseurl}}/attachments/8750040/8718820.png)

In case you are wondering why we are seeing just the attribute "Meals" here, but are not seeing the attributes "Free WiFi: Yes" and "Air Conditioning: Yes", although we have configured them earlier for this product, the explanation is simple: the booking table only shows Yes/No attributes if they are configured as multi-value product options:

![]({{site.baseurl}}/attachments/8750040/8718821.png)

If such multi-value attributes are not used for variants, we see them as checkboxes:

![]({{site.baseurl}}/attachments/8750040/8718822.png)

If they are used to form product variants, we see them simply as a part of product variant description. For example, if we base our variants on "Room type" and "Free WiFi" like so:

![]({{site.baseurl}}/attachments/8750040/8718823.png)

The result will be this:

![]({{site.baseurl}}/attachments/8750040/8718824.png)

When, however, Yes/No attributes are configured as non-multi-value options:

![]({{site.baseurl}}/attachments/8750040/8718825.png)

we only see them in the Specification section:

![]({{site.baseurl}}/attachments/8750040/8718827.png)

Note that the default wording used by the addon "Booking" may not work well for your type of bookable products. For example, the phrases  "Room type" and  "Check dates (N-night stay)" will not work for a car rental website. Not to worry - the wording can be fixed by editing the "Booking" addon text labels. For details see {% link "Editing «Booking» addon text labels to your needs" ref_slH6gvha %}.

_Related pages:_

*   {% link "Configuring the Addon Booking" ref_PGtil8wm %}
*   {% link "Editing Booking-related Text Labels to Your Needs" ref_slH6gvha %}
*   {% link "Setting up a Simple Bookable Product" ref_7o088Cca %}
