//
//  main.swift
//  Perfect Repeater Demo
//
//  Created by Jonathan Guthrie on 2017-03-07.
//	Copyright (C) 2017 PerfectlySoft, Inc.
//
//===----------------------------------------------------------------------===//
//
// This source file is part of the Perfect.org open source project
//
// Copyright (c) 2015 - 20176 PerfectlySoft Inc. and the Perfect project authors
// Licensed under Apache License v2.0
//
// See http://perfect.org/licensing.html for license information
//
//===----------------------------------------------------------------------===//
//

import PerfectRepeater
import Foundation

var opt = 1

let c = {
	() -> Bool in
	print("XXXXXX")
	return true
}
let cc = {
	() -> Bool in
	print("Hello, world! (\(opt))")
	if opt < 10 {
		opt += 1
		return true
	} else {
		print("cc exiting.")
		return false
	}
}

Repeater.exec(timer: 3.0, callback: c)
Repeater.exec(timer: 2.0, callback: cc)

var shouldKeepRunning = true        // change this `false` to stop the application from running
let theRL = RunLoop.current         // Need a reference to the current run loop
while shouldKeepRunning && theRL.run(mode: .defaultRunLoopMode, before: .distantFuture) {  }
