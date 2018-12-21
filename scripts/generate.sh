#!/bin/bash -

export white=[255, 255, 255]
export dark=[10, 17, 27]

envsubst < "manifest.json.template" > "manifest.json"