/*
 * Copyright (C) 2021 The LineageOS Project
 *
 * SPDX-License-Identifier: Apache-2.0
 */

#include <libinit_dalvik_heap.h>
#include <libinit_variant.h>

#include "vendor_init.h"

static const variant_info_t lime_info = {
    .hwc_value = "",
    .sku_value = "citrus",

    .brand = "Poco",
    .device = "citrus",
    .marketname = "Poco M3",
    .model = "M2010J19CG",
    .build_fingerprint = "POCO/citrus_global/citrus:12/RKQ1.211130.001/V14.0.2.0.SJFMIXM:user/release-keys",
    
    .nfc = false,
};

static const std::vector<variant_info_t> variants = {
    citrus_info,
};

void vendor_load_properties() {
    search_variant(variants);
    set_dalvik_heap();
}
