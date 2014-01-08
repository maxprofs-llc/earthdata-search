window.edsc.util.date = do (string = window.edsc.util.string) ->

  pad = string.padLeft

  # Returns an ISO-formatted date string (YYYY-MM-DD) containing the UTC value of the given date
  isoUtcDateString = (date) ->
    "#{date.getUTCFullYear()}-#{pad(date.getUTCMonth() + 1, '0', 2)}-#{pad(date.getUTCDate(), '0', 2)}"

  isoUtcDateTimeString = (date) ->
    isoUtcDateString(date) + " #{pad(date.getHours(), '0', 2)}:#{pad(date.getMinutes(), '0', 2)}:#{pad(date.getSeconds(), '0', 2)}"

  exports =
    isoUtcDateString: isoUtcDateString,
    isoUtcDateTimeString: isoUtcDateTimeString