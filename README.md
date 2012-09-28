## Turbolinks test

Well, by now, you've done all your arguing on Twitter. Is Turbolinks a good
idea, or the Worst Thing Ever?

### optimizing a bit early

![don knuth](http://upload.wikimedia.org/wikipedia/commons/4/4f/KnuthAtOpenContentAlliance.jpg) ![tony hoare](http://upload.wikimedia.org/wikipedia/commons/thumb/2/2c/Sir_Tony_Hoare_IMG_5125.jpg/600px-Sir_Tony_Hoare_IMG_5125.jpg)

See these guys? One of them said this:

> "We should forget about small efficiencies, say about 97% of the time: premature optimization is the root of all evil"

Wisdom.

But what makes optimization premature? When you don't know if you should do it
or not. How do you know?

### measure twice, cut once

![measure twice](http://barnraisersllc.com/wp-content/uploads/2010/08/Measuring-Tapes1.jpg)

Measuring. It's good for you. You can do it. If you measure things, you can be
sure what's up.

But like eating your veggies, nobody measures. Ever.

### you're a scientist, dammit

Computer **SCIENCE** is called science for a reason, yo. Be a scientist. Don't
just argue about stuff on blogs. Measure things. Then report back.

### this test sucks

This probably isn't even a good test. I don't care. Tell me how it sucks. Let's
figure it out. But having actual measurements beats complaining about shit on 
Twitter any day.

## To run it:

```
$ rake assets:precompile
$ bundle
$ rspec
```

Done.

What I get:

With 1000 pages:

```
$ rspec
       user     system      total        real
 no turbolinks 11.170000   0.980000  12.460000 (138.656728)
yes turbolinks 10.800000   0.870000  11.670000 ( 80.436286)
```

With 100 pages:

```
$ rspec
       user     system      total        real
 no turbolinks  1.640000   0.190000   2.140000 ( 15.652763)
yes turbolinks  1.120000   0.090000   1.210000 (  7.776116)
```

