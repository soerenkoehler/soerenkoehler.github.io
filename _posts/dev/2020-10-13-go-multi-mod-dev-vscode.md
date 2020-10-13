---
layout: post
title: Local Multi Module Development in VSCode and Go
tags: [english, dev, vscode, golang]
---
Recently I was developing two Go modules in parallel: Module A had module B as a
dependency. Since module B was still in local development, I did neither want to
push every local change nor even commit it locally.

The solution to this can easily be googled/binged/duckduckgoed/...: Just use the
`replace` directive to point module B to a local path.

```
module a

require module-b

replace module-b => local-path-to-b
```

With this, the Go tools should use the current version of your local copy of B.

But there was some unexpected challenge: Working in module A seemed to use
always some cached version of module B...

After some trial and error, I nailed it down to:

* having open two workspaces in two separate VSCode windows
* reloading workspace A updates the dependency B

So, the solution is: Have both modules in the same workspace. VSCode will then
happily detect chenged dependency sources.

### Summary

Two develop a dependency locally:
* Use a temporary local `go.mod` file with a `replace` directive pointing to
  your local dependency.
* Temporarily add the dependency to your workspace.