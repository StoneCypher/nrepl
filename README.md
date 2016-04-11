# nrepl
Tools for the not-repl in Erlang

These are a bad idea.  You shouldn't use these.  These are generally how I cope 
with libraries that aren't written with REPL use in mind.  These are jack shims
to get things to compile.  They're probably wrong and they're certainly evil.

Run.  Run now.





## ... wth?  ... why?

So, suppose you love [proper](https://github.com/manopapad/proper).  But, also
suppose you learned [quickcheck](http://www.quviq.com/downloads/) first.

Quickcheck represents itself largely as a repl discovery tool, especially in its
[public videos](http://www.quviq.com/demos/).  However, the authors of proper 
seem to see it primarily as an automated execution tool under unit testing, and
as such, the REPL setup is a footnote in their process, exceedingly fragile and
non-portable.

I don't want to go re-learn how to do it manually over and over.  So, here we 
are.  I can now do things like

```erlang
1> nrepl:)
```





## So what's this about not-repl

It's [a long story](http://ferd.ca/repl-a-bit-more-and-less-than-that.html).





Polemic :neckbeard:
-------------------

`nrepl` is MIT licensed, because viral licenses and newspeak language modification are evil.
Free is ***only*** free when it's free for everyone.

You still shouldn't use it, though.