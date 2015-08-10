ACC.product = {

	bindAll: function ()
	{
		ACC.product.bindToAddToCartForm();
		ACC.product.bindToAddToCartStorePickUpForm();
		ACC.product.bindToAddToCartButton();
	},

	bindToAddToCartButton: function ()
	{
		$('#addToCartButton').removeAttr("disabled");
	},

	bindToAddToCartForm: function ()
	{
		var addToCartForm = $('.add_to_cart_form');
		addToCartForm.ajaxForm({success: ACC.product.displayAddToCartPopup});
	},

	bindToAddToCartStorePickUpForm: function ()
	{
		var addToCartStorePickUpForm = $('.add_to_cart_storepickup_form');
		addToCartStorePickUpForm.ajaxForm({
			success: ACC.product.displayAddToCartPopup
		});
	},

	displayAddToCartPopup: function (cartResult, statusText, xhr, formElement)
	{
		var productCode = $('[name=productCodePost]', formElement).val();
		var quantityField = $('[name=qty]', formElement).val();

		var quantity = 1;
		if (quantityField != undefined)
		{
			quantity = quantityField;
		}

		ACC.product.trackAddToCart(productCode, quantity, cartResult.cartData);

		$('#cart_popup').hide();
		$('#cart_popup').html(cartResult.cartPopupHtml);

		$('#add_to_cart_close').click(function (e)
		{
			e.preventDefault();
			$('#cart_popup').hide();
		});

		if (typeof ACC.cartpopup.refreshMiniCart == 'function')
		{
			ACC.cartpopup.refreshMiniCart();
		}

		$('#cart_popup').fadeIn();
		if (typeof timeoutId != 'undefined')
		{
			clearTimeout(timeoutId);
		}
		timeoutId = setTimeout(function ()
		{
			$('#cart_popup').fadeOut();
		}, 5000);
		$.colorbox.close();
	},

	trackAddToCart: function (productCode, quantity, cartData)
	{
		window.mediator.publish('trackAddToCart',{
			productCode: productCode,
			quantity: quantity,
			cartData: cartData
		});
	}

};

$(document).ready(function ()
{
	ACC.product.bindAll();
});

