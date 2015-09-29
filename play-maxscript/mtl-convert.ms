 // mtl-convert.ms


// There is an VrayMtlConverter plugin to mtl conversion from vray to other format which is written in encrypted maxscript, ie. mse.

// mtl-convert for each object in geomtry
// vray mtl to standard material
for o in geometry do
(
    // vray material
    if classof o.material == VRayMtl do (
        stdmtl = Standardmaterial ()
        stdmtl.diffusemap = o.material.texmap_diffuse
        stdmtl.diffuse = o.material.diffuse
        o.material = tt
    )

    // multiple material
    if classof o.material == Multimaterial then (
        for m = 1 to o.material.numsubs do (
            if classof o.material [m] == VRayMtl do (
                stdmtl = Standardmaterial ()
                stdmtl.diffusemap = o.material[m].texmap_diffuse

                stdmtl.diffuse = o.material[m].diffuse
                o.material [m] = stdmtl
            )
        )
    )
)

actionMan.executeAction 0 "40807"



-- print all properties of an object
-- http://docs.autodesk.com/3DSMAX/15/ENU/MAXScript-Help/files/GUID-879ECFAD-7928-44B3-BCD7-276D53C89B52.htm
-- for p in getPropNames $foo do
--    format "% = %\n" p (getProperty $foo p)