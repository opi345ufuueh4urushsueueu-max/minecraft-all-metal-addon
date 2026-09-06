#!/bin/bash
# Script to create .mcaddon file

# Create the addon directory structure
mkdir -p all_metal_addon/behavior_packs/all_metal_addon/recipes/crafting
mkdir -p all_metal_addon/resource_packs/all_metal_addon/textures/blocks
mkdir -p all_metal_addon/resource_packs/all_metal_addon/textures/items

# Copy manifest files
cp behavior_packs/all_metal_addon/manifest.json all_metal_addon/behavior_packs/all_metal_addon/
cp resource_packs/all_metal_addon/manifest.json all_metal_addon/resource_packs/all_metal_addon/

# Copy recipe files
cp behavior_packs/all_metal_addon/recipes/crafting/*.json all_metal_addon/behavior_packs/all_metal_addon/recipes/crafting/

# Create the .mcaddon file (which is a .zip with .mcaddon extension)
cd all_metal_addon
zip -r ../all_metal_addon.zip .
cd ..
mv all_metal_addon.zip all_metal_addon.mcaddon

echo "✅ all_metal_addon.mcaddon created successfully!"
