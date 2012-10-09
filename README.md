# Ruby 1.9.3-p194 Segfault Demonstration

This is the smallest bit of code that I've been able to write to illustrate a segmentation fault that occurs when running ruby 1.9.3-p194 on Mac OS X. My team has encountered this problem on Mac OS X 10.7 (Lion) and 10.8 (Mountain Lion).

## Reproducing it

1. `bundle`
2. `bundle exec rake db:migrate db:test:prepare`
3. `./segfault.sh`

You should see a failure within a few minutes. I've been getting the failure usually within the first 5 runs, but it's taken as many as 20 before. Please let in run for an extended time period before ruling out a failure.
