pacman -S sane libtiff ghostscript okular

# Probe for devices
scanimage -L

# Scan. CLI does anything you need to do. Query available features with:
# scanimage -A --device "fujitsu:ScanSnap iX500:101739"

cd ~/Scans
scanimage --device "fujitsu:ScanSnap iX500:101739" --format=tiff --batch=scan-page-%d.tif --buffermode=On --swdeskew=yes --swdespeck=2

tiffcp scan-page-*.tif scan.tif
tiff2pdf -o scan.pdf scan.tif
okular scan.pdf

