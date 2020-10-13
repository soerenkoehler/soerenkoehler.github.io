---
layout: post
title: Local Multi Module Development in VSCode and Go
tags: [english, dev, vscode, golang]
---
Situation
---------

Recently I was developing two Go modules in parallel: Module A had module B as a
dependency.

Challenge 1
-----------

Since module B was still in local development, I did neither want to
push every local change nor even commit it locally.

Solution 1
----------

This can easily be googled/binged/duckduckgoed/...: Just use the `replace`
directive to point module B to a local path.

```
module a

require module-b

replace module-b => local-path-to-b
```

With this, the Go tools should use the current version of your local copy of B.

Challenge 2
-----------

I had opened two separate VSCode windows for the two modules. After applying
solution 1 module A seemed to use always some cached version of module B.

Solution 2
----------

After some trial and error, I nailed it down to "reloading workspace A updates
the dependency B". Which is quite inconvinient... The reload can be avoided, if
both modules reside in the same workspace.

Summary
-------

Two develop a dependency locally:
* Use a temporary local `go.mod` file with a `replace` directive pointing to
  your local dependency.
* Temporarily add the dependency to your workspace.