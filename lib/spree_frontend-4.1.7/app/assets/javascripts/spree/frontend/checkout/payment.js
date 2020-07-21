//= require spree/frontend/coupon_manager
Spree.ready(function ($) {
  Spree.onPayment = function () {
    if ($('#checkout_form_payment').length) {
      if ($('#existing_cards').length) {
        $('#existing_cards').hide()
        $('#payment-methods').hide()
        $("#payment-method-fields label[data-type='card']").click(function() {
          $('#existing_cards').show()
          $('.payment-sources').show()
          $('.existing-cc-radio').first().prop('checked', true)
        })
        $("#payment-method-fields label:not([data-type='card'])").click(function() {
          $('#existing_cards').hide()
          $('#payment-methods').hide()
          $('.payment-sources').hide()
          $('.existing-cc-radio').prop('checked', false)
          $('#use_existing_card_no').prop('checked', false)
        })
        $('.existing-cc-radio').click(function () {
          $(this).prop('checked', true)
          $('#use_existing_card_no').prop('checked', false)
          $('#use_existing_card_yes').prop('checked', true)
          $('#payment-methods').hide()
        })
        $('#use_existing_card_no').click(function () {
          $('#payment-methods').show()
          $('.existing-cc-radio').prop('checked', false)
          $('#use_existing_card_yes').prop('checked', false)
        })
      }
      $('.cardNumber').payment('formatCardNumber')
      $('.cardExpiry').payment('formatCardExpiry')
      $('.cardCode').payment('formatCardCVC')
      $('.cardNumber').change(function () {
        $(this).parent().siblings('.ccType').val($.payment.cardType(this.value))
      })
      $('input[type="radio"][name="order[payments_attributes][][payment_method_id]"]').click(function () {
        if ($('#payment_method_' + this.value).find('fieldset').children().length == 0) {
          $('.payment-sources').hide()
        } else {
          $('.payment-sources').show()
        }
        $('#payment-methods li').hide()
        if (this.checked) {
          $('#payment_method_' + this.value).show()
        }
      })
      $(document).on('click', '#cvv_link', function (event) {
        var windowName = 'cvv_info'
        var windowOptions = 'left=20,top=20,width=500,height=500,toolbar=0,resizable=0,scrollbars=1'
        window.open($(this).attr('href'), windowName, windowOptions)
        event.preventDefault()
      })
      $('input[type="radio"]:checked').click()
      $('#checkout_form_payment').submit(function (event) {
        var input = {
          couponCodeField: $('#order_coupon_code'),
          couponStatus: $('#coupon_status')
        }
        if ($.trim(input.couponCodeField.val()).length > 0) {
          // eslint-disable-next-line no-undef
          if (new CouponManager(input).applyCoupon()) {
            return true
          } else {
            Spree.enableSave()
            event.preventDefault()
            return false
          }
        }
      })
    }
  }
  Spree.onPayment()
})
