ɲ
??
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( ?
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
?
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
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
?
FusedBatchNormV3
x"T

scale"U
offset"U	
mean"U
variance"U
y"T

batch_mean"U
batch_variance"U
reserve_space_1"U
reserve_space_2"U
reserve_space_3"U"
Ttype:
2"
Utype:
2"
epsilonfloat%??8"&
exponential_avg_factorfloat%  ??";
data_formatstringNHWC:
NHWCNCHWNDHWCNCDHW"
is_trainingbool(
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?

NoOp
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
@
ReadVariableOp
resource
value"dtype"
dtypetype?
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
?
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ??
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.8.02v2.8.0-rc1-32-g3f878cff5b68??
z
dense_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??
*
shared_namedense_2/kernel
s
"dense_2/kernel/Read/ReadVariableOpReadVariableOpdense_2/kernel* 
_output_shapes
:
??
*
dtype0
p
dense_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*
shared_namedense_2/bias
i
 dense_2/bias/Read/ReadVariableOpReadVariableOpdense_2/bias*
_output_shapes
:
*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
?
cnn_block_6/conv2d_6/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *,
shared_namecnn_block_6/conv2d_6/kernel
?
/cnn_block_6/conv2d_6/kernel/Read/ReadVariableOpReadVariableOpcnn_block_6/conv2d_6/kernel*&
_output_shapes
: *
dtype0
?
cnn_block_6/conv2d_6/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: **
shared_namecnn_block_6/conv2d_6/bias
?
-cnn_block_6/conv2d_6/bias/Read/ReadVariableOpReadVariableOpcnn_block_6/conv2d_6/bias*
_output_shapes
: *
dtype0
?
'cnn_block_6/batch_normalization_6/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *8
shared_name)'cnn_block_6/batch_normalization_6/gamma
?
;cnn_block_6/batch_normalization_6/gamma/Read/ReadVariableOpReadVariableOp'cnn_block_6/batch_normalization_6/gamma*
_output_shapes
: *
dtype0
?
&cnn_block_6/batch_normalization_6/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *7
shared_name(&cnn_block_6/batch_normalization_6/beta
?
:cnn_block_6/batch_normalization_6/beta/Read/ReadVariableOpReadVariableOp&cnn_block_6/batch_normalization_6/beta*
_output_shapes
: *
dtype0
?
-cnn_block_6/batch_normalization_6/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape: *>
shared_name/-cnn_block_6/batch_normalization_6/moving_mean
?
Acnn_block_6/batch_normalization_6/moving_mean/Read/ReadVariableOpReadVariableOp-cnn_block_6/batch_normalization_6/moving_mean*
_output_shapes
: *
dtype0
?
1cnn_block_6/batch_normalization_6/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape: *B
shared_name31cnn_block_6/batch_normalization_6/moving_variance
?
Ecnn_block_6/batch_normalization_6/moving_variance/Read/ReadVariableOpReadVariableOp1cnn_block_6/batch_normalization_6/moving_variance*
_output_shapes
: *
dtype0
?
cnn_block_7/conv2d_7/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*,
shared_namecnn_block_7/conv2d_7/kernel
?
/cnn_block_7/conv2d_7/kernel/Read/ReadVariableOpReadVariableOpcnn_block_7/conv2d_7/kernel*&
_output_shapes
: @*
dtype0
?
cnn_block_7/conv2d_7/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@**
shared_namecnn_block_7/conv2d_7/bias
?
-cnn_block_7/conv2d_7/bias/Read/ReadVariableOpReadVariableOpcnn_block_7/conv2d_7/bias*
_output_shapes
:@*
dtype0
?
'cnn_block_7/batch_normalization_7/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*8
shared_name)'cnn_block_7/batch_normalization_7/gamma
?
;cnn_block_7/batch_normalization_7/gamma/Read/ReadVariableOpReadVariableOp'cnn_block_7/batch_normalization_7/gamma*
_output_shapes
:@*
dtype0
?
&cnn_block_7/batch_normalization_7/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*7
shared_name(&cnn_block_7/batch_normalization_7/beta
?
:cnn_block_7/batch_normalization_7/beta/Read/ReadVariableOpReadVariableOp&cnn_block_7/batch_normalization_7/beta*
_output_shapes
:@*
dtype0
?
-cnn_block_7/batch_normalization_7/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*>
shared_name/-cnn_block_7/batch_normalization_7/moving_mean
?
Acnn_block_7/batch_normalization_7/moving_mean/Read/ReadVariableOpReadVariableOp-cnn_block_7/batch_normalization_7/moving_mean*
_output_shapes
:@*
dtype0
?
1cnn_block_7/batch_normalization_7/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*B
shared_name31cnn_block_7/batch_normalization_7/moving_variance
?
Ecnn_block_7/batch_normalization_7/moving_variance/Read/ReadVariableOpReadVariableOp1cnn_block_7/batch_normalization_7/moving_variance*
_output_shapes
:@*
dtype0
?
cnn_block_8/conv2d_8/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@?*,
shared_namecnn_block_8/conv2d_8/kernel
?
/cnn_block_8/conv2d_8/kernel/Read/ReadVariableOpReadVariableOpcnn_block_8/conv2d_8/kernel*'
_output_shapes
:@?*
dtype0
?
cnn_block_8/conv2d_8/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?**
shared_namecnn_block_8/conv2d_8/bias
?
-cnn_block_8/conv2d_8/bias/Read/ReadVariableOpReadVariableOpcnn_block_8/conv2d_8/bias*
_output_shapes	
:?*
dtype0
?
'cnn_block_8/batch_normalization_8/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*8
shared_name)'cnn_block_8/batch_normalization_8/gamma
?
;cnn_block_8/batch_normalization_8/gamma/Read/ReadVariableOpReadVariableOp'cnn_block_8/batch_normalization_8/gamma*
_output_shapes	
:?*
dtype0
?
&cnn_block_8/batch_normalization_8/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*7
shared_name(&cnn_block_8/batch_normalization_8/beta
?
:cnn_block_8/batch_normalization_8/beta/Read/ReadVariableOpReadVariableOp&cnn_block_8/batch_normalization_8/beta*
_output_shapes	
:?*
dtype0
?
-cnn_block_8/batch_normalization_8/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*>
shared_name/-cnn_block_8/batch_normalization_8/moving_mean
?
Acnn_block_8/batch_normalization_8/moving_mean/Read/ReadVariableOpReadVariableOp-cnn_block_8/batch_normalization_8/moving_mean*
_output_shapes	
:?*
dtype0
?
1cnn_block_8/batch_normalization_8/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*B
shared_name31cnn_block_8/batch_normalization_8/moving_variance
?
Ecnn_block_8/batch_normalization_8/moving_variance/Read/ReadVariableOpReadVariableOp1cnn_block_8/batch_normalization_8/moving_variance*
_output_shapes	
:?*
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
?
Adam/dense_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??
*&
shared_nameAdam/dense_2/kernel/m
?
)Adam/dense_2/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_2/kernel/m* 
_output_shapes
:
??
*
dtype0
~
Adam/dense_2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*$
shared_nameAdam/dense_2/bias/m
w
'Adam/dense_2/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_2/bias/m*
_output_shapes
:
*
dtype0
?
"Adam/cnn_block_6/conv2d_6/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *3
shared_name$"Adam/cnn_block_6/conv2d_6/kernel/m
?
6Adam/cnn_block_6/conv2d_6/kernel/m/Read/ReadVariableOpReadVariableOp"Adam/cnn_block_6/conv2d_6/kernel/m*&
_output_shapes
: *
dtype0
?
 Adam/cnn_block_6/conv2d_6/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *1
shared_name" Adam/cnn_block_6/conv2d_6/bias/m
?
4Adam/cnn_block_6/conv2d_6/bias/m/Read/ReadVariableOpReadVariableOp Adam/cnn_block_6/conv2d_6/bias/m*
_output_shapes
: *
dtype0
?
.Adam/cnn_block_6/batch_normalization_6/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *?
shared_name0.Adam/cnn_block_6/batch_normalization_6/gamma/m
?
BAdam/cnn_block_6/batch_normalization_6/gamma/m/Read/ReadVariableOpReadVariableOp.Adam/cnn_block_6/batch_normalization_6/gamma/m*
_output_shapes
: *
dtype0
?
-Adam/cnn_block_6/batch_normalization_6/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *>
shared_name/-Adam/cnn_block_6/batch_normalization_6/beta/m
?
AAdam/cnn_block_6/batch_normalization_6/beta/m/Read/ReadVariableOpReadVariableOp-Adam/cnn_block_6/batch_normalization_6/beta/m*
_output_shapes
: *
dtype0
?
"Adam/cnn_block_7/conv2d_7/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*3
shared_name$"Adam/cnn_block_7/conv2d_7/kernel/m
?
6Adam/cnn_block_7/conv2d_7/kernel/m/Read/ReadVariableOpReadVariableOp"Adam/cnn_block_7/conv2d_7/kernel/m*&
_output_shapes
: @*
dtype0
?
 Adam/cnn_block_7/conv2d_7/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*1
shared_name" Adam/cnn_block_7/conv2d_7/bias/m
?
4Adam/cnn_block_7/conv2d_7/bias/m/Read/ReadVariableOpReadVariableOp Adam/cnn_block_7/conv2d_7/bias/m*
_output_shapes
:@*
dtype0
?
.Adam/cnn_block_7/batch_normalization_7/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*?
shared_name0.Adam/cnn_block_7/batch_normalization_7/gamma/m
?
BAdam/cnn_block_7/batch_normalization_7/gamma/m/Read/ReadVariableOpReadVariableOp.Adam/cnn_block_7/batch_normalization_7/gamma/m*
_output_shapes
:@*
dtype0
?
-Adam/cnn_block_7/batch_normalization_7/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*>
shared_name/-Adam/cnn_block_7/batch_normalization_7/beta/m
?
AAdam/cnn_block_7/batch_normalization_7/beta/m/Read/ReadVariableOpReadVariableOp-Adam/cnn_block_7/batch_normalization_7/beta/m*
_output_shapes
:@*
dtype0
?
"Adam/cnn_block_8/conv2d_8/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@?*3
shared_name$"Adam/cnn_block_8/conv2d_8/kernel/m
?
6Adam/cnn_block_8/conv2d_8/kernel/m/Read/ReadVariableOpReadVariableOp"Adam/cnn_block_8/conv2d_8/kernel/m*'
_output_shapes
:@?*
dtype0
?
 Adam/cnn_block_8/conv2d_8/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*1
shared_name" Adam/cnn_block_8/conv2d_8/bias/m
?
4Adam/cnn_block_8/conv2d_8/bias/m/Read/ReadVariableOpReadVariableOp Adam/cnn_block_8/conv2d_8/bias/m*
_output_shapes	
:?*
dtype0
?
.Adam/cnn_block_8/batch_normalization_8/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*?
shared_name0.Adam/cnn_block_8/batch_normalization_8/gamma/m
?
BAdam/cnn_block_8/batch_normalization_8/gamma/m/Read/ReadVariableOpReadVariableOp.Adam/cnn_block_8/batch_normalization_8/gamma/m*
_output_shapes	
:?*
dtype0
?
-Adam/cnn_block_8/batch_normalization_8/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*>
shared_name/-Adam/cnn_block_8/batch_normalization_8/beta/m
?
AAdam/cnn_block_8/batch_normalization_8/beta/m/Read/ReadVariableOpReadVariableOp-Adam/cnn_block_8/batch_normalization_8/beta/m*
_output_shapes	
:?*
dtype0
?
Adam/dense_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??
*&
shared_nameAdam/dense_2/kernel/v
?
)Adam/dense_2/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_2/kernel/v* 
_output_shapes
:
??
*
dtype0
~
Adam/dense_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*$
shared_nameAdam/dense_2/bias/v
w
'Adam/dense_2/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_2/bias/v*
_output_shapes
:
*
dtype0
?
"Adam/cnn_block_6/conv2d_6/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *3
shared_name$"Adam/cnn_block_6/conv2d_6/kernel/v
?
6Adam/cnn_block_6/conv2d_6/kernel/v/Read/ReadVariableOpReadVariableOp"Adam/cnn_block_6/conv2d_6/kernel/v*&
_output_shapes
: *
dtype0
?
 Adam/cnn_block_6/conv2d_6/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *1
shared_name" Adam/cnn_block_6/conv2d_6/bias/v
?
4Adam/cnn_block_6/conv2d_6/bias/v/Read/ReadVariableOpReadVariableOp Adam/cnn_block_6/conv2d_6/bias/v*
_output_shapes
: *
dtype0
?
.Adam/cnn_block_6/batch_normalization_6/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *?
shared_name0.Adam/cnn_block_6/batch_normalization_6/gamma/v
?
BAdam/cnn_block_6/batch_normalization_6/gamma/v/Read/ReadVariableOpReadVariableOp.Adam/cnn_block_6/batch_normalization_6/gamma/v*
_output_shapes
: *
dtype0
?
-Adam/cnn_block_6/batch_normalization_6/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *>
shared_name/-Adam/cnn_block_6/batch_normalization_6/beta/v
?
AAdam/cnn_block_6/batch_normalization_6/beta/v/Read/ReadVariableOpReadVariableOp-Adam/cnn_block_6/batch_normalization_6/beta/v*
_output_shapes
: *
dtype0
?
"Adam/cnn_block_7/conv2d_7/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*3
shared_name$"Adam/cnn_block_7/conv2d_7/kernel/v
?
6Adam/cnn_block_7/conv2d_7/kernel/v/Read/ReadVariableOpReadVariableOp"Adam/cnn_block_7/conv2d_7/kernel/v*&
_output_shapes
: @*
dtype0
?
 Adam/cnn_block_7/conv2d_7/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*1
shared_name" Adam/cnn_block_7/conv2d_7/bias/v
?
4Adam/cnn_block_7/conv2d_7/bias/v/Read/ReadVariableOpReadVariableOp Adam/cnn_block_7/conv2d_7/bias/v*
_output_shapes
:@*
dtype0
?
.Adam/cnn_block_7/batch_normalization_7/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*?
shared_name0.Adam/cnn_block_7/batch_normalization_7/gamma/v
?
BAdam/cnn_block_7/batch_normalization_7/gamma/v/Read/ReadVariableOpReadVariableOp.Adam/cnn_block_7/batch_normalization_7/gamma/v*
_output_shapes
:@*
dtype0
?
-Adam/cnn_block_7/batch_normalization_7/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*>
shared_name/-Adam/cnn_block_7/batch_normalization_7/beta/v
?
AAdam/cnn_block_7/batch_normalization_7/beta/v/Read/ReadVariableOpReadVariableOp-Adam/cnn_block_7/batch_normalization_7/beta/v*
_output_shapes
:@*
dtype0
?
"Adam/cnn_block_8/conv2d_8/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@?*3
shared_name$"Adam/cnn_block_8/conv2d_8/kernel/v
?
6Adam/cnn_block_8/conv2d_8/kernel/v/Read/ReadVariableOpReadVariableOp"Adam/cnn_block_8/conv2d_8/kernel/v*'
_output_shapes
:@?*
dtype0
?
 Adam/cnn_block_8/conv2d_8/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*1
shared_name" Adam/cnn_block_8/conv2d_8/bias/v
?
4Adam/cnn_block_8/conv2d_8/bias/v/Read/ReadVariableOpReadVariableOp Adam/cnn_block_8/conv2d_8/bias/v*
_output_shapes	
:?*
dtype0
?
.Adam/cnn_block_8/batch_normalization_8/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*?
shared_name0.Adam/cnn_block_8/batch_normalization_8/gamma/v
?
BAdam/cnn_block_8/batch_normalization_8/gamma/v/Read/ReadVariableOpReadVariableOp.Adam/cnn_block_8/batch_normalization_8/gamma/v*
_output_shapes	
:?*
dtype0
?
-Adam/cnn_block_8/batch_normalization_8/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*>
shared_name/-Adam/cnn_block_8/batch_normalization_8/beta/v
?
AAdam/cnn_block_8/batch_normalization_8/beta/v/Read/ReadVariableOpReadVariableOp-Adam/cnn_block_8/batch_normalization_8/beta/v*
_output_shapes	
:?*
dtype0

NoOpNoOp
?q
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?p
value?pB?p B?p
?
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer-3
layer_with_weights-3
layer-4
	optimizer
	variables
trainable_variables
	regularization_losses

	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures*
?
conv
bn
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses*
?
conv
bn
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses*
?
conv
 bn
!	variables
"trainable_variables
#regularization_losses
$	keras_api
%__call__
*&&call_and_return_all_conditional_losses*
?
'	variables
(trainable_variables
)regularization_losses
*	keras_api
+__call__
*,&call_and_return_all_conditional_losses* 
?

-kernel
.bias
/	variables
0trainable_variables
1regularization_losses
2	keras_api
3__call__
*4&call_and_return_all_conditional_losses*
?
5iter

6beta_1

7beta_2
	8decay
9learning_rate-m?.m?:m?;m?<m?=m?@m?Am?Bm?Cm?Fm?Gm?Hm?Im?-v?.v?:v?;v?<v?=v?@v?Av?Bv?Cv?Fv?Gv?Hv?Iv?*
?
:0
;1
<2
=3
>4
?5
@6
A7
B8
C9
D10
E11
F12
G13
H14
I15
J16
K17
-18
.19*
j
:0
;1
<2
=3
@4
A5
B6
C7
F8
G9
H10
I11
-12
.13*
* 
?
Lnon_trainable_variables

Mlayers
Nmetrics
Olayer_regularization_losses
Player_metrics
	variables
trainable_variables
	regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
* 

Qserving_default* 
?

:kernel
;bias
R	variables
Strainable_variables
Tregularization_losses
U	keras_api
V__call__
*W&call_and_return_all_conditional_losses*
?
Xaxis
	<gamma
=beta
>moving_mean
?moving_variance
Y	variables
Ztrainable_variables
[regularization_losses
\	keras_api
]__call__
*^&call_and_return_all_conditional_losses*
.
:0
;1
<2
=3
>4
?5*
 
:0
;1
<2
=3*
* 
?
_non_trainable_variables

`layers
ametrics
blayer_regularization_losses
clayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
?

@kernel
Abias
d	variables
etrainable_variables
fregularization_losses
g	keras_api
h__call__
*i&call_and_return_all_conditional_losses*
?
jaxis
	Bgamma
Cbeta
Dmoving_mean
Emoving_variance
k	variables
ltrainable_variables
mregularization_losses
n	keras_api
o__call__
*p&call_and_return_all_conditional_losses*
.
@0
A1
B2
C3
D4
E5*
 
@0
A1
B2
C3*
* 
?
qnon_trainable_variables

rlayers
smetrics
tlayer_regularization_losses
ulayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
?

Fkernel
Gbias
v	variables
wtrainable_variables
xregularization_losses
y	keras_api
z__call__
*{&call_and_return_all_conditional_losses*
?
|axis
	Hgamma
Ibeta
Jmoving_mean
Kmoving_variance
}	variables
~trainable_variables
regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses*
.
F0
G1
H2
I3
J4
K5*
 
F0
G1
H2
I3*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
!	variables
"trainable_variables
#regularization_losses
%__call__
*&&call_and_return_all_conditional_losses
&&"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
'	variables
(trainable_variables
)regularization_losses
+__call__
*,&call_and_return_all_conditional_losses
&,"call_and_return_conditional_losses* 
* 
* 
^X
VARIABLE_VALUEdense_2/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_2/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*

-0
.1*

-0
.1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
/	variables
0trainable_variables
1regularization_losses
3__call__
*4&call_and_return_all_conditional_losses
&4"call_and_return_conditional_losses*
* 
* 
LF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEcnn_block_6/conv2d_6/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUEcnn_block_6/conv2d_6/bias&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUE'cnn_block_6/batch_normalization_6/gamma&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
f`
VARIABLE_VALUE&cnn_block_6/batch_normalization_6/beta&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE-cnn_block_6/batch_normalization_6/moving_mean&variables/4/.ATTRIBUTES/VARIABLE_VALUE*
qk
VARIABLE_VALUE1cnn_block_6/batch_normalization_6/moving_variance&variables/5/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEcnn_block_7/conv2d_7/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUEcnn_block_7/conv2d_7/bias&variables/7/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUE'cnn_block_7/batch_normalization_7/gamma&variables/8/.ATTRIBUTES/VARIABLE_VALUE*
f`
VARIABLE_VALUE&cnn_block_7/batch_normalization_7/beta&variables/9/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE-cnn_block_7/batch_normalization_7/moving_mean'variables/10/.ATTRIBUTES/VARIABLE_VALUE*
rl
VARIABLE_VALUE1cnn_block_7/batch_normalization_7/moving_variance'variables/11/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEcnn_block_8/conv2d_8/kernel'variables/12/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEcnn_block_8/conv2d_8/bias'variables/13/.ATTRIBUTES/VARIABLE_VALUE*
hb
VARIABLE_VALUE'cnn_block_8/batch_normalization_8/gamma'variables/14/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUE&cnn_block_8/batch_normalization_8/beta'variables/15/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE-cnn_block_8/batch_normalization_8/moving_mean'variables/16/.ATTRIBUTES/VARIABLE_VALUE*
rl
VARIABLE_VALUE1cnn_block_8/batch_normalization_8/moving_variance'variables/17/.ATTRIBUTES/VARIABLE_VALUE*
.
>0
?1
D2
E3
J4
K5*
'
0
1
2
3
4*

?0
?1*
* 
* 
* 

:0
;1*

:0
;1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
R	variables
Strainable_variables
Tregularization_losses
V__call__
*W&call_and_return_all_conditional_losses
&W"call_and_return_conditional_losses*
* 
* 
* 
 
<0
=1
>2
?3*

<0
=1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
Y	variables
Ztrainable_variables
[regularization_losses
]__call__
*^&call_and_return_all_conditional_losses
&^"call_and_return_conditional_losses*
* 
* 

>0
?1*

0
1*
* 
* 
* 

@0
A1*

@0
A1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
d	variables
etrainable_variables
fregularization_losses
h__call__
*i&call_and_return_all_conditional_losses
&i"call_and_return_conditional_losses*
* 
* 
* 
 
B0
C1
D2
E3*

B0
C1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
k	variables
ltrainable_variables
mregularization_losses
o__call__
*p&call_and_return_all_conditional_losses
&p"call_and_return_conditional_losses*
* 
* 

D0
E1*

0
1*
* 
* 
* 

F0
G1*

F0
G1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
v	variables
wtrainable_variables
xregularization_losses
z__call__
*{&call_and_return_all_conditional_losses
&{"call_and_return_conditional_losses*
* 
* 
* 
 
H0
I1
J2
K3*

H0
I1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
}	variables
~trainable_variables
regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses*
* 
* 

J0
K1*

0
 1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
<

?total

?count
?	variables
?	keras_api*
M

?total

?count
?
_fn_kwargs
?	variables
?	keras_api*
* 
* 
* 
* 
* 

>0
?1*
* 
* 
* 
* 
* 
* 
* 
* 
* 

D0
E1*
* 
* 
* 
* 
* 
* 
* 
* 
* 

J0
K1*
* 
* 
* 
* 
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

?0
?1*

?	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 

?0
?1*

?	variables*
?{
VARIABLE_VALUEAdam/dense_2/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_2/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE"Adam/cnn_block_6/conv2d_6/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUE Adam/cnn_block_6/conv2d_6/bias/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE.Adam/cnn_block_6/batch_normalization_6/gamma/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE-Adam/cnn_block_6/batch_normalization_6/beta/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE"Adam/cnn_block_7/conv2d_7/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUE Adam/cnn_block_7/conv2d_7/bias/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE.Adam/cnn_block_7/batch_normalization_7/gamma/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE-Adam/cnn_block_7/batch_normalization_7/beta/mBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE"Adam/cnn_block_8/conv2d_8/kernel/mCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUE Adam/cnn_block_8/conv2d_8/bias/mCvariables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE.Adam/cnn_block_8/batch_normalization_8/gamma/mCvariables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE-Adam/cnn_block_8/batch_normalization_8/beta/mCvariables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?{
VARIABLE_VALUEAdam/dense_2/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_2/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE"Adam/cnn_block_6/conv2d_6/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUE Adam/cnn_block_6/conv2d_6/bias/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE.Adam/cnn_block_6/batch_normalization_6/gamma/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE-Adam/cnn_block_6/batch_normalization_6/beta/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE"Adam/cnn_block_7/conv2d_7/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUE Adam/cnn_block_7/conv2d_7/bias/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE.Adam/cnn_block_7/batch_normalization_7/gamma/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE-Adam/cnn_block_7/batch_normalization_7/beta/vBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE"Adam/cnn_block_8/conv2d_8/kernel/vCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUE Adam/cnn_block_8/conv2d_8/bias/vCvariables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE.Adam/cnn_block_8/batch_normalization_8/gamma/vCvariables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE-Adam/cnn_block_8/batch_normalization_8/beta/vCvariables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?
!serving_default_cnn_block_6_inputPlaceholder*/
_output_shapes
:?????????*
dtype0*$
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCall!serving_default_cnn_block_6_inputcnn_block_6/conv2d_6/kernelcnn_block_6/conv2d_6/bias'cnn_block_6/batch_normalization_6/gamma&cnn_block_6/batch_normalization_6/beta-cnn_block_6/batch_normalization_6/moving_mean1cnn_block_6/batch_normalization_6/moving_variancecnn_block_7/conv2d_7/kernelcnn_block_7/conv2d_7/bias'cnn_block_7/batch_normalization_7/gamma&cnn_block_7/batch_normalization_7/beta-cnn_block_7/batch_normalization_7/moving_mean1cnn_block_7/batch_normalization_7/moving_variancecnn_block_8/conv2d_8/kernelcnn_block_8/conv2d_8/bias'cnn_block_8/batch_normalization_8/gamma&cnn_block_8/batch_normalization_8/beta-cnn_block_8/batch_normalization_8/moving_mean1cnn_block_8/batch_normalization_8/moving_variancedense_2/kerneldense_2/bias* 
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*6
_read_only_resource_inputs
	
*2
config_proto" 

CPU

GPU2 *0J 8? *,
f'R%
#__inference_signature_wrapper_18980
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename"dense_2/kernel/Read/ReadVariableOp dense_2/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp/cnn_block_6/conv2d_6/kernel/Read/ReadVariableOp-cnn_block_6/conv2d_6/bias/Read/ReadVariableOp;cnn_block_6/batch_normalization_6/gamma/Read/ReadVariableOp:cnn_block_6/batch_normalization_6/beta/Read/ReadVariableOpAcnn_block_6/batch_normalization_6/moving_mean/Read/ReadVariableOpEcnn_block_6/batch_normalization_6/moving_variance/Read/ReadVariableOp/cnn_block_7/conv2d_7/kernel/Read/ReadVariableOp-cnn_block_7/conv2d_7/bias/Read/ReadVariableOp;cnn_block_7/batch_normalization_7/gamma/Read/ReadVariableOp:cnn_block_7/batch_normalization_7/beta/Read/ReadVariableOpAcnn_block_7/batch_normalization_7/moving_mean/Read/ReadVariableOpEcnn_block_7/batch_normalization_7/moving_variance/Read/ReadVariableOp/cnn_block_8/conv2d_8/kernel/Read/ReadVariableOp-cnn_block_8/conv2d_8/bias/Read/ReadVariableOp;cnn_block_8/batch_normalization_8/gamma/Read/ReadVariableOp:cnn_block_8/batch_normalization_8/beta/Read/ReadVariableOpAcnn_block_8/batch_normalization_8/moving_mean/Read/ReadVariableOpEcnn_block_8/batch_normalization_8/moving_variance/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp)Adam/dense_2/kernel/m/Read/ReadVariableOp'Adam/dense_2/bias/m/Read/ReadVariableOp6Adam/cnn_block_6/conv2d_6/kernel/m/Read/ReadVariableOp4Adam/cnn_block_6/conv2d_6/bias/m/Read/ReadVariableOpBAdam/cnn_block_6/batch_normalization_6/gamma/m/Read/ReadVariableOpAAdam/cnn_block_6/batch_normalization_6/beta/m/Read/ReadVariableOp6Adam/cnn_block_7/conv2d_7/kernel/m/Read/ReadVariableOp4Adam/cnn_block_7/conv2d_7/bias/m/Read/ReadVariableOpBAdam/cnn_block_7/batch_normalization_7/gamma/m/Read/ReadVariableOpAAdam/cnn_block_7/batch_normalization_7/beta/m/Read/ReadVariableOp6Adam/cnn_block_8/conv2d_8/kernel/m/Read/ReadVariableOp4Adam/cnn_block_8/conv2d_8/bias/m/Read/ReadVariableOpBAdam/cnn_block_8/batch_normalization_8/gamma/m/Read/ReadVariableOpAAdam/cnn_block_8/batch_normalization_8/beta/m/Read/ReadVariableOp)Adam/dense_2/kernel/v/Read/ReadVariableOp'Adam/dense_2/bias/v/Read/ReadVariableOp6Adam/cnn_block_6/conv2d_6/kernel/v/Read/ReadVariableOp4Adam/cnn_block_6/conv2d_6/bias/v/Read/ReadVariableOpBAdam/cnn_block_6/batch_normalization_6/gamma/v/Read/ReadVariableOpAAdam/cnn_block_6/batch_normalization_6/beta/v/Read/ReadVariableOp6Adam/cnn_block_7/conv2d_7/kernel/v/Read/ReadVariableOp4Adam/cnn_block_7/conv2d_7/bias/v/Read/ReadVariableOpBAdam/cnn_block_7/batch_normalization_7/gamma/v/Read/ReadVariableOpAAdam/cnn_block_7/batch_normalization_7/beta/v/Read/ReadVariableOp6Adam/cnn_block_8/conv2d_8/kernel/v/Read/ReadVariableOp4Adam/cnn_block_8/conv2d_8/bias/v/Read/ReadVariableOpBAdam/cnn_block_8/batch_normalization_8/gamma/v/Read/ReadVariableOpAAdam/cnn_block_8/batch_normalization_8/beta/v/Read/ReadVariableOpConst*F
Tin?
=2;	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *'
f"R 
__inference__traced_save_19642
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_2/kerneldense_2/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratecnn_block_6/conv2d_6/kernelcnn_block_6/conv2d_6/bias'cnn_block_6/batch_normalization_6/gamma&cnn_block_6/batch_normalization_6/beta-cnn_block_6/batch_normalization_6/moving_mean1cnn_block_6/batch_normalization_6/moving_variancecnn_block_7/conv2d_7/kernelcnn_block_7/conv2d_7/bias'cnn_block_7/batch_normalization_7/gamma&cnn_block_7/batch_normalization_7/beta-cnn_block_7/batch_normalization_7/moving_mean1cnn_block_7/batch_normalization_7/moving_variancecnn_block_8/conv2d_8/kernelcnn_block_8/conv2d_8/bias'cnn_block_8/batch_normalization_8/gamma&cnn_block_8/batch_normalization_8/beta-cnn_block_8/batch_normalization_8/moving_mean1cnn_block_8/batch_normalization_8/moving_variancetotalcounttotal_1count_1Adam/dense_2/kernel/mAdam/dense_2/bias/m"Adam/cnn_block_6/conv2d_6/kernel/m Adam/cnn_block_6/conv2d_6/bias/m.Adam/cnn_block_6/batch_normalization_6/gamma/m-Adam/cnn_block_6/batch_normalization_6/beta/m"Adam/cnn_block_7/conv2d_7/kernel/m Adam/cnn_block_7/conv2d_7/bias/m.Adam/cnn_block_7/batch_normalization_7/gamma/m-Adam/cnn_block_7/batch_normalization_7/beta/m"Adam/cnn_block_8/conv2d_8/kernel/m Adam/cnn_block_8/conv2d_8/bias/m.Adam/cnn_block_8/batch_normalization_8/gamma/m-Adam/cnn_block_8/batch_normalization_8/beta/mAdam/dense_2/kernel/vAdam/dense_2/bias/v"Adam/cnn_block_6/conv2d_6/kernel/v Adam/cnn_block_6/conv2d_6/bias/v.Adam/cnn_block_6/batch_normalization_6/gamma/v-Adam/cnn_block_6/batch_normalization_6/beta/v"Adam/cnn_block_7/conv2d_7/kernel/v Adam/cnn_block_7/conv2d_7/bias/v.Adam/cnn_block_7/batch_normalization_7/gamma/v-Adam/cnn_block_7/batch_normalization_7/beta/v"Adam/cnn_block_8/conv2d_8/kernel/v Adam/cnn_block_8/conv2d_8/bias/v.Adam/cnn_block_8/batch_normalization_8/gamma/v-Adam/cnn_block_8/batch_normalization_8/beta/v*E
Tin>
<2:*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? **
f%R#
!__inference__traced_restore_19823??
?j
?
G__inference_sequential_2_layer_call_and_return_conditional_losses_18858

inputsM
3cnn_block_6_conv2d_6_conv2d_readvariableop_resource: B
4cnn_block_6_conv2d_6_biasadd_readvariableop_resource: G
9cnn_block_6_batch_normalization_6_readvariableop_resource: I
;cnn_block_6_batch_normalization_6_readvariableop_1_resource: X
Jcnn_block_6_batch_normalization_6_fusedbatchnormv3_readvariableop_resource: Z
Lcnn_block_6_batch_normalization_6_fusedbatchnormv3_readvariableop_1_resource: M
3cnn_block_7_conv2d_7_conv2d_readvariableop_resource: @B
4cnn_block_7_conv2d_7_biasadd_readvariableop_resource:@G
9cnn_block_7_batch_normalization_7_readvariableop_resource:@I
;cnn_block_7_batch_normalization_7_readvariableop_1_resource:@X
Jcnn_block_7_batch_normalization_7_fusedbatchnormv3_readvariableop_resource:@Z
Lcnn_block_7_batch_normalization_7_fusedbatchnormv3_readvariableop_1_resource:@N
3cnn_block_8_conv2d_8_conv2d_readvariableop_resource:@?C
4cnn_block_8_conv2d_8_biasadd_readvariableop_resource:	?H
9cnn_block_8_batch_normalization_8_readvariableop_resource:	?J
;cnn_block_8_batch_normalization_8_readvariableop_1_resource:	?Y
Jcnn_block_8_batch_normalization_8_fusedbatchnormv3_readvariableop_resource:	?[
Lcnn_block_8_batch_normalization_8_fusedbatchnormv3_readvariableop_1_resource:	?:
&dense_2_matmul_readvariableop_resource:
??
5
'dense_2_biasadd_readvariableop_resource:

identity??Acnn_block_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOp?Ccnn_block_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1?0cnn_block_6/batch_normalization_6/ReadVariableOp?2cnn_block_6/batch_normalization_6/ReadVariableOp_1?+cnn_block_6/conv2d_6/BiasAdd/ReadVariableOp?*cnn_block_6/conv2d_6/Conv2D/ReadVariableOp?Acnn_block_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOp?Ccnn_block_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1?0cnn_block_7/batch_normalization_7/ReadVariableOp?2cnn_block_7/batch_normalization_7/ReadVariableOp_1?+cnn_block_7/conv2d_7/BiasAdd/ReadVariableOp?*cnn_block_7/conv2d_7/Conv2D/ReadVariableOp?Acnn_block_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOp?Ccnn_block_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1?0cnn_block_8/batch_normalization_8/ReadVariableOp?2cnn_block_8/batch_normalization_8/ReadVariableOp_1?+cnn_block_8/conv2d_8/BiasAdd/ReadVariableOp?*cnn_block_8/conv2d_8/Conv2D/ReadVariableOp?dense_2/BiasAdd/ReadVariableOp?dense_2/MatMul/ReadVariableOp?
*cnn_block_6/conv2d_6/Conv2D/ReadVariableOpReadVariableOp3cnn_block_6_conv2d_6_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0?
cnn_block_6/conv2d_6/Conv2DConv2Dinputs2cnn_block_6/conv2d_6/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingSAME*
strides
?
+cnn_block_6/conv2d_6/BiasAdd/ReadVariableOpReadVariableOp4cnn_block_6_conv2d_6_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
cnn_block_6/conv2d_6/BiasAddBiasAdd$cnn_block_6/conv2d_6/Conv2D:output:03cnn_block_6/conv2d_6/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? ?
0cnn_block_6/batch_normalization_6/ReadVariableOpReadVariableOp9cnn_block_6_batch_normalization_6_readvariableop_resource*
_output_shapes
: *
dtype0?
2cnn_block_6/batch_normalization_6/ReadVariableOp_1ReadVariableOp;cnn_block_6_batch_normalization_6_readvariableop_1_resource*
_output_shapes
: *
dtype0?
Acnn_block_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOpReadVariableOpJcnn_block_6_batch_normalization_6_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0?
Ccnn_block_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpLcnn_block_6_batch_normalization_6_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0?
2cnn_block_6/batch_normalization_6/FusedBatchNormV3FusedBatchNormV3%cnn_block_6/conv2d_6/BiasAdd:output:08cnn_block_6/batch_normalization_6/ReadVariableOp:value:0:cnn_block_6/batch_normalization_6/ReadVariableOp_1:value:0Icnn_block_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOp:value:0Kcnn_block_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:????????? : : : : :*
epsilon%o?:*
is_training( ?
cnn_block_6/ReluRelu6cnn_block_6/batch_normalization_6/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:????????? ?
*cnn_block_7/conv2d_7/Conv2D/ReadVariableOpReadVariableOp3cnn_block_7_conv2d_7_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0?
cnn_block_7/conv2d_7/Conv2DConv2Dcnn_block_6/Relu:activations:02cnn_block_7/conv2d_7/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
?
+cnn_block_7/conv2d_7/BiasAdd/ReadVariableOpReadVariableOp4cnn_block_7_conv2d_7_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
cnn_block_7/conv2d_7/BiasAddBiasAdd$cnn_block_7/conv2d_7/Conv2D:output:03cnn_block_7/conv2d_7/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@?
0cnn_block_7/batch_normalization_7/ReadVariableOpReadVariableOp9cnn_block_7_batch_normalization_7_readvariableop_resource*
_output_shapes
:@*
dtype0?
2cnn_block_7/batch_normalization_7/ReadVariableOp_1ReadVariableOp;cnn_block_7_batch_normalization_7_readvariableop_1_resource*
_output_shapes
:@*
dtype0?
Acnn_block_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOpReadVariableOpJcnn_block_7_batch_normalization_7_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0?
Ccnn_block_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpLcnn_block_7_batch_normalization_7_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0?
2cnn_block_7/batch_normalization_7/FusedBatchNormV3FusedBatchNormV3%cnn_block_7/conv2d_7/BiasAdd:output:08cnn_block_7/batch_normalization_7/ReadVariableOp:value:0:cnn_block_7/batch_normalization_7/ReadVariableOp_1:value:0Icnn_block_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOp:value:0Kcnn_block_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????@:@:@:@:@:*
epsilon%o?:*
is_training( ?
cnn_block_7/ReluRelu6cnn_block_7/batch_normalization_7/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:?????????@?
*cnn_block_8/conv2d_8/Conv2D/ReadVariableOpReadVariableOp3cnn_block_8_conv2d_8_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype0?
cnn_block_8/conv2d_8/Conv2DConv2Dcnn_block_7/Relu:activations:02cnn_block_8/conv2d_8/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
?
+cnn_block_8/conv2d_8/BiasAdd/ReadVariableOpReadVariableOp4cnn_block_8_conv2d_8_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
cnn_block_8/conv2d_8/BiasAddBiasAdd$cnn_block_8/conv2d_8/Conv2D:output:03cnn_block_8/conv2d_8/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:???????????
0cnn_block_8/batch_normalization_8/ReadVariableOpReadVariableOp9cnn_block_8_batch_normalization_8_readvariableop_resource*
_output_shapes	
:?*
dtype0?
2cnn_block_8/batch_normalization_8/ReadVariableOp_1ReadVariableOp;cnn_block_8_batch_normalization_8_readvariableop_1_resource*
_output_shapes	
:?*
dtype0?
Acnn_block_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOpReadVariableOpJcnn_block_8_batch_normalization_8_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype0?
Ccnn_block_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpLcnn_block_8_batch_normalization_8_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype0?
2cnn_block_8/batch_normalization_8/FusedBatchNormV3FusedBatchNormV3%cnn_block_8/conv2d_8/BiasAdd:output:08cnn_block_8/batch_normalization_8/ReadVariableOp:value:0:cnn_block_8/batch_normalization_8/ReadVariableOp_1:value:0Icnn_block_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOp:value:0Kcnn_block_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( ?
cnn_block_8/ReluRelu6cnn_block_8/batch_normalization_8/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:??????????`
flatten_2/ConstConst*
_output_shapes
:*
dtype0*
valueB"???? ? ?
flatten_2/ReshapeReshapecnn_block_8/Relu:activations:0flatten_2/Const:output:0*
T0*)
_output_shapes
:????????????
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource* 
_output_shapes
:
??
*
dtype0?
dense_2/MatMulMatMulflatten_2/Reshape:output:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
?
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0?
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
g
IdentityIdentitydense_2/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????
?
NoOpNoOpB^cnn_block_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOpD^cnn_block_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_11^cnn_block_6/batch_normalization_6/ReadVariableOp3^cnn_block_6/batch_normalization_6/ReadVariableOp_1,^cnn_block_6/conv2d_6/BiasAdd/ReadVariableOp+^cnn_block_6/conv2d_6/Conv2D/ReadVariableOpB^cnn_block_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOpD^cnn_block_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_11^cnn_block_7/batch_normalization_7/ReadVariableOp3^cnn_block_7/batch_normalization_7/ReadVariableOp_1,^cnn_block_7/conv2d_7/BiasAdd/ReadVariableOp+^cnn_block_7/conv2d_7/Conv2D/ReadVariableOpB^cnn_block_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOpD^cnn_block_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOp_11^cnn_block_8/batch_normalization_8/ReadVariableOp3^cnn_block_8/batch_normalization_8/ReadVariableOp_1,^cnn_block_8/conv2d_8/BiasAdd/ReadVariableOp+^cnn_block_8/conv2d_8/Conv2D/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:?????????: : : : : : : : : : : : : : : : : : : : 2?
Acnn_block_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOpAcnn_block_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOp2?
Ccnn_block_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1Ccnn_block_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_12d
0cnn_block_6/batch_normalization_6/ReadVariableOp0cnn_block_6/batch_normalization_6/ReadVariableOp2h
2cnn_block_6/batch_normalization_6/ReadVariableOp_12cnn_block_6/batch_normalization_6/ReadVariableOp_12Z
+cnn_block_6/conv2d_6/BiasAdd/ReadVariableOp+cnn_block_6/conv2d_6/BiasAdd/ReadVariableOp2X
*cnn_block_6/conv2d_6/Conv2D/ReadVariableOp*cnn_block_6/conv2d_6/Conv2D/ReadVariableOp2?
Acnn_block_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOpAcnn_block_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOp2?
Ccnn_block_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1Ccnn_block_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_12d
0cnn_block_7/batch_normalization_7/ReadVariableOp0cnn_block_7/batch_normalization_7/ReadVariableOp2h
2cnn_block_7/batch_normalization_7/ReadVariableOp_12cnn_block_7/batch_normalization_7/ReadVariableOp_12Z
+cnn_block_7/conv2d_7/BiasAdd/ReadVariableOp+cnn_block_7/conv2d_7/BiasAdd/ReadVariableOp2X
*cnn_block_7/conv2d_7/Conv2D/ReadVariableOp*cnn_block_7/conv2d_7/Conv2D/ReadVariableOp2?
Acnn_block_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOpAcnn_block_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOp2?
Ccnn_block_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1Ccnn_block_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOp_12d
0cnn_block_8/batch_normalization_8/ReadVariableOp0cnn_block_8/batch_normalization_8/ReadVariableOp2h
2cnn_block_8/batch_normalization_8/ReadVariableOp_12cnn_block_8/batch_normalization_8/ReadVariableOp_12Z
+cnn_block_8/conv2d_8/BiasAdd/ReadVariableOp+cnn_block_8/conv2d_8/BiasAdd/ReadVariableOp2X
*cnn_block_8/conv2d_8/Conv2D/ReadVariableOp*cnn_block_8/conv2d_8/Conv2D/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
'__inference_dense_2_layer_call_fn_19252

inputs
unknown:
??

	unknown_0:

identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_18159o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:???????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
)
_output_shapes
:???????????
 
_user_specified_nameinputs
?	
?
5__inference_batch_normalization_8_layer_call_fn_19399

inputs
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *Y
fTRR
P__inference_batch_normalization_8_layer_call_and_return_conditional_losses_17975?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,????????????????????????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?	
?
5__inference_batch_normalization_6_layer_call_fn_19275

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+??????????????????????????? *&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *Y
fTRR
P__inference_batch_normalization_6_layer_call_and_return_conditional_losses_17847?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+??????????????????????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+??????????????????????????? : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?
?
P__inference_batch_normalization_8_layer_call_and_return_conditional_losses_19430

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,????????????????????????????:?:?:?:?:*
epsilon%o?:*
is_training( ~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,?????????????????????????????
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
,__inference_sequential_2_layer_call_fn_18783

inputs!
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: #
	unknown_5: @
	unknown_6:@
	unknown_7:@
	unknown_8:@
	unknown_9:@

unknown_10:@%

unknown_11:@?

unknown_12:	?

unknown_13:	?

unknown_14:	?

unknown_15:	?

unknown_16:	?

unknown_17:
??


unknown_18:

identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18* 
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*0
_read_only_resource_inputs
	
*2
config_proto" 

CPU

GPU2 *0J 8? *P
fKRI
G__inference_sequential_2_layer_call_and_return_conditional_losses_18501o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:?????????: : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
P__inference_batch_normalization_7_layer_call_and_return_conditional_losses_17942

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????@?
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????@: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?	
?
B__inference_dense_2_layer_call_and_return_conditional_losses_18159

inputs2
matmul_readvariableop_resource:
??
-
biasadd_readvariableop_resource:

identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????
w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:???????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:Q M
)
_output_shapes
:???????????
 
_user_specified_nameinputs
?$
?
F__inference_cnn_block_7_layer_call_and_return_conditional_losses_18330
input_tensorA
'conv2d_7_conv2d_readvariableop_resource: @6
(conv2d_7_biasadd_readvariableop_resource:@;
-batch_normalization_7_readvariableop_resource:@=
/batch_normalization_7_readvariableop_1_resource:@L
>batch_normalization_7_fusedbatchnormv3_readvariableop_resource:@N
@batch_normalization_7_fusedbatchnormv3_readvariableop_1_resource:@
identity??$batch_normalization_7/AssignNewValue?&batch_normalization_7/AssignNewValue_1?5batch_normalization_7/FusedBatchNormV3/ReadVariableOp?7batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1?$batch_normalization_7/ReadVariableOp?&batch_normalization_7/ReadVariableOp_1?conv2d_7/BiasAdd/ReadVariableOp?conv2d_7/Conv2D/ReadVariableOp?
conv2d_7/Conv2D/ReadVariableOpReadVariableOp'conv2d_7_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0?
conv2d_7/Conv2DConv2Dinput_tensor&conv2d_7/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
?
conv2d_7/BiasAdd/ReadVariableOpReadVariableOp(conv2d_7_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
conv2d_7/BiasAddBiasAddconv2d_7/Conv2D:output:0'conv2d_7/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@?
$batch_normalization_7/ReadVariableOpReadVariableOp-batch_normalization_7_readvariableop_resource*
_output_shapes
:@*
dtype0?
&batch_normalization_7/ReadVariableOp_1ReadVariableOp/batch_normalization_7_readvariableop_1_resource*
_output_shapes
:@*
dtype0?
5batch_normalization_7/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_7_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0?
7batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_7_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0?
&batch_normalization_7/FusedBatchNormV3FusedBatchNormV3conv2d_7/BiasAdd:output:0,batch_normalization_7/ReadVariableOp:value:0.batch_normalization_7/ReadVariableOp_1:value:0=batch_normalization_7/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<?
$batch_normalization_7/AssignNewValueAssignVariableOp>batch_normalization_7_fusedbatchnormv3_readvariableop_resource3batch_normalization_7/FusedBatchNormV3:batch_mean:06^batch_normalization_7/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0?
&batch_normalization_7/AssignNewValue_1AssignVariableOp@batch_normalization_7_fusedbatchnormv3_readvariableop_1_resource7batch_normalization_7/FusedBatchNormV3:batch_variance:08^batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0r
ReluRelu*batch_normalization_7/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:?????????@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????@?
NoOpNoOp%^batch_normalization_7/AssignNewValue'^batch_normalization_7/AssignNewValue_16^batch_normalization_7/FusedBatchNormV3/ReadVariableOp8^batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_7/ReadVariableOp'^batch_normalization_7/ReadVariableOp_1 ^conv2d_7/BiasAdd/ReadVariableOp^conv2d_7/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':????????? : : : : : : 2L
$batch_normalization_7/AssignNewValue$batch_normalization_7/AssignNewValue2P
&batch_normalization_7/AssignNewValue_1&batch_normalization_7/AssignNewValue_12n
5batch_normalization_7/FusedBatchNormV3/ReadVariableOp5batch_normalization_7/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_7/FusedBatchNormV3/ReadVariableOp_17batch_normalization_7/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_7/ReadVariableOp$batch_normalization_7/ReadVariableOp2P
&batch_normalization_7/ReadVariableOp_1&batch_normalization_7/ReadVariableOp_12B
conv2d_7/BiasAdd/ReadVariableOpconv2d_7/BiasAdd/ReadVariableOp2@
conv2d_7/Conv2D/ReadVariableOpconv2d_7/Conv2D/ReadVariableOp:] Y
/
_output_shapes
:????????? 
&
_user_specified_nameinput_tensor
?}
?
 __inference__wrapped_model_17825
cnn_block_6_inputZ
@sequential_2_cnn_block_6_conv2d_6_conv2d_readvariableop_resource: O
Asequential_2_cnn_block_6_conv2d_6_biasadd_readvariableop_resource: T
Fsequential_2_cnn_block_6_batch_normalization_6_readvariableop_resource: V
Hsequential_2_cnn_block_6_batch_normalization_6_readvariableop_1_resource: e
Wsequential_2_cnn_block_6_batch_normalization_6_fusedbatchnormv3_readvariableop_resource: g
Ysequential_2_cnn_block_6_batch_normalization_6_fusedbatchnormv3_readvariableop_1_resource: Z
@sequential_2_cnn_block_7_conv2d_7_conv2d_readvariableop_resource: @O
Asequential_2_cnn_block_7_conv2d_7_biasadd_readvariableop_resource:@T
Fsequential_2_cnn_block_7_batch_normalization_7_readvariableop_resource:@V
Hsequential_2_cnn_block_7_batch_normalization_7_readvariableop_1_resource:@e
Wsequential_2_cnn_block_7_batch_normalization_7_fusedbatchnormv3_readvariableop_resource:@g
Ysequential_2_cnn_block_7_batch_normalization_7_fusedbatchnormv3_readvariableop_1_resource:@[
@sequential_2_cnn_block_8_conv2d_8_conv2d_readvariableop_resource:@?P
Asequential_2_cnn_block_8_conv2d_8_biasadd_readvariableop_resource:	?U
Fsequential_2_cnn_block_8_batch_normalization_8_readvariableop_resource:	?W
Hsequential_2_cnn_block_8_batch_normalization_8_readvariableop_1_resource:	?f
Wsequential_2_cnn_block_8_batch_normalization_8_fusedbatchnormv3_readvariableop_resource:	?h
Ysequential_2_cnn_block_8_batch_normalization_8_fusedbatchnormv3_readvariableop_1_resource:	?G
3sequential_2_dense_2_matmul_readvariableop_resource:
??
B
4sequential_2_dense_2_biasadd_readvariableop_resource:

identity??Nsequential_2/cnn_block_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOp?Psequential_2/cnn_block_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1?=sequential_2/cnn_block_6/batch_normalization_6/ReadVariableOp??sequential_2/cnn_block_6/batch_normalization_6/ReadVariableOp_1?8sequential_2/cnn_block_6/conv2d_6/BiasAdd/ReadVariableOp?7sequential_2/cnn_block_6/conv2d_6/Conv2D/ReadVariableOp?Nsequential_2/cnn_block_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOp?Psequential_2/cnn_block_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1?=sequential_2/cnn_block_7/batch_normalization_7/ReadVariableOp??sequential_2/cnn_block_7/batch_normalization_7/ReadVariableOp_1?8sequential_2/cnn_block_7/conv2d_7/BiasAdd/ReadVariableOp?7sequential_2/cnn_block_7/conv2d_7/Conv2D/ReadVariableOp?Nsequential_2/cnn_block_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOp?Psequential_2/cnn_block_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1?=sequential_2/cnn_block_8/batch_normalization_8/ReadVariableOp??sequential_2/cnn_block_8/batch_normalization_8/ReadVariableOp_1?8sequential_2/cnn_block_8/conv2d_8/BiasAdd/ReadVariableOp?7sequential_2/cnn_block_8/conv2d_8/Conv2D/ReadVariableOp?+sequential_2/dense_2/BiasAdd/ReadVariableOp?*sequential_2/dense_2/MatMul/ReadVariableOp?
7sequential_2/cnn_block_6/conv2d_6/Conv2D/ReadVariableOpReadVariableOp@sequential_2_cnn_block_6_conv2d_6_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0?
(sequential_2/cnn_block_6/conv2d_6/Conv2DConv2Dcnn_block_6_input?sequential_2/cnn_block_6/conv2d_6/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingSAME*
strides
?
8sequential_2/cnn_block_6/conv2d_6/BiasAdd/ReadVariableOpReadVariableOpAsequential_2_cnn_block_6_conv2d_6_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
)sequential_2/cnn_block_6/conv2d_6/BiasAddBiasAdd1sequential_2/cnn_block_6/conv2d_6/Conv2D:output:0@sequential_2/cnn_block_6/conv2d_6/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? ?
=sequential_2/cnn_block_6/batch_normalization_6/ReadVariableOpReadVariableOpFsequential_2_cnn_block_6_batch_normalization_6_readvariableop_resource*
_output_shapes
: *
dtype0?
?sequential_2/cnn_block_6/batch_normalization_6/ReadVariableOp_1ReadVariableOpHsequential_2_cnn_block_6_batch_normalization_6_readvariableop_1_resource*
_output_shapes
: *
dtype0?
Nsequential_2/cnn_block_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOpReadVariableOpWsequential_2_cnn_block_6_batch_normalization_6_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0?
Psequential_2/cnn_block_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpYsequential_2_cnn_block_6_batch_normalization_6_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0?
?sequential_2/cnn_block_6/batch_normalization_6/FusedBatchNormV3FusedBatchNormV32sequential_2/cnn_block_6/conv2d_6/BiasAdd:output:0Esequential_2/cnn_block_6/batch_normalization_6/ReadVariableOp:value:0Gsequential_2/cnn_block_6/batch_normalization_6/ReadVariableOp_1:value:0Vsequential_2/cnn_block_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOp:value:0Xsequential_2/cnn_block_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:????????? : : : : :*
epsilon%o?:*
is_training( ?
sequential_2/cnn_block_6/ReluReluCsequential_2/cnn_block_6/batch_normalization_6/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:????????? ?
7sequential_2/cnn_block_7/conv2d_7/Conv2D/ReadVariableOpReadVariableOp@sequential_2_cnn_block_7_conv2d_7_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0?
(sequential_2/cnn_block_7/conv2d_7/Conv2DConv2D+sequential_2/cnn_block_6/Relu:activations:0?sequential_2/cnn_block_7/conv2d_7/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
?
8sequential_2/cnn_block_7/conv2d_7/BiasAdd/ReadVariableOpReadVariableOpAsequential_2_cnn_block_7_conv2d_7_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
)sequential_2/cnn_block_7/conv2d_7/BiasAddBiasAdd1sequential_2/cnn_block_7/conv2d_7/Conv2D:output:0@sequential_2/cnn_block_7/conv2d_7/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@?
=sequential_2/cnn_block_7/batch_normalization_7/ReadVariableOpReadVariableOpFsequential_2_cnn_block_7_batch_normalization_7_readvariableop_resource*
_output_shapes
:@*
dtype0?
?sequential_2/cnn_block_7/batch_normalization_7/ReadVariableOp_1ReadVariableOpHsequential_2_cnn_block_7_batch_normalization_7_readvariableop_1_resource*
_output_shapes
:@*
dtype0?
Nsequential_2/cnn_block_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOpReadVariableOpWsequential_2_cnn_block_7_batch_normalization_7_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0?
Psequential_2/cnn_block_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpYsequential_2_cnn_block_7_batch_normalization_7_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0?
?sequential_2/cnn_block_7/batch_normalization_7/FusedBatchNormV3FusedBatchNormV32sequential_2/cnn_block_7/conv2d_7/BiasAdd:output:0Esequential_2/cnn_block_7/batch_normalization_7/ReadVariableOp:value:0Gsequential_2/cnn_block_7/batch_normalization_7/ReadVariableOp_1:value:0Vsequential_2/cnn_block_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOp:value:0Xsequential_2/cnn_block_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????@:@:@:@:@:*
epsilon%o?:*
is_training( ?
sequential_2/cnn_block_7/ReluReluCsequential_2/cnn_block_7/batch_normalization_7/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:?????????@?
7sequential_2/cnn_block_8/conv2d_8/Conv2D/ReadVariableOpReadVariableOp@sequential_2_cnn_block_8_conv2d_8_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype0?
(sequential_2/cnn_block_8/conv2d_8/Conv2DConv2D+sequential_2/cnn_block_7/Relu:activations:0?sequential_2/cnn_block_8/conv2d_8/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
?
8sequential_2/cnn_block_8/conv2d_8/BiasAdd/ReadVariableOpReadVariableOpAsequential_2_cnn_block_8_conv2d_8_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
)sequential_2/cnn_block_8/conv2d_8/BiasAddBiasAdd1sequential_2/cnn_block_8/conv2d_8/Conv2D:output:0@sequential_2/cnn_block_8/conv2d_8/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:???????????
=sequential_2/cnn_block_8/batch_normalization_8/ReadVariableOpReadVariableOpFsequential_2_cnn_block_8_batch_normalization_8_readvariableop_resource*
_output_shapes	
:?*
dtype0?
?sequential_2/cnn_block_8/batch_normalization_8/ReadVariableOp_1ReadVariableOpHsequential_2_cnn_block_8_batch_normalization_8_readvariableop_1_resource*
_output_shapes	
:?*
dtype0?
Nsequential_2/cnn_block_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOpReadVariableOpWsequential_2_cnn_block_8_batch_normalization_8_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype0?
Psequential_2/cnn_block_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpYsequential_2_cnn_block_8_batch_normalization_8_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype0?
?sequential_2/cnn_block_8/batch_normalization_8/FusedBatchNormV3FusedBatchNormV32sequential_2/cnn_block_8/conv2d_8/BiasAdd:output:0Esequential_2/cnn_block_8/batch_normalization_8/ReadVariableOp:value:0Gsequential_2/cnn_block_8/batch_normalization_8/ReadVariableOp_1:value:0Vsequential_2/cnn_block_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOp:value:0Xsequential_2/cnn_block_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( ?
sequential_2/cnn_block_8/ReluReluCsequential_2/cnn_block_8/batch_normalization_8/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:??????????m
sequential_2/flatten_2/ConstConst*
_output_shapes
:*
dtype0*
valueB"???? ? ?
sequential_2/flatten_2/ReshapeReshape+sequential_2/cnn_block_8/Relu:activations:0%sequential_2/flatten_2/Const:output:0*
T0*)
_output_shapes
:????????????
*sequential_2/dense_2/MatMul/ReadVariableOpReadVariableOp3sequential_2_dense_2_matmul_readvariableop_resource* 
_output_shapes
:
??
*
dtype0?
sequential_2/dense_2/MatMulMatMul'sequential_2/flatten_2/Reshape:output:02sequential_2/dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
?
+sequential_2/dense_2/BiasAdd/ReadVariableOpReadVariableOp4sequential_2_dense_2_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0?
sequential_2/dense_2/BiasAddBiasAdd%sequential_2/dense_2/MatMul:product:03sequential_2/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
t
IdentityIdentity%sequential_2/dense_2/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????
?

NoOpNoOpO^sequential_2/cnn_block_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOpQ^sequential_2/cnn_block_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1>^sequential_2/cnn_block_6/batch_normalization_6/ReadVariableOp@^sequential_2/cnn_block_6/batch_normalization_6/ReadVariableOp_19^sequential_2/cnn_block_6/conv2d_6/BiasAdd/ReadVariableOp8^sequential_2/cnn_block_6/conv2d_6/Conv2D/ReadVariableOpO^sequential_2/cnn_block_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOpQ^sequential_2/cnn_block_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1>^sequential_2/cnn_block_7/batch_normalization_7/ReadVariableOp@^sequential_2/cnn_block_7/batch_normalization_7/ReadVariableOp_19^sequential_2/cnn_block_7/conv2d_7/BiasAdd/ReadVariableOp8^sequential_2/cnn_block_7/conv2d_7/Conv2D/ReadVariableOpO^sequential_2/cnn_block_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOpQ^sequential_2/cnn_block_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1>^sequential_2/cnn_block_8/batch_normalization_8/ReadVariableOp@^sequential_2/cnn_block_8/batch_normalization_8/ReadVariableOp_19^sequential_2/cnn_block_8/conv2d_8/BiasAdd/ReadVariableOp8^sequential_2/cnn_block_8/conv2d_8/Conv2D/ReadVariableOp,^sequential_2/dense_2/BiasAdd/ReadVariableOp+^sequential_2/dense_2/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:?????????: : : : : : : : : : : : : : : : : : : : 2?
Nsequential_2/cnn_block_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOpNsequential_2/cnn_block_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOp2?
Psequential_2/cnn_block_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1Psequential_2/cnn_block_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_12~
=sequential_2/cnn_block_6/batch_normalization_6/ReadVariableOp=sequential_2/cnn_block_6/batch_normalization_6/ReadVariableOp2?
?sequential_2/cnn_block_6/batch_normalization_6/ReadVariableOp_1?sequential_2/cnn_block_6/batch_normalization_6/ReadVariableOp_12t
8sequential_2/cnn_block_6/conv2d_6/BiasAdd/ReadVariableOp8sequential_2/cnn_block_6/conv2d_6/BiasAdd/ReadVariableOp2r
7sequential_2/cnn_block_6/conv2d_6/Conv2D/ReadVariableOp7sequential_2/cnn_block_6/conv2d_6/Conv2D/ReadVariableOp2?
Nsequential_2/cnn_block_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOpNsequential_2/cnn_block_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOp2?
Psequential_2/cnn_block_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1Psequential_2/cnn_block_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_12~
=sequential_2/cnn_block_7/batch_normalization_7/ReadVariableOp=sequential_2/cnn_block_7/batch_normalization_7/ReadVariableOp2?
?sequential_2/cnn_block_7/batch_normalization_7/ReadVariableOp_1?sequential_2/cnn_block_7/batch_normalization_7/ReadVariableOp_12t
8sequential_2/cnn_block_7/conv2d_7/BiasAdd/ReadVariableOp8sequential_2/cnn_block_7/conv2d_7/BiasAdd/ReadVariableOp2r
7sequential_2/cnn_block_7/conv2d_7/Conv2D/ReadVariableOp7sequential_2/cnn_block_7/conv2d_7/Conv2D/ReadVariableOp2?
Nsequential_2/cnn_block_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOpNsequential_2/cnn_block_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOp2?
Psequential_2/cnn_block_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1Psequential_2/cnn_block_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOp_12~
=sequential_2/cnn_block_8/batch_normalization_8/ReadVariableOp=sequential_2/cnn_block_8/batch_normalization_8/ReadVariableOp2?
?sequential_2/cnn_block_8/batch_normalization_8/ReadVariableOp_1?sequential_2/cnn_block_8/batch_normalization_8/ReadVariableOp_12t
8sequential_2/cnn_block_8/conv2d_8/BiasAdd/ReadVariableOp8sequential_2/cnn_block_8/conv2d_8/BiasAdd/ReadVariableOp2r
7sequential_2/cnn_block_8/conv2d_8/Conv2D/ReadVariableOp7sequential_2/cnn_block_8/conv2d_8/Conv2D/ReadVariableOp2Z
+sequential_2/dense_2/BiasAdd/ReadVariableOp+sequential_2/dense_2/BiasAdd/ReadVariableOp2X
*sequential_2/dense_2/MatMul/ReadVariableOp*sequential_2/dense_2/MatMul/ReadVariableOp:b ^
/
_output_shapes
:?????????
+
_user_specified_namecnn_block_6_input
?	
?
+__inference_cnn_block_6_layer_call_fn_18997
input_tensor!
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_tensorunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *(
_read_only_resource_inputs

*2
config_proto" 

CPU

GPU2 *0J 8? *O
fJRH
F__inference_cnn_block_6_layer_call_and_return_conditional_losses_18049w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
/
_output_shapes
:?????????
&
_user_specified_nameinput_tensor
?
`
D__inference_flatten_2_layer_call_and_return_conditional_losses_19243

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"???? ? ^
ReshapeReshapeinputsConst:output:0*
T0*)
_output_shapes
:???????????Z
IdentityIdentityReshape:output:0*
T0*)
_output_shapes
:???????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?	
?
5__inference_batch_normalization_6_layer_call_fn_19288

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+??????????????????????????? *$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *Y
fTRR
P__inference_batch_normalization_6_layer_call_and_return_conditional_losses_17878?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+??????????????????????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+??????????????????????????? : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?	
?
+__inference_cnn_block_7_layer_call_fn_19081
input_tensor!
unknown: @
	unknown_0:@
	unknown_1:@
	unknown_2:@
	unknown_3:@
	unknown_4:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_tensorunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*(
_read_only_resource_inputs

*2
config_proto" 

CPU

GPU2 *0J 8? *O
fJRH
F__inference_cnn_block_7_layer_call_and_return_conditional_losses_18088w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':????????? : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
/
_output_shapes
:????????? 
&
_user_specified_nameinput_tensor
?
?
P__inference_batch_normalization_8_layer_call_and_return_conditional_losses_19448

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,????????????????????????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,?????????????????????????????
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
P__inference_batch_normalization_7_layer_call_and_return_conditional_losses_19368

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????@:@:@:@:@:*
epsilon%o?:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????@?
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????@: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
??
?
G__inference_sequential_2_layer_call_and_return_conditional_losses_18933

inputsM
3cnn_block_6_conv2d_6_conv2d_readvariableop_resource: B
4cnn_block_6_conv2d_6_biasadd_readvariableop_resource: G
9cnn_block_6_batch_normalization_6_readvariableop_resource: I
;cnn_block_6_batch_normalization_6_readvariableop_1_resource: X
Jcnn_block_6_batch_normalization_6_fusedbatchnormv3_readvariableop_resource: Z
Lcnn_block_6_batch_normalization_6_fusedbatchnormv3_readvariableop_1_resource: M
3cnn_block_7_conv2d_7_conv2d_readvariableop_resource: @B
4cnn_block_7_conv2d_7_biasadd_readvariableop_resource:@G
9cnn_block_7_batch_normalization_7_readvariableop_resource:@I
;cnn_block_7_batch_normalization_7_readvariableop_1_resource:@X
Jcnn_block_7_batch_normalization_7_fusedbatchnormv3_readvariableop_resource:@Z
Lcnn_block_7_batch_normalization_7_fusedbatchnormv3_readvariableop_1_resource:@N
3cnn_block_8_conv2d_8_conv2d_readvariableop_resource:@?C
4cnn_block_8_conv2d_8_biasadd_readvariableop_resource:	?H
9cnn_block_8_batch_normalization_8_readvariableop_resource:	?J
;cnn_block_8_batch_normalization_8_readvariableop_1_resource:	?Y
Jcnn_block_8_batch_normalization_8_fusedbatchnormv3_readvariableop_resource:	?[
Lcnn_block_8_batch_normalization_8_fusedbatchnormv3_readvariableop_1_resource:	?:
&dense_2_matmul_readvariableop_resource:
??
5
'dense_2_biasadd_readvariableop_resource:

identity??0cnn_block_6/batch_normalization_6/AssignNewValue?2cnn_block_6/batch_normalization_6/AssignNewValue_1?Acnn_block_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOp?Ccnn_block_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1?0cnn_block_6/batch_normalization_6/ReadVariableOp?2cnn_block_6/batch_normalization_6/ReadVariableOp_1?+cnn_block_6/conv2d_6/BiasAdd/ReadVariableOp?*cnn_block_6/conv2d_6/Conv2D/ReadVariableOp?0cnn_block_7/batch_normalization_7/AssignNewValue?2cnn_block_7/batch_normalization_7/AssignNewValue_1?Acnn_block_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOp?Ccnn_block_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1?0cnn_block_7/batch_normalization_7/ReadVariableOp?2cnn_block_7/batch_normalization_7/ReadVariableOp_1?+cnn_block_7/conv2d_7/BiasAdd/ReadVariableOp?*cnn_block_7/conv2d_7/Conv2D/ReadVariableOp?0cnn_block_8/batch_normalization_8/AssignNewValue?2cnn_block_8/batch_normalization_8/AssignNewValue_1?Acnn_block_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOp?Ccnn_block_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1?0cnn_block_8/batch_normalization_8/ReadVariableOp?2cnn_block_8/batch_normalization_8/ReadVariableOp_1?+cnn_block_8/conv2d_8/BiasAdd/ReadVariableOp?*cnn_block_8/conv2d_8/Conv2D/ReadVariableOp?dense_2/BiasAdd/ReadVariableOp?dense_2/MatMul/ReadVariableOp?
*cnn_block_6/conv2d_6/Conv2D/ReadVariableOpReadVariableOp3cnn_block_6_conv2d_6_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0?
cnn_block_6/conv2d_6/Conv2DConv2Dinputs2cnn_block_6/conv2d_6/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingSAME*
strides
?
+cnn_block_6/conv2d_6/BiasAdd/ReadVariableOpReadVariableOp4cnn_block_6_conv2d_6_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
cnn_block_6/conv2d_6/BiasAddBiasAdd$cnn_block_6/conv2d_6/Conv2D:output:03cnn_block_6/conv2d_6/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? ?
0cnn_block_6/batch_normalization_6/ReadVariableOpReadVariableOp9cnn_block_6_batch_normalization_6_readvariableop_resource*
_output_shapes
: *
dtype0?
2cnn_block_6/batch_normalization_6/ReadVariableOp_1ReadVariableOp;cnn_block_6_batch_normalization_6_readvariableop_1_resource*
_output_shapes
: *
dtype0?
Acnn_block_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOpReadVariableOpJcnn_block_6_batch_normalization_6_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0?
Ccnn_block_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpLcnn_block_6_batch_normalization_6_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0?
2cnn_block_6/batch_normalization_6/FusedBatchNormV3FusedBatchNormV3%cnn_block_6/conv2d_6/BiasAdd:output:08cnn_block_6/batch_normalization_6/ReadVariableOp:value:0:cnn_block_6/batch_normalization_6/ReadVariableOp_1:value:0Icnn_block_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOp:value:0Kcnn_block_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:????????? : : : : :*
epsilon%o?:*
exponential_avg_factor%
?#<?
0cnn_block_6/batch_normalization_6/AssignNewValueAssignVariableOpJcnn_block_6_batch_normalization_6_fusedbatchnormv3_readvariableop_resource?cnn_block_6/batch_normalization_6/FusedBatchNormV3:batch_mean:0B^cnn_block_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0?
2cnn_block_6/batch_normalization_6/AssignNewValue_1AssignVariableOpLcnn_block_6_batch_normalization_6_fusedbatchnormv3_readvariableop_1_resourceCcnn_block_6/batch_normalization_6/FusedBatchNormV3:batch_variance:0D^cnn_block_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0?
cnn_block_6/ReluRelu6cnn_block_6/batch_normalization_6/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:????????? ?
*cnn_block_7/conv2d_7/Conv2D/ReadVariableOpReadVariableOp3cnn_block_7_conv2d_7_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0?
cnn_block_7/conv2d_7/Conv2DConv2Dcnn_block_6/Relu:activations:02cnn_block_7/conv2d_7/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
?
+cnn_block_7/conv2d_7/BiasAdd/ReadVariableOpReadVariableOp4cnn_block_7_conv2d_7_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
cnn_block_7/conv2d_7/BiasAddBiasAdd$cnn_block_7/conv2d_7/Conv2D:output:03cnn_block_7/conv2d_7/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@?
0cnn_block_7/batch_normalization_7/ReadVariableOpReadVariableOp9cnn_block_7_batch_normalization_7_readvariableop_resource*
_output_shapes
:@*
dtype0?
2cnn_block_7/batch_normalization_7/ReadVariableOp_1ReadVariableOp;cnn_block_7_batch_normalization_7_readvariableop_1_resource*
_output_shapes
:@*
dtype0?
Acnn_block_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOpReadVariableOpJcnn_block_7_batch_normalization_7_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0?
Ccnn_block_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpLcnn_block_7_batch_normalization_7_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0?
2cnn_block_7/batch_normalization_7/FusedBatchNormV3FusedBatchNormV3%cnn_block_7/conv2d_7/BiasAdd:output:08cnn_block_7/batch_normalization_7/ReadVariableOp:value:0:cnn_block_7/batch_normalization_7/ReadVariableOp_1:value:0Icnn_block_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOp:value:0Kcnn_block_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<?
0cnn_block_7/batch_normalization_7/AssignNewValueAssignVariableOpJcnn_block_7_batch_normalization_7_fusedbatchnormv3_readvariableop_resource?cnn_block_7/batch_normalization_7/FusedBatchNormV3:batch_mean:0B^cnn_block_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0?
2cnn_block_7/batch_normalization_7/AssignNewValue_1AssignVariableOpLcnn_block_7_batch_normalization_7_fusedbatchnormv3_readvariableop_1_resourceCcnn_block_7/batch_normalization_7/FusedBatchNormV3:batch_variance:0D^cnn_block_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0?
cnn_block_7/ReluRelu6cnn_block_7/batch_normalization_7/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:?????????@?
*cnn_block_8/conv2d_8/Conv2D/ReadVariableOpReadVariableOp3cnn_block_8_conv2d_8_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype0?
cnn_block_8/conv2d_8/Conv2DConv2Dcnn_block_7/Relu:activations:02cnn_block_8/conv2d_8/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
?
+cnn_block_8/conv2d_8/BiasAdd/ReadVariableOpReadVariableOp4cnn_block_8_conv2d_8_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
cnn_block_8/conv2d_8/BiasAddBiasAdd$cnn_block_8/conv2d_8/Conv2D:output:03cnn_block_8/conv2d_8/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:???????????
0cnn_block_8/batch_normalization_8/ReadVariableOpReadVariableOp9cnn_block_8_batch_normalization_8_readvariableop_resource*
_output_shapes	
:?*
dtype0?
2cnn_block_8/batch_normalization_8/ReadVariableOp_1ReadVariableOp;cnn_block_8_batch_normalization_8_readvariableop_1_resource*
_output_shapes	
:?*
dtype0?
Acnn_block_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOpReadVariableOpJcnn_block_8_batch_normalization_8_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype0?
Ccnn_block_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpLcnn_block_8_batch_normalization_8_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype0?
2cnn_block_8/batch_normalization_8/FusedBatchNormV3FusedBatchNormV3%cnn_block_8/conv2d_8/BiasAdd:output:08cnn_block_8/batch_normalization_8/ReadVariableOp:value:0:cnn_block_8/batch_normalization_8/ReadVariableOp_1:value:0Icnn_block_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOp:value:0Kcnn_block_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<?
0cnn_block_8/batch_normalization_8/AssignNewValueAssignVariableOpJcnn_block_8_batch_normalization_8_fusedbatchnormv3_readvariableop_resource?cnn_block_8/batch_normalization_8/FusedBatchNormV3:batch_mean:0B^cnn_block_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0?
2cnn_block_8/batch_normalization_8/AssignNewValue_1AssignVariableOpLcnn_block_8_batch_normalization_8_fusedbatchnormv3_readvariableop_1_resourceCcnn_block_8/batch_normalization_8/FusedBatchNormV3:batch_variance:0D^cnn_block_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0?
cnn_block_8/ReluRelu6cnn_block_8/batch_normalization_8/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:??????????`
flatten_2/ConstConst*
_output_shapes
:*
dtype0*
valueB"???? ? ?
flatten_2/ReshapeReshapecnn_block_8/Relu:activations:0flatten_2/Const:output:0*
T0*)
_output_shapes
:????????????
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource* 
_output_shapes
:
??
*
dtype0?
dense_2/MatMulMatMulflatten_2/Reshape:output:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
?
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0?
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
g
IdentityIdentitydense_2/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????
?
NoOpNoOp1^cnn_block_6/batch_normalization_6/AssignNewValue3^cnn_block_6/batch_normalization_6/AssignNewValue_1B^cnn_block_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOpD^cnn_block_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_11^cnn_block_6/batch_normalization_6/ReadVariableOp3^cnn_block_6/batch_normalization_6/ReadVariableOp_1,^cnn_block_6/conv2d_6/BiasAdd/ReadVariableOp+^cnn_block_6/conv2d_6/Conv2D/ReadVariableOp1^cnn_block_7/batch_normalization_7/AssignNewValue3^cnn_block_7/batch_normalization_7/AssignNewValue_1B^cnn_block_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOpD^cnn_block_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_11^cnn_block_7/batch_normalization_7/ReadVariableOp3^cnn_block_7/batch_normalization_7/ReadVariableOp_1,^cnn_block_7/conv2d_7/BiasAdd/ReadVariableOp+^cnn_block_7/conv2d_7/Conv2D/ReadVariableOp1^cnn_block_8/batch_normalization_8/AssignNewValue3^cnn_block_8/batch_normalization_8/AssignNewValue_1B^cnn_block_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOpD^cnn_block_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOp_11^cnn_block_8/batch_normalization_8/ReadVariableOp3^cnn_block_8/batch_normalization_8/ReadVariableOp_1,^cnn_block_8/conv2d_8/BiasAdd/ReadVariableOp+^cnn_block_8/conv2d_8/Conv2D/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:?????????: : : : : : : : : : : : : : : : : : : : 2d
0cnn_block_6/batch_normalization_6/AssignNewValue0cnn_block_6/batch_normalization_6/AssignNewValue2h
2cnn_block_6/batch_normalization_6/AssignNewValue_12cnn_block_6/batch_normalization_6/AssignNewValue_12?
Acnn_block_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOpAcnn_block_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOp2?
Ccnn_block_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1Ccnn_block_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_12d
0cnn_block_6/batch_normalization_6/ReadVariableOp0cnn_block_6/batch_normalization_6/ReadVariableOp2h
2cnn_block_6/batch_normalization_6/ReadVariableOp_12cnn_block_6/batch_normalization_6/ReadVariableOp_12Z
+cnn_block_6/conv2d_6/BiasAdd/ReadVariableOp+cnn_block_6/conv2d_6/BiasAdd/ReadVariableOp2X
*cnn_block_6/conv2d_6/Conv2D/ReadVariableOp*cnn_block_6/conv2d_6/Conv2D/ReadVariableOp2d
0cnn_block_7/batch_normalization_7/AssignNewValue0cnn_block_7/batch_normalization_7/AssignNewValue2h
2cnn_block_7/batch_normalization_7/AssignNewValue_12cnn_block_7/batch_normalization_7/AssignNewValue_12?
Acnn_block_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOpAcnn_block_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOp2?
Ccnn_block_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1Ccnn_block_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_12d
0cnn_block_7/batch_normalization_7/ReadVariableOp0cnn_block_7/batch_normalization_7/ReadVariableOp2h
2cnn_block_7/batch_normalization_7/ReadVariableOp_12cnn_block_7/batch_normalization_7/ReadVariableOp_12Z
+cnn_block_7/conv2d_7/BiasAdd/ReadVariableOp+cnn_block_7/conv2d_7/BiasAdd/ReadVariableOp2X
*cnn_block_7/conv2d_7/Conv2D/ReadVariableOp*cnn_block_7/conv2d_7/Conv2D/ReadVariableOp2d
0cnn_block_8/batch_normalization_8/AssignNewValue0cnn_block_8/batch_normalization_8/AssignNewValue2h
2cnn_block_8/batch_normalization_8/AssignNewValue_12cnn_block_8/batch_normalization_8/AssignNewValue_12?
Acnn_block_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOpAcnn_block_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOp2?
Ccnn_block_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1Ccnn_block_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOp_12d
0cnn_block_8/batch_normalization_8/ReadVariableOp0cnn_block_8/batch_normalization_8/ReadVariableOp2h
2cnn_block_8/batch_normalization_8/ReadVariableOp_12cnn_block_8/batch_normalization_8/ReadVariableOp_12Z
+cnn_block_8/conv2d_8/BiasAdd/ReadVariableOp+cnn_block_8/conv2d_8/BiasAdd/ReadVariableOp2X
*cnn_block_8/conv2d_8/Conv2D/ReadVariableOp*cnn_block_8/conv2d_8/Conv2D/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?	
?
+__inference_cnn_block_6_layer_call_fn_19014
input_tensor!
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_tensorunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *O
fJRH
F__inference_cnn_block_6_layer_call_and_return_conditional_losses_18390w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
/
_output_shapes
:?????????
&
_user_specified_nameinput_tensor
?$
?
F__inference_cnn_block_7_layer_call_and_return_conditional_losses_19148
input_tensorA
'conv2d_7_conv2d_readvariableop_resource: @6
(conv2d_7_biasadd_readvariableop_resource:@;
-batch_normalization_7_readvariableop_resource:@=
/batch_normalization_7_readvariableop_1_resource:@L
>batch_normalization_7_fusedbatchnormv3_readvariableop_resource:@N
@batch_normalization_7_fusedbatchnormv3_readvariableop_1_resource:@
identity??$batch_normalization_7/AssignNewValue?&batch_normalization_7/AssignNewValue_1?5batch_normalization_7/FusedBatchNormV3/ReadVariableOp?7batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1?$batch_normalization_7/ReadVariableOp?&batch_normalization_7/ReadVariableOp_1?conv2d_7/BiasAdd/ReadVariableOp?conv2d_7/Conv2D/ReadVariableOp?
conv2d_7/Conv2D/ReadVariableOpReadVariableOp'conv2d_7_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0?
conv2d_7/Conv2DConv2Dinput_tensor&conv2d_7/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
?
conv2d_7/BiasAdd/ReadVariableOpReadVariableOp(conv2d_7_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
conv2d_7/BiasAddBiasAddconv2d_7/Conv2D:output:0'conv2d_7/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@?
$batch_normalization_7/ReadVariableOpReadVariableOp-batch_normalization_7_readvariableop_resource*
_output_shapes
:@*
dtype0?
&batch_normalization_7/ReadVariableOp_1ReadVariableOp/batch_normalization_7_readvariableop_1_resource*
_output_shapes
:@*
dtype0?
5batch_normalization_7/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_7_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0?
7batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_7_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0?
&batch_normalization_7/FusedBatchNormV3FusedBatchNormV3conv2d_7/BiasAdd:output:0,batch_normalization_7/ReadVariableOp:value:0.batch_normalization_7/ReadVariableOp_1:value:0=batch_normalization_7/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<?
$batch_normalization_7/AssignNewValueAssignVariableOp>batch_normalization_7_fusedbatchnormv3_readvariableop_resource3batch_normalization_7/FusedBatchNormV3:batch_mean:06^batch_normalization_7/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0?
&batch_normalization_7/AssignNewValue_1AssignVariableOp@batch_normalization_7_fusedbatchnormv3_readvariableop_1_resource7batch_normalization_7/FusedBatchNormV3:batch_variance:08^batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0r
ReluRelu*batch_normalization_7/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:?????????@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????@?
NoOpNoOp%^batch_normalization_7/AssignNewValue'^batch_normalization_7/AssignNewValue_16^batch_normalization_7/FusedBatchNormV3/ReadVariableOp8^batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_7/ReadVariableOp'^batch_normalization_7/ReadVariableOp_1 ^conv2d_7/BiasAdd/ReadVariableOp^conv2d_7/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':????????? : : : : : : 2L
$batch_normalization_7/AssignNewValue$batch_normalization_7/AssignNewValue2P
&batch_normalization_7/AssignNewValue_1&batch_normalization_7/AssignNewValue_12n
5batch_normalization_7/FusedBatchNormV3/ReadVariableOp5batch_normalization_7/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_7/FusedBatchNormV3/ReadVariableOp_17batch_normalization_7/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_7/ReadVariableOp$batch_normalization_7/ReadVariableOp2P
&batch_normalization_7/ReadVariableOp_1&batch_normalization_7/ReadVariableOp_12B
conv2d_7/BiasAdd/ReadVariableOpconv2d_7/BiasAdd/ReadVariableOp2@
conv2d_7/Conv2D/ReadVariableOpconv2d_7/Conv2D/ReadVariableOp:] Y
/
_output_shapes
:????????? 
&
_user_specified_nameinput_tensor
?
?
,__inference_sequential_2_layer_call_fn_18738

inputs!
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: #
	unknown_5: @
	unknown_6:@
	unknown_7:@
	unknown_8:@
	unknown_9:@

unknown_10:@%

unknown_11:@?

unknown_12:	?

unknown_13:	?

unknown_14:	?

unknown_15:	?

unknown_16:	?

unknown_17:
??


unknown_18:

identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18* 
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*6
_read_only_resource_inputs
	
*2
config_proto" 

CPU

GPU2 *0J 8? *P
fKRI
G__inference_sequential_2_layer_call_and_return_conditional_losses_18166o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:?????????: : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
P__inference_batch_normalization_6_layer_call_and_return_conditional_losses_17878

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+??????????????????????????? : : : : :*
epsilon%o?:*
exponential_avg_factor%
?#<?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+??????????????????????????? ?
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+??????????????????????????? : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?
?
#__inference_signature_wrapper_18980
cnn_block_6_input!
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: #
	unknown_5: @
	unknown_6:@
	unknown_7:@
	unknown_8:@
	unknown_9:@

unknown_10:@%

unknown_11:@?

unknown_12:	?

unknown_13:	?

unknown_14:	?

unknown_15:	?

unknown_16:	?

unknown_17:
??


unknown_18:

identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallcnn_block_6_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18* 
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*6
_read_only_resource_inputs
	
*2
config_proto" 

CPU

GPU2 *0J 8? *)
f$R"
 __inference__wrapped_model_17825o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:?????????: : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:b ^
/
_output_shapes
:?????????
+
_user_specified_namecnn_block_6_input
?	
?
+__inference_cnn_block_7_layer_call_fn_19098
input_tensor!
unknown: @
	unknown_0:@
	unknown_1:@
	unknown_2:@
	unknown_3:@
	unknown_4:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_tensorunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *O
fJRH
F__inference_cnn_block_7_layer_call_and_return_conditional_losses_18330w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':????????? : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
/
_output_shapes
:????????? 
&
_user_specified_nameinput_tensor
?	
?
+__inference_cnn_block_8_layer_call_fn_19182
input_tensor"
unknown:@?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
	unknown_3:	?
	unknown_4:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_tensorunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *O
fJRH
F__inference_cnn_block_8_layer_call_and_return_conditional_losses_18270x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????@: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
/
_output_shapes
:?????????@
&
_user_specified_nameinput_tensor
?
?
F__inference_cnn_block_7_layer_call_and_return_conditional_losses_19123
input_tensorA
'conv2d_7_conv2d_readvariableop_resource: @6
(conv2d_7_biasadd_readvariableop_resource:@;
-batch_normalization_7_readvariableop_resource:@=
/batch_normalization_7_readvariableop_1_resource:@L
>batch_normalization_7_fusedbatchnormv3_readvariableop_resource:@N
@batch_normalization_7_fusedbatchnormv3_readvariableop_1_resource:@
identity??5batch_normalization_7/FusedBatchNormV3/ReadVariableOp?7batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1?$batch_normalization_7/ReadVariableOp?&batch_normalization_7/ReadVariableOp_1?conv2d_7/BiasAdd/ReadVariableOp?conv2d_7/Conv2D/ReadVariableOp?
conv2d_7/Conv2D/ReadVariableOpReadVariableOp'conv2d_7_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0?
conv2d_7/Conv2DConv2Dinput_tensor&conv2d_7/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
?
conv2d_7/BiasAdd/ReadVariableOpReadVariableOp(conv2d_7_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
conv2d_7/BiasAddBiasAddconv2d_7/Conv2D:output:0'conv2d_7/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@?
$batch_normalization_7/ReadVariableOpReadVariableOp-batch_normalization_7_readvariableop_resource*
_output_shapes
:@*
dtype0?
&batch_normalization_7/ReadVariableOp_1ReadVariableOp/batch_normalization_7_readvariableop_1_resource*
_output_shapes
:@*
dtype0?
5batch_normalization_7/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_7_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0?
7batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_7_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0?
&batch_normalization_7/FusedBatchNormV3FusedBatchNormV3conv2d_7/BiasAdd:output:0,batch_normalization_7/ReadVariableOp:value:0.batch_normalization_7/ReadVariableOp_1:value:0=batch_normalization_7/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????@:@:@:@:@:*
epsilon%o?:*
is_training( r
ReluRelu*batch_normalization_7/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:?????????@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????@?
NoOpNoOp6^batch_normalization_7/FusedBatchNormV3/ReadVariableOp8^batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_7/ReadVariableOp'^batch_normalization_7/ReadVariableOp_1 ^conv2d_7/BiasAdd/ReadVariableOp^conv2d_7/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':????????? : : : : : : 2n
5batch_normalization_7/FusedBatchNormV3/ReadVariableOp5batch_normalization_7/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_7/FusedBatchNormV3/ReadVariableOp_17batch_normalization_7/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_7/ReadVariableOp$batch_normalization_7/ReadVariableOp2P
&batch_normalization_7/ReadVariableOp_1&batch_normalization_7/ReadVariableOp_12B
conv2d_7/BiasAdd/ReadVariableOpconv2d_7/BiasAdd/ReadVariableOp2@
conv2d_7/Conv2D/ReadVariableOpconv2d_7/Conv2D/ReadVariableOp:] Y
/
_output_shapes
:????????? 
&
_user_specified_nameinput_tensor
?
?
P__inference_batch_normalization_7_layer_call_and_return_conditional_losses_17911

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????@:@:@:@:@:*
epsilon%o?:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????@?
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????@: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
?
P__inference_batch_normalization_8_layer_call_and_return_conditional_losses_17975

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,????????????????????????????:?:?:?:?:*
epsilon%o?:*
is_training( ~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,?????????????????????????????
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?	
?
5__inference_batch_normalization_7_layer_call_fn_19337

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *Y
fTRR
P__inference_batch_normalization_7_layer_call_and_return_conditional_losses_17911?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?	
?
5__inference_batch_normalization_7_layer_call_fn_19350

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *Y
fTRR
P__inference_batch_normalization_7_layer_call_and_return_conditional_losses_17942?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?$
?
F__inference_cnn_block_6_layer_call_and_return_conditional_losses_18390
input_tensorA
'conv2d_6_conv2d_readvariableop_resource: 6
(conv2d_6_biasadd_readvariableop_resource: ;
-batch_normalization_6_readvariableop_resource: =
/batch_normalization_6_readvariableop_1_resource: L
>batch_normalization_6_fusedbatchnormv3_readvariableop_resource: N
@batch_normalization_6_fusedbatchnormv3_readvariableop_1_resource: 
identity??$batch_normalization_6/AssignNewValue?&batch_normalization_6/AssignNewValue_1?5batch_normalization_6/FusedBatchNormV3/ReadVariableOp?7batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1?$batch_normalization_6/ReadVariableOp?&batch_normalization_6/ReadVariableOp_1?conv2d_6/BiasAdd/ReadVariableOp?conv2d_6/Conv2D/ReadVariableOp?
conv2d_6/Conv2D/ReadVariableOpReadVariableOp'conv2d_6_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0?
conv2d_6/Conv2DConv2Dinput_tensor&conv2d_6/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingSAME*
strides
?
conv2d_6/BiasAdd/ReadVariableOpReadVariableOp(conv2d_6_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
conv2d_6/BiasAddBiasAddconv2d_6/Conv2D:output:0'conv2d_6/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? ?
$batch_normalization_6/ReadVariableOpReadVariableOp-batch_normalization_6_readvariableop_resource*
_output_shapes
: *
dtype0?
&batch_normalization_6/ReadVariableOp_1ReadVariableOp/batch_normalization_6_readvariableop_1_resource*
_output_shapes
: *
dtype0?
5batch_normalization_6/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_6_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0?
7batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_6_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0?
&batch_normalization_6/FusedBatchNormV3FusedBatchNormV3conv2d_6/BiasAdd:output:0,batch_normalization_6/ReadVariableOp:value:0.batch_normalization_6/ReadVariableOp_1:value:0=batch_normalization_6/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:????????? : : : : :*
epsilon%o?:*
exponential_avg_factor%
?#<?
$batch_normalization_6/AssignNewValueAssignVariableOp>batch_normalization_6_fusedbatchnormv3_readvariableop_resource3batch_normalization_6/FusedBatchNormV3:batch_mean:06^batch_normalization_6/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0?
&batch_normalization_6/AssignNewValue_1AssignVariableOp@batch_normalization_6_fusedbatchnormv3_readvariableop_1_resource7batch_normalization_6/FusedBatchNormV3:batch_variance:08^batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0r
ReluRelu*batch_normalization_6/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:????????? i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:????????? ?
NoOpNoOp%^batch_normalization_6/AssignNewValue'^batch_normalization_6/AssignNewValue_16^batch_normalization_6/FusedBatchNormV3/ReadVariableOp8^batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_6/ReadVariableOp'^batch_normalization_6/ReadVariableOp_1 ^conv2d_6/BiasAdd/ReadVariableOp^conv2d_6/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????: : : : : : 2L
$batch_normalization_6/AssignNewValue$batch_normalization_6/AssignNewValue2P
&batch_normalization_6/AssignNewValue_1&batch_normalization_6/AssignNewValue_12n
5batch_normalization_6/FusedBatchNormV3/ReadVariableOp5batch_normalization_6/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_6/FusedBatchNormV3/ReadVariableOp_17batch_normalization_6/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_6/ReadVariableOp$batch_normalization_6/ReadVariableOp2P
&batch_normalization_6/ReadVariableOp_1&batch_normalization_6/ReadVariableOp_12B
conv2d_6/BiasAdd/ReadVariableOpconv2d_6/BiasAdd/ReadVariableOp2@
conv2d_6/Conv2D/ReadVariableOpconv2d_6/Conv2D/ReadVariableOp:] Y
/
_output_shapes
:?????????
&
_user_specified_nameinput_tensor
?
?
F__inference_cnn_block_6_layer_call_and_return_conditional_losses_18049
input_tensorA
'conv2d_6_conv2d_readvariableop_resource: 6
(conv2d_6_biasadd_readvariableop_resource: ;
-batch_normalization_6_readvariableop_resource: =
/batch_normalization_6_readvariableop_1_resource: L
>batch_normalization_6_fusedbatchnormv3_readvariableop_resource: N
@batch_normalization_6_fusedbatchnormv3_readvariableop_1_resource: 
identity??5batch_normalization_6/FusedBatchNormV3/ReadVariableOp?7batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1?$batch_normalization_6/ReadVariableOp?&batch_normalization_6/ReadVariableOp_1?conv2d_6/BiasAdd/ReadVariableOp?conv2d_6/Conv2D/ReadVariableOp?
conv2d_6/Conv2D/ReadVariableOpReadVariableOp'conv2d_6_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0?
conv2d_6/Conv2DConv2Dinput_tensor&conv2d_6/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingSAME*
strides
?
conv2d_6/BiasAdd/ReadVariableOpReadVariableOp(conv2d_6_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
conv2d_6/BiasAddBiasAddconv2d_6/Conv2D:output:0'conv2d_6/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? ?
$batch_normalization_6/ReadVariableOpReadVariableOp-batch_normalization_6_readvariableop_resource*
_output_shapes
: *
dtype0?
&batch_normalization_6/ReadVariableOp_1ReadVariableOp/batch_normalization_6_readvariableop_1_resource*
_output_shapes
: *
dtype0?
5batch_normalization_6/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_6_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0?
7batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_6_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0?
&batch_normalization_6/FusedBatchNormV3FusedBatchNormV3conv2d_6/BiasAdd:output:0,batch_normalization_6/ReadVariableOp:value:0.batch_normalization_6/ReadVariableOp_1:value:0=batch_normalization_6/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:????????? : : : : :*
epsilon%o?:*
is_training( r
ReluRelu*batch_normalization_6/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:????????? i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:????????? ?
NoOpNoOp6^batch_normalization_6/FusedBatchNormV3/ReadVariableOp8^batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_6/ReadVariableOp'^batch_normalization_6/ReadVariableOp_1 ^conv2d_6/BiasAdd/ReadVariableOp^conv2d_6/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????: : : : : : 2n
5batch_normalization_6/FusedBatchNormV3/ReadVariableOp5batch_normalization_6/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_6/FusedBatchNormV3/ReadVariableOp_17batch_normalization_6/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_6/ReadVariableOp$batch_normalization_6/ReadVariableOp2P
&batch_normalization_6/ReadVariableOp_1&batch_normalization_6/ReadVariableOp_12B
conv2d_6/BiasAdd/ReadVariableOpconv2d_6/BiasAdd/ReadVariableOp2@
conv2d_6/Conv2D/ReadVariableOpconv2d_6/Conv2D/ReadVariableOp:] Y
/
_output_shapes
:?????????
&
_user_specified_nameinput_tensor
?
`
D__inference_flatten_2_layer_call_and_return_conditional_losses_18147

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"???? ? ^
ReshapeReshapeinputsConst:output:0*
T0*)
_output_shapes
:???????????Z
IdentityIdentityReshape:output:0*
T0*)
_output_shapes
:???????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?	
?
+__inference_cnn_block_8_layer_call_fn_19165
input_tensor"
unknown:@?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
	unknown_3:	?
	unknown_4:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_tensorunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*(
_read_only_resource_inputs

*2
config_proto" 

CPU

GPU2 *0J 8? *O
fJRH
F__inference_cnn_block_8_layer_call_and_return_conditional_losses_18127x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????@: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
/
_output_shapes
:?????????@
&
_user_specified_nameinput_tensor
?$
?
F__inference_cnn_block_8_layer_call_and_return_conditional_losses_18270
input_tensorB
'conv2d_8_conv2d_readvariableop_resource:@?7
(conv2d_8_biasadd_readvariableop_resource:	?<
-batch_normalization_8_readvariableop_resource:	?>
/batch_normalization_8_readvariableop_1_resource:	?M
>batch_normalization_8_fusedbatchnormv3_readvariableop_resource:	?O
@batch_normalization_8_fusedbatchnormv3_readvariableop_1_resource:	?
identity??$batch_normalization_8/AssignNewValue?&batch_normalization_8/AssignNewValue_1?5batch_normalization_8/FusedBatchNormV3/ReadVariableOp?7batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1?$batch_normalization_8/ReadVariableOp?&batch_normalization_8/ReadVariableOp_1?conv2d_8/BiasAdd/ReadVariableOp?conv2d_8/Conv2D/ReadVariableOp?
conv2d_8/Conv2D/ReadVariableOpReadVariableOp'conv2d_8_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype0?
conv2d_8/Conv2DConv2Dinput_tensor&conv2d_8/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
?
conv2d_8/BiasAdd/ReadVariableOpReadVariableOp(conv2d_8_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
conv2d_8/BiasAddBiasAddconv2d_8/Conv2D:output:0'conv2d_8/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:???????????
$batch_normalization_8/ReadVariableOpReadVariableOp-batch_normalization_8_readvariableop_resource*
_output_shapes	
:?*
dtype0?
&batch_normalization_8/ReadVariableOp_1ReadVariableOp/batch_normalization_8_readvariableop_1_resource*
_output_shapes	
:?*
dtype0?
5batch_normalization_8/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_8_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype0?
7batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_8_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype0?
&batch_normalization_8/FusedBatchNormV3FusedBatchNormV3conv2d_8/BiasAdd:output:0,batch_normalization_8/ReadVariableOp:value:0.batch_normalization_8/ReadVariableOp_1:value:0=batch_normalization_8/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<?
$batch_normalization_8/AssignNewValueAssignVariableOp>batch_normalization_8_fusedbatchnormv3_readvariableop_resource3batch_normalization_8/FusedBatchNormV3:batch_mean:06^batch_normalization_8/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0?
&batch_normalization_8/AssignNewValue_1AssignVariableOp@batch_normalization_8_fusedbatchnormv3_readvariableop_1_resource7batch_normalization_8/FusedBatchNormV3:batch_variance:08^batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0s
ReluRelu*batch_normalization_8/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:??????????j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:???????????
NoOpNoOp%^batch_normalization_8/AssignNewValue'^batch_normalization_8/AssignNewValue_16^batch_normalization_8/FusedBatchNormV3/ReadVariableOp8^batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_8/ReadVariableOp'^batch_normalization_8/ReadVariableOp_1 ^conv2d_8/BiasAdd/ReadVariableOp^conv2d_8/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????@: : : : : : 2L
$batch_normalization_8/AssignNewValue$batch_normalization_8/AssignNewValue2P
&batch_normalization_8/AssignNewValue_1&batch_normalization_8/AssignNewValue_12n
5batch_normalization_8/FusedBatchNormV3/ReadVariableOp5batch_normalization_8/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_8/FusedBatchNormV3/ReadVariableOp_17batch_normalization_8/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_8/ReadVariableOp$batch_normalization_8/ReadVariableOp2P
&batch_normalization_8/ReadVariableOp_1&batch_normalization_8/ReadVariableOp_12B
conv2d_8/BiasAdd/ReadVariableOpconv2d_8/BiasAdd/ReadVariableOp2@
conv2d_8/Conv2D/ReadVariableOpconv2d_8/Conv2D/ReadVariableOp:] Y
/
_output_shapes
:?????????@
&
_user_specified_nameinput_tensor
?$
?
F__inference_cnn_block_8_layer_call_and_return_conditional_losses_19232
input_tensorB
'conv2d_8_conv2d_readvariableop_resource:@?7
(conv2d_8_biasadd_readvariableop_resource:	?<
-batch_normalization_8_readvariableop_resource:	?>
/batch_normalization_8_readvariableop_1_resource:	?M
>batch_normalization_8_fusedbatchnormv3_readvariableop_resource:	?O
@batch_normalization_8_fusedbatchnormv3_readvariableop_1_resource:	?
identity??$batch_normalization_8/AssignNewValue?&batch_normalization_8/AssignNewValue_1?5batch_normalization_8/FusedBatchNormV3/ReadVariableOp?7batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1?$batch_normalization_8/ReadVariableOp?&batch_normalization_8/ReadVariableOp_1?conv2d_8/BiasAdd/ReadVariableOp?conv2d_8/Conv2D/ReadVariableOp?
conv2d_8/Conv2D/ReadVariableOpReadVariableOp'conv2d_8_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype0?
conv2d_8/Conv2DConv2Dinput_tensor&conv2d_8/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
?
conv2d_8/BiasAdd/ReadVariableOpReadVariableOp(conv2d_8_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
conv2d_8/BiasAddBiasAddconv2d_8/Conv2D:output:0'conv2d_8/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:???????????
$batch_normalization_8/ReadVariableOpReadVariableOp-batch_normalization_8_readvariableop_resource*
_output_shapes	
:?*
dtype0?
&batch_normalization_8/ReadVariableOp_1ReadVariableOp/batch_normalization_8_readvariableop_1_resource*
_output_shapes	
:?*
dtype0?
5batch_normalization_8/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_8_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype0?
7batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_8_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype0?
&batch_normalization_8/FusedBatchNormV3FusedBatchNormV3conv2d_8/BiasAdd:output:0,batch_normalization_8/ReadVariableOp:value:0.batch_normalization_8/ReadVariableOp_1:value:0=batch_normalization_8/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<?
$batch_normalization_8/AssignNewValueAssignVariableOp>batch_normalization_8_fusedbatchnormv3_readvariableop_resource3batch_normalization_8/FusedBatchNormV3:batch_mean:06^batch_normalization_8/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0?
&batch_normalization_8/AssignNewValue_1AssignVariableOp@batch_normalization_8_fusedbatchnormv3_readvariableop_1_resource7batch_normalization_8/FusedBatchNormV3:batch_variance:08^batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0s
ReluRelu*batch_normalization_8/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:??????????j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:???????????
NoOpNoOp%^batch_normalization_8/AssignNewValue'^batch_normalization_8/AssignNewValue_16^batch_normalization_8/FusedBatchNormV3/ReadVariableOp8^batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_8/ReadVariableOp'^batch_normalization_8/ReadVariableOp_1 ^conv2d_8/BiasAdd/ReadVariableOp^conv2d_8/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????@: : : : : : 2L
$batch_normalization_8/AssignNewValue$batch_normalization_8/AssignNewValue2P
&batch_normalization_8/AssignNewValue_1&batch_normalization_8/AssignNewValue_12n
5batch_normalization_8/FusedBatchNormV3/ReadVariableOp5batch_normalization_8/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_8/FusedBatchNormV3/ReadVariableOp_17batch_normalization_8/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_8/ReadVariableOp$batch_normalization_8/ReadVariableOp2P
&batch_normalization_8/ReadVariableOp_1&batch_normalization_8/ReadVariableOp_12B
conv2d_8/BiasAdd/ReadVariableOpconv2d_8/BiasAdd/ReadVariableOp2@
conv2d_8/Conv2D/ReadVariableOpconv2d_8/Conv2D/ReadVariableOp:] Y
/
_output_shapes
:?????????@
&
_user_specified_nameinput_tensor
?
?
F__inference_cnn_block_7_layer_call_and_return_conditional_losses_18088
input_tensorA
'conv2d_7_conv2d_readvariableop_resource: @6
(conv2d_7_biasadd_readvariableop_resource:@;
-batch_normalization_7_readvariableop_resource:@=
/batch_normalization_7_readvariableop_1_resource:@L
>batch_normalization_7_fusedbatchnormv3_readvariableop_resource:@N
@batch_normalization_7_fusedbatchnormv3_readvariableop_1_resource:@
identity??5batch_normalization_7/FusedBatchNormV3/ReadVariableOp?7batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1?$batch_normalization_7/ReadVariableOp?&batch_normalization_7/ReadVariableOp_1?conv2d_7/BiasAdd/ReadVariableOp?conv2d_7/Conv2D/ReadVariableOp?
conv2d_7/Conv2D/ReadVariableOpReadVariableOp'conv2d_7_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0?
conv2d_7/Conv2DConv2Dinput_tensor&conv2d_7/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
?
conv2d_7/BiasAdd/ReadVariableOpReadVariableOp(conv2d_7_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
conv2d_7/BiasAddBiasAddconv2d_7/Conv2D:output:0'conv2d_7/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@?
$batch_normalization_7/ReadVariableOpReadVariableOp-batch_normalization_7_readvariableop_resource*
_output_shapes
:@*
dtype0?
&batch_normalization_7/ReadVariableOp_1ReadVariableOp/batch_normalization_7_readvariableop_1_resource*
_output_shapes
:@*
dtype0?
5batch_normalization_7/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_7_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0?
7batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_7_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0?
&batch_normalization_7/FusedBatchNormV3FusedBatchNormV3conv2d_7/BiasAdd:output:0,batch_normalization_7/ReadVariableOp:value:0.batch_normalization_7/ReadVariableOp_1:value:0=batch_normalization_7/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????@:@:@:@:@:*
epsilon%o?:*
is_training( r
ReluRelu*batch_normalization_7/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:?????????@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????@?
NoOpNoOp6^batch_normalization_7/FusedBatchNormV3/ReadVariableOp8^batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_7/ReadVariableOp'^batch_normalization_7/ReadVariableOp_1 ^conv2d_7/BiasAdd/ReadVariableOp^conv2d_7/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':????????? : : : : : : 2n
5batch_normalization_7/FusedBatchNormV3/ReadVariableOp5batch_normalization_7/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_7/FusedBatchNormV3/ReadVariableOp_17batch_normalization_7/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_7/ReadVariableOp$batch_normalization_7/ReadVariableOp2P
&batch_normalization_7/ReadVariableOp_1&batch_normalization_7/ReadVariableOp_12B
conv2d_7/BiasAdd/ReadVariableOpconv2d_7/BiasAdd/ReadVariableOp2@
conv2d_7/Conv2D/ReadVariableOpconv2d_7/Conv2D/ReadVariableOp:] Y
/
_output_shapes
:????????? 
&
_user_specified_nameinput_tensor
?
?
F__inference_cnn_block_8_layer_call_and_return_conditional_losses_18127
input_tensorB
'conv2d_8_conv2d_readvariableop_resource:@?7
(conv2d_8_biasadd_readvariableop_resource:	?<
-batch_normalization_8_readvariableop_resource:	?>
/batch_normalization_8_readvariableop_1_resource:	?M
>batch_normalization_8_fusedbatchnormv3_readvariableop_resource:	?O
@batch_normalization_8_fusedbatchnormv3_readvariableop_1_resource:	?
identity??5batch_normalization_8/FusedBatchNormV3/ReadVariableOp?7batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1?$batch_normalization_8/ReadVariableOp?&batch_normalization_8/ReadVariableOp_1?conv2d_8/BiasAdd/ReadVariableOp?conv2d_8/Conv2D/ReadVariableOp?
conv2d_8/Conv2D/ReadVariableOpReadVariableOp'conv2d_8_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype0?
conv2d_8/Conv2DConv2Dinput_tensor&conv2d_8/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
?
conv2d_8/BiasAdd/ReadVariableOpReadVariableOp(conv2d_8_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
conv2d_8/BiasAddBiasAddconv2d_8/Conv2D:output:0'conv2d_8/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:???????????
$batch_normalization_8/ReadVariableOpReadVariableOp-batch_normalization_8_readvariableop_resource*
_output_shapes	
:?*
dtype0?
&batch_normalization_8/ReadVariableOp_1ReadVariableOp/batch_normalization_8_readvariableop_1_resource*
_output_shapes	
:?*
dtype0?
5batch_normalization_8/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_8_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype0?
7batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_8_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype0?
&batch_normalization_8/FusedBatchNormV3FusedBatchNormV3conv2d_8/BiasAdd:output:0,batch_normalization_8/ReadVariableOp:value:0.batch_normalization_8/ReadVariableOp_1:value:0=batch_normalization_8/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( s
ReluRelu*batch_normalization_8/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:??????????j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:???????????
NoOpNoOp6^batch_normalization_8/FusedBatchNormV3/ReadVariableOp8^batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_8/ReadVariableOp'^batch_normalization_8/ReadVariableOp_1 ^conv2d_8/BiasAdd/ReadVariableOp^conv2d_8/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????@: : : : : : 2n
5batch_normalization_8/FusedBatchNormV3/ReadVariableOp5batch_normalization_8/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_8/FusedBatchNormV3/ReadVariableOp_17batch_normalization_8/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_8/ReadVariableOp$batch_normalization_8/ReadVariableOp2P
&batch_normalization_8/ReadVariableOp_1&batch_normalization_8/ReadVariableOp_12B
conv2d_8/BiasAdd/ReadVariableOpconv2d_8/BiasAdd/ReadVariableOp2@
conv2d_8/Conv2D/ReadVariableOpconv2d_8/Conv2D/ReadVariableOp:] Y
/
_output_shapes
:?????????@
&
_user_specified_nameinput_tensor
?
?
F__inference_cnn_block_8_layer_call_and_return_conditional_losses_19207
input_tensorB
'conv2d_8_conv2d_readvariableop_resource:@?7
(conv2d_8_biasadd_readvariableop_resource:	?<
-batch_normalization_8_readvariableop_resource:	?>
/batch_normalization_8_readvariableop_1_resource:	?M
>batch_normalization_8_fusedbatchnormv3_readvariableop_resource:	?O
@batch_normalization_8_fusedbatchnormv3_readvariableop_1_resource:	?
identity??5batch_normalization_8/FusedBatchNormV3/ReadVariableOp?7batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1?$batch_normalization_8/ReadVariableOp?&batch_normalization_8/ReadVariableOp_1?conv2d_8/BiasAdd/ReadVariableOp?conv2d_8/Conv2D/ReadVariableOp?
conv2d_8/Conv2D/ReadVariableOpReadVariableOp'conv2d_8_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype0?
conv2d_8/Conv2DConv2Dinput_tensor&conv2d_8/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
?
conv2d_8/BiasAdd/ReadVariableOpReadVariableOp(conv2d_8_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
conv2d_8/BiasAddBiasAddconv2d_8/Conv2D:output:0'conv2d_8/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:???????????
$batch_normalization_8/ReadVariableOpReadVariableOp-batch_normalization_8_readvariableop_resource*
_output_shapes	
:?*
dtype0?
&batch_normalization_8/ReadVariableOp_1ReadVariableOp/batch_normalization_8_readvariableop_1_resource*
_output_shapes	
:?*
dtype0?
5batch_normalization_8/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_8_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype0?
7batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_8_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype0?
&batch_normalization_8/FusedBatchNormV3FusedBatchNormV3conv2d_8/BiasAdd:output:0,batch_normalization_8/ReadVariableOp:value:0.batch_normalization_8/ReadVariableOp_1:value:0=batch_normalization_8/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( s
ReluRelu*batch_normalization_8/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:??????????j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:???????????
NoOpNoOp6^batch_normalization_8/FusedBatchNormV3/ReadVariableOp8^batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_8/ReadVariableOp'^batch_normalization_8/ReadVariableOp_1 ^conv2d_8/BiasAdd/ReadVariableOp^conv2d_8/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????@: : : : : : 2n
5batch_normalization_8/FusedBatchNormV3/ReadVariableOp5batch_normalization_8/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_8/FusedBatchNormV3/ReadVariableOp_17batch_normalization_8/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_8/ReadVariableOp$batch_normalization_8/ReadVariableOp2P
&batch_normalization_8/ReadVariableOp_1&batch_normalization_8/ReadVariableOp_12B
conv2d_8/BiasAdd/ReadVariableOpconv2d_8/BiasAdd/ReadVariableOp2@
conv2d_8/Conv2D/ReadVariableOpconv2d_8/Conv2D/ReadVariableOp:] Y
/
_output_shapes
:?????????@
&
_user_specified_nameinput_tensor
??
?)
!__inference__traced_restore_19823
file_prefix3
assignvariableop_dense_2_kernel:
??
-
assignvariableop_1_dense_2_bias:
&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: H
.assignvariableop_7_cnn_block_6_conv2d_6_kernel: :
,assignvariableop_8_cnn_block_6_conv2d_6_bias: H
:assignvariableop_9_cnn_block_6_batch_normalization_6_gamma: H
:assignvariableop_10_cnn_block_6_batch_normalization_6_beta: O
Aassignvariableop_11_cnn_block_6_batch_normalization_6_moving_mean: S
Eassignvariableop_12_cnn_block_6_batch_normalization_6_moving_variance: I
/assignvariableop_13_cnn_block_7_conv2d_7_kernel: @;
-assignvariableop_14_cnn_block_7_conv2d_7_bias:@I
;assignvariableop_15_cnn_block_7_batch_normalization_7_gamma:@H
:assignvariableop_16_cnn_block_7_batch_normalization_7_beta:@O
Aassignvariableop_17_cnn_block_7_batch_normalization_7_moving_mean:@S
Eassignvariableop_18_cnn_block_7_batch_normalization_7_moving_variance:@J
/assignvariableop_19_cnn_block_8_conv2d_8_kernel:@?<
-assignvariableop_20_cnn_block_8_conv2d_8_bias:	?J
;assignvariableop_21_cnn_block_8_batch_normalization_8_gamma:	?I
:assignvariableop_22_cnn_block_8_batch_normalization_8_beta:	?P
Aassignvariableop_23_cnn_block_8_batch_normalization_8_moving_mean:	?T
Eassignvariableop_24_cnn_block_8_batch_normalization_8_moving_variance:	?#
assignvariableop_25_total: #
assignvariableop_26_count: %
assignvariableop_27_total_1: %
assignvariableop_28_count_1: =
)assignvariableop_29_adam_dense_2_kernel_m:
??
5
'assignvariableop_30_adam_dense_2_bias_m:
P
6assignvariableop_31_adam_cnn_block_6_conv2d_6_kernel_m: B
4assignvariableop_32_adam_cnn_block_6_conv2d_6_bias_m: P
Bassignvariableop_33_adam_cnn_block_6_batch_normalization_6_gamma_m: O
Aassignvariableop_34_adam_cnn_block_6_batch_normalization_6_beta_m: P
6assignvariableop_35_adam_cnn_block_7_conv2d_7_kernel_m: @B
4assignvariableop_36_adam_cnn_block_7_conv2d_7_bias_m:@P
Bassignvariableop_37_adam_cnn_block_7_batch_normalization_7_gamma_m:@O
Aassignvariableop_38_adam_cnn_block_7_batch_normalization_7_beta_m:@Q
6assignvariableop_39_adam_cnn_block_8_conv2d_8_kernel_m:@?C
4assignvariableop_40_adam_cnn_block_8_conv2d_8_bias_m:	?Q
Bassignvariableop_41_adam_cnn_block_8_batch_normalization_8_gamma_m:	?P
Aassignvariableop_42_adam_cnn_block_8_batch_normalization_8_beta_m:	?=
)assignvariableop_43_adam_dense_2_kernel_v:
??
5
'assignvariableop_44_adam_dense_2_bias_v:
P
6assignvariableop_45_adam_cnn_block_6_conv2d_6_kernel_v: B
4assignvariableop_46_adam_cnn_block_6_conv2d_6_bias_v: P
Bassignvariableop_47_adam_cnn_block_6_batch_normalization_6_gamma_v: O
Aassignvariableop_48_adam_cnn_block_6_batch_normalization_6_beta_v: P
6assignvariableop_49_adam_cnn_block_7_conv2d_7_kernel_v: @B
4assignvariableop_50_adam_cnn_block_7_conv2d_7_bias_v:@P
Bassignvariableop_51_adam_cnn_block_7_batch_normalization_7_gamma_v:@O
Aassignvariableop_52_adam_cnn_block_7_batch_normalization_7_beta_v:@Q
6assignvariableop_53_adam_cnn_block_8_conv2d_8_kernel_v:@?C
4assignvariableop_54_adam_cnn_block_8_conv2d_8_bias_v:	?Q
Bassignvariableop_55_adam_cnn_block_8_batch_normalization_8_gamma_v:	?P
Aassignvariableop_56_adam_cnn_block_8_batch_normalization_8_beta_v:	?
identity_58??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_30?AssignVariableOp_31?AssignVariableOp_32?AssignVariableOp_33?AssignVariableOp_34?AssignVariableOp_35?AssignVariableOp_36?AssignVariableOp_37?AssignVariableOp_38?AssignVariableOp_39?AssignVariableOp_4?AssignVariableOp_40?AssignVariableOp_41?AssignVariableOp_42?AssignVariableOp_43?AssignVariableOp_44?AssignVariableOp_45?AssignVariableOp_46?AssignVariableOp_47?AssignVariableOp_48?AssignVariableOp_49?AssignVariableOp_5?AssignVariableOp_50?AssignVariableOp_51?AssignVariableOp_52?AssignVariableOp_53?AssignVariableOp_54?AssignVariableOp_55?AssignVariableOp_56?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
::*
dtype0*?
value?B?:B6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
::*
dtype0*?
value~B|:B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapes?
?::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*H
dtypes>
<2:	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOpAssignVariableOpassignvariableop_dense_2_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOpassignvariableop_1_dense_2_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0	*
_output_shapes
:?
AssignVariableOp_2AssignVariableOpassignvariableop_2_adam_iterIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_3AssignVariableOpassignvariableop_3_adam_beta_1Identity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_4AssignVariableOpassignvariableop_4_adam_beta_2Identity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_5AssignVariableOpassignvariableop_5_adam_decayIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_6AssignVariableOp%assignvariableop_6_adam_learning_rateIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_7AssignVariableOp.assignvariableop_7_cnn_block_6_conv2d_6_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp,assignvariableop_8_cnn_block_6_conv2d_6_biasIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp:assignvariableop_9_cnn_block_6_batch_normalization_6_gammaIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp:assignvariableop_10_cnn_block_6_batch_normalization_6_betaIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOpAassignvariableop_11_cnn_block_6_batch_normalization_6_moving_meanIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOpEassignvariableop_12_cnn_block_6_batch_normalization_6_moving_varianceIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp/assignvariableop_13_cnn_block_7_conv2d_7_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp-assignvariableop_14_cnn_block_7_conv2d_7_biasIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp;assignvariableop_15_cnn_block_7_batch_normalization_7_gammaIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_16AssignVariableOp:assignvariableop_16_cnn_block_7_batch_normalization_7_betaIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_17AssignVariableOpAassignvariableop_17_cnn_block_7_batch_normalization_7_moving_meanIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_18AssignVariableOpEassignvariableop_18_cnn_block_7_batch_normalization_7_moving_varianceIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp/assignvariableop_19_cnn_block_8_conv2d_8_kernelIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp-assignvariableop_20_cnn_block_8_conv2d_8_biasIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOp;assignvariableop_21_cnn_block_8_batch_normalization_8_gammaIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp:assignvariableop_22_cnn_block_8_batch_normalization_8_betaIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOpAassignvariableop_23_cnn_block_8_batch_normalization_8_moving_meanIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOpEassignvariableop_24_cnn_block_8_batch_normalization_8_moving_varianceIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOpassignvariableop_25_totalIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOpassignvariableop_26_countIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOpassignvariableop_27_total_1Identity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOpassignvariableop_28_count_1Identity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp)assignvariableop_29_adam_dense_2_kernel_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp'assignvariableop_30_adam_dense_2_bias_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp6assignvariableop_31_adam_cnn_block_6_conv2d_6_kernel_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOp4assignvariableop_32_adam_cnn_block_6_conv2d_6_bias_mIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOpBassignvariableop_33_adam_cnn_block_6_batch_normalization_6_gamma_mIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOpAassignvariableop_34_adam_cnn_block_6_batch_normalization_6_beta_mIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOp6assignvariableop_35_adam_cnn_block_7_conv2d_7_kernel_mIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp4assignvariableop_36_adam_cnn_block_7_conv2d_7_bias_mIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOpBassignvariableop_37_adam_cnn_block_7_batch_normalization_7_gamma_mIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOpAassignvariableop_38_adam_cnn_block_7_batch_normalization_7_beta_mIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_cnn_block_8_conv2d_8_kernel_mIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_40AssignVariableOp4assignvariableop_40_adam_cnn_block_8_conv2d_8_bias_mIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_41AssignVariableOpBassignvariableop_41_adam_cnn_block_8_batch_normalization_8_gamma_mIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_42AssignVariableOpAassignvariableop_42_adam_cnn_block_8_batch_normalization_8_beta_mIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_43AssignVariableOp)assignvariableop_43_adam_dense_2_kernel_vIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_44AssignVariableOp'assignvariableop_44_adam_dense_2_bias_vIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_45AssignVariableOp6assignvariableop_45_adam_cnn_block_6_conv2d_6_kernel_vIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_46AssignVariableOp4assignvariableop_46_adam_cnn_block_6_conv2d_6_bias_vIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_47AssignVariableOpBassignvariableop_47_adam_cnn_block_6_batch_normalization_6_gamma_vIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_48AssignVariableOpAassignvariableop_48_adam_cnn_block_6_batch_normalization_6_beta_vIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_49AssignVariableOp6assignvariableop_49_adam_cnn_block_7_conv2d_7_kernel_vIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_50AssignVariableOp4assignvariableop_50_adam_cnn_block_7_conv2d_7_bias_vIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_51AssignVariableOpBassignvariableop_51_adam_cnn_block_7_batch_normalization_7_gamma_vIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_52AssignVariableOpAassignvariableop_52_adam_cnn_block_7_batch_normalization_7_beta_vIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_53AssignVariableOp6assignvariableop_53_adam_cnn_block_8_conv2d_8_kernel_vIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_54AssignVariableOp4assignvariableop_54_adam_cnn_block_8_conv2d_8_bias_vIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_55AssignVariableOpBassignvariableop_55_adam_cnn_block_8_batch_normalization_8_gamma_vIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_56AssignVariableOpAassignvariableop_56_adam_cnn_block_8_batch_normalization_8_beta_vIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ?

Identity_57Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_58IdentityIdentity_57:output:0^NoOp_1*
T0*
_output_shapes
: ?

NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_58Identity_58:output:0*?
_input_shapesv
t: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532*
AssignVariableOp_54AssignVariableOp_542*
AssignVariableOp_55AssignVariableOp_552*
AssignVariableOp_56AssignVariableOp_562(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?
?
F__inference_cnn_block_6_layer_call_and_return_conditional_losses_19039
input_tensorA
'conv2d_6_conv2d_readvariableop_resource: 6
(conv2d_6_biasadd_readvariableop_resource: ;
-batch_normalization_6_readvariableop_resource: =
/batch_normalization_6_readvariableop_1_resource: L
>batch_normalization_6_fusedbatchnormv3_readvariableop_resource: N
@batch_normalization_6_fusedbatchnormv3_readvariableop_1_resource: 
identity??5batch_normalization_6/FusedBatchNormV3/ReadVariableOp?7batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1?$batch_normalization_6/ReadVariableOp?&batch_normalization_6/ReadVariableOp_1?conv2d_6/BiasAdd/ReadVariableOp?conv2d_6/Conv2D/ReadVariableOp?
conv2d_6/Conv2D/ReadVariableOpReadVariableOp'conv2d_6_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0?
conv2d_6/Conv2DConv2Dinput_tensor&conv2d_6/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingSAME*
strides
?
conv2d_6/BiasAdd/ReadVariableOpReadVariableOp(conv2d_6_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
conv2d_6/BiasAddBiasAddconv2d_6/Conv2D:output:0'conv2d_6/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? ?
$batch_normalization_6/ReadVariableOpReadVariableOp-batch_normalization_6_readvariableop_resource*
_output_shapes
: *
dtype0?
&batch_normalization_6/ReadVariableOp_1ReadVariableOp/batch_normalization_6_readvariableop_1_resource*
_output_shapes
: *
dtype0?
5batch_normalization_6/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_6_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0?
7batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_6_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0?
&batch_normalization_6/FusedBatchNormV3FusedBatchNormV3conv2d_6/BiasAdd:output:0,batch_normalization_6/ReadVariableOp:value:0.batch_normalization_6/ReadVariableOp_1:value:0=batch_normalization_6/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:????????? : : : : :*
epsilon%o?:*
is_training( r
ReluRelu*batch_normalization_6/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:????????? i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:????????? ?
NoOpNoOp6^batch_normalization_6/FusedBatchNormV3/ReadVariableOp8^batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_6/ReadVariableOp'^batch_normalization_6/ReadVariableOp_1 ^conv2d_6/BiasAdd/ReadVariableOp^conv2d_6/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????: : : : : : 2n
5batch_normalization_6/FusedBatchNormV3/ReadVariableOp5batch_normalization_6/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_6/FusedBatchNormV3/ReadVariableOp_17batch_normalization_6/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_6/ReadVariableOp$batch_normalization_6/ReadVariableOp2P
&batch_normalization_6/ReadVariableOp_1&batch_normalization_6/ReadVariableOp_12B
conv2d_6/BiasAdd/ReadVariableOpconv2d_6/BiasAdd/ReadVariableOp2@
conv2d_6/Conv2D/ReadVariableOpconv2d_6/Conv2D/ReadVariableOp:] Y
/
_output_shapes
:?????????
&
_user_specified_nameinput_tensor
?w
?
__inference__traced_save_19642
file_prefix-
)savev2_dense_2_kernel_read_readvariableop+
'savev2_dense_2_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop:
6savev2_cnn_block_6_conv2d_6_kernel_read_readvariableop8
4savev2_cnn_block_6_conv2d_6_bias_read_readvariableopF
Bsavev2_cnn_block_6_batch_normalization_6_gamma_read_readvariableopE
Asavev2_cnn_block_6_batch_normalization_6_beta_read_readvariableopL
Hsavev2_cnn_block_6_batch_normalization_6_moving_mean_read_readvariableopP
Lsavev2_cnn_block_6_batch_normalization_6_moving_variance_read_readvariableop:
6savev2_cnn_block_7_conv2d_7_kernel_read_readvariableop8
4savev2_cnn_block_7_conv2d_7_bias_read_readvariableopF
Bsavev2_cnn_block_7_batch_normalization_7_gamma_read_readvariableopE
Asavev2_cnn_block_7_batch_normalization_7_beta_read_readvariableopL
Hsavev2_cnn_block_7_batch_normalization_7_moving_mean_read_readvariableopP
Lsavev2_cnn_block_7_batch_normalization_7_moving_variance_read_readvariableop:
6savev2_cnn_block_8_conv2d_8_kernel_read_readvariableop8
4savev2_cnn_block_8_conv2d_8_bias_read_readvariableopF
Bsavev2_cnn_block_8_batch_normalization_8_gamma_read_readvariableopE
Asavev2_cnn_block_8_batch_normalization_8_beta_read_readvariableopL
Hsavev2_cnn_block_8_batch_normalization_8_moving_mean_read_readvariableopP
Lsavev2_cnn_block_8_batch_normalization_8_moving_variance_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop4
0savev2_adam_dense_2_kernel_m_read_readvariableop2
.savev2_adam_dense_2_bias_m_read_readvariableopA
=savev2_adam_cnn_block_6_conv2d_6_kernel_m_read_readvariableop?
;savev2_adam_cnn_block_6_conv2d_6_bias_m_read_readvariableopM
Isavev2_adam_cnn_block_6_batch_normalization_6_gamma_m_read_readvariableopL
Hsavev2_adam_cnn_block_6_batch_normalization_6_beta_m_read_readvariableopA
=savev2_adam_cnn_block_7_conv2d_7_kernel_m_read_readvariableop?
;savev2_adam_cnn_block_7_conv2d_7_bias_m_read_readvariableopM
Isavev2_adam_cnn_block_7_batch_normalization_7_gamma_m_read_readvariableopL
Hsavev2_adam_cnn_block_7_batch_normalization_7_beta_m_read_readvariableopA
=savev2_adam_cnn_block_8_conv2d_8_kernel_m_read_readvariableop?
;savev2_adam_cnn_block_8_conv2d_8_bias_m_read_readvariableopM
Isavev2_adam_cnn_block_8_batch_normalization_8_gamma_m_read_readvariableopL
Hsavev2_adam_cnn_block_8_batch_normalization_8_beta_m_read_readvariableop4
0savev2_adam_dense_2_kernel_v_read_readvariableop2
.savev2_adam_dense_2_bias_v_read_readvariableopA
=savev2_adam_cnn_block_6_conv2d_6_kernel_v_read_readvariableop?
;savev2_adam_cnn_block_6_conv2d_6_bias_v_read_readvariableopM
Isavev2_adam_cnn_block_6_batch_normalization_6_gamma_v_read_readvariableopL
Hsavev2_adam_cnn_block_6_batch_normalization_6_beta_v_read_readvariableopA
=savev2_adam_cnn_block_7_conv2d_7_kernel_v_read_readvariableop?
;savev2_adam_cnn_block_7_conv2d_7_bias_v_read_readvariableopM
Isavev2_adam_cnn_block_7_batch_normalization_7_gamma_v_read_readvariableopL
Hsavev2_adam_cnn_block_7_batch_normalization_7_beta_v_read_readvariableopA
=savev2_adam_cnn_block_8_conv2d_8_kernel_v_read_readvariableop?
;savev2_adam_cnn_block_8_conv2d_8_bias_v_read_readvariableopM
Isavev2_adam_cnn_block_8_batch_normalization_8_gamma_v_read_readvariableopL
Hsavev2_adam_cnn_block_8_batch_normalization_8_beta_v_read_readvariableop
savev2_const

identity_1??MergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part?
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : ?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: ?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
::*
dtype0*?
value?B?:B6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
::*
dtype0*?
value~B|:B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0)savev2_dense_2_kernel_read_readvariableop'savev2_dense_2_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop6savev2_cnn_block_6_conv2d_6_kernel_read_readvariableop4savev2_cnn_block_6_conv2d_6_bias_read_readvariableopBsavev2_cnn_block_6_batch_normalization_6_gamma_read_readvariableopAsavev2_cnn_block_6_batch_normalization_6_beta_read_readvariableopHsavev2_cnn_block_6_batch_normalization_6_moving_mean_read_readvariableopLsavev2_cnn_block_6_batch_normalization_6_moving_variance_read_readvariableop6savev2_cnn_block_7_conv2d_7_kernel_read_readvariableop4savev2_cnn_block_7_conv2d_7_bias_read_readvariableopBsavev2_cnn_block_7_batch_normalization_7_gamma_read_readvariableopAsavev2_cnn_block_7_batch_normalization_7_beta_read_readvariableopHsavev2_cnn_block_7_batch_normalization_7_moving_mean_read_readvariableopLsavev2_cnn_block_7_batch_normalization_7_moving_variance_read_readvariableop6savev2_cnn_block_8_conv2d_8_kernel_read_readvariableop4savev2_cnn_block_8_conv2d_8_bias_read_readvariableopBsavev2_cnn_block_8_batch_normalization_8_gamma_read_readvariableopAsavev2_cnn_block_8_batch_normalization_8_beta_read_readvariableopHsavev2_cnn_block_8_batch_normalization_8_moving_mean_read_readvariableopLsavev2_cnn_block_8_batch_normalization_8_moving_variance_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop0savev2_adam_dense_2_kernel_m_read_readvariableop.savev2_adam_dense_2_bias_m_read_readvariableop=savev2_adam_cnn_block_6_conv2d_6_kernel_m_read_readvariableop;savev2_adam_cnn_block_6_conv2d_6_bias_m_read_readvariableopIsavev2_adam_cnn_block_6_batch_normalization_6_gamma_m_read_readvariableopHsavev2_adam_cnn_block_6_batch_normalization_6_beta_m_read_readvariableop=savev2_adam_cnn_block_7_conv2d_7_kernel_m_read_readvariableop;savev2_adam_cnn_block_7_conv2d_7_bias_m_read_readvariableopIsavev2_adam_cnn_block_7_batch_normalization_7_gamma_m_read_readvariableopHsavev2_adam_cnn_block_7_batch_normalization_7_beta_m_read_readvariableop=savev2_adam_cnn_block_8_conv2d_8_kernel_m_read_readvariableop;savev2_adam_cnn_block_8_conv2d_8_bias_m_read_readvariableopIsavev2_adam_cnn_block_8_batch_normalization_8_gamma_m_read_readvariableopHsavev2_adam_cnn_block_8_batch_normalization_8_beta_m_read_readvariableop0savev2_adam_dense_2_kernel_v_read_readvariableop.savev2_adam_dense_2_bias_v_read_readvariableop=savev2_adam_cnn_block_6_conv2d_6_kernel_v_read_readvariableop;savev2_adam_cnn_block_6_conv2d_6_bias_v_read_readvariableopIsavev2_adam_cnn_block_6_batch_normalization_6_gamma_v_read_readvariableopHsavev2_adam_cnn_block_6_batch_normalization_6_beta_v_read_readvariableop=savev2_adam_cnn_block_7_conv2d_7_kernel_v_read_readvariableop;savev2_adam_cnn_block_7_conv2d_7_bias_v_read_readvariableopIsavev2_adam_cnn_block_7_batch_normalization_7_gamma_v_read_readvariableopHsavev2_adam_cnn_block_7_batch_normalization_7_beta_v_read_readvariableop=savev2_adam_cnn_block_8_conv2d_8_kernel_v_read_readvariableop;savev2_adam_cnn_block_8_conv2d_8_bias_v_read_readvariableopIsavev2_adam_cnn_block_8_batch_normalization_8_gamma_v_read_readvariableopHsavev2_adam_cnn_block_8_batch_normalization_8_beta_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *H
dtypes>
<2:	?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*?
_input_shapes?
?: :
??
:
: : : : : : : : : : : : @:@:@:@:@:@:@?:?:?:?:?:?: : : : :
??
:
: : : : : @:@:@:@:@?:?:?:?:
??
:
: : : : : @:@:@:@:@?:?:?:?: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:&"
 
_output_shapes
:
??
: 

_output_shapes
:
:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :,(
&
_output_shapes
: : 	

_output_shapes
: : 


_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
: @: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@:-)
'
_output_shapes
:@?:!

_output_shapes	
:?:!

_output_shapes	
:?:!

_output_shapes	
:?:!

_output_shapes	
:?:!

_output_shapes	
:?:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :&"
 
_output_shapes
:
??
: 

_output_shapes
:
:, (
&
_output_shapes
: : !

_output_shapes
: : "

_output_shapes
: : #

_output_shapes
: :,$(
&
_output_shapes
: @: %

_output_shapes
:@: &

_output_shapes
:@: '

_output_shapes
:@:-()
'
_output_shapes
:@?:!)

_output_shapes	
:?:!*

_output_shapes	
:?:!+

_output_shapes	
:?:&,"
 
_output_shapes
:
??
: -

_output_shapes
:
:,.(
&
_output_shapes
: : /

_output_shapes
: : 0

_output_shapes
: : 1

_output_shapes
: :,2(
&
_output_shapes
: @: 3

_output_shapes
:@: 4

_output_shapes
:@: 5

_output_shapes
:@:-6)
'
_output_shapes
:@?:!7

_output_shapes	
:?:!8

_output_shapes	
:?:!9

_output_shapes	
:?::

_output_shapes
: 
?
?
P__inference_batch_normalization_7_layer_call_and_return_conditional_losses_19386

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????@?
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????@: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
?
P__inference_batch_normalization_6_layer_call_and_return_conditional_losses_17847

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+??????????????????????????? : : : : :*
epsilon%o?:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+??????????????????????????? ?
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+??????????????????????????? : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?	
?
5__inference_batch_normalization_8_layer_call_fn_19412

inputs
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *Y
fTRR
P__inference_batch_normalization_8_layer_call_and_return_conditional_losses_18006?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,????????????????????????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
? 
?
G__inference_sequential_2_layer_call_and_return_conditional_losses_18501

inputs+
cnn_block_6_18455: 
cnn_block_6_18457: 
cnn_block_6_18459: 
cnn_block_6_18461: 
cnn_block_6_18463: 
cnn_block_6_18465: +
cnn_block_7_18468: @
cnn_block_7_18470:@
cnn_block_7_18472:@
cnn_block_7_18474:@
cnn_block_7_18476:@
cnn_block_7_18478:@,
cnn_block_8_18481:@? 
cnn_block_8_18483:	? 
cnn_block_8_18485:	? 
cnn_block_8_18487:	? 
cnn_block_8_18489:	? 
cnn_block_8_18491:	?!
dense_2_18495:
??

dense_2_18497:

identity??#cnn_block_6/StatefulPartitionedCall?#cnn_block_7/StatefulPartitionedCall?#cnn_block_8/StatefulPartitionedCall?dense_2/StatefulPartitionedCall?
#cnn_block_6/StatefulPartitionedCallStatefulPartitionedCallinputscnn_block_6_18455cnn_block_6_18457cnn_block_6_18459cnn_block_6_18461cnn_block_6_18463cnn_block_6_18465*
Tin
	2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *O
fJRH
F__inference_cnn_block_6_layer_call_and_return_conditional_losses_18390?
#cnn_block_7/StatefulPartitionedCallStatefulPartitionedCall,cnn_block_6/StatefulPartitionedCall:output:0cnn_block_7_18468cnn_block_7_18470cnn_block_7_18472cnn_block_7_18474cnn_block_7_18476cnn_block_7_18478*
Tin
	2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *O
fJRH
F__inference_cnn_block_7_layer_call_and_return_conditional_losses_18330?
#cnn_block_8/StatefulPartitionedCallStatefulPartitionedCall,cnn_block_7/StatefulPartitionedCall:output:0cnn_block_8_18481cnn_block_8_18483cnn_block_8_18485cnn_block_8_18487cnn_block_8_18489cnn_block_8_18491*
Tin
	2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *O
fJRH
F__inference_cnn_block_8_layer_call_and_return_conditional_losses_18270?
flatten_2/PartitionedCallPartitionedCall,cnn_block_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:???????????* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *M
fHRF
D__inference_flatten_2_layer_call_and_return_conditional_losses_18147?
dense_2/StatefulPartitionedCallStatefulPartitionedCall"flatten_2/PartitionedCall:output:0dense_2_18495dense_2_18497*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_18159w
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????
?
NoOpNoOp$^cnn_block_6/StatefulPartitionedCall$^cnn_block_7/StatefulPartitionedCall$^cnn_block_8/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:?????????: : : : : : : : : : : : : : : : : : : : 2J
#cnn_block_6/StatefulPartitionedCall#cnn_block_6/StatefulPartitionedCall2J
#cnn_block_7/StatefulPartitionedCall#cnn_block_7/StatefulPartitionedCall2J
#cnn_block_8/StatefulPartitionedCall#cnn_block_8/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
? 
?
G__inference_sequential_2_layer_call_and_return_conditional_losses_18687
cnn_block_6_input+
cnn_block_6_18641: 
cnn_block_6_18643: 
cnn_block_6_18645: 
cnn_block_6_18647: 
cnn_block_6_18649: 
cnn_block_6_18651: +
cnn_block_7_18654: @
cnn_block_7_18656:@
cnn_block_7_18658:@
cnn_block_7_18660:@
cnn_block_7_18662:@
cnn_block_7_18664:@,
cnn_block_8_18667:@? 
cnn_block_8_18669:	? 
cnn_block_8_18671:	? 
cnn_block_8_18673:	? 
cnn_block_8_18675:	? 
cnn_block_8_18677:	?!
dense_2_18681:
??

dense_2_18683:

identity??#cnn_block_6/StatefulPartitionedCall?#cnn_block_7/StatefulPartitionedCall?#cnn_block_8/StatefulPartitionedCall?dense_2/StatefulPartitionedCall?
#cnn_block_6/StatefulPartitionedCallStatefulPartitionedCallcnn_block_6_inputcnn_block_6_18641cnn_block_6_18643cnn_block_6_18645cnn_block_6_18647cnn_block_6_18649cnn_block_6_18651*
Tin
	2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *O
fJRH
F__inference_cnn_block_6_layer_call_and_return_conditional_losses_18390?
#cnn_block_7/StatefulPartitionedCallStatefulPartitionedCall,cnn_block_6/StatefulPartitionedCall:output:0cnn_block_7_18654cnn_block_7_18656cnn_block_7_18658cnn_block_7_18660cnn_block_7_18662cnn_block_7_18664*
Tin
	2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *O
fJRH
F__inference_cnn_block_7_layer_call_and_return_conditional_losses_18330?
#cnn_block_8/StatefulPartitionedCallStatefulPartitionedCall,cnn_block_7/StatefulPartitionedCall:output:0cnn_block_8_18667cnn_block_8_18669cnn_block_8_18671cnn_block_8_18673cnn_block_8_18675cnn_block_8_18677*
Tin
	2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *O
fJRH
F__inference_cnn_block_8_layer_call_and_return_conditional_losses_18270?
flatten_2/PartitionedCallPartitionedCall,cnn_block_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:???????????* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *M
fHRF
D__inference_flatten_2_layer_call_and_return_conditional_losses_18147?
dense_2/StatefulPartitionedCallStatefulPartitionedCall"flatten_2/PartitionedCall:output:0dense_2_18681dense_2_18683*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_18159w
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????
?
NoOpNoOp$^cnn_block_6/StatefulPartitionedCall$^cnn_block_7/StatefulPartitionedCall$^cnn_block_8/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:?????????: : : : : : : : : : : : : : : : : : : : 2J
#cnn_block_6/StatefulPartitionedCall#cnn_block_6/StatefulPartitionedCall2J
#cnn_block_7/StatefulPartitionedCall#cnn_block_7/StatefulPartitionedCall2J
#cnn_block_8/StatefulPartitionedCall#cnn_block_8/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall:b ^
/
_output_shapes
:?????????
+
_user_specified_namecnn_block_6_input
?
E
)__inference_flatten_2_layer_call_fn_19237

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:???????????* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *M
fHRF
D__inference_flatten_2_layer_call_and_return_conditional_losses_18147b
IdentityIdentityPartitionedCall:output:0*
T0*)
_output_shapes
:???????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?	
?
B__inference_dense_2_layer_call_and_return_conditional_losses_19262

inputs2
matmul_readvariableop_resource:
??
-
biasadd_readvariableop_resource:

identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????
w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:???????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:Q M
)
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
P__inference_batch_normalization_6_layer_call_and_return_conditional_losses_19324

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+??????????????????????????? : : : : :*
epsilon%o?:*
exponential_avg_factor%
?#<?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+??????????????????????????? ?
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+??????????????????????????? : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?$
?
F__inference_cnn_block_6_layer_call_and_return_conditional_losses_19064
input_tensorA
'conv2d_6_conv2d_readvariableop_resource: 6
(conv2d_6_biasadd_readvariableop_resource: ;
-batch_normalization_6_readvariableop_resource: =
/batch_normalization_6_readvariableop_1_resource: L
>batch_normalization_6_fusedbatchnormv3_readvariableop_resource: N
@batch_normalization_6_fusedbatchnormv3_readvariableop_1_resource: 
identity??$batch_normalization_6/AssignNewValue?&batch_normalization_6/AssignNewValue_1?5batch_normalization_6/FusedBatchNormV3/ReadVariableOp?7batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1?$batch_normalization_6/ReadVariableOp?&batch_normalization_6/ReadVariableOp_1?conv2d_6/BiasAdd/ReadVariableOp?conv2d_6/Conv2D/ReadVariableOp?
conv2d_6/Conv2D/ReadVariableOpReadVariableOp'conv2d_6_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0?
conv2d_6/Conv2DConv2Dinput_tensor&conv2d_6/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingSAME*
strides
?
conv2d_6/BiasAdd/ReadVariableOpReadVariableOp(conv2d_6_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
conv2d_6/BiasAddBiasAddconv2d_6/Conv2D:output:0'conv2d_6/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? ?
$batch_normalization_6/ReadVariableOpReadVariableOp-batch_normalization_6_readvariableop_resource*
_output_shapes
: *
dtype0?
&batch_normalization_6/ReadVariableOp_1ReadVariableOp/batch_normalization_6_readvariableop_1_resource*
_output_shapes
: *
dtype0?
5batch_normalization_6/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_6_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0?
7batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_6_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0?
&batch_normalization_6/FusedBatchNormV3FusedBatchNormV3conv2d_6/BiasAdd:output:0,batch_normalization_6/ReadVariableOp:value:0.batch_normalization_6/ReadVariableOp_1:value:0=batch_normalization_6/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:????????? : : : : :*
epsilon%o?:*
exponential_avg_factor%
?#<?
$batch_normalization_6/AssignNewValueAssignVariableOp>batch_normalization_6_fusedbatchnormv3_readvariableop_resource3batch_normalization_6/FusedBatchNormV3:batch_mean:06^batch_normalization_6/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0?
&batch_normalization_6/AssignNewValue_1AssignVariableOp@batch_normalization_6_fusedbatchnormv3_readvariableop_1_resource7batch_normalization_6/FusedBatchNormV3:batch_variance:08^batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0r
ReluRelu*batch_normalization_6/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:????????? i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:????????? ?
NoOpNoOp%^batch_normalization_6/AssignNewValue'^batch_normalization_6/AssignNewValue_16^batch_normalization_6/FusedBatchNormV3/ReadVariableOp8^batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_6/ReadVariableOp'^batch_normalization_6/ReadVariableOp_1 ^conv2d_6/BiasAdd/ReadVariableOp^conv2d_6/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????: : : : : : 2L
$batch_normalization_6/AssignNewValue$batch_normalization_6/AssignNewValue2P
&batch_normalization_6/AssignNewValue_1&batch_normalization_6/AssignNewValue_12n
5batch_normalization_6/FusedBatchNormV3/ReadVariableOp5batch_normalization_6/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_6/FusedBatchNormV3/ReadVariableOp_17batch_normalization_6/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_6/ReadVariableOp$batch_normalization_6/ReadVariableOp2P
&batch_normalization_6/ReadVariableOp_1&batch_normalization_6/ReadVariableOp_12B
conv2d_6/BiasAdd/ReadVariableOpconv2d_6/BiasAdd/ReadVariableOp2@
conv2d_6/Conv2D/ReadVariableOpconv2d_6/Conv2D/ReadVariableOp:] Y
/
_output_shapes
:?????????
&
_user_specified_nameinput_tensor
?
?
,__inference_sequential_2_layer_call_fn_18209
cnn_block_6_input!
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: #
	unknown_5: @
	unknown_6:@
	unknown_7:@
	unknown_8:@
	unknown_9:@

unknown_10:@%

unknown_11:@?

unknown_12:	?

unknown_13:	?

unknown_14:	?

unknown_15:	?

unknown_16:	?

unknown_17:
??


unknown_18:

identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallcnn_block_6_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18* 
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*6
_read_only_resource_inputs
	
*2
config_proto" 

CPU

GPU2 *0J 8? *P
fKRI
G__inference_sequential_2_layer_call_and_return_conditional_losses_18166o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:?????????: : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:b ^
/
_output_shapes
:?????????
+
_user_specified_namecnn_block_6_input
?
?
,__inference_sequential_2_layer_call_fn_18589
cnn_block_6_input!
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: #
	unknown_5: @
	unknown_6:@
	unknown_7:@
	unknown_8:@
	unknown_9:@

unknown_10:@%

unknown_11:@?

unknown_12:	?

unknown_13:	?

unknown_14:	?

unknown_15:	?

unknown_16:	?

unknown_17:
??


unknown_18:

identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallcnn_block_6_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18* 
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*0
_read_only_resource_inputs
	
*2
config_proto" 

CPU

GPU2 *0J 8? *P
fKRI
G__inference_sequential_2_layer_call_and_return_conditional_losses_18501o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:?????????: : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:b ^
/
_output_shapes
:?????????
+
_user_specified_namecnn_block_6_input
?
?
P__inference_batch_normalization_8_layer_call_and_return_conditional_losses_18006

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,????????????????????????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,?????????????????????????????
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
P__inference_batch_normalization_6_layer_call_and_return_conditional_losses_19306

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+??????????????????????????? : : : : :*
epsilon%o?:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+??????????????????????????? ?
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+??????????????????????????? : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
? 
?
G__inference_sequential_2_layer_call_and_return_conditional_losses_18166

inputs+
cnn_block_6_18050: 
cnn_block_6_18052: 
cnn_block_6_18054: 
cnn_block_6_18056: 
cnn_block_6_18058: 
cnn_block_6_18060: +
cnn_block_7_18089: @
cnn_block_7_18091:@
cnn_block_7_18093:@
cnn_block_7_18095:@
cnn_block_7_18097:@
cnn_block_7_18099:@,
cnn_block_8_18128:@? 
cnn_block_8_18130:	? 
cnn_block_8_18132:	? 
cnn_block_8_18134:	? 
cnn_block_8_18136:	? 
cnn_block_8_18138:	?!
dense_2_18160:
??

dense_2_18162:

identity??#cnn_block_6/StatefulPartitionedCall?#cnn_block_7/StatefulPartitionedCall?#cnn_block_8/StatefulPartitionedCall?dense_2/StatefulPartitionedCall?
#cnn_block_6/StatefulPartitionedCallStatefulPartitionedCallinputscnn_block_6_18050cnn_block_6_18052cnn_block_6_18054cnn_block_6_18056cnn_block_6_18058cnn_block_6_18060*
Tin
	2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *(
_read_only_resource_inputs

*2
config_proto" 

CPU

GPU2 *0J 8? *O
fJRH
F__inference_cnn_block_6_layer_call_and_return_conditional_losses_18049?
#cnn_block_7/StatefulPartitionedCallStatefulPartitionedCall,cnn_block_6/StatefulPartitionedCall:output:0cnn_block_7_18089cnn_block_7_18091cnn_block_7_18093cnn_block_7_18095cnn_block_7_18097cnn_block_7_18099*
Tin
	2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*(
_read_only_resource_inputs

*2
config_proto" 

CPU

GPU2 *0J 8? *O
fJRH
F__inference_cnn_block_7_layer_call_and_return_conditional_losses_18088?
#cnn_block_8/StatefulPartitionedCallStatefulPartitionedCall,cnn_block_7/StatefulPartitionedCall:output:0cnn_block_8_18128cnn_block_8_18130cnn_block_8_18132cnn_block_8_18134cnn_block_8_18136cnn_block_8_18138*
Tin
	2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*(
_read_only_resource_inputs

*2
config_proto" 

CPU

GPU2 *0J 8? *O
fJRH
F__inference_cnn_block_8_layer_call_and_return_conditional_losses_18127?
flatten_2/PartitionedCallPartitionedCall,cnn_block_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:???????????* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *M
fHRF
D__inference_flatten_2_layer_call_and_return_conditional_losses_18147?
dense_2/StatefulPartitionedCallStatefulPartitionedCall"flatten_2/PartitionedCall:output:0dense_2_18160dense_2_18162*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_18159w
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????
?
NoOpNoOp$^cnn_block_6/StatefulPartitionedCall$^cnn_block_7/StatefulPartitionedCall$^cnn_block_8/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:?????????: : : : : : : : : : : : : : : : : : : : 2J
#cnn_block_6/StatefulPartitionedCall#cnn_block_6/StatefulPartitionedCall2J
#cnn_block_7/StatefulPartitionedCall#cnn_block_7/StatefulPartitionedCall2J
#cnn_block_8/StatefulPartitionedCall#cnn_block_8/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
? 
?
G__inference_sequential_2_layer_call_and_return_conditional_losses_18638
cnn_block_6_input+
cnn_block_6_18592: 
cnn_block_6_18594: 
cnn_block_6_18596: 
cnn_block_6_18598: 
cnn_block_6_18600: 
cnn_block_6_18602: +
cnn_block_7_18605: @
cnn_block_7_18607:@
cnn_block_7_18609:@
cnn_block_7_18611:@
cnn_block_7_18613:@
cnn_block_7_18615:@,
cnn_block_8_18618:@? 
cnn_block_8_18620:	? 
cnn_block_8_18622:	? 
cnn_block_8_18624:	? 
cnn_block_8_18626:	? 
cnn_block_8_18628:	?!
dense_2_18632:
??

dense_2_18634:

identity??#cnn_block_6/StatefulPartitionedCall?#cnn_block_7/StatefulPartitionedCall?#cnn_block_8/StatefulPartitionedCall?dense_2/StatefulPartitionedCall?
#cnn_block_6/StatefulPartitionedCallStatefulPartitionedCallcnn_block_6_inputcnn_block_6_18592cnn_block_6_18594cnn_block_6_18596cnn_block_6_18598cnn_block_6_18600cnn_block_6_18602*
Tin
	2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *(
_read_only_resource_inputs

*2
config_proto" 

CPU

GPU2 *0J 8? *O
fJRH
F__inference_cnn_block_6_layer_call_and_return_conditional_losses_18049?
#cnn_block_7/StatefulPartitionedCallStatefulPartitionedCall,cnn_block_6/StatefulPartitionedCall:output:0cnn_block_7_18605cnn_block_7_18607cnn_block_7_18609cnn_block_7_18611cnn_block_7_18613cnn_block_7_18615*
Tin
	2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*(
_read_only_resource_inputs

*2
config_proto" 

CPU

GPU2 *0J 8? *O
fJRH
F__inference_cnn_block_7_layer_call_and_return_conditional_losses_18088?
#cnn_block_8/StatefulPartitionedCallStatefulPartitionedCall,cnn_block_7/StatefulPartitionedCall:output:0cnn_block_8_18618cnn_block_8_18620cnn_block_8_18622cnn_block_8_18624cnn_block_8_18626cnn_block_8_18628*
Tin
	2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*(
_read_only_resource_inputs

*2
config_proto" 

CPU

GPU2 *0J 8? *O
fJRH
F__inference_cnn_block_8_layer_call_and_return_conditional_losses_18127?
flatten_2/PartitionedCallPartitionedCall,cnn_block_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:???????????* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *M
fHRF
D__inference_flatten_2_layer_call_and_return_conditional_losses_18147?
dense_2/StatefulPartitionedCallStatefulPartitionedCall"flatten_2/PartitionedCall:output:0dense_2_18632dense_2_18634*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_18159w
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????
?
NoOpNoOp$^cnn_block_6/StatefulPartitionedCall$^cnn_block_7/StatefulPartitionedCall$^cnn_block_8/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:?????????: : : : : : : : : : : : : : : : : : : : 2J
#cnn_block_6/StatefulPartitionedCall#cnn_block_6/StatefulPartitionedCall2J
#cnn_block_7/StatefulPartitionedCall#cnn_block_7/StatefulPartitionedCall2J
#cnn_block_8/StatefulPartitionedCall#cnn_block_8/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall:b ^
/
_output_shapes
:?????????
+
_user_specified_namecnn_block_6_input"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
W
cnn_block_6_inputB
#serving_default_cnn_block_6_input:0?????????;
dense_20
StatefulPartitionedCall:0?????????
tensorflow/serving/predict:??
?
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer-3
layer_with_weights-3
layer-4
	optimizer
	variables
trainable_variables
	regularization_losses

	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures"
_tf_keras_sequential
?
conv
bn
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
?
conv
bn
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
?
conv
 bn
!	variables
"trainable_variables
#regularization_losses
$	keras_api
%__call__
*&&call_and_return_all_conditional_losses"
_tf_keras_layer
?
'	variables
(trainable_variables
)regularization_losses
*	keras_api
+__call__
*,&call_and_return_all_conditional_losses"
_tf_keras_layer
?

-kernel
.bias
/	variables
0trainable_variables
1regularization_losses
2	keras_api
3__call__
*4&call_and_return_all_conditional_losses"
_tf_keras_layer
?
5iter

6beta_1

7beta_2
	8decay
9learning_rate-m?.m?:m?;m?<m?=m?@m?Am?Bm?Cm?Fm?Gm?Hm?Im?-v?.v?:v?;v?<v?=v?@v?Av?Bv?Cv?Fv?Gv?Hv?Iv?"
	optimizer
?
:0
;1
<2
=3
>4
?5
@6
A7
B8
C9
D10
E11
F12
G13
H14
I15
J16
K17
-18
.19"
trackable_list_wrapper
?
:0
;1
<2
=3
@4
A5
B6
C7
F8
G9
H10
I11
-12
.13"
trackable_list_wrapper
 "
trackable_list_wrapper
?
Lnon_trainable_variables

Mlayers
Nmetrics
Olayer_regularization_losses
Player_metrics
	variables
trainable_variables
	regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
?2?
,__inference_sequential_2_layer_call_fn_18209
,__inference_sequential_2_layer_call_fn_18738
,__inference_sequential_2_layer_call_fn_18783
,__inference_sequential_2_layer_call_fn_18589?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
G__inference_sequential_2_layer_call_and_return_conditional_losses_18858
G__inference_sequential_2_layer_call_and_return_conditional_losses_18933
G__inference_sequential_2_layer_call_and_return_conditional_losses_18638
G__inference_sequential_2_layer_call_and_return_conditional_losses_18687?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
 __inference__wrapped_model_17825cnn_block_6_input"?
???
FullArgSpec
args? 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
,
Qserving_default"
signature_map
?

:kernel
;bias
R	variables
Strainable_variables
Tregularization_losses
U	keras_api
V__call__
*W&call_and_return_all_conditional_losses"
_tf_keras_layer
?
Xaxis
	<gamma
=beta
>moving_mean
?moving_variance
Y	variables
Ztrainable_variables
[regularization_losses
\	keras_api
]__call__
*^&call_and_return_all_conditional_losses"
_tf_keras_layer
J
:0
;1
<2
=3
>4
?5"
trackable_list_wrapper
<
:0
;1
<2
=3"
trackable_list_wrapper
 "
trackable_list_wrapper
?
_non_trainable_variables

`layers
ametrics
blayer_regularization_losses
clayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
?2?
+__inference_cnn_block_6_layer_call_fn_18997
+__inference_cnn_block_6_layer_call_fn_19014?
???
FullArgSpec/
args'?$
jself
jinput_tensor

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
F__inference_cnn_block_6_layer_call_and_return_conditional_losses_19039
F__inference_cnn_block_6_layer_call_and_return_conditional_losses_19064?
???
FullArgSpec/
args'?$
jself
jinput_tensor

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?

@kernel
Abias
d	variables
etrainable_variables
fregularization_losses
g	keras_api
h__call__
*i&call_and_return_all_conditional_losses"
_tf_keras_layer
?
jaxis
	Bgamma
Cbeta
Dmoving_mean
Emoving_variance
k	variables
ltrainable_variables
mregularization_losses
n	keras_api
o__call__
*p&call_and_return_all_conditional_losses"
_tf_keras_layer
J
@0
A1
B2
C3
D4
E5"
trackable_list_wrapper
<
@0
A1
B2
C3"
trackable_list_wrapper
 "
trackable_list_wrapper
?
qnon_trainable_variables

rlayers
smetrics
tlayer_regularization_losses
ulayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
?2?
+__inference_cnn_block_7_layer_call_fn_19081
+__inference_cnn_block_7_layer_call_fn_19098?
???
FullArgSpec/
args'?$
jself
jinput_tensor

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
F__inference_cnn_block_7_layer_call_and_return_conditional_losses_19123
F__inference_cnn_block_7_layer_call_and_return_conditional_losses_19148?
???
FullArgSpec/
args'?$
jself
jinput_tensor

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?

Fkernel
Gbias
v	variables
wtrainable_variables
xregularization_losses
y	keras_api
z__call__
*{&call_and_return_all_conditional_losses"
_tf_keras_layer
?
|axis
	Hgamma
Ibeta
Jmoving_mean
Kmoving_variance
}	variables
~trainable_variables
regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
J
F0
G1
H2
I3
J4
K5"
trackable_list_wrapper
<
F0
G1
H2
I3"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
!	variables
"trainable_variables
#regularization_losses
%__call__
*&&call_and_return_all_conditional_losses
&&"call_and_return_conditional_losses"
_generic_user_object
?2?
+__inference_cnn_block_8_layer_call_fn_19165
+__inference_cnn_block_8_layer_call_fn_19182?
???
FullArgSpec/
args'?$
jself
jinput_tensor

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
F__inference_cnn_block_8_layer_call_and_return_conditional_losses_19207
F__inference_cnn_block_8_layer_call_and_return_conditional_losses_19232?
???
FullArgSpec/
args'?$
jself
jinput_tensor

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
'	variables
(trainable_variables
)regularization_losses
+__call__
*,&call_and_return_all_conditional_losses
&,"call_and_return_conditional_losses"
_generic_user_object
?2?
)__inference_flatten_2_layer_call_fn_19237?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
D__inference_flatten_2_layer_call_and_return_conditional_losses_19243?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
": 
??
2dense_2/kernel
:
2dense_2/bias
.
-0
.1"
trackable_list_wrapper
.
-0
.1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
/	variables
0trainable_variables
1regularization_losses
3__call__
*4&call_and_return_all_conditional_losses
&4"call_and_return_conditional_losses"
_generic_user_object
?2?
'__inference_dense_2_layer_call_fn_19252?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
B__inference_dense_2_layer_call_and_return_conditional_losses_19262?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
5:3 2cnn_block_6/conv2d_6/kernel
':% 2cnn_block_6/conv2d_6/bias
5:3 2'cnn_block_6/batch_normalization_6/gamma
4:2 2&cnn_block_6/batch_normalization_6/beta
=:;  (2-cnn_block_6/batch_normalization_6/moving_mean
A:?  (21cnn_block_6/batch_normalization_6/moving_variance
5:3 @2cnn_block_7/conv2d_7/kernel
':%@2cnn_block_7/conv2d_7/bias
5:3@2'cnn_block_7/batch_normalization_7/gamma
4:2@2&cnn_block_7/batch_normalization_7/beta
=:;@ (2-cnn_block_7/batch_normalization_7/moving_mean
A:?@ (21cnn_block_7/batch_normalization_7/moving_variance
6:4@?2cnn_block_8/conv2d_8/kernel
(:&?2cnn_block_8/conv2d_8/bias
6:4?2'cnn_block_8/batch_normalization_8/gamma
5:3?2&cnn_block_8/batch_normalization_8/beta
>:<? (2-cnn_block_8/batch_normalization_8/moving_mean
B:@? (21cnn_block_8/batch_normalization_8/moving_variance
J
>0
?1
D2
E3
J4
K5"
trackable_list_wrapper
C
0
1
2
3
4"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
#__inference_signature_wrapper_18980cnn_block_6_input"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
.
:0
;1"
trackable_list_wrapper
.
:0
;1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
R	variables
Strainable_variables
Tregularization_losses
V__call__
*W&call_and_return_all_conditional_losses
&W"call_and_return_conditional_losses"
_generic_user_object
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
<
<0
=1
>2
?3"
trackable_list_wrapper
.
<0
=1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
Y	variables
Ztrainable_variables
[regularization_losses
]__call__
*^&call_and_return_all_conditional_losses
&^"call_and_return_conditional_losses"
_generic_user_object
?2?
5__inference_batch_normalization_6_layer_call_fn_19275
5__inference_batch_normalization_6_layer_call_fn_19288?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
P__inference_batch_normalization_6_layer_call_and_return_conditional_losses_19306
P__inference_batch_normalization_6_layer_call_and_return_conditional_losses_19324?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
.
>0
?1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
@0
A1"
trackable_list_wrapper
.
@0
A1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
d	variables
etrainable_variables
fregularization_losses
h__call__
*i&call_and_return_all_conditional_losses
&i"call_and_return_conditional_losses"
_generic_user_object
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
<
B0
C1
D2
E3"
trackable_list_wrapper
.
B0
C1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
k	variables
ltrainable_variables
mregularization_losses
o__call__
*p&call_and_return_all_conditional_losses
&p"call_and_return_conditional_losses"
_generic_user_object
?2?
5__inference_batch_normalization_7_layer_call_fn_19337
5__inference_batch_normalization_7_layer_call_fn_19350?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
P__inference_batch_normalization_7_layer_call_and_return_conditional_losses_19368
P__inference_batch_normalization_7_layer_call_and_return_conditional_losses_19386?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
.
D0
E1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
F0
G1"
trackable_list_wrapper
.
F0
G1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
v	variables
wtrainable_variables
xregularization_losses
z__call__
*{&call_and_return_all_conditional_losses
&{"call_and_return_conditional_losses"
_generic_user_object
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
<
H0
I1
J2
K3"
trackable_list_wrapper
.
H0
I1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
}	variables
~trainable_variables
regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?2?
5__inference_batch_normalization_8_layer_call_fn_19399
5__inference_batch_normalization_8_layer_call_fn_19412?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
P__inference_batch_normalization_8_layer_call_and_return_conditional_losses_19430
P__inference_batch_normalization_8_layer_call_and_return_conditional_losses_19448?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
.
J0
K1"
trackable_list_wrapper
.
0
 1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
R

?total

?count
?	variables
?	keras_api"
_tf_keras_metric
c

?total

?count
?
_fn_kwargs
?	variables
?	keras_api"
_tf_keras_metric
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
>0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
D0
E1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
J0
K1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
:  (2total
:  (2count
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
':%
??
2Adam/dense_2/kernel/m
:
2Adam/dense_2/bias/m
::8 2"Adam/cnn_block_6/conv2d_6/kernel/m
,:* 2 Adam/cnn_block_6/conv2d_6/bias/m
::8 2.Adam/cnn_block_6/batch_normalization_6/gamma/m
9:7 2-Adam/cnn_block_6/batch_normalization_6/beta/m
::8 @2"Adam/cnn_block_7/conv2d_7/kernel/m
,:*@2 Adam/cnn_block_7/conv2d_7/bias/m
::8@2.Adam/cnn_block_7/batch_normalization_7/gamma/m
9:7@2-Adam/cnn_block_7/batch_normalization_7/beta/m
;:9@?2"Adam/cnn_block_8/conv2d_8/kernel/m
-:+?2 Adam/cnn_block_8/conv2d_8/bias/m
;:9?2.Adam/cnn_block_8/batch_normalization_8/gamma/m
::8?2-Adam/cnn_block_8/batch_normalization_8/beta/m
':%
??
2Adam/dense_2/kernel/v
:
2Adam/dense_2/bias/v
::8 2"Adam/cnn_block_6/conv2d_6/kernel/v
,:* 2 Adam/cnn_block_6/conv2d_6/bias/v
::8 2.Adam/cnn_block_6/batch_normalization_6/gamma/v
9:7 2-Adam/cnn_block_6/batch_normalization_6/beta/v
::8 @2"Adam/cnn_block_7/conv2d_7/kernel/v
,:*@2 Adam/cnn_block_7/conv2d_7/bias/v
::8@2.Adam/cnn_block_7/batch_normalization_7/gamma/v
9:7@2-Adam/cnn_block_7/batch_normalization_7/beta/v
;:9@?2"Adam/cnn_block_8/conv2d_8/kernel/v
-:+?2 Adam/cnn_block_8/conv2d_8/bias/v
;:9?2.Adam/cnn_block_8/batch_normalization_8/gamma/v
::8?2-Adam/cnn_block_8/batch_normalization_8/beta/v?
 __inference__wrapped_model_17825?:;<=>?@ABCDEFGHIJK-.B??
8?5
3?0
cnn_block_6_input?????????
? "1?.
,
dense_2!?
dense_2?????????
?
P__inference_batch_normalization_6_layer_call_and_return_conditional_losses_19306?<=>?M?J
C?@
:?7
inputs+??????????????????????????? 
p 
? "??<
5?2
0+??????????????????????????? 
? ?
P__inference_batch_normalization_6_layer_call_and_return_conditional_losses_19324?<=>?M?J
C?@
:?7
inputs+??????????????????????????? 
p
? "??<
5?2
0+??????????????????????????? 
? ?
5__inference_batch_normalization_6_layer_call_fn_19275?<=>?M?J
C?@
:?7
inputs+??????????????????????????? 
p 
? "2?/+??????????????????????????? ?
5__inference_batch_normalization_6_layer_call_fn_19288?<=>?M?J
C?@
:?7
inputs+??????????????????????????? 
p
? "2?/+??????????????????????????? ?
P__inference_batch_normalization_7_layer_call_and_return_conditional_losses_19368?BCDEM?J
C?@
:?7
inputs+???????????????????????????@
p 
? "??<
5?2
0+???????????????????????????@
? ?
P__inference_batch_normalization_7_layer_call_and_return_conditional_losses_19386?BCDEM?J
C?@
:?7
inputs+???????????????????????????@
p
? "??<
5?2
0+???????????????????????????@
? ?
5__inference_batch_normalization_7_layer_call_fn_19337?BCDEM?J
C?@
:?7
inputs+???????????????????????????@
p 
? "2?/+???????????????????????????@?
5__inference_batch_normalization_7_layer_call_fn_19350?BCDEM?J
C?@
:?7
inputs+???????????????????????????@
p
? "2?/+???????????????????????????@?
P__inference_batch_normalization_8_layer_call_and_return_conditional_losses_19430?HIJKN?K
D?A
;?8
inputs,????????????????????????????
p 
? "@?=
6?3
0,????????????????????????????
? ?
P__inference_batch_normalization_8_layer_call_and_return_conditional_losses_19448?HIJKN?K
D?A
;?8
inputs,????????????????????????????
p
? "@?=
6?3
0,????????????????????????????
? ?
5__inference_batch_normalization_8_layer_call_fn_19399?HIJKN?K
D?A
;?8
inputs,????????????????????????????
p 
? "3?0,?????????????????????????????
5__inference_batch_normalization_8_layer_call_fn_19412?HIJKN?K
D?A
;?8
inputs,????????????????????????????
p
? "3?0,?????????????????????????????
F__inference_cnn_block_6_layer_call_and_return_conditional_losses_19039z:;<=>?A?>
7?4
.?+
input_tensor?????????
p 
? "-?*
#? 
0????????? 
? ?
F__inference_cnn_block_6_layer_call_and_return_conditional_losses_19064z:;<=>?A?>
7?4
.?+
input_tensor?????????
p
? "-?*
#? 
0????????? 
? ?
+__inference_cnn_block_6_layer_call_fn_18997m:;<=>?A?>
7?4
.?+
input_tensor?????????
p 
? " ?????????? ?
+__inference_cnn_block_6_layer_call_fn_19014m:;<=>?A?>
7?4
.?+
input_tensor?????????
p
? " ?????????? ?
F__inference_cnn_block_7_layer_call_and_return_conditional_losses_19123z@ABCDEA?>
7?4
.?+
input_tensor????????? 
p 
? "-?*
#? 
0?????????@
? ?
F__inference_cnn_block_7_layer_call_and_return_conditional_losses_19148z@ABCDEA?>
7?4
.?+
input_tensor????????? 
p
? "-?*
#? 
0?????????@
? ?
+__inference_cnn_block_7_layer_call_fn_19081m@ABCDEA?>
7?4
.?+
input_tensor????????? 
p 
? " ??????????@?
+__inference_cnn_block_7_layer_call_fn_19098m@ABCDEA?>
7?4
.?+
input_tensor????????? 
p
? " ??????????@?
F__inference_cnn_block_8_layer_call_and_return_conditional_losses_19207{FGHIJKA?>
7?4
.?+
input_tensor?????????@
p 
? ".?+
$?!
0??????????
? ?
F__inference_cnn_block_8_layer_call_and_return_conditional_losses_19232{FGHIJKA?>
7?4
.?+
input_tensor?????????@
p
? ".?+
$?!
0??????????
? ?
+__inference_cnn_block_8_layer_call_fn_19165nFGHIJKA?>
7?4
.?+
input_tensor?????????@
p 
? "!????????????
+__inference_cnn_block_8_layer_call_fn_19182nFGHIJKA?>
7?4
.?+
input_tensor?????????@
p
? "!????????????
B__inference_dense_2_layer_call_and_return_conditional_losses_19262^-.1?.
'?$
"?
inputs???????????
? "%?"
?
0?????????

? |
'__inference_dense_2_layer_call_fn_19252Q-.1?.
'?$
"?
inputs???????????
? "??????????
?
D__inference_flatten_2_layer_call_and_return_conditional_losses_19243c8?5
.?+
)?&
inputs??????????
? "'?$
?
0???????????
? ?
)__inference_flatten_2_layer_call_fn_19237V8?5
.?+
)?&
inputs??????????
? "?????????????
G__inference_sequential_2_layer_call_and_return_conditional_losses_18638?:;<=>?@ABCDEFGHIJK-.J?G
@?=
3?0
cnn_block_6_input?????????
p 

 
? "%?"
?
0?????????

? ?
G__inference_sequential_2_layer_call_and_return_conditional_losses_18687?:;<=>?@ABCDEFGHIJK-.J?G
@?=
3?0
cnn_block_6_input?????????
p

 
? "%?"
?
0?????????

? ?
G__inference_sequential_2_layer_call_and_return_conditional_losses_18858~:;<=>?@ABCDEFGHIJK-.??<
5?2
(?%
inputs?????????
p 

 
? "%?"
?
0?????????

? ?
G__inference_sequential_2_layer_call_and_return_conditional_losses_18933~:;<=>?@ABCDEFGHIJK-.??<
5?2
(?%
inputs?????????
p

 
? "%?"
?
0?????????

? ?
,__inference_sequential_2_layer_call_fn_18209|:;<=>?@ABCDEFGHIJK-.J?G
@?=
3?0
cnn_block_6_input?????????
p 

 
? "??????????
?
,__inference_sequential_2_layer_call_fn_18589|:;<=>?@ABCDEFGHIJK-.J?G
@?=
3?0
cnn_block_6_input?????????
p

 
? "??????????
?
,__inference_sequential_2_layer_call_fn_18738q:;<=>?@ABCDEFGHIJK-.??<
5?2
(?%
inputs?????????
p 

 
? "??????????
?
,__inference_sequential_2_layer_call_fn_18783q:;<=>?@ABCDEFGHIJK-.??<
5?2
(?%
inputs?????????
p

 
? "??????????
?
#__inference_signature_wrapper_18980?:;<=>?@ABCDEFGHIJK-.W?T
? 
M?J
H
cnn_block_6_input3?0
cnn_block_6_input?????????"1?.
,
dense_2!?
dense_2?????????
