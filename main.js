const ffi = require('ffi')

let test_lib = ffi.Library('Test_x86.dll', {
  'Add': ['int', ['int', 'int']]
})

console.log(' 1 + 1 = ' + test_lib.Add(1, 1))