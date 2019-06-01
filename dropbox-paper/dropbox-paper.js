// -*- coding: utf-8-unix -*-

// Work around a file browser dialog always popping up.
// https://github.com/jiahaog/nativefier/issues/737

window.onload = function() {
    Dropbox.choose = undefined;
};
