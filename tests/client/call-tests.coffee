# Write your tests here!
# Here is an example.

Tinytest.add 'call - callId should be mapped to _id', (test) ->
  myCall = new Call(
    from: ''
    to: ''
    callId: '1'
    direction: ''
  )
  test.equal myCall._id, "1"

Tinytest.add 'call - should be active when first created', (test) ->
  myCall = new Call(
    from: ''
    to: ''
    callId: '1'
    direction: ''
  )
  test.isTrue myCall.active

Tinytest.add 'call - should be inactive after hangup', (test) ->
  myCall = new Call(
    from: ''
    to: ''
    callId: '1'
    direction: ''
  )
  myCall.hangup()
  test.isFalse myCall.active

Tinytest.add 'call - should store cause on hangup', (test) ->
  myCall = new Call(
    from: ''
    to: ''
    callId: '1'
    direction: ''
  )
  myCall.hangup("any cause")
  test.equal myCall.cause, "any cause"

Tinytest.add 'call - date - should store startDate when created', (test) ->
  myCall = new Call(
    from: ''
    to: ''
    callId: '1'
    direction: ''
  )
  test.instanceOf myCall.startDate, Date

Tinytest.add 'call - date - should store endDate on hangup', (test) ->
  myCall = new Call(
    from: ''
    to: ''
    callId: '1'
    direction: ''
  )
  myCall.hangup("any cause")
  test.instanceOf myCall.endDate, Date