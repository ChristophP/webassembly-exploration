# Web Assembly Experiment

## Compile WAT to WASM

Compile `Web Assembly Text Format` (WAT) to `Web Assembly Byte Code` (WASM)

```sh
wat2wasm sample.wat -o sample.wasm
```

Here's more info at [Mozilla](https://developer.mozilla.org/en-US/docs/WebAssembly/Text_format_to_wasm)
You can get install `wat2wasm` from the github [release page](https://github.com/WebAssembly/wabt/releases/)

## Run it in the browser


Then run:
```sh
npm install
npx http-server
```

Open the browser at `http://localhost:8080`.

### What is happening?

Check out `index.html` for what's happening.
Web Assembly byte code will be fetched by the browser and compiled
to native code by the browser. We then use JS to call WASM which then
calls the JS function which is passed to it. Therefore we can pass functions from
JS to WASM and vice versa. Awesome! :-)
