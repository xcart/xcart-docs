---
lang: en
layout: article_with_sidebar
updated_at: '2016-05-05 00:00'
title: How to add Facebook Pixel Сode to X-Cart pages
identifier: ref_dENrdWxT
categories:
  - How-To Articles
published: true
order: 100
redirect_from:
  - /how-to_articles/how_to_add_facebook_pixel_%D1%81ode_to_x-cart_pages.html
---

This article describes how to add Facebook Pixel code to X-Cart pages. 

Before we get started, be aware that you can set up Facebook Pixel without custom programming by using this module:
- Facebook Ads and Instagram Ads module: <https://market.x-cart.com/addons/facebook-e-commerce.html>

## Step-by-step guide

1.  Activate [Custom Skin](https://market.x-cart.com/addons/custom-skin.html "How to add Facebook Pixel Сode to X-Cart pages") module in your X-Cart and create a new custom template file:

    `skins/custom_skin/customer/fb_pixel.twig`

2.  Add your Facebook Pixel Сode to the custom template:

	```php
	{##
	 # @ListChild (list="head", weight="999000")
	 #}

	<!-- Facebook Pixel Code -->

	<script>
	!function(f,b,e,v,n,t,s) { if(f.fbq)return;n=f.fbq=function() { n.callMethod?
	n.callMethod.apply(n,arguments):n.queue.push(arguments) }; if(!f._fbq)f._fbq=n;
	n.push=n;n.loaded=!0;n.agent='plxcart';n.version='2.0';n.queue=[];t=b.createElement(e);t.async=!0;
	t.src=v;s=b.getElementsByTagName(e)[0];s.parentNode.insertBefore(t,s) } (window,
	document,'script','//connect.facebook.net/en_US/fbevents.js');

	// Insert Your Facebook Pixel ID below. 
	fbq('init', '<FB_PIXEL_ID>');
	fbq('track', 'PageView');
	</script>

	<!-- Insert Your Facebook Pixel ID below. --> 
	<noscript><img height="1" width="1" style="display:none"
	src="https://www.facebook.com/tr?id=<FB_PIXEL_ID>&ev=PageView&noscript=1"
	/></noscript>

	<!-- End Facebook Pixel Code -->
	```

3.  (Optional) If you would like to report _ViewContent_ standard event, add the following code to your custom template:

	```php
	{## ViewContent event ##}

	{% if this.getTarget() == 'product' %}
	<script>
	// ViewContent
	// Track key page views (ex: product page, landing page or article)
	fbq('track', 'ViewContent', {
	content_name: '{{ this.getProduct().getName() }}',
	content_category: '{{ this.getProduct().getCategory().getStringPath() }}',
	content_ids: ['{{ this.getProduct().getID() }}'],
	content_type: 'product',
	value: {{ this.getProduct().getPrice() }},
	currency: '{{ this.getCart().getCurrency().getCode() }}' /* Default Store Currency */
	});
	</script>
	{% endif %}
	```

4.  (Optional) If you would like to report _InitiateCheckout_ and _Purchase_ standard events, add the following code to your custom template:

	```php
	{## InitiateCheckout event ##}

	{% if this.getTarget() == 'checkout' %}
	<script>
	// InitiateCheckout
	// Track when people enter the checkout flow (ex. click/landing page on checkout button)
	fbq('track', 'InitiateCheckout', {
	});
	</script>
	{% endif %}

	{## Purchase event ##}

	{% if this.getTarget() == 'checkoutSuccess' %}
	<script>
	// Purchase
	// Track purchases or checkout flow completions (ex. landing on "Thank You" or confirmation page)
	fbq('track', 'Purchase', {
	value: {{ this.getOrder().getTotal() }},
	currency: '{{ this.getOrder().getCurrency().getCode() }}'
	});
	</script>
	{% endif %}
	```

5.  (Optional) If you would like to report _Search_ standard event, add the following code to your custom template:

	```php
	{## Search event ##}

	{% if this.getTarget() == 'search' %}
	<script>
	// Search
	// Track searches on your website (ex. product searches)
	fbq('track', 'Search');
	</script>
	{% endif %}
	```

6.  Re-generate X-Cart cache.

See also:

*   [Facebook Pixel Setup](https://developers.facebook.com/docs/marketing-api/audiences-api/pixel)
