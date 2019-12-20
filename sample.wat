;; simple.wat
(module
  (func $getNumber (import "imports" "getNumber") (result i32))
  (func (export "wasmFunction") (param i32) (result i32)
    call $getNumber
    i32.const 42
    i32.add
    ))
