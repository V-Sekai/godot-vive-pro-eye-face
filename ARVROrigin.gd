# This file is part of godot-vive-pro-eye, a Godot 3 driver for the HTC
# Vive Pro Eye eye tracking hardware.
#
# Copyright (c) 2019 Lehrstuhl für Informatik 2,
# Friedrich-Alexander-Universität Erlangen-Nürnberg (FAU)
# Author: Florian Jung (florian.jung@fau.de)
#
# Permission is hereby granted, free of charge, to any person obtaining
# a copy of this software and associated documentation files (the
# "Software"), to deal in the Software without restriction, including
# without limitation the rights to use, copy, modify, merge, publish,
# distribute, sublicense, and/or sell copies of the Software, and to
# permit persons to whom the Software is furnished to do so, subject to
# the following conditions:
#
# The above copyright notice and this permission notice shall be
# included in all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
# EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
# MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
# IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
# CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
# TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
# SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

extends XROrigin3D

func _ready():
	var interface = XRServer.find_interface("OpenXR")
	if interface and interface.initialize():
		get_viewport().arvr = true
		get_viewport().hdr = false
	else:
		print("failed to init OpenXR")
