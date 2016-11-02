#! /usr/bin/env python2

import logging
log = logging.getLogger(__name__)

from customlog import *

def f2():
    log.info("in 2")
    log.error("long \nmultiline\n\nmessage")

def f1():
    log.info("in 1")
    f2()
    log.warn("still in 1")

def main():
    print 'in main'
    log.info("hello world")
    f1()

if __name__ == '__main__':
    main()
