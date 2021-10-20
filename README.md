# xccovPretty GitHub Action

This is a very simple GitHub Action that runs [xccovPretty][xccovPretty] on an `.xcresult` bundle.

[xccovPretty]: https://github.com/prachigauriar/xccovPretty

To run it, add the following step to your GitHub Actions workflow:

```yaml
  - uses: prachigauriar/xccovPretty-action@v0.1.0
    with:
      resultBundle: "MyResult.xcresult"
```

where `resultBundle` is the path to your `.xcresult` bundle. If your bundle contains multiple
targets and you only want to output some of them, you can add the `includedTargets` parameter, which
is a comma-separated list of target names.

```yaml
  - name: Output code coverage for just Target1 and Target2
    uses: prachigauriar/xccovPretty-action@v0.0.2
    with:
      resultBundle: "MyResult.xcresult"
      includedTargets: "Target1,Target2"
```


## Caveats

I’ve only tested this action with Xcode 12.5 and Xcode 13 on macOS 11. Since I’m not publicizing
this, I assume people won’t be using it, and thus it may break at some point. All breaking changes
will be versioned.

Use at your own risk and use your best judgment.


## License

All code is licensed under the MIT license. Do with it as you will.
