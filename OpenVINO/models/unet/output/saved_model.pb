ѕ
т
:
Add
x"T
y"T
z"T"
Ttype:
2	
A
AddV2
x"T
y"T
z"T"
Ttype:
2	
x
Assign
ref"T

value"T

output_ref"T"	
Ttype"
validate_shapebool("
use_lockingbool(
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype

Conv2D

input"T
filter"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

h
Equal
x"T
y"T
z
"
Ttype:
2	
"$
incompatible_shape_errorbool(
,
Exp
x"T
y"T"
Ttype:

2
B
GreaterEqual
x"T
y"T
z
"
Ttype:
2	
.
Identity

input"T
output"T"	
Ttype
N
IsVariableInitialized
ref"dtype
is_initialized
"
dtypetype
,
Log
x"T
y"T"
Ttype:

2
.
Log1p
x"T
y"T"
Ttype:

2
д
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0""
paddingstring:
SAMEVALID":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
8
Maximum
x"T
y"T
z"T"
Ttype:

2	

Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
N
Merge
inputs"T*N
output"T
value_index"	
Ttype"
Nint(0
8
Minimum
x"T
y"T
z"T"
Ttype:

2	
=
Mul
x"T
y"T
z"T"
Ttype:
2	
.
Neg
x"T
y"T"
Ttype:

2	

NoOp
k
NotEqual
x"T
y"T
z
"
Ttype:
2	
"$
incompatible_shape_errorbool(
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
X
PlaceholderWithDefault
input"dtype
output"dtype"
dtypetype"
shapeshape
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
E
Relu
features"T
activations"T"
Ttype:
2	

ResizeBilinear
images"T
size
resized_images"
Ttype:
2
	"
align_cornersbool( "
half_pixel_centersbool( 
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
0
Round
x"T
y"T"
Ttype:

2	
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
0
Sigmoid
x"T
y"T"
Ttype:

2
і
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
:
Sub
x"T
y"T
z"T"
Ttype:
2	

Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
M
Switch	
data"T
pred

output_false"T
output_true"T"	
Ttype
s

VariableV2
ref"dtype"
shapeshape"
dtypetype"
	containerstring "
shared_namestring 
&
	ZerosLike
x"T
y"T"	
Ttype"serve*1.15.22v1.15.2-2-gbcc274eѕ

MRImagesPlaceholder*
dtype0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*6
shape-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
v
encodeAa/random_uniform/shapeConst*%
valueB"             *
dtype0*
_output_shapes
:
`
encodeAa/random_uniform/minConst*
valueB
 *ьбО*
dtype0*
_output_shapes
: 
`
encodeAa/random_uniform/maxConst*
valueB
 *ьб>*
dtype0*
_output_shapes
: 
В
%encodeAa/random_uniform/RandomUniformRandomUniformencodeAa/random_uniform/shape*
dtype0*&
_output_shapes
: *
seed2йд*
seedБџх)*
T0
}
encodeAa/random_uniform/subSubencodeAa/random_uniform/maxencodeAa/random_uniform/min*
T0*
_output_shapes
: 

encodeAa/random_uniform/mulMul%encodeAa/random_uniform/RandomUniformencodeAa/random_uniform/sub*&
_output_shapes
: *
T0

encodeAa/random_uniformAddencodeAa/random_uniform/mulencodeAa/random_uniform/min*
T0*&
_output_shapes
: 

encodeAa/kernel
VariableV2*
shape: *
shared_name *
dtype0*&
_output_shapes
: *
	container 
Ш
encodeAa/kernel/AssignAssignencodeAa/kernelencodeAa/random_uniform*
T0*"
_class
loc:@encodeAa/kernel*
validate_shape(*&
_output_shapes
: *
use_locking(

encodeAa/kernel/readIdentityencodeAa/kernel*
T0*"
_class
loc:@encodeAa/kernel*&
_output_shapes
: 
[
encodeAa/ConstConst*
valueB *    *
dtype0*
_output_shapes
: 
y
encodeAa/bias
VariableV2*
shape: *
shared_name *
dtype0*
_output_shapes
: *
	container 
­
encodeAa/bias/AssignAssignencodeAa/biasencodeAa/Const*
use_locking(*
T0* 
_class
loc:@encodeAa/bias*
validate_shape(*
_output_shapes
: 
t
encodeAa/bias/readIdentityencodeAa/bias*
_output_shapes
: *
T0* 
_class
loc:@encodeAa/bias

encodeAa/convolutionConv2DMRImagesencodeAa/kernel/read*
paddingSAME*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *
	dilations
*
T0*
data_formatNHWC*
strides
*
explicit_paddings
 *
use_cudnn_on_gpu(
Ј
encodeAa/BiasAddBiasAddencodeAa/convolutionencodeAa/bias/read*
data_formatNHWC*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *
T0
s
encodeAa/ReluReluencodeAa/BiasAdd*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
v
encodeAb/random_uniform/shapeConst*
dtype0*
_output_shapes
:*%
valueB"              
`
encodeAb/random_uniform/minConst*
valueB
 *:ЭО*
dtype0*
_output_shapes
: 
`
encodeAb/random_uniform/maxConst*
valueB
 *:Э>*
dtype0*
_output_shapes
: 
В
%encodeAb/random_uniform/RandomUniformRandomUniformencodeAb/random_uniform/shape*
T0*
dtype0*&
_output_shapes
:  *
seed2ўГ*
seedБџх)
}
encodeAb/random_uniform/subSubencodeAb/random_uniform/maxencodeAb/random_uniform/min*
T0*
_output_shapes
: 

encodeAb/random_uniform/mulMul%encodeAb/random_uniform/RandomUniformencodeAb/random_uniform/sub*
T0*&
_output_shapes
:  

encodeAb/random_uniformAddencodeAb/random_uniform/mulencodeAb/random_uniform/min*
T0*&
_output_shapes
:  

encodeAb/kernel
VariableV2*
shared_name *
dtype0*&
_output_shapes
:  *
	container *
shape:  
Ш
encodeAb/kernel/AssignAssignencodeAb/kernelencodeAb/random_uniform*
T0*"
_class
loc:@encodeAb/kernel*
validate_shape(*&
_output_shapes
:  *
use_locking(

encodeAb/kernel/readIdentityencodeAb/kernel*
T0*"
_class
loc:@encodeAb/kernel*&
_output_shapes
:  
[
encodeAb/ConstConst*
valueB *    *
dtype0*
_output_shapes
: 
y
encodeAb/bias
VariableV2*
dtype0*
_output_shapes
: *
	container *
shape: *
shared_name 
­
encodeAb/bias/AssignAssignencodeAb/biasencodeAb/Const*
validate_shape(*
_output_shapes
: *
use_locking(*
T0* 
_class
loc:@encodeAb/bias
t
encodeAb/bias/readIdentityencodeAb/bias*
T0* 
_class
loc:@encodeAb/bias*
_output_shapes
: 

encodeAb/convolutionConv2DencodeAa/ReluencodeAb/kernel/read*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
explicit_paddings
 *
paddingSAME*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *
	dilations
*
T0
Ј
encodeAb/BiasAddBiasAddencodeAb/convolutionencodeAb/bias/read*
T0*
data_formatNHWC*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
s
encodeAb/ReluReluencodeAb/BiasAdd*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
Ц
poolA/MaxPoolMaxPoolencodeAb/Relu*
strides
*
data_formatNHWC*
ksize
*
paddingVALID*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *
T0
v
encodeBa/random_uniform/shapeConst*
dtype0*
_output_shapes
:*%
valueB"          @   
`
encodeBa/random_uniform/minConst*
dtype0*
_output_shapes
: *
valueB
 *:ЭО
`
encodeBa/random_uniform/maxConst*
dtype0*
_output_shapes
: *
valueB
 *:Э>
В
%encodeBa/random_uniform/RandomUniformRandomUniformencodeBa/random_uniform/shape*
dtype0*&
_output_shapes
: @*
seed2ТБ*
seedБџх)*
T0
}
encodeBa/random_uniform/subSubencodeBa/random_uniform/maxencodeBa/random_uniform/min*
_output_shapes
: *
T0

encodeBa/random_uniform/mulMul%encodeBa/random_uniform/RandomUniformencodeBa/random_uniform/sub*
T0*&
_output_shapes
: @

encodeBa/random_uniformAddencodeBa/random_uniform/mulencodeBa/random_uniform/min*
T0*&
_output_shapes
: @

encodeBa/kernel
VariableV2*
dtype0*&
_output_shapes
: @*
	container *
shape: @*
shared_name 
Ш
encodeBa/kernel/AssignAssignencodeBa/kernelencodeBa/random_uniform*
T0*"
_class
loc:@encodeBa/kernel*
validate_shape(*&
_output_shapes
: @*
use_locking(

encodeBa/kernel/readIdentityencodeBa/kernel*
T0*"
_class
loc:@encodeBa/kernel*&
_output_shapes
: @
[
encodeBa/ConstConst*
valueB@*    *
dtype0*
_output_shapes
:@
y
encodeBa/bias
VariableV2*
shape:@*
shared_name *
dtype0*
_output_shapes
:@*
	container 
­
encodeBa/bias/AssignAssignencodeBa/biasencodeBa/Const*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0* 
_class
loc:@encodeBa/bias
t
encodeBa/bias/readIdentityencodeBa/bias*
T0* 
_class
loc:@encodeBa/bias*
_output_shapes
:@

encodeBa/convolutionConv2DpoolA/MaxPoolencodeBa/kernel/read*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
explicit_paddings
 *
paddingSAME
Ј
encodeBa/BiasAddBiasAddencodeBa/convolutionencodeBa/bias/read*
T0*
data_formatNHWC*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
s
encodeBa/ReluReluencodeBa/BiasAdd*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
v
encodeBb/random_uniform/shapeConst*
dtype0*
_output_shapes
:*%
valueB"      @   @   
`
encodeBb/random_uniform/minConst*
valueB
 *ьбН*
dtype0*
_output_shapes
: 
`
encodeBb/random_uniform/maxConst*
dtype0*
_output_shapes
: *
valueB
 *ьб=
В
%encodeBb/random_uniform/RandomUniformRandomUniformencodeBb/random_uniform/shape*
dtype0*&
_output_shapes
:@@*
seed2ћШ*
seedБџх)*
T0
}
encodeBb/random_uniform/subSubencodeBb/random_uniform/maxencodeBb/random_uniform/min*
T0*
_output_shapes
: 

encodeBb/random_uniform/mulMul%encodeBb/random_uniform/RandomUniformencodeBb/random_uniform/sub*
T0*&
_output_shapes
:@@

encodeBb/random_uniformAddencodeBb/random_uniform/mulencodeBb/random_uniform/min*
T0*&
_output_shapes
:@@

encodeBb/kernel
VariableV2*
dtype0*&
_output_shapes
:@@*
	container *
shape:@@*
shared_name 
Ш
encodeBb/kernel/AssignAssignencodeBb/kernelencodeBb/random_uniform*
T0*"
_class
loc:@encodeBb/kernel*
validate_shape(*&
_output_shapes
:@@*
use_locking(

encodeBb/kernel/readIdentityencodeBb/kernel*
T0*"
_class
loc:@encodeBb/kernel*&
_output_shapes
:@@
[
encodeBb/ConstConst*
valueB@*    *
dtype0*
_output_shapes
:@
y
encodeBb/bias
VariableV2*
dtype0*
_output_shapes
:@*
	container *
shape:@*
shared_name 
­
encodeBb/bias/AssignAssignencodeBb/biasencodeBb/Const*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0* 
_class
loc:@encodeBb/bias
t
encodeBb/bias/readIdentityencodeBb/bias*
T0* 
_class
loc:@encodeBb/bias*
_output_shapes
:@

encodeBb/convolutionConv2DencodeBa/ReluencodeBb/kernel/read*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
explicit_paddings
 *
paddingSAME*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
Ј
encodeBb/BiasAddBiasAddencodeBb/convolutionencodeBb/bias/read*
T0*
data_formatNHWC*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
s
encodeBb/ReluReluencodeBb/BiasAdd*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
T0
Ц
poolB/MaxPoolMaxPoolencodeBb/Relu*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
T0*
data_formatNHWC*
strides
*
ksize
*
paddingVALID
v
encodeCa/random_uniform/shapeConst*%
valueB"      @      *
dtype0*
_output_shapes
:
`
encodeCa/random_uniform/minConst*
valueB
 *ьбН*
dtype0*
_output_shapes
: 
`
encodeCa/random_uniform/maxConst*
valueB
 *ьб=*
dtype0*
_output_shapes
: 
Г
%encodeCa/random_uniform/RandomUniformRandomUniformencodeCa/random_uniform/shape*
T0*
dtype0*'
_output_shapes
:@*
seed2цВс*
seedБџх)
}
encodeCa/random_uniform/subSubencodeCa/random_uniform/maxencodeCa/random_uniform/min*
T0*
_output_shapes
: 

encodeCa/random_uniform/mulMul%encodeCa/random_uniform/RandomUniformencodeCa/random_uniform/sub*
T0*'
_output_shapes
:@

encodeCa/random_uniformAddencodeCa/random_uniform/mulencodeCa/random_uniform/min*
T0*'
_output_shapes
:@

encodeCa/kernel
VariableV2*
shared_name *
dtype0*'
_output_shapes
:@*
	container *
shape:@
Щ
encodeCa/kernel/AssignAssignencodeCa/kernelencodeCa/random_uniform*
use_locking(*
T0*"
_class
loc:@encodeCa/kernel*
validate_shape(*'
_output_shapes
:@

encodeCa/kernel/readIdentityencodeCa/kernel*
T0*"
_class
loc:@encodeCa/kernel*'
_output_shapes
:@
]
encodeCa/ConstConst*
dtype0*
_output_shapes	
:*
valueB*    
{
encodeCa/bias
VariableV2*
dtype0*
_output_shapes	
:*
	container *
shape:*
shared_name 
Ў
encodeCa/bias/AssignAssignencodeCa/biasencodeCa/Const*
T0* 
_class
loc:@encodeCa/bias*
validate_shape(*
_output_shapes	
:*
use_locking(
u
encodeCa/bias/readIdentityencodeCa/bias*
T0* 
_class
loc:@encodeCa/bias*
_output_shapes	
:

encodeCa/convolutionConv2DpoolB/MaxPoolencodeCa/kernel/read*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
explicit_paddings
 *
paddingSAME*B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ*
	dilations

Љ
encodeCa/BiasAddBiasAddencodeCa/convolutionencodeCa/bias/read*
T0*
data_formatNHWC*B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
t
encodeCa/ReluReluencodeCa/BiasAdd*B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ*
T0
f
spatial_dropout2d_1/ShapeShapeencodeCa/Relu*
T0*
out_type0*
_output_shapes
:
q
'spatial_dropout2d_1/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
s
)spatial_dropout2d_1/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
s
)spatial_dropout2d_1/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
н
!spatial_dropout2d_1/strided_sliceStridedSlicespatial_dropout2d_1/Shape'spatial_dropout2d_1/strided_slice/stack)spatial_dropout2d_1/strided_slice/stack_1)spatial_dropout2d_1/strided_slice/stack_2*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0
s
)spatial_dropout2d_1/strided_slice_1/stackConst*
valueB:*
dtype0*
_output_shapes
:
u
+spatial_dropout2d_1/strided_slice_1/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
u
+spatial_dropout2d_1/strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
х
#spatial_dropout2d_1/strided_slice_1StridedSlicespatial_dropout2d_1/Shape)spatial_dropout2d_1/strided_slice_1/stack+spatial_dropout2d_1/strided_slice_1/stack_1+spatial_dropout2d_1/strided_slice_1/stack_2*
T0*
Index0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
p
.spatial_dropout2d_1/keras_learning_phase/inputConst*
dtype0
*
_output_shapes
: *
value	B
 Z 
Є
(spatial_dropout2d_1/keras_learning_phasePlaceholderWithDefault.spatial_dropout2d_1/keras_learning_phase/input*
dtype0
*
_output_shapes
: *
shape: 
 
spatial_dropout2d_1/cond/SwitchSwitch(spatial_dropout2d_1/keras_learning_phase(spatial_dropout2d_1/keras_learning_phase*
T0
*
_output_shapes
: : 
q
!spatial_dropout2d_1/cond/switch_tIdentity!spatial_dropout2d_1/cond/Switch:1*
T0
*
_output_shapes
: 
o
!spatial_dropout2d_1/cond/switch_fIdentityspatial_dropout2d_1/cond/Switch*
T0
*
_output_shapes
: 
w
 spatial_dropout2d_1/cond/pred_idIdentity(spatial_dropout2d_1/keras_learning_phase*
T0
*
_output_shapes
: 

spatial_dropout2d_1/cond/mul/yConst"^spatial_dropout2d_1/cond/switch_t*
valueB
 *  ?*
dtype0*
_output_shapes
: 
З
spatial_dropout2d_1/cond/mulMul%spatial_dropout2d_1/cond/mul/Switch:1spatial_dropout2d_1/cond/mul/y*
T0*B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
ћ
#spatial_dropout2d_1/cond/mul/SwitchSwitchencodeCa/Relu spatial_dropout2d_1/cond/pred_id*
T0* 
_class
loc:@encodeCa/Relu*p
_output_shapes^
\:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ

%spatial_dropout2d_1/cond/dropout/rateConst"^spatial_dropout2d_1/cond/switch_t*
valueB
 *ЭЬL>*
dtype0*
_output_shapes
: 

7spatial_dropout2d_1/cond/dropout/random_uniform/shape/1Const"^spatial_dropout2d_1/cond/switch_t*
value	B :*
dtype0*
_output_shapes
: 

7spatial_dropout2d_1/cond/dropout/random_uniform/shape/2Const"^spatial_dropout2d_1/cond/switch_t*
value	B :*
dtype0*
_output_shapes
: 
ы
5spatial_dropout2d_1/cond/dropout/random_uniform/shapePack>spatial_dropout2d_1/cond/dropout/random_uniform/shape/Switch:17spatial_dropout2d_1/cond/dropout/random_uniform/shape/17spatial_dropout2d_1/cond/dropout/random_uniform/shape/2@spatial_dropout2d_1/cond/dropout/random_uniform/shape/Switch_1:1*
T0*

axis *
N*
_output_shapes
:
ф
<spatial_dropout2d_1/cond/dropout/random_uniform/shape/SwitchSwitch!spatial_dropout2d_1/strided_slice spatial_dropout2d_1/cond/pred_id*
_output_shapes
: : *
T0*4
_class*
(&loc:@spatial_dropout2d_1/strided_slice
ъ
>spatial_dropout2d_1/cond/dropout/random_uniform/shape/Switch_1Switch#spatial_dropout2d_1/strided_slice_1 spatial_dropout2d_1/cond/pred_id*
_output_shapes
: : *
T0*6
_class,
*(loc:@spatial_dropout2d_1/strided_slice_1

3spatial_dropout2d_1/cond/dropout/random_uniform/minConst"^spatial_dropout2d_1/cond/switch_t*
valueB
 *    *
dtype0*
_output_shapes
: 

3spatial_dropout2d_1/cond/dropout/random_uniform/maxConst"^spatial_dropout2d_1/cond/switch_t*
valueB
 *  ?*
dtype0*
_output_shapes
: 
ѓ
=spatial_dropout2d_1/cond/dropout/random_uniform/RandomUniformRandomUniform5spatial_dropout2d_1/cond/dropout/random_uniform/shape*
T0*
dtype0*8
_output_shapes&
$:"џџџџџџџџџџџџџџџџџџ*
seed2ќКp*
seedБџх)
Х
3spatial_dropout2d_1/cond/dropout/random_uniform/subSub3spatial_dropout2d_1/cond/dropout/random_uniform/max3spatial_dropout2d_1/cond/dropout/random_uniform/min*
T0*
_output_shapes
: 
ё
3spatial_dropout2d_1/cond/dropout/random_uniform/mulMul=spatial_dropout2d_1/cond/dropout/random_uniform/RandomUniform3spatial_dropout2d_1/cond/dropout/random_uniform/sub*
T0*8
_output_shapes&
$:"џџџџџџџџџџџџџџџџџџ
у
/spatial_dropout2d_1/cond/dropout/random_uniformAdd3spatial_dropout2d_1/cond/dropout/random_uniform/mul3spatial_dropout2d_1/cond/dropout/random_uniform/min*
T0*8
_output_shapes&
$:"џџџџџџџџџџџџџџџџџџ

&spatial_dropout2d_1/cond/dropout/sub/xConst"^spatial_dropout2d_1/cond/switch_t*
valueB
 *  ?*
dtype0*
_output_shapes
: 

$spatial_dropout2d_1/cond/dropout/subSub&spatial_dropout2d_1/cond/dropout/sub/x%spatial_dropout2d_1/cond/dropout/rate*
T0*
_output_shapes
: 

*spatial_dropout2d_1/cond/dropout/truediv/xConst"^spatial_dropout2d_1/cond/switch_t*
valueB
 *  ?*
dtype0*
_output_shapes
: 
І
(spatial_dropout2d_1/cond/dropout/truedivRealDiv*spatial_dropout2d_1/cond/dropout/truediv/x$spatial_dropout2d_1/cond/dropout/sub*
T0*
_output_shapes
: 
и
-spatial_dropout2d_1/cond/dropout/GreaterEqualGreaterEqual/spatial_dropout2d_1/cond/dropout/random_uniform%spatial_dropout2d_1/cond/dropout/rate*
T0*8
_output_shapes&
$:"џџџџџџџџџџџџџџџџџџ
Р
$spatial_dropout2d_1/cond/dropout/mulMulspatial_dropout2d_1/cond/mul(spatial_dropout2d_1/cond/dropout/truediv*
T0*B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
О
%spatial_dropout2d_1/cond/dropout/CastCast-spatial_dropout2d_1/cond/dropout/GreaterEqual*
Truncate( *8
_output_shapes&
$:"џџџџџџџџџџџџџџџџџџ*

DstT0*

SrcT0

Ч
&spatial_dropout2d_1/cond/dropout/mul_1Mul$spatial_dropout2d_1/cond/dropout/mul%spatial_dropout2d_1/cond/dropout/Cast*
T0*B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
љ
!spatial_dropout2d_1/cond/Switch_1SwitchencodeCa/Relu spatial_dropout2d_1/cond/pred_id*
T0* 
_class
loc:@encodeCa/Relu*p
_output_shapes^
\:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
Ъ
spatial_dropout2d_1/cond/MergeMerge!spatial_dropout2d_1/cond/Switch_1&spatial_dropout2d_1/cond/dropout/mul_1*
T0*
N*D
_output_shapes2
0:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ: 
v
encodeCb/random_uniform/shapeConst*%
valueB"            *
dtype0*
_output_shapes
:
`
encodeCb/random_uniform/minConst*
valueB
 *:ЭН*
dtype0*
_output_shapes
: 
`
encodeCb/random_uniform/maxConst*
valueB
 *:Э=*
dtype0*
_output_shapes
: 
Д
%encodeCb/random_uniform/RandomUniformRandomUniformencodeCb/random_uniform/shape*
T0*
dtype0*(
_output_shapes
:*
seed2КЉЇ*
seedБџх)
}
encodeCb/random_uniform/subSubencodeCb/random_uniform/maxencodeCb/random_uniform/min*
T0*
_output_shapes
: 

encodeCb/random_uniform/mulMul%encodeCb/random_uniform/RandomUniformencodeCb/random_uniform/sub*
T0*(
_output_shapes
:

encodeCb/random_uniformAddencodeCb/random_uniform/mulencodeCb/random_uniform/min*
T0*(
_output_shapes
:

encodeCb/kernel
VariableV2*
shared_name *
dtype0*(
_output_shapes
:*
	container *
shape:
Ъ
encodeCb/kernel/AssignAssignencodeCb/kernelencodeCb/random_uniform*
validate_shape(*(
_output_shapes
:*
use_locking(*
T0*"
_class
loc:@encodeCb/kernel

encodeCb/kernel/readIdentityencodeCb/kernel*
T0*"
_class
loc:@encodeCb/kernel*(
_output_shapes
:
]
encodeCb/ConstConst*
valueB*    *
dtype0*
_output_shapes	
:
{
encodeCb/bias
VariableV2*
shape:*
shared_name *
dtype0*
_output_shapes	
:*
	container 
Ў
encodeCb/bias/AssignAssignencodeCb/biasencodeCb/Const*
use_locking(*
T0* 
_class
loc:@encodeCb/bias*
validate_shape(*
_output_shapes	
:
u
encodeCb/bias/readIdentityencodeCb/bias*
T0* 
_class
loc:@encodeCb/bias*
_output_shapes	
:
Ј
encodeCb/convolutionConv2Dspatial_dropout2d_1/cond/MergeencodeCb/kernel/read*
	dilations
*
T0*
data_formatNHWC*
strides
*
explicit_paddings
 *
use_cudnn_on_gpu(*
paddingSAME*B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
Љ
encodeCb/BiasAddBiasAddencodeCb/convolutionencodeCb/bias/read*
T0*
data_formatNHWC*B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
t
encodeCb/ReluReluencodeCb/BiasAdd*
T0*B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
Ч
poolC/MaxPoolMaxPoolencodeCb/Relu*B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ*
T0*
data_formatNHWC*
strides
*
ksize
*
paddingVALID
v
encodeDa/random_uniform/shapeConst*
dtype0*
_output_shapes
:*%
valueB"            
`
encodeDa/random_uniform/minConst*
valueB
 *:ЭН*
dtype0*
_output_shapes
: 
`
encodeDa/random_uniform/maxConst*
valueB
 *:Э=*
dtype0*
_output_shapes
: 
Г
%encodeDa/random_uniform/RandomUniformRandomUniformencodeDa/random_uniform/shape*
T0*
dtype0*(
_output_shapes
:*
seed2Ў*
seedБџх)
}
encodeDa/random_uniform/subSubencodeDa/random_uniform/maxencodeDa/random_uniform/min*
T0*
_output_shapes
: 

encodeDa/random_uniform/mulMul%encodeDa/random_uniform/RandomUniformencodeDa/random_uniform/sub*
T0*(
_output_shapes
:

encodeDa/random_uniformAddencodeDa/random_uniform/mulencodeDa/random_uniform/min*
T0*(
_output_shapes
:

encodeDa/kernel
VariableV2*
shape:*
shared_name *
dtype0*(
_output_shapes
:*
	container 
Ъ
encodeDa/kernel/AssignAssignencodeDa/kernelencodeDa/random_uniform*
T0*"
_class
loc:@encodeDa/kernel*
validate_shape(*(
_output_shapes
:*
use_locking(

encodeDa/kernel/readIdentityencodeDa/kernel*(
_output_shapes
:*
T0*"
_class
loc:@encodeDa/kernel
]
encodeDa/ConstConst*
valueB*    *
dtype0*
_output_shapes	
:
{
encodeDa/bias
VariableV2*
dtype0*
_output_shapes	
:*
	container *
shape:*
shared_name 
Ў
encodeDa/bias/AssignAssignencodeDa/biasencodeDa/Const*
use_locking(*
T0* 
_class
loc:@encodeDa/bias*
validate_shape(*
_output_shapes	
:
u
encodeDa/bias/readIdentityencodeDa/bias*
T0* 
_class
loc:@encodeDa/bias*
_output_shapes	
:

encodeDa/convolutionConv2DpoolC/MaxPoolencodeDa/kernel/read*
paddingSAME*B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ*
	dilations
*
T0*
data_formatNHWC*
strides
*
explicit_paddings
 *
use_cudnn_on_gpu(
Љ
encodeDa/BiasAddBiasAddencodeDa/convolutionencodeDa/bias/read*
T0*
data_formatNHWC*B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
t
encodeDa/ReluReluencodeDa/BiasAdd*B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ*
T0
f
spatial_dropout2d_2/ShapeShapeencodeDa/Relu*
T0*
out_type0*
_output_shapes
:
q
'spatial_dropout2d_2/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
s
)spatial_dropout2d_2/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
s
)spatial_dropout2d_2/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
н
!spatial_dropout2d_2/strided_sliceStridedSlicespatial_dropout2d_2/Shape'spatial_dropout2d_2/strided_slice/stack)spatial_dropout2d_2/strided_slice/stack_1)spatial_dropout2d_2/strided_slice/stack_2*
Index0*
T0*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
s
)spatial_dropout2d_2/strided_slice_1/stackConst*
valueB:*
dtype0*
_output_shapes
:
u
+spatial_dropout2d_2/strided_slice_1/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
u
+spatial_dropout2d_2/strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
х
#spatial_dropout2d_2/strided_slice_1StridedSlicespatial_dropout2d_2/Shape)spatial_dropout2d_2/strided_slice_1/stack+spatial_dropout2d_2/strided_slice_1/stack_1+spatial_dropout2d_2/strided_slice_1/stack_2*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0*
shrink_axis_mask
 
spatial_dropout2d_2/cond/SwitchSwitch(spatial_dropout2d_1/keras_learning_phase(spatial_dropout2d_1/keras_learning_phase*
T0
*
_output_shapes
: : 
q
!spatial_dropout2d_2/cond/switch_tIdentity!spatial_dropout2d_2/cond/Switch:1*
T0
*
_output_shapes
: 
o
!spatial_dropout2d_2/cond/switch_fIdentityspatial_dropout2d_2/cond/Switch*
T0
*
_output_shapes
: 
w
 spatial_dropout2d_2/cond/pred_idIdentity(spatial_dropout2d_1/keras_learning_phase*
T0
*
_output_shapes
: 

spatial_dropout2d_2/cond/mul/yConst"^spatial_dropout2d_2/cond/switch_t*
valueB
 *  ?*
dtype0*
_output_shapes
: 
З
spatial_dropout2d_2/cond/mulMul%spatial_dropout2d_2/cond/mul/Switch:1spatial_dropout2d_2/cond/mul/y*
T0*B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
ћ
#spatial_dropout2d_2/cond/mul/SwitchSwitchencodeDa/Relu spatial_dropout2d_2/cond/pred_id*
T0* 
_class
loc:@encodeDa/Relu*p
_output_shapes^
\:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ

%spatial_dropout2d_2/cond/dropout/rateConst"^spatial_dropout2d_2/cond/switch_t*
valueB
 *ЭЬL>*
dtype0*
_output_shapes
: 

7spatial_dropout2d_2/cond/dropout/random_uniform/shape/1Const"^spatial_dropout2d_2/cond/switch_t*
value	B :*
dtype0*
_output_shapes
: 

7spatial_dropout2d_2/cond/dropout/random_uniform/shape/2Const"^spatial_dropout2d_2/cond/switch_t*
value	B :*
dtype0*
_output_shapes
: 
ы
5spatial_dropout2d_2/cond/dropout/random_uniform/shapePack>spatial_dropout2d_2/cond/dropout/random_uniform/shape/Switch:17spatial_dropout2d_2/cond/dropout/random_uniform/shape/17spatial_dropout2d_2/cond/dropout/random_uniform/shape/2@spatial_dropout2d_2/cond/dropout/random_uniform/shape/Switch_1:1*
T0*

axis *
N*
_output_shapes
:
ф
<spatial_dropout2d_2/cond/dropout/random_uniform/shape/SwitchSwitch!spatial_dropout2d_2/strided_slice spatial_dropout2d_2/cond/pred_id*
T0*4
_class*
(&loc:@spatial_dropout2d_2/strided_slice*
_output_shapes
: : 
ъ
>spatial_dropout2d_2/cond/dropout/random_uniform/shape/Switch_1Switch#spatial_dropout2d_2/strided_slice_1 spatial_dropout2d_2/cond/pred_id*
_output_shapes
: : *
T0*6
_class,
*(loc:@spatial_dropout2d_2/strided_slice_1

3spatial_dropout2d_2/cond/dropout/random_uniform/minConst"^spatial_dropout2d_2/cond/switch_t*
valueB
 *    *
dtype0*
_output_shapes
: 

3spatial_dropout2d_2/cond/dropout/random_uniform/maxConst"^spatial_dropout2d_2/cond/switch_t*
dtype0*
_output_shapes
: *
valueB
 *  ?
ѓ
=spatial_dropout2d_2/cond/dropout/random_uniform/RandomUniformRandomUniform5spatial_dropout2d_2/cond/dropout/random_uniform/shape*
seedБџх)*
T0*
dtype0*8
_output_shapes&
$:"џџџџџџџџџџџџџџџџџџ*
seed2чЩf
Х
3spatial_dropout2d_2/cond/dropout/random_uniform/subSub3spatial_dropout2d_2/cond/dropout/random_uniform/max3spatial_dropout2d_2/cond/dropout/random_uniform/min*
T0*
_output_shapes
: 
ё
3spatial_dropout2d_2/cond/dropout/random_uniform/mulMul=spatial_dropout2d_2/cond/dropout/random_uniform/RandomUniform3spatial_dropout2d_2/cond/dropout/random_uniform/sub*
T0*8
_output_shapes&
$:"џџџџџџџџџџџџџџџџџџ
у
/spatial_dropout2d_2/cond/dropout/random_uniformAdd3spatial_dropout2d_2/cond/dropout/random_uniform/mul3spatial_dropout2d_2/cond/dropout/random_uniform/min*
T0*8
_output_shapes&
$:"џџџџџџџџџџџџџџџџџџ

&spatial_dropout2d_2/cond/dropout/sub/xConst"^spatial_dropout2d_2/cond/switch_t*
dtype0*
_output_shapes
: *
valueB
 *  ?

$spatial_dropout2d_2/cond/dropout/subSub&spatial_dropout2d_2/cond/dropout/sub/x%spatial_dropout2d_2/cond/dropout/rate*
_output_shapes
: *
T0

*spatial_dropout2d_2/cond/dropout/truediv/xConst"^spatial_dropout2d_2/cond/switch_t*
valueB
 *  ?*
dtype0*
_output_shapes
: 
І
(spatial_dropout2d_2/cond/dropout/truedivRealDiv*spatial_dropout2d_2/cond/dropout/truediv/x$spatial_dropout2d_2/cond/dropout/sub*
T0*
_output_shapes
: 
и
-spatial_dropout2d_2/cond/dropout/GreaterEqualGreaterEqual/spatial_dropout2d_2/cond/dropout/random_uniform%spatial_dropout2d_2/cond/dropout/rate*
T0*8
_output_shapes&
$:"џџџџџџџџџџџџџџџџџџ
Р
$spatial_dropout2d_2/cond/dropout/mulMulspatial_dropout2d_2/cond/mul(spatial_dropout2d_2/cond/dropout/truediv*
T0*B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
О
%spatial_dropout2d_2/cond/dropout/CastCast-spatial_dropout2d_2/cond/dropout/GreaterEqual*

SrcT0
*
Truncate( *8
_output_shapes&
$:"џџџџџџџџџџџџџџџџџџ*

DstT0
Ч
&spatial_dropout2d_2/cond/dropout/mul_1Mul$spatial_dropout2d_2/cond/dropout/mul%spatial_dropout2d_2/cond/dropout/Cast*B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ*
T0
љ
!spatial_dropout2d_2/cond/Switch_1SwitchencodeDa/Relu spatial_dropout2d_2/cond/pred_id*
T0* 
_class
loc:@encodeDa/Relu*p
_output_shapes^
\:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
Ъ
spatial_dropout2d_2/cond/MergeMerge!spatial_dropout2d_2/cond/Switch_1&spatial_dropout2d_2/cond/dropout/mul_1*
T0*
N*D
_output_shapes2
0:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ: 
v
encodeDb/random_uniform/shapeConst*
dtype0*
_output_shapes
:*%
valueB"            
`
encodeDb/random_uniform/minConst*
valueB
 *ьQН*
dtype0*
_output_shapes
: 
`
encodeDb/random_uniform/maxConst*
dtype0*
_output_shapes
: *
valueB
 *ьQ=
Д
%encodeDb/random_uniform/RandomUniformRandomUniformencodeDb/random_uniform/shape*
dtype0*(
_output_shapes
:*
seed2эЉі*
seedБџх)*
T0
}
encodeDb/random_uniform/subSubencodeDb/random_uniform/maxencodeDb/random_uniform/min*
T0*
_output_shapes
: 

encodeDb/random_uniform/mulMul%encodeDb/random_uniform/RandomUniformencodeDb/random_uniform/sub*
T0*(
_output_shapes
:

encodeDb/random_uniformAddencodeDb/random_uniform/mulencodeDb/random_uniform/min*
T0*(
_output_shapes
:

encodeDb/kernel
VariableV2*
dtype0*(
_output_shapes
:*
	container *
shape:*
shared_name 
Ъ
encodeDb/kernel/AssignAssignencodeDb/kernelencodeDb/random_uniform*
validate_shape(*(
_output_shapes
:*
use_locking(*
T0*"
_class
loc:@encodeDb/kernel

encodeDb/kernel/readIdentityencodeDb/kernel*
T0*"
_class
loc:@encodeDb/kernel*(
_output_shapes
:
]
encodeDb/ConstConst*
valueB*    *
dtype0*
_output_shapes	
:
{
encodeDb/bias
VariableV2*
shape:*
shared_name *
dtype0*
_output_shapes	
:*
	container 
Ў
encodeDb/bias/AssignAssignencodeDb/biasencodeDb/Const*
use_locking(*
T0* 
_class
loc:@encodeDb/bias*
validate_shape(*
_output_shapes	
:
u
encodeDb/bias/readIdentityencodeDb/bias*
T0* 
_class
loc:@encodeDb/bias*
_output_shapes	
:
Ј
encodeDb/convolutionConv2Dspatial_dropout2d_2/cond/MergeencodeDb/kernel/read*
	dilations
*
T0*
strides
*
data_formatNHWC*
explicit_paddings
 *
use_cudnn_on_gpu(*
paddingSAME*B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
Љ
encodeDb/BiasAddBiasAddencodeDb/convolutionencodeDb/bias/read*
T0*
data_formatNHWC*B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
t
encodeDb/ReluReluencodeDb/BiasAdd*
T0*B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
Ч
poolD/MaxPoolMaxPoolencodeDb/Relu*
ksize
*
paddingVALID*B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ*
T0*
strides
*
data_formatNHWC
v
encodeEa/random_uniform/shapeConst*%
valueB"            *
dtype0*
_output_shapes
:
`
encodeEa/random_uniform/minConst*
valueB
 *ьQН*
dtype0*
_output_shapes
: 
`
encodeEa/random_uniform/maxConst*
valueB
 *ьQ=*
dtype0*
_output_shapes
: 
Г
%encodeEa/random_uniform/RandomUniformRandomUniformencodeEa/random_uniform/shape*
seedБџх)*
T0*
dtype0*(
_output_shapes
:*
seed2џi
}
encodeEa/random_uniform/subSubencodeEa/random_uniform/maxencodeEa/random_uniform/min*
T0*
_output_shapes
: 

encodeEa/random_uniform/mulMul%encodeEa/random_uniform/RandomUniformencodeEa/random_uniform/sub*
T0*(
_output_shapes
:

encodeEa/random_uniformAddencodeEa/random_uniform/mulencodeEa/random_uniform/min*
T0*(
_output_shapes
:

encodeEa/kernel
VariableV2*
dtype0*(
_output_shapes
:*
	container *
shape:*
shared_name 
Ъ
encodeEa/kernel/AssignAssignencodeEa/kernelencodeEa/random_uniform*
use_locking(*
T0*"
_class
loc:@encodeEa/kernel*
validate_shape(*(
_output_shapes
:

encodeEa/kernel/readIdentityencodeEa/kernel*(
_output_shapes
:*
T0*"
_class
loc:@encodeEa/kernel
]
encodeEa/ConstConst*
valueB*    *
dtype0*
_output_shapes	
:
{
encodeEa/bias
VariableV2*
dtype0*
_output_shapes	
:*
	container *
shape:*
shared_name 
Ў
encodeEa/bias/AssignAssignencodeEa/biasencodeEa/Const*
T0* 
_class
loc:@encodeEa/bias*
validate_shape(*
_output_shapes	
:*
use_locking(
u
encodeEa/bias/readIdentityencodeEa/bias*
T0* 
_class
loc:@encodeEa/bias*
_output_shapes	
:

encodeEa/convolutionConv2DpoolD/MaxPoolencodeEa/kernel/read*
	dilations
*
T0*
data_formatNHWC*
strides
*
explicit_paddings
 *
use_cudnn_on_gpu(*
paddingSAME*B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
Љ
encodeEa/BiasAddBiasAddencodeEa/convolutionencodeEa/bias/read*
T0*
data_formatNHWC*B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
t
encodeEa/ReluReluencodeEa/BiasAdd*
T0*B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
v
encodeEb/random_uniform/shapeConst*%
valueB"            *
dtype0*
_output_shapes
:
`
encodeEb/random_uniform/minConst*
valueB
 *:ЭН*
dtype0*
_output_shapes
: 
`
encodeEb/random_uniform/maxConst*
valueB
 *:Э=*
dtype0*
_output_shapes
: 
Г
%encodeEb/random_uniform/RandomUniformRandomUniformencodeEb/random_uniform/shape*
seedБџх)*
T0*
dtype0*(
_output_shapes
:*
seed2Р
}
encodeEb/random_uniform/subSubencodeEb/random_uniform/maxencodeEb/random_uniform/min*
T0*
_output_shapes
: 

encodeEb/random_uniform/mulMul%encodeEb/random_uniform/RandomUniformencodeEb/random_uniform/sub*(
_output_shapes
:*
T0

encodeEb/random_uniformAddencodeEb/random_uniform/mulencodeEb/random_uniform/min*
T0*(
_output_shapes
:

encodeEb/kernel
VariableV2*
shape:*
shared_name *
dtype0*(
_output_shapes
:*
	container 
Ъ
encodeEb/kernel/AssignAssignencodeEb/kernelencodeEb/random_uniform*
T0*"
_class
loc:@encodeEb/kernel*
validate_shape(*(
_output_shapes
:*
use_locking(

encodeEb/kernel/readIdentityencodeEb/kernel*
T0*"
_class
loc:@encodeEb/kernel*(
_output_shapes
:
]
encodeEb/ConstConst*
valueB*    *
dtype0*
_output_shapes	
:
{
encodeEb/bias
VariableV2*
dtype0*
_output_shapes	
:*
	container *
shape:*
shared_name 
Ў
encodeEb/bias/AssignAssignencodeEb/biasencodeEb/Const*
use_locking(*
T0* 
_class
loc:@encodeEb/bias*
validate_shape(*
_output_shapes	
:
u
encodeEb/bias/readIdentityencodeEb/bias*
T0* 
_class
loc:@encodeEb/bias*
_output_shapes	
:

encodeEb/convolutionConv2DencodeEa/ReluencodeEb/kernel/read*B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ*
	dilations
*
T0*
strides
*
data_formatNHWC*
explicit_paddings
 *
use_cudnn_on_gpu(*
paddingSAME
Љ
encodeEb/BiasAddBiasAddencodeEb/convolutionencodeEb/bias/read*
T0*
data_formatNHWC*B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
t
encodeEb/ReluReluencodeEb/BiasAdd*
T0*B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
V
	upE/ShapeShapeencodeEb/Relu*
_output_shapes
:*
T0*
out_type0
a
upE/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:
c
upE/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
c
upE/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:

upE/strided_sliceStridedSlice	upE/ShapeupE/strided_slice/stackupE/strided_slice/stack_1upE/strided_slice/stack_2*
Index0*
T0*
shrink_axis_mask *

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
:
Z
	upE/ConstConst*
dtype0*
_output_shapes
:*
valueB"      
Q
upE/mulMulupE/strided_slice	upE/Const*
T0*
_output_shapes
:
И
upE/ResizeBilinearResizeBilinearencodeEb/ReluupE/mul*
T0*B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ*
align_corners( *
half_pixel_centers( 
U
concatD/concat/axisConst*
value	B :*
dtype0*
_output_shapes
: 
Д
concatD/concatConcatV2upE/ResizeBilinearencodeDb/ReluconcatD/concat/axis*
N*B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ*

Tidx0*
T0
v
decodeCa/random_uniform/shapeConst*%
valueB"            *
dtype0*
_output_shapes
:
`
decodeCa/random_uniform/minConst*
valueB
 *я[ёМ*
dtype0*
_output_shapes
: 
`
decodeCa/random_uniform/maxConst*
valueB
 *я[ё<*
dtype0*
_output_shapes
: 
Д
%decodeCa/random_uniform/RandomUniformRandomUniformdecodeCa/random_uniform/shape*
seedБџх)*
T0*
dtype0*(
_output_shapes
:*
seed2Ї
}
decodeCa/random_uniform/subSubdecodeCa/random_uniform/maxdecodeCa/random_uniform/min*
T0*
_output_shapes
: 

decodeCa/random_uniform/mulMul%decodeCa/random_uniform/RandomUniformdecodeCa/random_uniform/sub*(
_output_shapes
:*
T0

decodeCa/random_uniformAdddecodeCa/random_uniform/muldecodeCa/random_uniform/min*(
_output_shapes
:*
T0

decodeCa/kernel
VariableV2*
shared_name *
dtype0*(
_output_shapes
:*
	container *
shape:
Ъ
decodeCa/kernel/AssignAssigndecodeCa/kerneldecodeCa/random_uniform*
use_locking(*
T0*"
_class
loc:@decodeCa/kernel*
validate_shape(*(
_output_shapes
:

decodeCa/kernel/readIdentitydecodeCa/kernel*
T0*"
_class
loc:@decodeCa/kernel*(
_output_shapes
:
]
decodeCa/ConstConst*
valueB*    *
dtype0*
_output_shapes	
:
{
decodeCa/bias
VariableV2*
shape:*
shared_name *
dtype0*
_output_shapes	
:*
	container 
Ў
decodeCa/bias/AssignAssigndecodeCa/biasdecodeCa/Const*
use_locking(*
T0* 
_class
loc:@decodeCa/bias*
validate_shape(*
_output_shapes	
:
u
decodeCa/bias/readIdentitydecodeCa/bias*
_output_shapes	
:*
T0* 
_class
loc:@decodeCa/bias

decodeCa/convolutionConv2DconcatD/concatdecodeCa/kernel/read*
paddingSAME*B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ*
	dilations
*
T0*
data_formatNHWC*
strides
*
explicit_paddings
 *
use_cudnn_on_gpu(
Љ
decodeCa/BiasAddBiasAdddecodeCa/convolutiondecodeCa/bias/read*
T0*
data_formatNHWC*B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
t
decodeCa/ReluReludecodeCa/BiasAdd*
T0*B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
v
decodeCb/random_uniform/shapeConst*%
valueB"            *
dtype0*
_output_shapes
:
`
decodeCb/random_uniform/minConst*
valueB
 *ьQН*
dtype0*
_output_shapes
: 
`
decodeCb/random_uniform/maxConst*
valueB
 *ьQ=*
dtype0*
_output_shapes
: 
Д
%decodeCb/random_uniform/RandomUniformRandomUniformdecodeCb/random_uniform/shape*
seedБџх)*
T0*
dtype0*(
_output_shapes
:*
seed2ђі
}
decodeCb/random_uniform/subSubdecodeCb/random_uniform/maxdecodeCb/random_uniform/min*
_output_shapes
: *
T0

decodeCb/random_uniform/mulMul%decodeCb/random_uniform/RandomUniformdecodeCb/random_uniform/sub*
T0*(
_output_shapes
:

decodeCb/random_uniformAdddecodeCb/random_uniform/muldecodeCb/random_uniform/min*
T0*(
_output_shapes
:

decodeCb/kernel
VariableV2*
dtype0*(
_output_shapes
:*
	container *
shape:*
shared_name 
Ъ
decodeCb/kernel/AssignAssigndecodeCb/kerneldecodeCb/random_uniform*
use_locking(*
T0*"
_class
loc:@decodeCb/kernel*
validate_shape(*(
_output_shapes
:

decodeCb/kernel/readIdentitydecodeCb/kernel*
T0*"
_class
loc:@decodeCb/kernel*(
_output_shapes
:
]
decodeCb/ConstConst*
valueB*    *
dtype0*
_output_shapes	
:
{
decodeCb/bias
VariableV2*
shared_name *
dtype0*
_output_shapes	
:*
	container *
shape:
Ў
decodeCb/bias/AssignAssigndecodeCb/biasdecodeCb/Const*
T0* 
_class
loc:@decodeCb/bias*
validate_shape(*
_output_shapes	
:*
use_locking(
u
decodeCb/bias/readIdentitydecodeCb/bias*
T0* 
_class
loc:@decodeCb/bias*
_output_shapes	
:

decodeCb/convolutionConv2DdecodeCa/ReludecodeCb/kernel/read*
data_formatNHWC*
strides
*
explicit_paddings
 *
use_cudnn_on_gpu(*
paddingSAME*B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ*
	dilations
*
T0
Љ
decodeCb/BiasAddBiasAdddecodeCb/convolutiondecodeCb/bias/read*
T0*
data_formatNHWC*B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
t
decodeCb/ReluReludecodeCb/BiasAdd*B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ*
T0
V
	upC/ShapeShapedecodeCb/Relu*
T0*
out_type0*
_output_shapes
:
a
upC/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB:
c
upC/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
c
upC/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:

upC/strided_sliceStridedSlice	upC/ShapeupC/strided_slice/stackupC/strided_slice/stack_1upC/strided_slice/stack_2*
shrink_axis_mask *
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
:*
Index0*
T0
Z
	upC/ConstConst*
dtype0*
_output_shapes
:*
valueB"      
Q
upC/mulMulupC/strided_slice	upC/Const*
_output_shapes
:*
T0
И
upC/ResizeBilinearResizeBilineardecodeCb/ReluupC/mul*
align_corners( *
half_pixel_centers( *
T0*B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
U
concatC/concat/axisConst*
value	B :*
dtype0*
_output_shapes
: 
Д
concatC/concatConcatV2upC/ResizeBilinearencodeCb/ReluconcatC/concat/axis*
T0*
N*B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ*

Tidx0
v
decodeBa/random_uniform/shapeConst*%
valueB"           *
dtype0*
_output_shapes
:
`
decodeBa/random_uniform/minConst*
valueB
 *ЋЊ*Н*
dtype0*
_output_shapes
: 
`
decodeBa/random_uniform/maxConst*
valueB
 *ЋЊ*=*
dtype0*
_output_shapes
: 
Г
%decodeBa/random_uniform/RandomUniformRandomUniformdecodeBa/random_uniform/shape*
T0*
dtype0*(
_output_shapes
:*
seed2ЭN*
seedБџх)
}
decodeBa/random_uniform/subSubdecodeBa/random_uniform/maxdecodeBa/random_uniform/min*
T0*
_output_shapes
: 

decodeBa/random_uniform/mulMul%decodeBa/random_uniform/RandomUniformdecodeBa/random_uniform/sub*(
_output_shapes
:*
T0

decodeBa/random_uniformAdddecodeBa/random_uniform/muldecodeBa/random_uniform/min*
T0*(
_output_shapes
:

decodeBa/kernel
VariableV2*
dtype0*(
_output_shapes
:*
	container *
shape:*
shared_name 
Ъ
decodeBa/kernel/AssignAssigndecodeBa/kerneldecodeBa/random_uniform*
validate_shape(*(
_output_shapes
:*
use_locking(*
T0*"
_class
loc:@decodeBa/kernel

decodeBa/kernel/readIdentitydecodeBa/kernel*
T0*"
_class
loc:@decodeBa/kernel*(
_output_shapes
:
]
decodeBa/ConstConst*
valueB*    *
dtype0*
_output_shapes	
:
{
decodeBa/bias
VariableV2*
dtype0*
_output_shapes	
:*
	container *
shape:*
shared_name 
Ў
decodeBa/bias/AssignAssigndecodeBa/biasdecodeBa/Const*
use_locking(*
T0* 
_class
loc:@decodeBa/bias*
validate_shape(*
_output_shapes	
:
u
decodeBa/bias/readIdentitydecodeBa/bias*
T0* 
_class
loc:@decodeBa/bias*
_output_shapes	
:

decodeBa/convolutionConv2DconcatC/concatdecodeBa/kernel/read*
paddingSAME*B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
explicit_paddings
 
Љ
decodeBa/BiasAddBiasAdddecodeBa/convolutiondecodeBa/bias/read*
T0*
data_formatNHWC*B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
t
decodeBa/ReluReludecodeBa/BiasAdd*
T0*B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
v
decodeBb/random_uniform/shapeConst*
dtype0*
_output_shapes
:*%
valueB"            
`
decodeBb/random_uniform/minConst*
valueB
 *:ЭН*
dtype0*
_output_shapes
: 
`
decodeBb/random_uniform/maxConst*
valueB
 *:Э=*
dtype0*
_output_shapes
: 
Г
%decodeBb/random_uniform/RandomUniformRandomUniformdecodeBb/random_uniform/shape*
T0*
dtype0*(
_output_shapes
:*
seed2ЇL*
seedБџх)
}
decodeBb/random_uniform/subSubdecodeBb/random_uniform/maxdecodeBb/random_uniform/min*
T0*
_output_shapes
: 

decodeBb/random_uniform/mulMul%decodeBb/random_uniform/RandomUniformdecodeBb/random_uniform/sub*
T0*(
_output_shapes
:

decodeBb/random_uniformAdddecodeBb/random_uniform/muldecodeBb/random_uniform/min*
T0*(
_output_shapes
:

decodeBb/kernel
VariableV2*
shape:*
shared_name *
dtype0*(
_output_shapes
:*
	container 
Ъ
decodeBb/kernel/AssignAssigndecodeBb/kerneldecodeBb/random_uniform*
use_locking(*
T0*"
_class
loc:@decodeBb/kernel*
validate_shape(*(
_output_shapes
:

decodeBb/kernel/readIdentitydecodeBb/kernel*
T0*"
_class
loc:@decodeBb/kernel*(
_output_shapes
:
]
decodeBb/ConstConst*
dtype0*
_output_shapes	
:*
valueB*    
{
decodeBb/bias
VariableV2*
dtype0*
_output_shapes	
:*
	container *
shape:*
shared_name 
Ў
decodeBb/bias/AssignAssigndecodeBb/biasdecodeBb/Const*
use_locking(*
T0* 
_class
loc:@decodeBb/bias*
validate_shape(*
_output_shapes	
:
u
decodeBb/bias/readIdentitydecodeBb/bias*
_output_shapes	
:*
T0* 
_class
loc:@decodeBb/bias

decodeBb/convolutionConv2DdecodeBa/ReludecodeBb/kernel/read*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
explicit_paddings
 *
paddingSAME*B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
Љ
decodeBb/BiasAddBiasAdddecodeBb/convolutiondecodeBb/bias/read*
T0*
data_formatNHWC*B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
t
decodeBb/ReluReludecodeBb/BiasAdd*
T0*B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
V
	upB/ShapeShapedecodeBb/Relu*
T0*
out_type0*
_output_shapes
:
a
upB/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB:
c
upB/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
c
upB/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:

upB/strided_sliceStridedSlice	upB/ShapeupB/strided_slice/stackupB/strided_slice/stack_1upB/strided_slice/stack_2*
shrink_axis_mask *
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
:*
T0*
Index0
Z
	upB/ConstConst*
valueB"      *
dtype0*
_output_shapes
:
Q
upB/mulMulupB/strided_slice	upB/Const*
T0*
_output_shapes
:
И
upB/ResizeBilinearResizeBilineardecodeBb/ReluupB/mul*
align_corners( *
half_pixel_centers( *
T0*B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
U
concatB/concat/axisConst*
value	B :*
dtype0*
_output_shapes
: 
Д
concatB/concatConcatV2upB/ResizeBilinearencodeBb/ReluconcatB/concat/axis*
T0*
N*B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџР*

Tidx0
v
decodeAa/random_uniform/shapeConst*%
valueB"      Р   @   *
dtype0*
_output_shapes
:
`
decodeAa/random_uniform/minConst*
dtype0*
_output_shapes
: *
valueB
 *я[qН
`
decodeAa/random_uniform/maxConst*
valueB
 *я[q=*
dtype0*
_output_shapes
: 
Г
%decodeAa/random_uniform/RandomUniformRandomUniformdecodeAa/random_uniform/shape*
seedБџх)*
T0*
dtype0*'
_output_shapes
:Р@*
seed2ЗЏ
}
decodeAa/random_uniform/subSubdecodeAa/random_uniform/maxdecodeAa/random_uniform/min*
T0*
_output_shapes
: 

decodeAa/random_uniform/mulMul%decodeAa/random_uniform/RandomUniformdecodeAa/random_uniform/sub*'
_output_shapes
:Р@*
T0

decodeAa/random_uniformAdddecodeAa/random_uniform/muldecodeAa/random_uniform/min*'
_output_shapes
:Р@*
T0

decodeAa/kernel
VariableV2*
dtype0*'
_output_shapes
:Р@*
	container *
shape:Р@*
shared_name 
Щ
decodeAa/kernel/AssignAssigndecodeAa/kerneldecodeAa/random_uniform*
use_locking(*
T0*"
_class
loc:@decodeAa/kernel*
validate_shape(*'
_output_shapes
:Р@

decodeAa/kernel/readIdentitydecodeAa/kernel*'
_output_shapes
:Р@*
T0*"
_class
loc:@decodeAa/kernel
[
decodeAa/ConstConst*
valueB@*    *
dtype0*
_output_shapes
:@
y
decodeAa/bias
VariableV2*
shape:@*
shared_name *
dtype0*
_output_shapes
:@*
	container 
­
decodeAa/bias/AssignAssigndecodeAa/biasdecodeAa/Const*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0* 
_class
loc:@decodeAa/bias
t
decodeAa/bias/readIdentitydecodeAa/bias*
T0* 
_class
loc:@decodeAa/bias*
_output_shapes
:@

decodeAa/convolutionConv2DconcatB/concatdecodeAa/kernel/read*
T0*
data_formatNHWC*
strides
*
explicit_paddings
 *
use_cudnn_on_gpu(*
paddingSAME*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
	dilations

Ј
decodeAa/BiasAddBiasAdddecodeAa/convolutiondecodeAa/bias/read*
T0*
data_formatNHWC*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
s
decodeAa/ReluReludecodeAa/BiasAdd*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
v
decodeAb/random_uniform/shapeConst*
dtype0*
_output_shapes
:*%
valueB"      @   @   
`
decodeAb/random_uniform/minConst*
valueB
 *ьбН*
dtype0*
_output_shapes
: 
`
decodeAb/random_uniform/maxConst*
valueB
 *ьб=*
dtype0*
_output_shapes
: 
В
%decodeAb/random_uniform/RandomUniformRandomUniformdecodeAb/random_uniform/shape*
T0*
dtype0*&
_output_shapes
:@@*
seed2хЖЦ*
seedБџх)
}
decodeAb/random_uniform/subSubdecodeAb/random_uniform/maxdecodeAb/random_uniform/min*
T0*
_output_shapes
: 

decodeAb/random_uniform/mulMul%decodeAb/random_uniform/RandomUniformdecodeAb/random_uniform/sub*&
_output_shapes
:@@*
T0

decodeAb/random_uniformAdddecodeAb/random_uniform/muldecodeAb/random_uniform/min*
T0*&
_output_shapes
:@@

decodeAb/kernel
VariableV2*
dtype0*&
_output_shapes
:@@*
	container *
shape:@@*
shared_name 
Ш
decodeAb/kernel/AssignAssigndecodeAb/kerneldecodeAb/random_uniform*
T0*"
_class
loc:@decodeAb/kernel*
validate_shape(*&
_output_shapes
:@@*
use_locking(

decodeAb/kernel/readIdentitydecodeAb/kernel*
T0*"
_class
loc:@decodeAb/kernel*&
_output_shapes
:@@
[
decodeAb/ConstConst*
valueB@*    *
dtype0*
_output_shapes
:@
y
decodeAb/bias
VariableV2*
shape:@*
shared_name *
dtype0*
_output_shapes
:@*
	container 
­
decodeAb/bias/AssignAssigndecodeAb/biasdecodeAb/Const*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0* 
_class
loc:@decodeAb/bias
t
decodeAb/bias/readIdentitydecodeAb/bias*
T0* 
_class
loc:@decodeAb/bias*
_output_shapes
:@

decodeAb/convolutionConv2DdecodeAa/ReludecodeAb/kernel/read*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
explicit_paddings
 *
paddingSAME
Ј
decodeAb/BiasAddBiasAdddecodeAb/convolutiondecodeAb/bias/read*
data_formatNHWC*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
T0
s
decodeAb/ReluReludecodeAb/BiasAdd*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
V
	upA/ShapeShapedecodeAb/Relu*
T0*
out_type0*
_output_shapes
:
a
upA/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:
c
upA/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
c
upA/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:

upA/strided_sliceStridedSlice	upA/ShapeupA/strided_slice/stackupA/strided_slice/stack_1upA/strided_slice/stack_2*
Index0*
T0*
shrink_axis_mask *

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
:
Z
	upA/ConstConst*
dtype0*
_output_shapes
:*
valueB"      
Q
upA/mulMulupA/strided_slice	upA/Const*
_output_shapes
:*
T0
З
upA/ResizeBilinearResizeBilineardecodeAb/ReluupA/mul*
align_corners( *
half_pixel_centers( *
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
U
concatA/concat/axisConst*
value	B :*
dtype0*
_output_shapes
: 
Г
concatA/concatConcatV2upA/ResizeBilinearencodeAb/ReluconcatA/concat/axis*
N*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ`*

Tidx0*
T0
v
convOuta/random_uniform/shapeConst*%
valueB"      `       *
dtype0*
_output_shapes
:
`
convOuta/random_uniform/minConst*
dtype0*
_output_shapes
: *
valueB
 *ЋЊЊН
`
convOuta/random_uniform/maxConst*
dtype0*
_output_shapes
: *
valueB
 *ЋЊЊ=
В
%convOuta/random_uniform/RandomUniformRandomUniformconvOuta/random_uniform/shape*
T0*
dtype0*&
_output_shapes
:` *
seed2ПЪЪ*
seedБџх)
}
convOuta/random_uniform/subSubconvOuta/random_uniform/maxconvOuta/random_uniform/min*
T0*
_output_shapes
: 

convOuta/random_uniform/mulMul%convOuta/random_uniform/RandomUniformconvOuta/random_uniform/sub*&
_output_shapes
:` *
T0

convOuta/random_uniformAddconvOuta/random_uniform/mulconvOuta/random_uniform/min*
T0*&
_output_shapes
:` 

convOuta/kernel
VariableV2*
shape:` *
shared_name *
dtype0*&
_output_shapes
:` *
	container 
Ш
convOuta/kernel/AssignAssignconvOuta/kernelconvOuta/random_uniform*
validate_shape(*&
_output_shapes
:` *
use_locking(*
T0*"
_class
loc:@convOuta/kernel

convOuta/kernel/readIdentityconvOuta/kernel*
T0*"
_class
loc:@convOuta/kernel*&
_output_shapes
:` 
[
convOuta/ConstConst*
valueB *    *
dtype0*
_output_shapes
: 
y
convOuta/bias
VariableV2*
shape: *
shared_name *
dtype0*
_output_shapes
: *
	container 
­
convOuta/bias/AssignAssignconvOuta/biasconvOuta/Const*
validate_shape(*
_output_shapes
: *
use_locking(*
T0* 
_class
loc:@convOuta/bias
t
convOuta/bias/readIdentityconvOuta/bias*
T0* 
_class
loc:@convOuta/bias*
_output_shapes
: 

convOuta/convolutionConv2DconcatA/concatconvOuta/kernel/read*
paddingSAME*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *
	dilations
*
T0*
strides
*
data_formatNHWC*
explicit_paddings
 *
use_cudnn_on_gpu(
Ј
convOuta/BiasAddBiasAddconvOuta/convolutionconvOuta/bias/read*
data_formatNHWC*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *
T0
s
convOuta/ReluReluconvOuta/BiasAdd*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
v
convOutb/random_uniform/shapeConst*%
valueB"              *
dtype0*
_output_shapes
:
`
convOutb/random_uniform/minConst*
valueB
 *:ЭО*
dtype0*
_output_shapes
: 
`
convOutb/random_uniform/maxConst*
valueB
 *:Э>*
dtype0*
_output_shapes
: 
В
%convOutb/random_uniform/RandomUniformRandomUniformconvOutb/random_uniform/shape*
seedБџх)*
T0*
dtype0*&
_output_shapes
:  *
seed2Йєж
}
convOutb/random_uniform/subSubconvOutb/random_uniform/maxconvOutb/random_uniform/min*
T0*
_output_shapes
: 

convOutb/random_uniform/mulMul%convOutb/random_uniform/RandomUniformconvOutb/random_uniform/sub*
T0*&
_output_shapes
:  

convOutb/random_uniformAddconvOutb/random_uniform/mulconvOutb/random_uniform/min*
T0*&
_output_shapes
:  

convOutb/kernel
VariableV2*
shape:  *
shared_name *
dtype0*&
_output_shapes
:  *
	container 
Ш
convOutb/kernel/AssignAssignconvOutb/kernelconvOutb/random_uniform*
T0*"
_class
loc:@convOutb/kernel*
validate_shape(*&
_output_shapes
:  *
use_locking(

convOutb/kernel/readIdentityconvOutb/kernel*
T0*"
_class
loc:@convOutb/kernel*&
_output_shapes
:  
[
convOutb/ConstConst*
valueB *    *
dtype0*
_output_shapes
: 
y
convOutb/bias
VariableV2*
dtype0*
_output_shapes
: *
	container *
shape: *
shared_name 
­
convOutb/bias/AssignAssignconvOutb/biasconvOutb/Const*
T0* 
_class
loc:@convOutb/bias*
validate_shape(*
_output_shapes
: *
use_locking(
t
convOutb/bias/readIdentityconvOutb/bias*
T0* 
_class
loc:@convOutb/bias*
_output_shapes
: 

convOutb/convolutionConv2DconvOuta/ReluconvOutb/kernel/read*
paddingSAME*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *
	dilations
*
T0*
strides
*
data_formatNHWC*
explicit_paddings
 *
use_cudnn_on_gpu(
Ј
convOutb/BiasAddBiasAddconvOutb/convolutionconvOutb/bias/read*
data_formatNHWC*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *
T0
s
convOutb/ReluReluconvOutb/BiasAdd*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *
T0
|
#PredictionMask/random_uniform/shapeConst*%
valueB"             *
dtype0*
_output_shapes
:
f
!PredictionMask/random_uniform/minConst*
valueB
 *JQкО*
dtype0*
_output_shapes
: 
f
!PredictionMask/random_uniform/maxConst*
valueB
 *JQк>*
dtype0*
_output_shapes
: 
О
+PredictionMask/random_uniform/RandomUniformRandomUniform#PredictionMask/random_uniform/shape*
dtype0*&
_output_shapes
: *
seed2Љ*
seedБџх)*
T0

!PredictionMask/random_uniform/subSub!PredictionMask/random_uniform/max!PredictionMask/random_uniform/min*
T0*
_output_shapes
: 
Љ
!PredictionMask/random_uniform/mulMul+PredictionMask/random_uniform/RandomUniform!PredictionMask/random_uniform/sub*
T0*&
_output_shapes
: 

PredictionMask/random_uniformAdd!PredictionMask/random_uniform/mul!PredictionMask/random_uniform/min*
T0*&
_output_shapes
: 

PredictionMask/kernel
VariableV2*
dtype0*&
_output_shapes
: *
	container *
shape: *
shared_name 
р
PredictionMask/kernel/AssignAssignPredictionMask/kernelPredictionMask/random_uniform*
T0*(
_class
loc:@PredictionMask/kernel*
validate_shape(*&
_output_shapes
: *
use_locking(

PredictionMask/kernel/readIdentityPredictionMask/kernel*&
_output_shapes
: *
T0*(
_class
loc:@PredictionMask/kernel
a
PredictionMask/ConstConst*
valueB*    *
dtype0*
_output_shapes
:

PredictionMask/bias
VariableV2*
shape:*
shared_name *
dtype0*
_output_shapes
:*
	container 
Х
PredictionMask/bias/AssignAssignPredictionMask/biasPredictionMask/Const*
T0*&
_class
loc:@PredictionMask/bias*
validate_shape(*
_output_shapes
:*
use_locking(

PredictionMask/bias/readIdentityPredictionMask/bias*
T0*&
_class
loc:@PredictionMask/bias*
_output_shapes
:
Ѓ
PredictionMask/convolutionConv2DconvOutb/ReluPredictionMask/kernel/read*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
explicit_paddings
 *
paddingVALID
К
PredictionMask/BiasAddBiasAddPredictionMask/convolutionPredictionMask/bias/read*
T0*
data_formatNHWC*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ

PredictionMask/SigmoidSigmoidPredictionMask/BiasAdd*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
l
PlaceholderPlaceholder*
dtype0*&
_output_shapes
: *
shape: 
Ќ
AssignAssignencodeAa/kernelPlaceholder*
T0*"
_class
loc:@encodeAa/kernel*
validate_shape(*&
_output_shapes
: *
use_locking( 
V
Placeholder_1Placeholder*
dtype0*
_output_shapes
: *
shape: 
 
Assign_1AssignencodeAa/biasPlaceholder_1*
validate_shape(*
_output_shapes
: *
use_locking( *
T0* 
_class
loc:@encodeAa/bias
n
Placeholder_2Placeholder*
shape:  *
dtype0*&
_output_shapes
:  
А
Assign_2AssignencodeAb/kernelPlaceholder_2*
use_locking( *
T0*"
_class
loc:@encodeAb/kernel*
validate_shape(*&
_output_shapes
:  
V
Placeholder_3Placeholder*
dtype0*
_output_shapes
: *
shape: 
 
Assign_3AssignencodeAb/biasPlaceholder_3*
validate_shape(*
_output_shapes
: *
use_locking( *
T0* 
_class
loc:@encodeAb/bias
n
Placeholder_4Placeholder*
shape: @*
dtype0*&
_output_shapes
: @
А
Assign_4AssignencodeBa/kernelPlaceholder_4*
use_locking( *
T0*"
_class
loc:@encodeBa/kernel*
validate_shape(*&
_output_shapes
: @
V
Placeholder_5Placeholder*
dtype0*
_output_shapes
:@*
shape:@
 
Assign_5AssignencodeBa/biasPlaceholder_5*
use_locking( *
T0* 
_class
loc:@encodeBa/bias*
validate_shape(*
_output_shapes
:@
n
Placeholder_6Placeholder*
dtype0*&
_output_shapes
:@@*
shape:@@
А
Assign_6AssignencodeBb/kernelPlaceholder_6*
T0*"
_class
loc:@encodeBb/kernel*
validate_shape(*&
_output_shapes
:@@*
use_locking( 
V
Placeholder_7Placeholder*
dtype0*
_output_shapes
:@*
shape:@
 
Assign_7AssignencodeBb/biasPlaceholder_7*
use_locking( *
T0* 
_class
loc:@encodeBb/bias*
validate_shape(*
_output_shapes
:@
p
Placeholder_8Placeholder*
shape:@*
dtype0*'
_output_shapes
:@
Б
Assign_8AssignencodeCa/kernelPlaceholder_8*
validate_shape(*'
_output_shapes
:@*
use_locking( *
T0*"
_class
loc:@encodeCa/kernel
X
Placeholder_9Placeholder*
shape:*
dtype0*
_output_shapes	
:
Ё
Assign_9AssignencodeCa/biasPlaceholder_9*
use_locking( *
T0* 
_class
loc:@encodeCa/bias*
validate_shape(*
_output_shapes	
:
s
Placeholder_10Placeholder*
dtype0*(
_output_shapes
:*
shape:
Д
	Assign_10AssignencodeCb/kernelPlaceholder_10*
T0*"
_class
loc:@encodeCb/kernel*
validate_shape(*(
_output_shapes
:*
use_locking( 
Y
Placeholder_11Placeholder*
shape:*
dtype0*
_output_shapes	
:
Ѓ
	Assign_11AssignencodeCb/biasPlaceholder_11*
validate_shape(*
_output_shapes	
:*
use_locking( *
T0* 
_class
loc:@encodeCb/bias
s
Placeholder_12Placeholder*
shape:*
dtype0*(
_output_shapes
:
Д
	Assign_12AssignencodeDa/kernelPlaceholder_12*
use_locking( *
T0*"
_class
loc:@encodeDa/kernel*
validate_shape(*(
_output_shapes
:
Y
Placeholder_13Placeholder*
shape:*
dtype0*
_output_shapes	
:
Ѓ
	Assign_13AssignencodeDa/biasPlaceholder_13*
use_locking( *
T0* 
_class
loc:@encodeDa/bias*
validate_shape(*
_output_shapes	
:
s
Placeholder_14Placeholder*
shape:*
dtype0*(
_output_shapes
:
Д
	Assign_14AssignencodeDb/kernelPlaceholder_14*
validate_shape(*(
_output_shapes
:*
use_locking( *
T0*"
_class
loc:@encodeDb/kernel
Y
Placeholder_15Placeholder*
dtype0*
_output_shapes	
:*
shape:
Ѓ
	Assign_15AssignencodeDb/biasPlaceholder_15*
use_locking( *
T0* 
_class
loc:@encodeDb/bias*
validate_shape(*
_output_shapes	
:
s
Placeholder_16Placeholder*
shape:*
dtype0*(
_output_shapes
:
Д
	Assign_16AssignencodeEa/kernelPlaceholder_16*
use_locking( *
T0*"
_class
loc:@encodeEa/kernel*
validate_shape(*(
_output_shapes
:
Y
Placeholder_17Placeholder*
shape:*
dtype0*
_output_shapes	
:
Ѓ
	Assign_17AssignencodeEa/biasPlaceholder_17*
T0* 
_class
loc:@encodeEa/bias*
validate_shape(*
_output_shapes	
:*
use_locking( 
s
Placeholder_18Placeholder*
dtype0*(
_output_shapes
:*
shape:
Д
	Assign_18AssignencodeEb/kernelPlaceholder_18*
T0*"
_class
loc:@encodeEb/kernel*
validate_shape(*(
_output_shapes
:*
use_locking( 
Y
Placeholder_19Placeholder*
shape:*
dtype0*
_output_shapes	
:
Ѓ
	Assign_19AssignencodeEb/biasPlaceholder_19*
use_locking( *
T0* 
_class
loc:@encodeEb/bias*
validate_shape(*
_output_shapes	
:
s
Placeholder_20Placeholder*
dtype0*(
_output_shapes
:*
shape:
Д
	Assign_20AssigndecodeCa/kernelPlaceholder_20*
T0*"
_class
loc:@decodeCa/kernel*
validate_shape(*(
_output_shapes
:*
use_locking( 
Y
Placeholder_21Placeholder*
dtype0*
_output_shapes	
:*
shape:
Ѓ
	Assign_21AssigndecodeCa/biasPlaceholder_21*
use_locking( *
T0* 
_class
loc:@decodeCa/bias*
validate_shape(*
_output_shapes	
:
s
Placeholder_22Placeholder*
shape:*
dtype0*(
_output_shapes
:
Д
	Assign_22AssigndecodeCb/kernelPlaceholder_22*
use_locking( *
T0*"
_class
loc:@decodeCb/kernel*
validate_shape(*(
_output_shapes
:
Y
Placeholder_23Placeholder*
dtype0*
_output_shapes	
:*
shape:
Ѓ
	Assign_23AssigndecodeCb/biasPlaceholder_23*
use_locking( *
T0* 
_class
loc:@decodeCb/bias*
validate_shape(*
_output_shapes	
:
s
Placeholder_24Placeholder*
dtype0*(
_output_shapes
:*
shape:
Д
	Assign_24AssigndecodeBa/kernelPlaceholder_24*
use_locking( *
T0*"
_class
loc:@decodeBa/kernel*
validate_shape(*(
_output_shapes
:
Y
Placeholder_25Placeholder*
dtype0*
_output_shapes	
:*
shape:
Ѓ
	Assign_25AssigndecodeBa/biasPlaceholder_25*
use_locking( *
T0* 
_class
loc:@decodeBa/bias*
validate_shape(*
_output_shapes	
:
s
Placeholder_26Placeholder*
shape:*
dtype0*(
_output_shapes
:
Д
	Assign_26AssigndecodeBb/kernelPlaceholder_26*
T0*"
_class
loc:@decodeBb/kernel*
validate_shape(*(
_output_shapes
:*
use_locking( 
Y
Placeholder_27Placeholder*
dtype0*
_output_shapes	
:*
shape:
Ѓ
	Assign_27AssigndecodeBb/biasPlaceholder_27*
validate_shape(*
_output_shapes	
:*
use_locking( *
T0* 
_class
loc:@decodeBb/bias
q
Placeholder_28Placeholder*
dtype0*'
_output_shapes
:Р@*
shape:Р@
Г
	Assign_28AssigndecodeAa/kernelPlaceholder_28*
use_locking( *
T0*"
_class
loc:@decodeAa/kernel*
validate_shape(*'
_output_shapes
:Р@
W
Placeholder_29Placeholder*
dtype0*
_output_shapes
:@*
shape:@
Ђ
	Assign_29AssigndecodeAa/biasPlaceholder_29*
use_locking( *
T0* 
_class
loc:@decodeAa/bias*
validate_shape(*
_output_shapes
:@
o
Placeholder_30Placeholder*
shape:@@*
dtype0*&
_output_shapes
:@@
В
	Assign_30AssigndecodeAb/kernelPlaceholder_30*
validate_shape(*&
_output_shapes
:@@*
use_locking( *
T0*"
_class
loc:@decodeAb/kernel
W
Placeholder_31Placeholder*
dtype0*
_output_shapes
:@*
shape:@
Ђ
	Assign_31AssigndecodeAb/biasPlaceholder_31*
use_locking( *
T0* 
_class
loc:@decodeAb/bias*
validate_shape(*
_output_shapes
:@
o
Placeholder_32Placeholder*
dtype0*&
_output_shapes
:` *
shape:` 
В
	Assign_32AssignconvOuta/kernelPlaceholder_32*
use_locking( *
T0*"
_class
loc:@convOuta/kernel*
validate_shape(*&
_output_shapes
:` 
W
Placeholder_33Placeholder*
dtype0*
_output_shapes
: *
shape: 
Ђ
	Assign_33AssignconvOuta/biasPlaceholder_33*
use_locking( *
T0* 
_class
loc:@convOuta/bias*
validate_shape(*
_output_shapes
: 
o
Placeholder_34Placeholder*
dtype0*&
_output_shapes
:  *
shape:  
В
	Assign_34AssignconvOutb/kernelPlaceholder_34*
use_locking( *
T0*"
_class
loc:@convOutb/kernel*
validate_shape(*&
_output_shapes
:  
W
Placeholder_35Placeholder*
shape: *
dtype0*
_output_shapes
: 
Ђ
	Assign_35AssignconvOutb/biasPlaceholder_35*
validate_shape(*
_output_shapes
: *
use_locking( *
T0* 
_class
loc:@convOutb/bias
o
Placeholder_36Placeholder*
shape: *
dtype0*&
_output_shapes
: 
О
	Assign_36AssignPredictionMask/kernelPlaceholder_36*
use_locking( *
T0*(
_class
loc:@PredictionMask/kernel*
validate_shape(*&
_output_shapes
: 
W
Placeholder_37Placeholder*
dtype0*
_output_shapes
:*
shape:
Ў
	Assign_37AssignPredictionMask/biasPlaceholder_37*
T0*&
_class
loc:@PredictionMask/bias*
validate_shape(*
_output_shapes
:*
use_locking( 

IsVariableInitializedIsVariableInitializedencodeAa/kernel*"
_class
loc:@encodeAa/kernel*
dtype0*
_output_shapes
: 

IsVariableInitialized_1IsVariableInitializedencodeAa/bias* 
_class
loc:@encodeAa/bias*
dtype0*
_output_shapes
: 

IsVariableInitialized_2IsVariableInitializedencodeAb/kernel*"
_class
loc:@encodeAb/kernel*
dtype0*
_output_shapes
: 

IsVariableInitialized_3IsVariableInitializedencodeAb/bias* 
_class
loc:@encodeAb/bias*
dtype0*
_output_shapes
: 

IsVariableInitialized_4IsVariableInitializedencodeBa/kernel*"
_class
loc:@encodeBa/kernel*
dtype0*
_output_shapes
: 

IsVariableInitialized_5IsVariableInitializedencodeBa/bias* 
_class
loc:@encodeBa/bias*
dtype0*
_output_shapes
: 

IsVariableInitialized_6IsVariableInitializedencodeBb/kernel*"
_class
loc:@encodeBb/kernel*
dtype0*
_output_shapes
: 

IsVariableInitialized_7IsVariableInitializedencodeBb/bias*
dtype0*
_output_shapes
: * 
_class
loc:@encodeBb/bias

IsVariableInitialized_8IsVariableInitializedencodeCa/kernel*"
_class
loc:@encodeCa/kernel*
dtype0*
_output_shapes
: 

IsVariableInitialized_9IsVariableInitializedencodeCa/bias* 
_class
loc:@encodeCa/bias*
dtype0*
_output_shapes
: 

IsVariableInitialized_10IsVariableInitializedencodeCb/kernel*"
_class
loc:@encodeCb/kernel*
dtype0*
_output_shapes
: 

IsVariableInitialized_11IsVariableInitializedencodeCb/bias* 
_class
loc:@encodeCb/bias*
dtype0*
_output_shapes
: 

IsVariableInitialized_12IsVariableInitializedencodeDa/kernel*"
_class
loc:@encodeDa/kernel*
dtype0*
_output_shapes
: 

IsVariableInitialized_13IsVariableInitializedencodeDa/bias* 
_class
loc:@encodeDa/bias*
dtype0*
_output_shapes
: 

IsVariableInitialized_14IsVariableInitializedencodeDb/kernel*
dtype0*
_output_shapes
: *"
_class
loc:@encodeDb/kernel

IsVariableInitialized_15IsVariableInitializedencodeDb/bias* 
_class
loc:@encodeDb/bias*
dtype0*
_output_shapes
: 

IsVariableInitialized_16IsVariableInitializedencodeEa/kernel*"
_class
loc:@encodeEa/kernel*
dtype0*
_output_shapes
: 

IsVariableInitialized_17IsVariableInitializedencodeEa/bias* 
_class
loc:@encodeEa/bias*
dtype0*
_output_shapes
: 

IsVariableInitialized_18IsVariableInitializedencodeEb/kernel*"
_class
loc:@encodeEb/kernel*
dtype0*
_output_shapes
: 

IsVariableInitialized_19IsVariableInitializedencodeEb/bias* 
_class
loc:@encodeEb/bias*
dtype0*
_output_shapes
: 

IsVariableInitialized_20IsVariableInitializeddecodeCa/kernel*"
_class
loc:@decodeCa/kernel*
dtype0*
_output_shapes
: 

IsVariableInitialized_21IsVariableInitializeddecodeCa/bias* 
_class
loc:@decodeCa/bias*
dtype0*
_output_shapes
: 

IsVariableInitialized_22IsVariableInitializeddecodeCb/kernel*"
_class
loc:@decodeCb/kernel*
dtype0*
_output_shapes
: 

IsVariableInitialized_23IsVariableInitializeddecodeCb/bias*
dtype0*
_output_shapes
: * 
_class
loc:@decodeCb/bias

IsVariableInitialized_24IsVariableInitializeddecodeBa/kernel*
dtype0*
_output_shapes
: *"
_class
loc:@decodeBa/kernel

IsVariableInitialized_25IsVariableInitializeddecodeBa/bias*
dtype0*
_output_shapes
: * 
_class
loc:@decodeBa/bias

IsVariableInitialized_26IsVariableInitializeddecodeBb/kernel*"
_class
loc:@decodeBb/kernel*
dtype0*
_output_shapes
: 

IsVariableInitialized_27IsVariableInitializeddecodeBb/bias* 
_class
loc:@decodeBb/bias*
dtype0*
_output_shapes
: 

IsVariableInitialized_28IsVariableInitializeddecodeAa/kernel*
dtype0*
_output_shapes
: *"
_class
loc:@decodeAa/kernel

IsVariableInitialized_29IsVariableInitializeddecodeAa/bias* 
_class
loc:@decodeAa/bias*
dtype0*
_output_shapes
: 

IsVariableInitialized_30IsVariableInitializeddecodeAb/kernel*"
_class
loc:@decodeAb/kernel*
dtype0*
_output_shapes
: 

IsVariableInitialized_31IsVariableInitializeddecodeAb/bias* 
_class
loc:@decodeAb/bias*
dtype0*
_output_shapes
: 

IsVariableInitialized_32IsVariableInitializedconvOuta/kernel*"
_class
loc:@convOuta/kernel*
dtype0*
_output_shapes
: 

IsVariableInitialized_33IsVariableInitializedconvOuta/bias* 
_class
loc:@convOuta/bias*
dtype0*
_output_shapes
: 

IsVariableInitialized_34IsVariableInitializedconvOutb/kernel*"
_class
loc:@convOutb/kernel*
dtype0*
_output_shapes
: 

IsVariableInitialized_35IsVariableInitializedconvOutb/bias* 
_class
loc:@convOutb/bias*
dtype0*
_output_shapes
: 

IsVariableInitialized_36IsVariableInitializedPredictionMask/kernel*(
_class
loc:@PredictionMask/kernel*
dtype0*
_output_shapes
: 

IsVariableInitialized_37IsVariableInitializedPredictionMask/bias*&
_class
loc:@PredictionMask/bias*
dtype0*
_output_shapes
: 
Ј
initNoOp^PredictionMask/bias/Assign^PredictionMask/kernel/Assign^convOuta/bias/Assign^convOuta/kernel/Assign^convOutb/bias/Assign^convOutb/kernel/Assign^decodeAa/bias/Assign^decodeAa/kernel/Assign^decodeAb/bias/Assign^decodeAb/kernel/Assign^decodeBa/bias/Assign^decodeBa/kernel/Assign^decodeBb/bias/Assign^decodeBb/kernel/Assign^decodeCa/bias/Assign^decodeCa/kernel/Assign^decodeCb/bias/Assign^decodeCb/kernel/Assign^encodeAa/bias/Assign^encodeAa/kernel/Assign^encodeAb/bias/Assign^encodeAb/kernel/Assign^encodeBa/bias/Assign^encodeBa/kernel/Assign^encodeBb/bias/Assign^encodeBb/kernel/Assign^encodeCa/bias/Assign^encodeCa/kernel/Assign^encodeCb/bias/Assign^encodeCb/kernel/Assign^encodeDa/bias/Assign^encodeDa/kernel/Assign^encodeDb/bias/Assign^encodeDb/kernel/Assign^encodeEa/bias/Assign^encodeEa/kernel/Assign^encodeEb/bias/Assign^encodeEb/kernel/Assign
_
Adam/iterations/initial_valueConst*
value	B	 R *
dtype0	*
_output_shapes
: 
s
Adam/iterations
VariableV2*
shared_name *
dtype0	*
_output_shapes
: *
	container *
shape: 
О
Adam/iterations/AssignAssignAdam/iterationsAdam/iterations/initial_value*
T0	*"
_class
loc:@Adam/iterations*
validate_shape(*
_output_shapes
: *
use_locking(
v
Adam/iterations/readIdentityAdam/iterations*
_output_shapes
: *
T0	*"
_class
loc:@Adam/iterations
Z
Adam/lr/initial_valueConst*
dtype0*
_output_shapes
: *
valueB
 *Зб8
k
Adam/lr
VariableV2*
dtype0*
_output_shapes
: *
	container *
shape: *
shared_name 

Adam/lr/AssignAssignAdam/lrAdam/lr/initial_value*
use_locking(*
T0*
_class
loc:@Adam/lr*
validate_shape(*
_output_shapes
: 
^
Adam/lr/readIdentityAdam/lr*
T0*
_class
loc:@Adam/lr*
_output_shapes
: 
^
Adam/beta_1/initial_valueConst*
valueB
 *fff?*
dtype0*
_output_shapes
: 
o
Adam/beta_1
VariableV2*
dtype0*
_output_shapes
: *
	container *
shape: *
shared_name 
Ў
Adam/beta_1/AssignAssignAdam/beta_1Adam/beta_1/initial_value*
T0*
_class
loc:@Adam/beta_1*
validate_shape(*
_output_shapes
: *
use_locking(
j
Adam/beta_1/readIdentityAdam/beta_1*
_output_shapes
: *
T0*
_class
loc:@Adam/beta_1
^
Adam/beta_2/initial_valueConst*
valueB
 *wО?*
dtype0*
_output_shapes
: 
o
Adam/beta_2
VariableV2*
dtype0*
_output_shapes
: *
	container *
shape: *
shared_name 
Ў
Adam/beta_2/AssignAssignAdam/beta_2Adam/beta_2/initial_value*
T0*
_class
loc:@Adam/beta_2*
validate_shape(*
_output_shapes
: *
use_locking(
j
Adam/beta_2/readIdentityAdam/beta_2*
_output_shapes
: *
T0*
_class
loc:@Adam/beta_2
]
Adam/decay/initial_valueConst*
valueB
 *    *
dtype0*
_output_shapes
: 
n

Adam/decay
VariableV2*
dtype0*
_output_shapes
: *
	container *
shape: *
shared_name 
Њ
Adam/decay/AssignAssign
Adam/decayAdam/decay/initial_value*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@Adam/decay
g
Adam/decay/readIdentity
Adam/decay*
T0*
_class
loc:@Adam/decay*
_output_shapes
: 
О
PredictionMask_targetPlaceholder*
dtype0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*?
shape6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
x
PredictionMask_sample_weightsPlaceholder*
dtype0*#
_output_shapes
:џџџџџџџџџ*
shape:џџџџџџџџџ
Ї
loss/PredictionMask_loss/mulMulPredictionMask/SigmoidPredictionMask_target*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
T0

.loss/PredictionMask_loss/Sum/reduction_indicesConst*
valueB"      *
dtype0*
_output_shapes
:
Щ
loss/PredictionMask_loss/SumSumloss/PredictionMask_loss/mul.loss/PredictionMask_loss/Sum/reduction_indices*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*
	keep_dims( *

Tidx0

0loss/PredictionMask_loss/Sum_1/reduction_indicesConst*
valueB"      *
dtype0*
_output_shapes
:
О
loss/PredictionMask_loss/Sum_1SumPredictionMask/Sigmoid0loss/PredictionMask_loss/Sum_1/reduction_indices*
T0*'
_output_shapes
:џџџџџџџџџ*
	keep_dims( *

Tidx0

0loss/PredictionMask_loss/Sum_2/reduction_indicesConst*
valueB"      *
dtype0*
_output_shapes
:
Ц
loss/PredictionMask_loss/Sum_2SumPredictionMask_target0loss/PredictionMask_loss/Sum_2/reduction_indices*
	keep_dims( *

Tidx0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ
c
loss/PredictionMask_loss/add/yConst*
dtype0*
_output_shapes
: *
valueB
 *  ?

loss/PredictionMask_loss/addAddV2loss/PredictionMask_loss/Sumloss/PredictionMask_loss/add/y*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ
o
loss/PredictionMask_loss/ConstConst*
valueB"       *
dtype0*
_output_shapes
:
Ё
loss/PredictionMask_loss/MeanMeanloss/PredictionMask_loss/addloss/PredictionMask_loss/Const*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
Ђ
loss/PredictionMask_loss/add_1AddV2loss/PredictionMask_loss/Sum_2loss/PredictionMask_loss/Sum_1*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ
e
 loss/PredictionMask_loss/add_2/yConst*
dtype0*
_output_shapes
: *
valueB
 *  ?
Є
loss/PredictionMask_loss/add_2AddV2loss/PredictionMask_loss/add_1 loss/PredictionMask_loss/add_2/y*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ
q
 loss/PredictionMask_loss/Const_1Const*
valueB"       *
dtype0*
_output_shapes
:
Ї
loss/PredictionMask_loss/Mean_1Meanloss/PredictionMask_loss/add_2 loss/PredictionMask_loss/Const_1*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
e
 loss/PredictionMask_loss/mul_1/xConst*
valueB
 *   @*
dtype0*
_output_shapes
: 

loss/PredictionMask_loss/mul_1Mul loss/PredictionMask_loss/mul_1/xloss/PredictionMask_loss/Mean*
T0*
_output_shapes
: 
d
loss/PredictionMask_loss/LogLogloss/PredictionMask_loss/mul_1*
T0*
_output_shapes
: 
b
loss/PredictionMask_loss/NegNegloss/PredictionMask_loss/Log*
T0*
_output_shapes
: 
g
loss/PredictionMask_loss/Log_1Logloss/PredictionMask_loss/Mean_1*
T0*
_output_shapes
: 

loss/PredictionMask_loss/add_3AddV2loss/PredictionMask_loss/Negloss/PredictionMask_loss/Log_1*
T0*
_output_shapes
: 
e
 loss/PredictionMask_loss/mul_2/xConst*
valueB
 *fff?*
dtype0*
_output_shapes
: 

loss/PredictionMask_loss/mul_2Mul loss/PredictionMask_loss/mul_2/xloss/PredictionMask_loss/add_3*
T0*
_output_shapes
: 
e
 loss/PredictionMask_loss/Const_2Const*
valueB
 *Пж3*
dtype0*
_output_shapes
: 
c
loss/PredictionMask_loss/sub/xConst*
dtype0*
_output_shapes
: *
valueB
 *  ?

loss/PredictionMask_loss/subSubloss/PredictionMask_loss/sub/x loss/PredictionMask_loss/Const_2*
T0*
_output_shapes
: 
Л
.loss/PredictionMask_loss/clip_by_value/MinimumMinimumPredictionMask/Sigmoidloss/PredictionMask_loss/sub*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
Я
&loss/PredictionMask_loss/clip_by_valueMaximum.loss/PredictionMask_loss/clip_by_value/Minimum loss/PredictionMask_loss/Const_2*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
e
 loss/PredictionMask_loss/sub_1/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Л
loss/PredictionMask_loss/sub_1Sub loss/PredictionMask_loss/sub_1/x&loss/PredictionMask_loss/clip_by_value*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
П
 loss/PredictionMask_loss/truedivRealDiv&loss/PredictionMask_loss/clip_by_valueloss/PredictionMask_loss/sub_1*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ

loss/PredictionMask_loss/Log_2Log loss/PredictionMask_loss/truediv*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ
1loss/PredictionMask_loss/logistic_loss/zeros_like	ZerosLikeloss/PredictionMask_loss/Log_2*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*
T0
т
3loss/PredictionMask_loss/logistic_loss/GreaterEqualGreaterEqualloss/PredictionMask_loss/Log_21loss/PredictionMask_loss/logistic_loss/zeros_like*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ

-loss/PredictionMask_loss/logistic_loss/SelectSelect3loss/PredictionMask_loss/logistic_loss/GreaterEqualloss/PredictionMask_loss/Log_21loss/PredictionMask_loss/logistic_loss/zeros_like*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ

*loss/PredictionMask_loss/logistic_loss/NegNegloss/PredictionMask_loss/Log_2*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ

/loss/PredictionMask_loss/logistic_loss/Select_1Select3loss/PredictionMask_loss/logistic_loss/GreaterEqual*loss/PredictionMask_loss/logistic_loss/Negloss/PredictionMask_loss/Log_2*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
Н
*loss/PredictionMask_loss/logistic_loss/mulMulloss/PredictionMask_loss/Log_2PredictionMask_target*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
с
*loss/PredictionMask_loss/logistic_loss/subSub-loss/PredictionMask_loss/logistic_loss/Select*loss/PredictionMask_loss/logistic_loss/mul*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Ў
*loss/PredictionMask_loss/logistic_loss/ExpExp/loss/PredictionMask_loss/logistic_loss/Select_1*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
­
,loss/PredictionMask_loss/logistic_loss/Log1pLog1p*loss/PredictionMask_loss/logistic_loss/Exp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
м
&loss/PredictionMask_loss/logistic_lossAdd*loss/PredictionMask_loss/logistic_loss/sub,loss/PredictionMask_loss/logistic_loss/Log1p*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
|
1loss/PredictionMask_loss/Mean_2/reduction_indicesConst*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 
ч
loss/PredictionMask_loss/Mean_2Mean&loss/PredictionMask_loss/logistic_loss1loss/PredictionMask_loss/Mean_2/reduction_indices*
T0*=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ*
	keep_dims( *

Tidx0
e
 loss/PredictionMask_loss/mul_3/xConst*
dtype0*
_output_shapes
: *
valueB
 *ЭЬЬ=
А
loss/PredictionMask_loss/mul_3Mul loss/PredictionMask_loss/mul_3/xloss/PredictionMask_loss/Mean_2*
T0*=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ
Џ
loss/PredictionMask_loss/add_4AddV2loss/PredictionMask_loss/mul_2loss/PredictionMask_loss/mul_3*
T0*=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ

1loss/PredictionMask_loss/Mean_3/reduction_indicesConst*
valueB"      *
dtype0*
_output_shapes
:
Х
loss/PredictionMask_loss/Mean_3Meanloss/PredictionMask_loss/add_41loss/PredictionMask_loss/Mean_3/reduction_indices*#
_output_shapes
:џџџџџџџџџ*
	keep_dims( *

Tidx0*
T0

loss/PredictionMask_loss/mul_4Mulloss/PredictionMask_loss/Mean_3PredictionMask_sample_weights*
T0*#
_output_shapes
:џџџџџџџџџ
h
#loss/PredictionMask_loss/NotEqual/yConst*
valueB
 *    *
dtype0*
_output_shapes
: 
П
!loss/PredictionMask_loss/NotEqualNotEqualPredictionMask_sample_weights#loss/PredictionMask_loss/NotEqual/y*
T0*#
_output_shapes
:џџџџџџџџџ*
incompatible_shape_error(

loss/PredictionMask_loss/CastCast!loss/PredictionMask_loss/NotEqual*

SrcT0
*
Truncate( *#
_output_shapes
:џџџџџџџџџ*

DstT0
j
 loss/PredictionMask_loss/Const_3Const*
valueB: *
dtype0*
_output_shapes
:
І
loss/PredictionMask_loss/Mean_4Meanloss/PredictionMask_loss/Cast loss/PredictionMask_loss/Const_3*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0

"loss/PredictionMask_loss/truediv_1RealDivloss/PredictionMask_loss/mul_4loss/PredictionMask_loss/Mean_4*#
_output_shapes
:џџџџџџџџџ*
T0
j
 loss/PredictionMask_loss/Const_4Const*
valueB: *
dtype0*
_output_shapes
:
Ћ
loss/PredictionMask_loss/Mean_5Mean"loss/PredictionMask_loss/truediv_1 loss/PredictionMask_loss/Const_4*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
O

loss/mul/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
]
loss/mulMul
loss/mul/xloss/PredictionMask_loss/Mean_5*
_output_shapes
: *
T0
~
metrics/acc/RoundRoundPredictionMask/Sigmoid*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
Й
metrics/acc/EqualEqualPredictionMask_targetmetrics/acc/Round*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
incompatible_shape_error(*
T0

metrics/acc/CastCastmetrics/acc/Equal*
Truncate( *J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*

DstT0*

SrcT0

m
"metrics/acc/Mean/reduction_indicesConst*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 
Г
metrics/acc/MeanMeanmetrics/acc/Cast"metrics/acc/Mean/reduction_indices*
T0*=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ*
	keep_dims( *

Tidx0
f
metrics/acc/ConstConst*
dtype0*
_output_shapes
:*!
valueB"          
}
metrics/acc/Mean_1Meanmetrics/acc/Meanmetrics/acc/Const*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
 
metrics/dice_coef/mulMulPredictionMask_targetPredictionMask/Sigmoid*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
T0
x
'metrics/dice_coef/Sum/reduction_indicesConst*
valueB"      *
dtype0*
_output_shapes
:
Д
metrics/dice_coef/SumSummetrics/dice_coef/mul'metrics/dice_coef/Sum/reduction_indices*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*
	keep_dims( *

Tidx0*
T0
Ђ
metrics/dice_coef/addAddV2PredictionMask_targetPredictionMask/Sigmoid*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
z
)metrics/dice_coef/Sum_1/reduction_indicesConst*
valueB"      *
dtype0*
_output_shapes
:
И
metrics/dice_coef/Sum_1Summetrics/dice_coef/add)metrics/dice_coef/Sum_1/reduction_indices*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*
	keep_dims( *

Tidx0*
T0
\
metrics/dice_coef/ConstConst*
valueB
 *   @*
dtype0*
_output_shapes
: 

metrics/dice_coef/mul_1Mulmetrics/dice_coef/Constmetrics/dice_coef/Sum*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*
T0
^
metrics/dice_coef/add_1/yConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 

metrics/dice_coef/add_1AddV2metrics/dice_coef/mul_1metrics/dice_coef/add_1/y*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*
T0
^
metrics/dice_coef/add_2/yConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 

metrics/dice_coef/add_2AddV2metrics/dice_coef/Sum_1metrics/dice_coef/add_2/y*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ

metrics/dice_coef/truedivRealDivmetrics/dice_coef/add_1metrics/dice_coef/add_2*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ
j
metrics/dice_coef/Const_1Const*
valueB"       *
dtype0*
_output_shapes
:

metrics/dice_coef/MeanMeanmetrics/dice_coef/truedivmetrics/dice_coef/Const_1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
\
metrics/dice_coef/Const_2Const*
valueB *
dtype0*
_output_shapes
: 

metrics/dice_coef/Mean_1Meanmetrics/dice_coef/Meanmetrics/dice_coef/Const_2*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
Ѕ
metrics/soft_dice_coef/mulMulPredictionMask_targetPredictionMask/Sigmoid*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
}
,metrics/soft_dice_coef/Sum/reduction_indicesConst*
dtype0*
_output_shapes
:*
valueB"      
У
metrics/soft_dice_coef/SumSummetrics/soft_dice_coef/mul,metrics/soft_dice_coef/Sum/reduction_indices*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*
	keep_dims( *

Tidx0*
T0
Ї
metrics/soft_dice_coef/addAddV2PredictionMask_targetPredictionMask/Sigmoid*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ

.metrics/soft_dice_coef/Sum_1/reduction_indicesConst*
valueB"      *
dtype0*
_output_shapes
:
Ч
metrics/soft_dice_coef/Sum_1Summetrics/soft_dice_coef/add.metrics/soft_dice_coef/Sum_1/reduction_indices*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*
	keep_dims( *

Tidx0
a
metrics/soft_dice_coef/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *   @

metrics/soft_dice_coef/mul_1Mulmetrics/soft_dice_coef/Constmetrics/soft_dice_coef/Sum*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*
T0
c
metrics/soft_dice_coef/add_1/yConst*
valueB
 *
з#<*
dtype0*
_output_shapes
: 

metrics/soft_dice_coef/add_1AddV2metrics/soft_dice_coef/mul_1metrics/soft_dice_coef/add_1/y*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ
c
metrics/soft_dice_coef/add_2/yConst*
dtype0*
_output_shapes
: *
valueB
 *
з#<

metrics/soft_dice_coef/add_2AddV2metrics/soft_dice_coef/Sum_1metrics/soft_dice_coef/add_2/y*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ
 
metrics/soft_dice_coef/truedivRealDivmetrics/soft_dice_coef/add_1metrics/soft_dice_coef/add_2*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ
o
metrics/soft_dice_coef/Const_1Const*
valueB"       *
dtype0*
_output_shapes
:
Ё
metrics/soft_dice_coef/MeanMeanmetrics/soft_dice_coef/truedivmetrics/soft_dice_coef/Const_1*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
a
metrics/soft_dice_coef/Const_2Const*
valueB *
dtype0*
_output_shapes
: 
 
metrics/soft_dice_coef/Mean_1Meanmetrics/soft_dice_coef/Meanmetrics/soft_dice_coef/Const_2*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 

IsVariableInitialized_38IsVariableInitializedAdam/iterations*
dtype0	*
_output_shapes
: *"
_class
loc:@Adam/iterations
{
IsVariableInitialized_39IsVariableInitializedAdam/lr*
dtype0*
_output_shapes
: *
_class
loc:@Adam/lr

IsVariableInitialized_40IsVariableInitializedAdam/beta_1*
_class
loc:@Adam/beta_1*
dtype0*
_output_shapes
: 

IsVariableInitialized_41IsVariableInitializedAdam/beta_2*
_class
loc:@Adam/beta_2*
dtype0*
_output_shapes
: 

IsVariableInitialized_42IsVariableInitialized
Adam/decay*
dtype0*
_output_shapes
: *
_class
loc:@Adam/decay
v
init_1NoOp^Adam/beta_1/Assign^Adam/beta_2/Assign^Adam/decay/Assign^Adam/iterations/Assign^Adam/lr/Assign

init_2NoOp^Adam/beta_1/Assign^Adam/beta_2/Assign^Adam/decay/Assign^Adam/iterations/Assign^Adam/lr/Assign^PredictionMask/bias/Assign^PredictionMask/kernel/Assign^convOuta/bias/Assign^convOuta/kernel/Assign^convOutb/bias/Assign^convOutb/kernel/Assign^decodeAa/bias/Assign^decodeAa/kernel/Assign^decodeAb/bias/Assign^decodeAb/kernel/Assign^decodeBa/bias/Assign^decodeBa/kernel/Assign^decodeBb/bias/Assign^decodeBb/kernel/Assign^decodeCa/bias/Assign^decodeCa/kernel/Assign^decodeCb/bias/Assign^decodeCb/kernel/Assign^encodeAa/bias/Assign^encodeAa/kernel/Assign^encodeAb/bias/Assign^encodeAb/kernel/Assign^encodeBa/bias/Assign^encodeBa/kernel/Assign^encodeBb/bias/Assign^encodeBb/kernel/Assign^encodeCa/bias/Assign^encodeCa/kernel/Assign^encodeCb/bias/Assign^encodeCb/kernel/Assign^encodeDa/bias/Assign^encodeDa/kernel/Assign^encodeDb/bias/Assign^encodeDb/kernel/Assign^encodeEa/bias/Assign^encodeEa/kernel/Assign^encodeEb/bias/Assign^encodeEb/kernel/Assign
Y
save/filename/inputConst*
dtype0*
_output_shapes
: *
valueB Bmodel
n
save/filenamePlaceholderWithDefaultsave/filename/input*
dtype0*
_output_shapes
: *
shape: 
e

save/ConstPlaceholderWithDefaultsave/filename*
dtype0*
_output_shapes
: *
shape: 

save/SaveV2/tensor_namesConst*
dtype0*
_output_shapes
:+*С
valueЗBД+BAdam/beta_1BAdam/beta_2B
Adam/decayBAdam/iterationsBAdam/lrBPredictionMask/biasBPredictionMask/kernelBconvOuta/biasBconvOuta/kernelBconvOutb/biasBconvOutb/kernelBdecodeAa/biasBdecodeAa/kernelBdecodeAb/biasBdecodeAb/kernelBdecodeBa/biasBdecodeBa/kernelBdecodeBb/biasBdecodeBb/kernelBdecodeCa/biasBdecodeCa/kernelBdecodeCb/biasBdecodeCb/kernelBencodeAa/biasBencodeAa/kernelBencodeAb/biasBencodeAb/kernelBencodeBa/biasBencodeBa/kernelBencodeBb/biasBencodeBb/kernelBencodeCa/biasBencodeCa/kernelBencodeCb/biasBencodeCb/kernelBencodeDa/biasBencodeDa/kernelBencodeDb/biasBencodeDb/kernelBencodeEa/biasBencodeEa/kernelBencodeEb/biasBencodeEb/kernel
Й
save/SaveV2/shape_and_slicesConst*i
value`B^+B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:+
Р
save/SaveV2SaveV2
save/Constsave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesAdam/beta_1Adam/beta_2
Adam/decayAdam/iterationsAdam/lrPredictionMask/biasPredictionMask/kernelconvOuta/biasconvOuta/kernelconvOutb/biasconvOutb/kerneldecodeAa/biasdecodeAa/kerneldecodeAb/biasdecodeAb/kerneldecodeBa/biasdecodeBa/kerneldecodeBb/biasdecodeBb/kerneldecodeCa/biasdecodeCa/kerneldecodeCb/biasdecodeCb/kernelencodeAa/biasencodeAa/kernelencodeAb/biasencodeAb/kernelencodeBa/biasencodeBa/kernelencodeBb/biasencodeBb/kernelencodeCa/biasencodeCa/kernelencodeCb/biasencodeCb/kernelencodeDa/biasencodeDa/kernelencodeDb/biasencodeDb/kernelencodeEa/biasencodeEa/kernelencodeEb/biasencodeEb/kernel*9
dtypes/
-2+	
}
save/control_dependencyIdentity
save/Const^save/SaveV2*
T0*
_class
loc:@save/Const*
_output_shapes
: 
 
save/RestoreV2/tensor_namesConst"/device:CPU:0*С
valueЗBД+BAdam/beta_1BAdam/beta_2B
Adam/decayBAdam/iterationsBAdam/lrBPredictionMask/biasBPredictionMask/kernelBconvOuta/biasBconvOuta/kernelBconvOutb/biasBconvOutb/kernelBdecodeAa/biasBdecodeAa/kernelBdecodeAb/biasBdecodeAb/kernelBdecodeBa/biasBdecodeBa/kernelBdecodeBb/biasBdecodeBb/kernelBdecodeCa/biasBdecodeCa/kernelBdecodeCb/biasBdecodeCb/kernelBencodeAa/biasBencodeAa/kernelBencodeAb/biasBencodeAb/kernelBencodeBa/biasBencodeBa/kernelBencodeBb/biasBencodeBb/kernelBencodeCa/biasBencodeCa/kernelBencodeCb/biasBencodeCb/kernelBencodeDa/biasBencodeDa/kernelBencodeDb/biasBencodeDb/kernelBencodeEa/biasBencodeEa/kernelBencodeEb/biasBencodeEb/kernel*
dtype0*
_output_shapes
:+
Ы
save/RestoreV2/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:+*i
value`B^+B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 
є
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*Т
_output_shapesЏ
Ќ:::::::::::::::::::::::::::::::::::::::::::*9
dtypes/
-2+	

save/AssignAssignAdam/beta_1save/RestoreV2*
use_locking(*
T0*
_class
loc:@Adam/beta_1*
validate_shape(*
_output_shapes
: 
 
save/Assign_1AssignAdam/beta_2save/RestoreV2:1*
T0*
_class
loc:@Adam/beta_2*
validate_shape(*
_output_shapes
: *
use_locking(

save/Assign_2Assign
Adam/decaysave/RestoreV2:2*
use_locking(*
T0*
_class
loc:@Adam/decay*
validate_shape(*
_output_shapes
: 
Ј
save/Assign_3AssignAdam/iterationssave/RestoreV2:3*
T0	*"
_class
loc:@Adam/iterations*
validate_shape(*
_output_shapes
: *
use_locking(

save/Assign_4AssignAdam/lrsave/RestoreV2:4*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@Adam/lr
Д
save/Assign_5AssignPredictionMask/biassave/RestoreV2:5*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*&
_class
loc:@PredictionMask/bias
Ф
save/Assign_6AssignPredictionMask/kernelsave/RestoreV2:6*
use_locking(*
T0*(
_class
loc:@PredictionMask/kernel*
validate_shape(*&
_output_shapes
: 
Ј
save/Assign_7AssignconvOuta/biassave/RestoreV2:7*
use_locking(*
T0* 
_class
loc:@convOuta/bias*
validate_shape(*
_output_shapes
: 
И
save/Assign_8AssignconvOuta/kernelsave/RestoreV2:8*
validate_shape(*&
_output_shapes
:` *
use_locking(*
T0*"
_class
loc:@convOuta/kernel
Ј
save/Assign_9AssignconvOutb/biassave/RestoreV2:9*
use_locking(*
T0* 
_class
loc:@convOutb/bias*
validate_shape(*
_output_shapes
: 
К
save/Assign_10AssignconvOutb/kernelsave/RestoreV2:10*
validate_shape(*&
_output_shapes
:  *
use_locking(*
T0*"
_class
loc:@convOutb/kernel
Њ
save/Assign_11AssigndecodeAa/biassave/RestoreV2:11*
T0* 
_class
loc:@decodeAa/bias*
validate_shape(*
_output_shapes
:@*
use_locking(
Л
save/Assign_12AssigndecodeAa/kernelsave/RestoreV2:12*
T0*"
_class
loc:@decodeAa/kernel*
validate_shape(*'
_output_shapes
:Р@*
use_locking(
Њ
save/Assign_13AssigndecodeAb/biassave/RestoreV2:13*
use_locking(*
T0* 
_class
loc:@decodeAb/bias*
validate_shape(*
_output_shapes
:@
К
save/Assign_14AssigndecodeAb/kernelsave/RestoreV2:14*
T0*"
_class
loc:@decodeAb/kernel*
validate_shape(*&
_output_shapes
:@@*
use_locking(
Ћ
save/Assign_15AssigndecodeBa/biassave/RestoreV2:15*
T0* 
_class
loc:@decodeBa/bias*
validate_shape(*
_output_shapes	
:*
use_locking(
М
save/Assign_16AssigndecodeBa/kernelsave/RestoreV2:16*
validate_shape(*(
_output_shapes
:*
use_locking(*
T0*"
_class
loc:@decodeBa/kernel
Ћ
save/Assign_17AssigndecodeBb/biassave/RestoreV2:17*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0* 
_class
loc:@decodeBb/bias
М
save/Assign_18AssigndecodeBb/kernelsave/RestoreV2:18*
use_locking(*
T0*"
_class
loc:@decodeBb/kernel*
validate_shape(*(
_output_shapes
:
Ћ
save/Assign_19AssigndecodeCa/biassave/RestoreV2:19*
use_locking(*
T0* 
_class
loc:@decodeCa/bias*
validate_shape(*
_output_shapes	
:
М
save/Assign_20AssigndecodeCa/kernelsave/RestoreV2:20*
validate_shape(*(
_output_shapes
:*
use_locking(*
T0*"
_class
loc:@decodeCa/kernel
Ћ
save/Assign_21AssigndecodeCb/biassave/RestoreV2:21*
T0* 
_class
loc:@decodeCb/bias*
validate_shape(*
_output_shapes	
:*
use_locking(
М
save/Assign_22AssigndecodeCb/kernelsave/RestoreV2:22*
use_locking(*
T0*"
_class
loc:@decodeCb/kernel*
validate_shape(*(
_output_shapes
:
Њ
save/Assign_23AssignencodeAa/biassave/RestoreV2:23*
validate_shape(*
_output_shapes
: *
use_locking(*
T0* 
_class
loc:@encodeAa/bias
К
save/Assign_24AssignencodeAa/kernelsave/RestoreV2:24*
use_locking(*
T0*"
_class
loc:@encodeAa/kernel*
validate_shape(*&
_output_shapes
: 
Њ
save/Assign_25AssignencodeAb/biassave/RestoreV2:25*
T0* 
_class
loc:@encodeAb/bias*
validate_shape(*
_output_shapes
: *
use_locking(
К
save/Assign_26AssignencodeAb/kernelsave/RestoreV2:26*
use_locking(*
T0*"
_class
loc:@encodeAb/kernel*
validate_shape(*&
_output_shapes
:  
Њ
save/Assign_27AssignencodeBa/biassave/RestoreV2:27*
use_locking(*
T0* 
_class
loc:@encodeBa/bias*
validate_shape(*
_output_shapes
:@
К
save/Assign_28AssignencodeBa/kernelsave/RestoreV2:28*
use_locking(*
T0*"
_class
loc:@encodeBa/kernel*
validate_shape(*&
_output_shapes
: @
Њ
save/Assign_29AssignencodeBb/biassave/RestoreV2:29*
use_locking(*
T0* 
_class
loc:@encodeBb/bias*
validate_shape(*
_output_shapes
:@
К
save/Assign_30AssignencodeBb/kernelsave/RestoreV2:30*
use_locking(*
T0*"
_class
loc:@encodeBb/kernel*
validate_shape(*&
_output_shapes
:@@
Ћ
save/Assign_31AssignencodeCa/biassave/RestoreV2:31*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0* 
_class
loc:@encodeCa/bias
Л
save/Assign_32AssignencodeCa/kernelsave/RestoreV2:32*
T0*"
_class
loc:@encodeCa/kernel*
validate_shape(*'
_output_shapes
:@*
use_locking(
Ћ
save/Assign_33AssignencodeCb/biassave/RestoreV2:33*
T0* 
_class
loc:@encodeCb/bias*
validate_shape(*
_output_shapes	
:*
use_locking(
М
save/Assign_34AssignencodeCb/kernelsave/RestoreV2:34*
use_locking(*
T0*"
_class
loc:@encodeCb/kernel*
validate_shape(*(
_output_shapes
:
Ћ
save/Assign_35AssignencodeDa/biassave/RestoreV2:35*
use_locking(*
T0* 
_class
loc:@encodeDa/bias*
validate_shape(*
_output_shapes	
:
М
save/Assign_36AssignencodeDa/kernelsave/RestoreV2:36*
use_locking(*
T0*"
_class
loc:@encodeDa/kernel*
validate_shape(*(
_output_shapes
:
Ћ
save/Assign_37AssignencodeDb/biassave/RestoreV2:37*
use_locking(*
T0* 
_class
loc:@encodeDb/bias*
validate_shape(*
_output_shapes	
:
М
save/Assign_38AssignencodeDb/kernelsave/RestoreV2:38*
T0*"
_class
loc:@encodeDb/kernel*
validate_shape(*(
_output_shapes
:*
use_locking(
Ћ
save/Assign_39AssignencodeEa/biassave/RestoreV2:39*
T0* 
_class
loc:@encodeEa/bias*
validate_shape(*
_output_shapes	
:*
use_locking(
М
save/Assign_40AssignencodeEa/kernelsave/RestoreV2:40*
T0*"
_class
loc:@encodeEa/kernel*
validate_shape(*(
_output_shapes
:*
use_locking(
Ћ
save/Assign_41AssignencodeEb/biassave/RestoreV2:41*
use_locking(*
T0* 
_class
loc:@encodeEb/bias*
validate_shape(*
_output_shapes	
:
М
save/Assign_42AssignencodeEb/kernelsave/RestoreV2:42*
use_locking(*
T0*"
_class
loc:@encodeEb/kernel*
validate_shape(*(
_output_shapes
:
ч
save/restore_allNoOp^save/Assign^save/Assign_1^save/Assign_10^save/Assign_11^save/Assign_12^save/Assign_13^save/Assign_14^save/Assign_15^save/Assign_16^save/Assign_17^save/Assign_18^save/Assign_19^save/Assign_2^save/Assign_20^save/Assign_21^save/Assign_22^save/Assign_23^save/Assign_24^save/Assign_25^save/Assign_26^save/Assign_27^save/Assign_28^save/Assign_29^save/Assign_3^save/Assign_30^save/Assign_31^save/Assign_32^save/Assign_33^save/Assign_34^save/Assign_35^save/Assign_36^save/Assign_37^save/Assign_38^save/Assign_39^save/Assign_4^save/Assign_40^save/Assign_41^save/Assign_42^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8^save/Assign_9"D
save/Const:0save/control_dependency:0save/restore_all 5 @F8""
cond_contextё!ю!
й
"spatial_dropout2d_1/cond/cond_text"spatial_dropout2d_1/cond/pred_id:0#spatial_dropout2d_1/cond/switch_t:0 *ч
encodeCa/Relu:0
'spatial_dropout2d_1/cond/dropout/Cast:0
/spatial_dropout2d_1/cond/dropout/GreaterEqual:0
&spatial_dropout2d_1/cond/dropout/mul:0
(spatial_dropout2d_1/cond/dropout/mul_1:0
?spatial_dropout2d_1/cond/dropout/random_uniform/RandomUniform:0
5spatial_dropout2d_1/cond/dropout/random_uniform/max:0
5spatial_dropout2d_1/cond/dropout/random_uniform/min:0
5spatial_dropout2d_1/cond/dropout/random_uniform/mul:0
9spatial_dropout2d_1/cond/dropout/random_uniform/shape/1:0
9spatial_dropout2d_1/cond/dropout/random_uniform/shape/2:0
>spatial_dropout2d_1/cond/dropout/random_uniform/shape/Switch:1
@spatial_dropout2d_1/cond/dropout/random_uniform/shape/Switch_1:1
7spatial_dropout2d_1/cond/dropout/random_uniform/shape:0
5spatial_dropout2d_1/cond/dropout/random_uniform/sub:0
1spatial_dropout2d_1/cond/dropout/random_uniform:0
'spatial_dropout2d_1/cond/dropout/rate:0
(spatial_dropout2d_1/cond/dropout/sub/x:0
&spatial_dropout2d_1/cond/dropout/sub:0
,spatial_dropout2d_1/cond/dropout/truediv/x:0
*spatial_dropout2d_1/cond/dropout/truediv:0
%spatial_dropout2d_1/cond/mul/Switch:1
 spatial_dropout2d_1/cond/mul/y:0
spatial_dropout2d_1/cond/mul:0
"spatial_dropout2d_1/cond/pred_id:0
#spatial_dropout2d_1/cond/switch_t:0
#spatial_dropout2d_1/strided_slice:0
%spatial_dropout2d_1/strided_slice_1:0e
#spatial_dropout2d_1/strided_slice:0>spatial_dropout2d_1/cond/dropout/random_uniform/shape/Switch:1H
"spatial_dropout2d_1/cond/pred_id:0"spatial_dropout2d_1/cond/pred_id:08
encodeCa/Relu:0%spatial_dropout2d_1/cond/mul/Switch:1i
%spatial_dropout2d_1/strided_slice_1:0@spatial_dropout2d_1/cond/dropout/random_uniform/shape/Switch_1:1

$spatial_dropout2d_1/cond/cond_text_1"spatial_dropout2d_1/cond/pred_id:0#spatial_dropout2d_1/cond/switch_f:0*І
encodeCa/Relu:0
#spatial_dropout2d_1/cond/Switch_1:0
#spatial_dropout2d_1/cond/Switch_1:1
"spatial_dropout2d_1/cond/pred_id:0
#spatial_dropout2d_1/cond/switch_f:0H
"spatial_dropout2d_1/cond/pred_id:0"spatial_dropout2d_1/cond/pred_id:06
encodeCa/Relu:0#spatial_dropout2d_1/cond/Switch_1:0
й
"spatial_dropout2d_2/cond/cond_text"spatial_dropout2d_2/cond/pred_id:0#spatial_dropout2d_2/cond/switch_t:0 *ч
encodeDa/Relu:0
'spatial_dropout2d_2/cond/dropout/Cast:0
/spatial_dropout2d_2/cond/dropout/GreaterEqual:0
&spatial_dropout2d_2/cond/dropout/mul:0
(spatial_dropout2d_2/cond/dropout/mul_1:0
?spatial_dropout2d_2/cond/dropout/random_uniform/RandomUniform:0
5spatial_dropout2d_2/cond/dropout/random_uniform/max:0
5spatial_dropout2d_2/cond/dropout/random_uniform/min:0
5spatial_dropout2d_2/cond/dropout/random_uniform/mul:0
9spatial_dropout2d_2/cond/dropout/random_uniform/shape/1:0
9spatial_dropout2d_2/cond/dropout/random_uniform/shape/2:0
>spatial_dropout2d_2/cond/dropout/random_uniform/shape/Switch:1
@spatial_dropout2d_2/cond/dropout/random_uniform/shape/Switch_1:1
7spatial_dropout2d_2/cond/dropout/random_uniform/shape:0
5spatial_dropout2d_2/cond/dropout/random_uniform/sub:0
1spatial_dropout2d_2/cond/dropout/random_uniform:0
'spatial_dropout2d_2/cond/dropout/rate:0
(spatial_dropout2d_2/cond/dropout/sub/x:0
&spatial_dropout2d_2/cond/dropout/sub:0
,spatial_dropout2d_2/cond/dropout/truediv/x:0
*spatial_dropout2d_2/cond/dropout/truediv:0
%spatial_dropout2d_2/cond/mul/Switch:1
 spatial_dropout2d_2/cond/mul/y:0
spatial_dropout2d_2/cond/mul:0
"spatial_dropout2d_2/cond/pred_id:0
#spatial_dropout2d_2/cond/switch_t:0
#spatial_dropout2d_2/strided_slice:0
%spatial_dropout2d_2/strided_slice_1:0H
"spatial_dropout2d_2/cond/pred_id:0"spatial_dropout2d_2/cond/pred_id:0e
#spatial_dropout2d_2/strided_slice:0>spatial_dropout2d_2/cond/dropout/random_uniform/shape/Switch:18
encodeDa/Relu:0%spatial_dropout2d_2/cond/mul/Switch:1i
%spatial_dropout2d_2/strided_slice_1:0@spatial_dropout2d_2/cond/dropout/random_uniform/shape/Switch_1:1

$spatial_dropout2d_2/cond/cond_text_1"spatial_dropout2d_2/cond/pred_id:0#spatial_dropout2d_2/cond/switch_f:0*І
encodeDa/Relu:0
#spatial_dropout2d_2/cond/Switch_1:0
#spatial_dropout2d_2/cond/Switch_1:1
"spatial_dropout2d_2/cond/pred_id:0
#spatial_dropout2d_2/cond/switch_f:0H
"spatial_dropout2d_2/cond/pred_id:0"spatial_dropout2d_2/cond/pred_id:06
encodeDa/Relu:0#spatial_dropout2d_2/cond/Switch_1:0"ф
	variablesжг
`
encodeAa/kernel:0encodeAa/kernel/AssignencodeAa/kernel/read:02encodeAa/random_uniform:08
Q
encodeAa/bias:0encodeAa/bias/AssignencodeAa/bias/read:02encodeAa/Const:08
`
encodeAb/kernel:0encodeAb/kernel/AssignencodeAb/kernel/read:02encodeAb/random_uniform:08
Q
encodeAb/bias:0encodeAb/bias/AssignencodeAb/bias/read:02encodeAb/Const:08
`
encodeBa/kernel:0encodeBa/kernel/AssignencodeBa/kernel/read:02encodeBa/random_uniform:08
Q
encodeBa/bias:0encodeBa/bias/AssignencodeBa/bias/read:02encodeBa/Const:08
`
encodeBb/kernel:0encodeBb/kernel/AssignencodeBb/kernel/read:02encodeBb/random_uniform:08
Q
encodeBb/bias:0encodeBb/bias/AssignencodeBb/bias/read:02encodeBb/Const:08
`
encodeCa/kernel:0encodeCa/kernel/AssignencodeCa/kernel/read:02encodeCa/random_uniform:08
Q
encodeCa/bias:0encodeCa/bias/AssignencodeCa/bias/read:02encodeCa/Const:08
`
encodeCb/kernel:0encodeCb/kernel/AssignencodeCb/kernel/read:02encodeCb/random_uniform:08
Q
encodeCb/bias:0encodeCb/bias/AssignencodeCb/bias/read:02encodeCb/Const:08
`
encodeDa/kernel:0encodeDa/kernel/AssignencodeDa/kernel/read:02encodeDa/random_uniform:08
Q
encodeDa/bias:0encodeDa/bias/AssignencodeDa/bias/read:02encodeDa/Const:08
`
encodeDb/kernel:0encodeDb/kernel/AssignencodeDb/kernel/read:02encodeDb/random_uniform:08
Q
encodeDb/bias:0encodeDb/bias/AssignencodeDb/bias/read:02encodeDb/Const:08
`
encodeEa/kernel:0encodeEa/kernel/AssignencodeEa/kernel/read:02encodeEa/random_uniform:08
Q
encodeEa/bias:0encodeEa/bias/AssignencodeEa/bias/read:02encodeEa/Const:08
`
encodeEb/kernel:0encodeEb/kernel/AssignencodeEb/kernel/read:02encodeEb/random_uniform:08
Q
encodeEb/bias:0encodeEb/bias/AssignencodeEb/bias/read:02encodeEb/Const:08
`
decodeCa/kernel:0decodeCa/kernel/AssigndecodeCa/kernel/read:02decodeCa/random_uniform:08
Q
decodeCa/bias:0decodeCa/bias/AssigndecodeCa/bias/read:02decodeCa/Const:08
`
decodeCb/kernel:0decodeCb/kernel/AssigndecodeCb/kernel/read:02decodeCb/random_uniform:08
Q
decodeCb/bias:0decodeCb/bias/AssigndecodeCb/bias/read:02decodeCb/Const:08
`
decodeBa/kernel:0decodeBa/kernel/AssigndecodeBa/kernel/read:02decodeBa/random_uniform:08
Q
decodeBa/bias:0decodeBa/bias/AssigndecodeBa/bias/read:02decodeBa/Const:08
`
decodeBb/kernel:0decodeBb/kernel/AssigndecodeBb/kernel/read:02decodeBb/random_uniform:08
Q
decodeBb/bias:0decodeBb/bias/AssigndecodeBb/bias/read:02decodeBb/Const:08
`
decodeAa/kernel:0decodeAa/kernel/AssigndecodeAa/kernel/read:02decodeAa/random_uniform:08
Q
decodeAa/bias:0decodeAa/bias/AssigndecodeAa/bias/read:02decodeAa/Const:08
`
decodeAb/kernel:0decodeAb/kernel/AssigndecodeAb/kernel/read:02decodeAb/random_uniform:08
Q
decodeAb/bias:0decodeAb/bias/AssigndecodeAb/bias/read:02decodeAb/Const:08
`
convOuta/kernel:0convOuta/kernel/AssignconvOuta/kernel/read:02convOuta/random_uniform:08
Q
convOuta/bias:0convOuta/bias/AssignconvOuta/bias/read:02convOuta/Const:08
`
convOutb/kernel:0convOutb/kernel/AssignconvOutb/kernel/read:02convOutb/random_uniform:08
Q
convOutb/bias:0convOutb/bias/AssignconvOutb/bias/read:02convOutb/Const:08
x
PredictionMask/kernel:0PredictionMask/kernel/AssignPredictionMask/kernel/read:02PredictionMask/random_uniform:08
i
PredictionMask/bias:0PredictionMask/bias/AssignPredictionMask/bias/read:02PredictionMask/Const:08
f
Adam/iterations:0Adam/iterations/AssignAdam/iterations/read:02Adam/iterations/initial_value:08
F
	Adam/lr:0Adam/lr/AssignAdam/lr/read:02Adam/lr/initial_value:08
V
Adam/beta_1:0Adam/beta_1/AssignAdam/beta_1/read:02Adam/beta_1/initial_value:08
V
Adam/beta_2:0Adam/beta_2/AssignAdam/beta_2/read:02Adam/beta_2/initial_value:08
R
Adam/decay:0Adam/decay/AssignAdam/decay/read:02Adam/decay/initial_value:08"ю
trainable_variablesжг
`
encodeAa/kernel:0encodeAa/kernel/AssignencodeAa/kernel/read:02encodeAa/random_uniform:08
Q
encodeAa/bias:0encodeAa/bias/AssignencodeAa/bias/read:02encodeAa/Const:08
`
encodeAb/kernel:0encodeAb/kernel/AssignencodeAb/kernel/read:02encodeAb/random_uniform:08
Q
encodeAb/bias:0encodeAb/bias/AssignencodeAb/bias/read:02encodeAb/Const:08
`
encodeBa/kernel:0encodeBa/kernel/AssignencodeBa/kernel/read:02encodeBa/random_uniform:08
Q
encodeBa/bias:0encodeBa/bias/AssignencodeBa/bias/read:02encodeBa/Const:08
`
encodeBb/kernel:0encodeBb/kernel/AssignencodeBb/kernel/read:02encodeBb/random_uniform:08
Q
encodeBb/bias:0encodeBb/bias/AssignencodeBb/bias/read:02encodeBb/Const:08
`
encodeCa/kernel:0encodeCa/kernel/AssignencodeCa/kernel/read:02encodeCa/random_uniform:08
Q
encodeCa/bias:0encodeCa/bias/AssignencodeCa/bias/read:02encodeCa/Const:08
`
encodeCb/kernel:0encodeCb/kernel/AssignencodeCb/kernel/read:02encodeCb/random_uniform:08
Q
encodeCb/bias:0encodeCb/bias/AssignencodeCb/bias/read:02encodeCb/Const:08
`
encodeDa/kernel:0encodeDa/kernel/AssignencodeDa/kernel/read:02encodeDa/random_uniform:08
Q
encodeDa/bias:0encodeDa/bias/AssignencodeDa/bias/read:02encodeDa/Const:08
`
encodeDb/kernel:0encodeDb/kernel/AssignencodeDb/kernel/read:02encodeDb/random_uniform:08
Q
encodeDb/bias:0encodeDb/bias/AssignencodeDb/bias/read:02encodeDb/Const:08
`
encodeEa/kernel:0encodeEa/kernel/AssignencodeEa/kernel/read:02encodeEa/random_uniform:08
Q
encodeEa/bias:0encodeEa/bias/AssignencodeEa/bias/read:02encodeEa/Const:08
`
encodeEb/kernel:0encodeEb/kernel/AssignencodeEb/kernel/read:02encodeEb/random_uniform:08
Q
encodeEb/bias:0encodeEb/bias/AssignencodeEb/bias/read:02encodeEb/Const:08
`
decodeCa/kernel:0decodeCa/kernel/AssigndecodeCa/kernel/read:02decodeCa/random_uniform:08
Q
decodeCa/bias:0decodeCa/bias/AssigndecodeCa/bias/read:02decodeCa/Const:08
`
decodeCb/kernel:0decodeCb/kernel/AssigndecodeCb/kernel/read:02decodeCb/random_uniform:08
Q
decodeCb/bias:0decodeCb/bias/AssigndecodeCb/bias/read:02decodeCb/Const:08
`
decodeBa/kernel:0decodeBa/kernel/AssigndecodeBa/kernel/read:02decodeBa/random_uniform:08
Q
decodeBa/bias:0decodeBa/bias/AssigndecodeBa/bias/read:02decodeBa/Const:08
`
decodeBb/kernel:0decodeBb/kernel/AssigndecodeBb/kernel/read:02decodeBb/random_uniform:08
Q
decodeBb/bias:0decodeBb/bias/AssigndecodeBb/bias/read:02decodeBb/Const:08
`
decodeAa/kernel:0decodeAa/kernel/AssigndecodeAa/kernel/read:02decodeAa/random_uniform:08
Q
decodeAa/bias:0decodeAa/bias/AssigndecodeAa/bias/read:02decodeAa/Const:08
`
decodeAb/kernel:0decodeAb/kernel/AssigndecodeAb/kernel/read:02decodeAb/random_uniform:08
Q
decodeAb/bias:0decodeAb/bias/AssigndecodeAb/bias/read:02decodeAb/Const:08
`
convOuta/kernel:0convOuta/kernel/AssignconvOuta/kernel/read:02convOuta/random_uniform:08
Q
convOuta/bias:0convOuta/bias/AssignconvOuta/bias/read:02convOuta/Const:08
`
convOutb/kernel:0convOutb/kernel/AssignconvOutb/kernel/read:02convOutb/random_uniform:08
Q
convOutb/bias:0convOutb/bias/AssignconvOutb/bias/read:02convOutb/Const:08
x
PredictionMask/kernel:0PredictionMask/kernel/AssignPredictionMask/kernel/read:02PredictionMask/random_uniform:08
i
PredictionMask/bias:0PredictionMask/bias/AssignPredictionMask/bias/read:02PredictionMask/Const:08
f
Adam/iterations:0Adam/iterations/AssignAdam/iterations/read:02Adam/iterations/initial_value:08
F
	Adam/lr:0Adam/lr/AssignAdam/lr/read:02Adam/lr/initial_value:08
V
Adam/beta_1:0Adam/beta_1/AssignAdam/beta_1/read:02Adam/beta_1/initial_value:08
V
Adam/beta_2:0Adam/beta_2/AssignAdam/beta_2/read:02Adam/beta_2/initial_value:08
R
Adam/decay:0Adam/decay/AssignAdam/decay/read:02Adam/decay/initial_value:08*Ы
serving_defaultЗ
D
input;

MRImages:0+џџџџџџџџџџџџџџџџџџџџџџџџџџџS
outputI
PredictionMask/Sigmoid:0+џџџџџџџџџџџџџџџџџџџџџџџџџџџtensorflow/serving/predict