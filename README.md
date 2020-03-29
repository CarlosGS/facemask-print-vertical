# facemask-print-vertical

Designs available:

- Stacked: Prusa mask main part

- Stacked: Protective visor by 3dverkstan

- The A mask homologated in a hospital in Madrid (unfortunately I cannot recommend the design, simpler is better, so avoid this one)
  - Original B1 part
  - Stacked: B2 part

There is one empty layer between each part to allow an easy separation. Support material not needed.

Hay una capa vacía entre cada pieza, lo que permite separarlas fácilmente. No es necesario material de soporte.

## Check the Z layers before printing to ensure there is exactly one layer missing between each part

## First adjust your setup with the calibration example:

https://github.com/CarlosGS/facemask-print-vertical/tree/master/source_code/adhesion_test

<img src="source_code/adhesion_test/photo.png" width="300">

**Always check the generated layers before printing!!**

<img src="source_code/adhesion_test/SEE_always_check_layers.png" width="300">

Tested with [this cura profile](https://github.com/MKme/I3-Mega-3D-Printer-Settings-Resources/blob/master/Cura%20Profiles/i3%20Mega%20Erics%20Main%20Profile.curaprofile) (see [the result](https://twitter.com/MKmeOrg/status/1243522985262186496) ). I suggest to **first try with your own profile** and then adjust layer height.

## Please open an issue if you have any requests

Stacked with OpenScad software, the code is available in the "source_code" directory.

![](photo.jpg)

![](source_code/generic_stacker/photo.png)
