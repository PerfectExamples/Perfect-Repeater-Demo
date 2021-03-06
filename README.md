# Perfect Repeater Demo

<p align="center">
    <a href="http://perfect.org/get-involved.html" target="_blank">
        <img src="http://perfect.org/assets/github/perfect_github_2_0_0.jpg" alt="Get Involed with Perfect!" width="854" />
    </a>
</p>

<p align="center">
    <a href="https://github.com/PerfectlySoft/Perfect" target="_blank">
        <img src="http://www.perfect.org/github/Perfect_GH_button_1_Star.jpg" alt="Star Perfect On Github" />
    </a>  
    <a href="http://stackoverflow.com/questions/tagged/perfect" target="_blank">
        <img src="http://www.perfect.org/github/perfect_gh_button_2_SO.jpg" alt="Stack Overflow" />
    </a>  
    <a href="https://twitter.com/perfectlysoft" target="_blank">
        <img src="http://www.perfect.org/github/Perfect_GH_button_3_twit.jpg" alt="Follow Perfect on Twitter" />
    </a>  
    <a href="http://perfect.ly" target="_blank">
        <img src="http://www.perfect.org/github/Perfect_GH_button_4_slack.jpg" alt="Join the Perfect Slack" />
    </a>
</p>

<p align="center">
    <a href="https://developer.apple.com/swift/" target="_blank">
        <img src="https://img.shields.io/badge/Swift-3.0-orange.svg?style=flat" alt="Swift 3.0">
    </a>
    <a href="https://developer.apple.com/swift/" target="_blank">
        <img src="https://img.shields.io/badge/Platforms-OS%20X%20%7C%20Linux%20-lightgray.svg?style=flat" alt="Platforms OS X | Linux">
    </a>
    <a href="http://perfect.org/licensing.html" target="_blank">
        <img src="https://img.shields.io/badge/License-Apache-lightgrey.svg?style=flat" alt="License Apache">
    </a>
    <a href="http://twitter.com/PerfectlySoft" target="_blank">
        <img src="https://img.shields.io/badge/Twitter-@PerfectlySoft-blue.svg?style=flat" alt="PerfectlySoft Twitter">
    </a>
    <a href="http://perfect.ly" target="_blank">
        <img src="http://perfect.ly/badge.svg" alt="Slack Status">
    </a>
</p>

This demo shows usage of the Perfect Repeater library.

## Compatibility with Swift

The master branch of this project currently compiles with **Xcode 8.1** or the **Swift 3.0.1** toolchain on Ubuntu.

## Building & Running

This project demonstrates use of the Perfect Repeater library, which enables recurring events to be executed.

### Xcode

We suggest using the [Perfect Assistant](http://perfect.org/en/assistant/) for managing Server Side Swift projects. 

In Perfect Assistant, click "Create New Project", and select "Custom repository URL". Choose a location for the project, and enter this URL for "Repository URL": `https://github.com/PerfectExamples/Perfect-Repeater-Demo.git`

Once the project has been created, click the "Build > Local" button. This will download all dependencies and create an Xcode Project file for you.

Open this project file, then select the "Executable" scheme (with the black icon).

Now, run the project.

### Terminal

The following will clone and build an empty starter project and launch the server on port 8181.

```
git clone https://github.com/PerfectExamples/Perfect-Repeater-Demo.git
cd Perfect-Repeater-Demo
swift build
.build/debug/Perfect-Repeater-Demo
```

You should see the following output appear progressively:

```
Hello, world! (1)
XXXXXX
Hello, world! (2)
XXXXXX
Hello, world! (3)
Hello, world! (4)
XXXXXX
Hello, world! (5)
XXXXXX
Hello, world! (6)
Hello, world! (7)
XXXXXX
Hello, world! (8)
XXXXXX
Hello, world! (9)
Hello, world! (10)
cc exiting.
XXXXXX
Program ended with exit code: 9
```

Note that the program exits because an abort has been executed with the "Stop" button in Xcode or ctl-. in terminal.

The demo is quite simple:

``` swift
import PerfectRepeater

// A simple flag counter so we can exit this repeat timer 
// after 10 repititions.
var opt = 1

// Closure for one timer
let c = {
	() -> Bool in
	print("XXXXXX")
	return true
}

// Closure for another timer
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
```

If the closure returns `true` then it will continue to be executed after next interval. If it returns `false` the event will not be rescheduled.

## Issues

We use JIRA for all bugs and support related issues, and the GitHub issues have been disabled.

If you find a mistake, bug, or any other helpful suggestion you'd like to make on the docs please head over to [http://jira.perfect.org:8080/servicedesk/customer/portal/1](http://jira.perfect.org:8080/servicedesk/customer/portal/1) and raise it.

A comprehensive list of open issues can be found at [http://jira.perfect.org:8080/projects/ISS/issues](http://jira.perfect.org:8080/projects/ISS/issues)



## Further Information
For more information on the Perfect project, please visit [perfect.org](http://perfect.org).
