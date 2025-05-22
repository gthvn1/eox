# Erlang On Xen

I'm a big fan of Xen, and I’ve always found it exciting to explore projects that run on it — like [MirageOS](https://github.com/mirage), which is incredibly cool. I wanted to build something that uses Xen too.

I’m also interested in compilers. I’ve written some tiny interpreters before, and I’ve been wanting to take the next step and generate some bytecode. While exploring options that work on Xen, I came across [ling](https://github.com/cloudozer/ling), a lightweight Erlang VM designed for Xen. It looks amazing — but unfortunately, it’s no longer maintained.

So, I had an idea: start with my [Pratt parser calculator](https://github.com/gthvn1/pratt-calculator/), extend it a bit, and generate bytecode for [the BEAM](https://blog.stenmans.org/theBeamBook/), the virtual machine that runs Erlang.

While researching the Erlang VM, I discovered [Gleam](https://gleam.run/), a modern, statically typed language that also compiles to BEAM. That got me even more inspired! Now, my plan is to rewrite the calculator in Gleam, evolve it gradually, and generate BEAM bytecode. And who knows — maybe even revive *ling* or build something similar in the process. :)
