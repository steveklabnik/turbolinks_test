This is a modivication of the original test with Rails 4.
Also we are testing Pjax vs Turbolinks vs None

### all the assets branch

This has BCX's Javascript and CSS files.

## To run it:

```
$ bundle
$ rspec
```

Done.

What I get:

With 10 pages:

```
$ rspec
       user     system      total        real
   nothing  1.030000   0.170000   1.530000 (  5.028314)
turbolinks  0.140000   0.020000   0.160000 (  0.984095)
      pjax  0.100000   0.020000   0.120000 (  0.876211)
```

With 100 pages:

```
$ rspec
       user     system      total        real
   nothing  3.600000   0.800000   4.720000 ( 26.237932)
turbolinks  1.130000   0.120000   1.250000 ( 11.028930)
      pjax  1.020000   0.120000   1.140000 (  7.688372)
```

With 1000 pages:

```
$ rspec
       user     system      total        real
   nothing 28.410000   7.010000  35.750000 (256.809647)
turbolinks 10.970000   1.120000  12.090000 (104.501979)
      pjax 10.240000   1.250000  11.490000 ( 77.392627)
```
