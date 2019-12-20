# Web Assembly Experiment

A small experiment number adding experiment with Web Assembly.

## Compile WAT to WASM

Compile `Web Assembly Text Format` (WAT) to `Web Assembly Byte Code` (WASM)
In theory you could use anything that compiles to WASM, but we will use WAT
to learn how everything works. More on WAT [here](https://developer.mozilla.org/en-US/docs/WebAssembly/Understanding_the_text_format).

First get the `wat2wasm` tool from this repository.
You can get install `wat2wasm` from the github [release page](https://github.com/WebAssembly/wabt/releases/)
by downloading the right one for your system.

```sh
# for linux
curl -SL https://github.com/WebAssembly/wabt/releases/download/1.0.12/wabt-1.0.12-linux.tar.gz -o wabt-1.0.12.tar.gz
# for mac
curl -SL https://github.com/WebAssembly/wabt/releases/download/1.0.12/wabt-1.0.12-osx.tar.gz -o wabt-1.0.12.tar.gz

# unpack, make executable and clean up
tar -zxvf wabt-1.0.12.tar.gz
cp wabt-1.0.12/wat2wasm .
chmod +x wat2wasm
rm -rf wabt-1.0.12
```

Now you can compile WAT to WASM
```sh
wat2wasm sample.wat -o sample.wasm
```

Here's more info at [Mozilla](https://developer.mozilla.org/en-US/docs/WebAssembly/Text_format_to_wasm)

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
