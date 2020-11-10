/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


var btn_stepup = $("[id^=btn_stepup-]");
var btn_stepdown = $("[id^=btn_stepdown-]");
var _amount = $("[id^=amount-]");

var cart = $("#cart");
var price_bar = $("#price_bar");
var product_price = $('[id^=product_price-]');


var total_price = 0;



const updateCart = () => {

    total_price = 0;
    _amount.each(function (index) {

        if ($(this).val() > 0) {

            var index = $(this).attr("id");
            var id = index.slice(-1);
            total_price = Number(total_price) + (Number(getProductPrice(id) * $(this).val()));

            cart.css('display', 'block');
        }
        if (_amount.last().index() == index && $(this).val() == 0)
        {
            cart.css('display', 'none');
        }

        updatePrice(total_price);
    })
}

const getProductPrice = (id) => {
    var product_price_id = "#product_price-" + id //#product_price-1
    var product_price = $(product_price_id).text(); //300.0 THB
    return product_price;
}

const updatePrice = (price) => {
    price_bar.text(price);
}

_amount.change(function () {
    updateCart();
})

btn_stepup.click(function () {
    var index = $(this).attr("id");
    var id = index.slice(-1);

    var amount_id = "#amount-" + id;
    $(amount_id).val(Number($(amount_id).val()) + Number('1'));
    updateCart();

})

btn_stepdown.click(function () {
    var index = $(this).attr("id");
    var id = index.slice(-1);

    var amount_id = "#amount-" + id;
    if ($(amount_id).val() < 1)
        return false;

    $(amount_id).val(Number($(amount_id).val()) - Number('1'));
    updateCart();
})