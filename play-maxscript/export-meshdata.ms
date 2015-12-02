
-- A max script that can be used to export model vertecies, texture coordinates and texture coordinates.
-- from https://www.opengl.org/discussion_boards/showthread.php/134355-MaxScript

filename = "c:\\" + $.name as string + ".hto"
myfile = createFile filename
 
print $.name to: myfile
 
print "MATERIALS" to: myfile
print sceneMaterials.count to: myfile
--for i= 1 to sceneMaterials.count do
--(
--	print sceneMaterials[i].diffusemap.filename to: myfile
--)
 
 
-- This prints out the vertex data of the normals of the object.
print "VERTICIES" to: myfile
print $.verts.count to: myfile
for i= 1 to $.verts.count do
(
	print $.verts[i].position to: myfile
)
 
-- this prints out the normals, currently the mode is undefined. face normals.
print "NORMALS" to: myfile
for i= 1 to $.verts.count do
(
	norm = getnormal $ i
	print norm to: myfile
)
 
--This prints out the vertex colors of the object.
--printf "VERTEX COLORS" to: myfile
--for i= 1 to $.verts.count do
--(
--	col = getVertColor $ i
--	print col to: myfile
--)
 
-- This then prints out the face indexes, i.e. the set of indexes which make up
-- each face.
print "FACE INDEXES" to: myfile
print $.numfaces to: myfile
for i= 1 to $.numFaces do
(
	k = getface $ i
	print k to: myfile
)
 
-- Print out the material id for each face.
print "MATERIAL IDS" to: myfile
for i= 1 to $.numfaces do
(
	m = getfacematid $ i
	print m to: myfile
)
 
 
-- Now we will output the texture coords.
print "TEXTURE COORDS" to: myfile
m = getNumTVerts $
print m to: myfile
for i= 1 to getNumTVerts $ do
(
	l = getTVert $ i
	print l to: myfile
)
 
 
print "TEXTURE INDEXES" to: myfile
for i= 1 to $.numFaces do
(
	m = getTVFace $ i
	print m to: myfile
)
 
 
print "END" to: myfile
 
close myfile