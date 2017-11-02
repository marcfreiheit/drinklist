as yet unclassified
encode: aText
 ^ '=?utf-8?B?', aText squeakToUtf8 base64Encoded, '?='