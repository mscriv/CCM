
jQuery ->
  Stripe.setPublishableKey($('meta[name="stripe-key"]').attr('content'))
  membership.setupForm()

membership =
  setupForm: ->
    $('#new_membership').submit ->
        $('input[type=submit]').attr('disabled', true)
        Stripe.card.createToken($('#card_number'), membership.handleStripeResponse)
        false

  handleStripeResponse: (status, response) ->
    if status == 200
      alert(response.id)
    else
      alert(response.error.message)
