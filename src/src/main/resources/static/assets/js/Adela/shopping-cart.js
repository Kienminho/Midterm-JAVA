//handle button countinue choose cake
function continueChooseCake() {
    window.location = "/product/category/Bánh kem"
}


// calc the money to pay
const moneyElements = $(".plus_price_cart");

// Use map to extract the numeric values and convert them to numbers
const moneyArray = moneyElements.map(function() {
    return parseFloat($(this).text().replace('đ', '').replace(',', '')) || 0;
}).get();


// Calculate the total money
const totalMoney = moneyArray.reduce((sum, value) => sum + value, 0);

$(".money-to-pay").text(totalMoney.toLocaleString('vi-VN', { style: 'currency', currency: 'VND' }));



