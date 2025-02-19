use std assert
use tap.nu

tap begin "verify bootc status output formats"

let st = bootc status --json | from json
assert equal $st.apiVersion org.containers.bootc/v1alpha1
let st = bootc status --format=yaml | from yaml
assert equal $st.apiVersion org.containers.bootc/v1alpha1
tap ok
