�
�!� 
.
Abs
x"T
y"T"
Ttype:

2	
D
AddV2
x"T
y"T
z"T"
Ttype:
2	��
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( �
�
BiasAdd

value"T	
bias"T
output"T""
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
A
BroadcastArgs
s0"T
s1"T
r0"T"
Ttype0:
2	
Z
BroadcastTo

input"T
shape"Tidx
output"T"	
Ttype"
Tidxtype0:
2	
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
8
Const
output"dtype"
valuetensor"
dtypetype
�
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
�
Conv2DBackpropInput
input_sizes
filter"T
out_backprop"T
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
$
DisableCopyOnRead
resource�
,
Exp
x"T
y"T"
Ttype:

2
.
Identity

input"T
output"T"	
Ttype
9
	IdentityN

input2T
output2T"
T
list(type)(0
+
IsInf
x"T
y
"
Ttype:
2
\
	LeakyRelu
features"T
activations"T"
alphafloat%��L>"
Ttype0:
2
:
Less
x"T
y"T
z
"
Ttype:
2	
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
u
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
2	
�
Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( ""
Ttype:
2	"
Tidxtype0:
2	
�
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( �
0
Neg
x"T
y"T"
Ttype:
2
	
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
dtypetype�
@
RealDiv
x"T
y"T
z"T"
Ttype:
2	
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
list(type)(0�
2
Round
x"T
y"T"
Ttype:
2
	
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
?
Select
	condition

t"T
e"T
output"T"	
Ttype
A
SelectV2
	condition

t"T
e"T
output"T"	
Ttype
d
Shape

input"T&
output"out_type��out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
@
Softplus
features"T
activations"T"
Ttype:
2
�
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
executor_typestring ��
@
StaticRegexFullMatch	
input

output
"
patternstring
2
StopGradient

input"T
output"T"	
Ttype
�
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
L

StringJoin
inputs*N

output"

Nint("
	separatorstring 
<
Sub
x"T
y"T
z"T"
Ttype:
2	
�
Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( ""
Ttype:
2	"
Tidxtype0:
2	
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.13.02v2.13.0-rc2-7-g1cb1a030a628��
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
count_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_2
[
count_2/Read/ReadVariableOpReadVariableOpcount_2*
_output_shapes
: *
dtype0
b
total_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_2
[
total_2/Read/ReadVariableOpReadVariableOptotal_2*
_output_shapes
: *
dtype0
b
count_3VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_3
[
count_3/Read/ReadVariableOpReadVariableOpcount_3*
_output_shapes
: *
dtype0
b
total_3VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_3
[
total_3/Read/ReadVariableOpReadVariableOptotal_3*
_output_shapes
: *
dtype0
b
count_4VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_4
[
count_4/Read/ReadVariableOpReadVariableOpcount_4*
_output_shapes
: *
dtype0
b
total_4VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_4
[
total_4/Read/ReadVariableOpReadVariableOptotal_4*
_output_shapes
: *
dtype0
v
Adam/v/VariableVarHandleOp*
_output_shapes
: *
dtype0*
shape:2* 
shared_nameAdam/v/Variable
o
#Adam/v/Variable/Read/ReadVariableOpReadVariableOpAdam/v/Variable*
_output_shapes
:2*
dtype0
v
Adam/m/VariableVarHandleOp*
_output_shapes
: *
dtype0*
shape:2* 
shared_nameAdam/m/Variable
o
#Adam/m/Variable/Read/ReadVariableOpReadVariableOpAdam/m/Variable*
_output_shapes
:2*
dtype0
|
Adam/v/conv_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_nameAdam/v/conv_2/bias
u
&Adam/v/conv_2/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv_2/bias*
_output_shapes
:*
dtype0
|
Adam/m/conv_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_nameAdam/m/conv_2/bias
u
&Adam/m/conv_2/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv_2/bias*
_output_shapes
:*
dtype0
�
Adam/v/conv_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/v/conv_2/kernel
�
(Adam/v/conv_2/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv_2/kernel*&
_output_shapes
:*
dtype0
�
Adam/m/conv_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/m/conv_2/kernel
�
(Adam/m/conv_2/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv_2/kernel*&
_output_shapes
:*
dtype0
|
Adam/v/conv_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_nameAdam/v/conv_1/bias
u
&Adam/v/conv_1/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv_1/bias*
_output_shapes
:*
dtype0
|
Adam/m/conv_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_nameAdam/m/conv_1/bias
u
&Adam/m/conv_1/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv_1/bias*
_output_shapes
:*
dtype0
�
Adam/v/conv_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*%
shared_nameAdam/v/conv_1/kernel
�
(Adam/v/conv_1/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv_1/kernel*&
_output_shapes
:2*
dtype0
�
Adam/m/conv_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*%
shared_nameAdam/m/conv_1/kernel
�
(Adam/m/conv_1/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv_1/kernel*&
_output_shapes
:2*
dtype0
y
Adam/v/fc_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*!
shared_nameAdam/v/fc_2/bias
r
$Adam/v/fc_2/bias/Read/ReadVariableOpReadVariableOpAdam/v/fc_2/bias*
_output_shapes	
:�*
dtype0
y
Adam/m/fc_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*!
shared_nameAdam/m/fc_2/bias
r
$Adam/m/fc_2/bias/Read/ReadVariableOpReadVariableOpAdam/m/fc_2/bias*
_output_shapes	
:�*
dtype0
�
Adam/v/fc_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*#
shared_nameAdam/v/fc_2/kernel
{
&Adam/v/fc_2/kernel/Read/ReadVariableOpReadVariableOpAdam/v/fc_2/kernel* 
_output_shapes
:
��*
dtype0
�
Adam/m/fc_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*#
shared_nameAdam/m/fc_2/kernel
{
&Adam/m/fc_2/kernel/Read/ReadVariableOpReadVariableOpAdam/m/fc_2/kernel* 
_output_shapes
:
��*
dtype0
y
Adam/v/fc_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*!
shared_nameAdam/v/fc_1/bias
r
$Adam/v/fc_1/bias/Read/ReadVariableOpReadVariableOpAdam/v/fc_1/bias*
_output_shapes	
:�*
dtype0
y
Adam/m/fc_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*!
shared_nameAdam/m/fc_1/bias
r
$Adam/m/fc_1/bias/Read/ReadVariableOpReadVariableOpAdam/m/fc_1/bias*
_output_shapes	
:�*
dtype0
�
Adam/v/fc_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2�*#
shared_nameAdam/v/fc_1/kernel
z
&Adam/v/fc_1/kernel/Read/ReadVariableOpReadVariableOpAdam/v/fc_1/kernel*
_output_shapes
:	2�*
dtype0
�
Adam/m/fc_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2�*#
shared_nameAdam/m/fc_1/kernel
z
&Adam/m/fc_1/kernel/Read/ReadVariableOpReadVariableOpAdam/m/fc_1/kernel*
_output_shapes
:	2�*
dtype0
|
Adam/v/fc_2/bias_1VarHandleOp*
_output_shapes
: *
dtype0*
shape:2*#
shared_nameAdam/v/fc_2/bias_1
u
&Adam/v/fc_2/bias_1/Read/ReadVariableOpReadVariableOpAdam/v/fc_2/bias_1*
_output_shapes
:2*
dtype0
|
Adam/m/fc_2/bias_1VarHandleOp*
_output_shapes
: *
dtype0*
shape:2*#
shared_nameAdam/m/fc_2/bias_1
u
&Adam/m/fc_2/bias_1/Read/ReadVariableOpReadVariableOpAdam/m/fc_2/bias_1*
_output_shapes
:2*
dtype0
�
Adam/v/fc_2/kernel_1VarHandleOp*
_output_shapes
: *
dtype0*
shape:	�2*%
shared_nameAdam/v/fc_2/kernel_1
~
(Adam/v/fc_2/kernel_1/Read/ReadVariableOpReadVariableOpAdam/v/fc_2/kernel_1*
_output_shapes
:	�2*
dtype0
�
Adam/m/fc_2/kernel_1VarHandleOp*
_output_shapes
: *
dtype0*
shape:	�2*%
shared_nameAdam/m/fc_2/kernel_1
~
(Adam/m/fc_2/kernel_1/Read/ReadVariableOpReadVariableOpAdam/m/fc_2/kernel_1*
_output_shapes
:	�2*
dtype0
}
Adam/v/fc_1/bias_1VarHandleOp*
_output_shapes
: *
dtype0*
shape:�*#
shared_nameAdam/v/fc_1/bias_1
v
&Adam/v/fc_1/bias_1/Read/ReadVariableOpReadVariableOpAdam/v/fc_1/bias_1*
_output_shapes	
:�*
dtype0
}
Adam/m/fc_1/bias_1VarHandleOp*
_output_shapes
: *
dtype0*
shape:�*#
shared_nameAdam/m/fc_1/bias_1
v
&Adam/m/fc_1/bias_1/Read/ReadVariableOpReadVariableOpAdam/m/fc_1/bias_1*
_output_shapes	
:�*
dtype0
�
Adam/v/fc_1/kernel_1VarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*%
shared_nameAdam/v/fc_1/kernel_1

(Adam/v/fc_1/kernel_1/Read/ReadVariableOpReadVariableOpAdam/v/fc_1/kernel_1* 
_output_shapes
:
��*
dtype0
�
Adam/m/fc_1/kernel_1VarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*%
shared_nameAdam/m/fc_1/kernel_1

(Adam/m/fc_1/kernel_1/Read/ReadVariableOpReadVariableOpAdam/m/fc_1/kernel_1* 
_output_shapes
:
��*
dtype0
�
Adam/v/conv_2/bias_1VarHandleOp*
_output_shapes
: *
dtype0*
shape:2*%
shared_nameAdam/v/conv_2/bias_1
y
(Adam/v/conv_2/bias_1/Read/ReadVariableOpReadVariableOpAdam/v/conv_2/bias_1*
_output_shapes
:2*
dtype0
�
Adam/m/conv_2/bias_1VarHandleOp*
_output_shapes
: *
dtype0*
shape:2*%
shared_nameAdam/m/conv_2/bias_1
y
(Adam/m/conv_2/bias_1/Read/ReadVariableOpReadVariableOpAdam/m/conv_2/bias_1*
_output_shapes
:2*
dtype0
�
Adam/v/conv_2/kernel_1VarHandleOp*
_output_shapes
: *
dtype0*
shape:2*'
shared_nameAdam/v/conv_2/kernel_1
�
*Adam/v/conv_2/kernel_1/Read/ReadVariableOpReadVariableOpAdam/v/conv_2/kernel_1*&
_output_shapes
:2*
dtype0
�
Adam/m/conv_2/kernel_1VarHandleOp*
_output_shapes
: *
dtype0*
shape:2*'
shared_nameAdam/m/conv_2/kernel_1
�
*Adam/m/conv_2/kernel_1/Read/ReadVariableOpReadVariableOpAdam/m/conv_2/kernel_1*&
_output_shapes
:2*
dtype0
�
Adam/v/conv_1/bias_1VarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/v/conv_1/bias_1
y
(Adam/v/conv_1/bias_1/Read/ReadVariableOpReadVariableOpAdam/v/conv_1/bias_1*
_output_shapes
:*
dtype0
�
Adam/m/conv_1/bias_1VarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/m/conv_1/bias_1
y
(Adam/m/conv_1/bias_1/Read/ReadVariableOpReadVariableOpAdam/m/conv_1/bias_1*
_output_shapes
:*
dtype0
�
Adam/v/conv_1/kernel_1VarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/v/conv_1/kernel_1
�
*Adam/v/conv_1/kernel_1/Read/ReadVariableOpReadVariableOpAdam/v/conv_1/kernel_1*&
_output_shapes
:*
dtype0
�
Adam/m/conv_1/kernel_1VarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/m/conv_1/kernel_1
�
*Adam/m/conv_1/kernel_1/Read/ReadVariableOpReadVariableOpAdam/m/conv_1/kernel_1*&
_output_shapes
:*
dtype0
n
learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namelearning_rate
g
!learning_rate/Read/ReadVariableOpReadVariableOplearning_rate*
_output_shapes
: *
dtype0
f
	iterationVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	iteration
_
iteration/Read/ReadVariableOpReadVariableOp	iteration*
_output_shapes
: *
dtype0	
n
conv_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv_2/bias
g
conv_2/bias/Read/ReadVariableOpReadVariableOpconv_2/bias*
_output_shapes
:*
dtype0
~
conv_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv_2/kernel
w
!conv_2/kernel/Read/ReadVariableOpReadVariableOpconv_2/kernel*&
_output_shapes
:*
dtype0
n
conv_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv_1/bias
g
conv_1/bias/Read/ReadVariableOpReadVariableOpconv_1/bias*
_output_shapes
:*
dtype0
~
conv_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*
shared_nameconv_1/kernel
w
!conv_1/kernel/Read/ReadVariableOpReadVariableOpconv_1/kernel*&
_output_shapes
:2*
dtype0
k
	fc_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_name	fc_2/bias
d
fc_2/bias/Read/ReadVariableOpReadVariableOp	fc_2/bias*
_output_shapes	
:�*
dtype0
t
fc_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*
shared_namefc_2/kernel
m
fc_2/kernel/Read/ReadVariableOpReadVariableOpfc_2/kernel* 
_output_shapes
:
��*
dtype0
k
	fc_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_name	fc_1/bias
d
fc_1/bias/Read/ReadVariableOpReadVariableOp	fc_1/bias*
_output_shapes	
:�*
dtype0
s
fc_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2�*
shared_namefc_1/kernel
l
fc_1/kernel/Read/ReadVariableOpReadVariableOpfc_1/kernel*
_output_shapes
:	2�*
dtype0
n
fc_2/bias_1VarHandleOp*
_output_shapes
: *
dtype0*
shape:2*
shared_namefc_2/bias_1
g
fc_2/bias_1/Read/ReadVariableOpReadVariableOpfc_2/bias_1*
_output_shapes
:2*
dtype0
w
fc_2/kernel_1VarHandleOp*
_output_shapes
: *
dtype0*
shape:	�2*
shared_namefc_2/kernel_1
p
!fc_2/kernel_1/Read/ReadVariableOpReadVariableOpfc_2/kernel_1*
_output_shapes
:	�2*
dtype0
o
fc_1/bias_1VarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_namefc_1/bias_1
h
fc_1/bias_1/Read/ReadVariableOpReadVariableOpfc_1/bias_1*
_output_shapes	
:�*
dtype0
x
fc_1/kernel_1VarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*
shared_namefc_1/kernel_1
q
!fc_1/kernel_1/Read/ReadVariableOpReadVariableOpfc_1/kernel_1* 
_output_shapes
:
��*
dtype0
r
conv_2/bias_1VarHandleOp*
_output_shapes
: *
dtype0*
shape:2*
shared_nameconv_2/bias_1
k
!conv_2/bias_1/Read/ReadVariableOpReadVariableOpconv_2/bias_1*
_output_shapes
:2*
dtype0
�
conv_2/kernel_1VarHandleOp*
_output_shapes
: *
dtype0*
shape:2* 
shared_nameconv_2/kernel_1
{
#conv_2/kernel_1/Read/ReadVariableOpReadVariableOpconv_2/kernel_1*&
_output_shapes
:2*
dtype0
r
conv_1/bias_1VarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv_1/bias_1
k
!conv_1/bias_1/Read/ReadVariableOpReadVariableOpconv_1/bias_1*
_output_shapes
:*
dtype0
�
conv_1/kernel_1VarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv_1/kernel_1
{
#conv_1/kernel_1/Read/ReadVariableOpReadVariableOpconv_1/kernel_1*&
_output_shapes
:*
dtype0
h
VariableVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*
shared_name
Variable
a
Variable/Read/ReadVariableOpReadVariableOpVariable*
_output_shapes
:2*
dtype0
�
serving_default_input_1Placeholder*/
_output_shapes
:���������*
dtype0*$
shape:���������
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1conv_1/kernel_1conv_1/bias_1conv_2/kernel_1conv_2/bias_1fc_1/kernel_1fc_1/bias_1fc_2/kernel_1fc_2/bias_1Variablefc_1/kernel	fc_1/biasfc_2/kernel	fc_2/biasconv_1/kernelconv_1/biasconv_2/kernelconv_2/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: : *3
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *-
f(R&
$__inference_signature_wrapper_132727

NoOpNoOp
�y
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�x
value�xB�x B�x
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
analysis_transform
	synthesis_transform

prior_log_scales
	optimizer
loss

signatures*
�
0
1
2
3
4
5
6
7
8
9
10
11
12
13
14
15

16*
�
0
1
2
3
4
5
6
7
8
9
10
11
12
13
14
15

16*
* 
�
non_trainable_variables

layers
 metrics
!layer_regularization_losses
"layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

#trace_0
$trace_1* 

%trace_0
&trace_1* 
* 
�
'layer_with_weights-0
'layer-0
(layer_with_weights-1
(layer-1
)layer-2
*layer_with_weights-2
*layer-3
+layer_with_weights-3
+layer-4
,	variables
-trainable_variables
.regularization_losses
/	keras_api
0__call__
*1&call_and_return_all_conditional_losses*
�
2layer_with_weights-0
2layer-0
3layer_with_weights-1
3layer-1
4layer-2
5layer_with_weights-2
5layer-3
6layer_with_weights-3
6layer-4
7	variables
8trainable_variables
9regularization_losses
:	keras_api
;__call__
*<&call_and_return_all_conditional_losses*
MG
VARIABLE_VALUEVariable+prior_log_scales/.ATTRIBUTES/VARIABLE_VALUE*
�
=
_variables
>_iterations
?_learning_rate
@_index_dict
A
_momentums
B_velocities
C_update_step_xla*
* 

Dserving_default* 
OI
VARIABLE_VALUEconv_1/kernel_1&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
MG
VARIABLE_VALUEconv_1/bias_1&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
OI
VARIABLE_VALUEconv_2/kernel_1&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
MG
VARIABLE_VALUEconv_2/bias_1&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
MG
VARIABLE_VALUEfc_1/kernel_1&variables/4/.ATTRIBUTES/VARIABLE_VALUE*
KE
VARIABLE_VALUEfc_1/bias_1&variables/5/.ATTRIBUTES/VARIABLE_VALUE*
MG
VARIABLE_VALUEfc_2/kernel_1&variables/6/.ATTRIBUTES/VARIABLE_VALUE*
KE
VARIABLE_VALUEfc_2/bias_1&variables/7/.ATTRIBUTES/VARIABLE_VALUE*
KE
VARIABLE_VALUEfc_1/kernel&variables/8/.ATTRIBUTES/VARIABLE_VALUE*
IC
VARIABLE_VALUE	fc_1/bias&variables/9/.ATTRIBUTES/VARIABLE_VALUE*
LF
VARIABLE_VALUEfc_2/kernel'variables/10/.ATTRIBUTES/VARIABLE_VALUE*
JD
VARIABLE_VALUE	fc_2/bias'variables/11/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUEconv_1/kernel'variables/12/.ATTRIBUTES/VARIABLE_VALUE*
LF
VARIABLE_VALUEconv_1/bias'variables/13/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUEconv_2/kernel'variables/14/.ATTRIBUTES/VARIABLE_VALUE*
LF
VARIABLE_VALUEconv_2/bias'variables/15/.ATTRIBUTES/VARIABLE_VALUE*
* 

0
	1*
'
E0
F1
G2
H3
I4*
* 
* 
* 
* 
* 
* 
�
J	variables
Ktrainable_variables
Lregularization_losses
M	keras_api
N__call__
*O&call_and_return_all_conditional_losses

kernel
bias
 P_jit_compiled_convolution_op*
�
Q	variables
Rtrainable_variables
Sregularization_losses
T	keras_api
U__call__
*V&call_and_return_all_conditional_losses

kernel
bias
 W_jit_compiled_convolution_op*
�
X	variables
Ytrainable_variables
Zregularization_losses
[	keras_api
\__call__
*]&call_and_return_all_conditional_losses* 
�
^	variables
_trainable_variables
`regularization_losses
a	keras_api
b__call__
*c&call_and_return_all_conditional_losses

kernel
bias*
�
d	variables
etrainable_variables
fregularization_losses
g	keras_api
h__call__
*i&call_and_return_all_conditional_losses

kernel
bias*
<
0
1
2
3
4
5
6
7*
<
0
1
2
3
4
5
6
7*
* 
�
jnon_trainable_variables

klayers
lmetrics
mlayer_regularization_losses
nlayer_metrics
,	variables
-trainable_variables
.regularization_losses
0__call__
*1&call_and_return_all_conditional_losses
&1"call_and_return_conditional_losses*

otrace_0
ptrace_1* 

qtrace_0
rtrace_1* 
�
s	variables
ttrainable_variables
uregularization_losses
v	keras_api
w__call__
*x&call_and_return_all_conditional_losses

kernel
bias*
�
y	variables
ztrainable_variables
{regularization_losses
|	keras_api
}__call__
*~&call_and_return_all_conditional_losses

kernel
bias*
�
	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

kernel
bias
!�_jit_compiled_convolution_op*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

kernel
bias
!�_jit_compiled_convolution_op*
<
0
1
2
3
4
5
6
7*
<
0
1
2
3
4
5
6
7*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
7	variables
8trainable_variables
9regularization_losses
;__call__
*<&call_and_return_all_conditional_losses
&<"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
�
>0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13
�14
�15
�16
�17
�18
�19
�20
�21
�22
�23
�24
�25
�26
�27
�28
�29
�30
�31
�32
�33
�34*
SM
VARIABLE_VALUE	iteration0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUElearning_rate3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
�
�0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13
�14
�15
�16*
�
�0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13
�14
�15
�16*
* 
* 
<
�	variables
�	keras_api

�total

�count*
<
�	variables
�	keras_api

�total

�count*
<
�	variables
�	keras_api

�total

�count*
M
�	variables
�	keras_api

�total

�count
�
_fn_kwargs*
M
�	variables
�	keras_api

�total

�count
�
_fn_kwargs*

0
1*

0
1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
J	variables
Ktrainable_variables
Lregularization_losses
N__call__
*O&call_and_return_all_conditional_losses
&O"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
* 

0
1*

0
1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
Q	variables
Rtrainable_variables
Sregularization_losses
U__call__
*V&call_and_return_all_conditional_losses
&V"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
X	variables
Ytrainable_variables
Zregularization_losses
\__call__
*]&call_and_return_all_conditional_losses
&]"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

0
1*

0
1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
^	variables
_trainable_variables
`regularization_losses
b__call__
*c&call_and_return_all_conditional_losses
&c"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 

0
1*

0
1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
d	variables
etrainable_variables
fregularization_losses
h__call__
*i&call_and_return_all_conditional_losses
&i"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
* 
'
'0
(1
)2
*3
+4*
* 
* 
* 
* 
* 
* 
* 

0
1*

0
1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
s	variables
ttrainable_variables
uregularization_losses
w__call__
*x&call_and_return_all_conditional_losses
&x"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 

0
1*

0
1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
y	variables
ztrainable_variables
{regularization_losses
}__call__
*~&call_and_return_all_conditional_losses
&~"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

0
1*

0
1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
* 

0
1*

0
1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
* 
* 
'
20
31
42
53
64*
* 
* 
* 
* 
* 
* 
* 
a[
VARIABLE_VALUEAdam/m/conv_1/kernel_11optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/conv_1/kernel_11optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/m/conv_1/bias_11optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/v/conv_1/bias_11optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/conv_2/kernel_11optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/conv_2/kernel_11optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/m/conv_2/bias_11optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/v/conv_2/bias_11optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/m/fc_1/kernel_11optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/fc_1/kernel_12optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/m/fc_1/bias_12optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/v/fc_1/bias_12optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/fc_2/kernel_12optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/fc_2/kernel_12optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/m/fc_2/bias_12optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/v/fc_2/bias_12optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/m/fc_1/kernel2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/v/fc_1/kernel2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEAdam/m/fc_1/bias2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEAdam/v/fc_1/bias2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/m/fc_2/kernel2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/v/fc_2/kernel2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEAdam/m/fc_2/bias2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEAdam/v/fc_2/bias2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/conv_1/kernel2optimizer/_variables/25/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/conv_1/kernel2optimizer/_variables/26/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/m/conv_1/bias2optimizer/_variables/27/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/v/conv_1/bias2optimizer/_variables/28/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/conv_2/kernel2optimizer/_variables/29/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/conv_2/kernel2optimizer/_variables/30/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/m/conv_2/bias2optimizer/_variables/31/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/v/conv_2/bias2optimizer/_variables/32/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEAdam/m/Variable2optimizer/_variables/33/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEAdam/v/Variable2optimizer/_variables/34/.ATTRIBUTES/VARIABLE_VALUE*

�0
�1*

�	variables*
UO
VARIABLE_VALUEtotal_44keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_44keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

�0
�1*

�	variables*
UO
VARIABLE_VALUEtotal_34keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_34keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*

�0
�1*

�	variables*
UO
VARIABLE_VALUEtotal_24keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_24keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUE*

�0
�1*

�	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/3/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/3/count/.ATTRIBUTES/VARIABLE_VALUE*
* 

�0
�1*

�	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/4/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/4/count/.ATTRIBUTES/VARIABLE_VALUE*
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
* 
* 
* 
* 
* 
* 
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�

StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenameVariableconv_1/kernel_1conv_1/bias_1conv_2/kernel_1conv_2/bias_1fc_1/kernel_1fc_1/bias_1fc_2/kernel_1fc_2/bias_1fc_1/kernel	fc_1/biasfc_2/kernel	fc_2/biasconv_1/kernelconv_1/biasconv_2/kernelconv_2/bias	iterationlearning_rateAdam/m/conv_1/kernel_1Adam/v/conv_1/kernel_1Adam/m/conv_1/bias_1Adam/v/conv_1/bias_1Adam/m/conv_2/kernel_1Adam/v/conv_2/kernel_1Adam/m/conv_2/bias_1Adam/v/conv_2/bias_1Adam/m/fc_1/kernel_1Adam/v/fc_1/kernel_1Adam/m/fc_1/bias_1Adam/v/fc_1/bias_1Adam/m/fc_2/kernel_1Adam/v/fc_2/kernel_1Adam/m/fc_2/bias_1Adam/v/fc_2/bias_1Adam/m/fc_1/kernelAdam/v/fc_1/kernelAdam/m/fc_1/biasAdam/v/fc_1/biasAdam/m/fc_2/kernelAdam/v/fc_2/kernelAdam/m/fc_2/biasAdam/v/fc_2/biasAdam/m/conv_1/kernelAdam/v/conv_1/kernelAdam/m/conv_1/biasAdam/v/conv_1/biasAdam/m/conv_2/kernelAdam/v/conv_2/kernelAdam/m/conv_2/biasAdam/v/conv_2/biasAdam/m/VariableAdam/v/Variabletotal_4count_4total_3count_3total_2count_2total_1count_1totalcountConst*L
TinE
C2A*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *(
f#R!
__inference__traced_save_133375
�

StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameVariableconv_1/kernel_1conv_1/bias_1conv_2/kernel_1conv_2/bias_1fc_1/kernel_1fc_1/bias_1fc_2/kernel_1fc_2/bias_1fc_1/kernel	fc_1/biasfc_2/kernel	fc_2/biasconv_1/kernelconv_1/biasconv_2/kernelconv_2/bias	iterationlearning_rateAdam/m/conv_1/kernel_1Adam/v/conv_1/kernel_1Adam/m/conv_1/bias_1Adam/v/conv_1/bias_1Adam/m/conv_2/kernel_1Adam/v/conv_2/kernel_1Adam/m/conv_2/bias_1Adam/v/conv_2/bias_1Adam/m/fc_1/kernel_1Adam/v/fc_1/kernel_1Adam/m/fc_1/bias_1Adam/v/fc_1/bias_1Adam/m/fc_2/kernel_1Adam/v/fc_2/kernel_1Adam/m/fc_2/bias_1Adam/v/fc_2/bias_1Adam/m/fc_1/kernelAdam/v/fc_1/kernelAdam/m/fc_1/biasAdam/v/fc_1/biasAdam/m/fc_2/kernelAdam/v/fc_2/kernelAdam/m/fc_2/biasAdam/v/fc_2/biasAdam/m/conv_1/kernelAdam/v/conv_1/kernelAdam/m/conv_1/biasAdam/v/conv_1/biasAdam/m/conv_2/kernelAdam/v/conv_2/kernelAdam/m/conv_2/biasAdam/v/conv_2/biasAdam/m/VariableAdam/v/Variabletotal_4count_4total_3count_3total_2count_2total_1count_1totalcount*K
TinD
B2@*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *+
f&R$
"__inference__traced_restore_133573Ȯ
�	
�
@__inference_fc_2_layer_call_and_return_conditional_losses_132015

inputs1
matmul_readvariableop_resource:	�2-
biasadd_readvariableop_resource:2
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�2*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������2S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
��
�
!__inference__wrapped_model_131948
input_1n
Tmnist_compression_trainer_2_analysis_transform_conv_1_conv2d_readvariableop_resource:c
Umnist_compression_trainer_2_analysis_transform_conv_1_biasadd_readvariableop_resource:n
Tmnist_compression_trainer_2_analysis_transform_conv_2_conv2d_readvariableop_resource:2c
Umnist_compression_trainer_2_analysis_transform_conv_2_biasadd_readvariableop_resource:2f
Rmnist_compression_trainer_2_analysis_transform_fc_1_matmul_readvariableop_resource:
��b
Smnist_compression_trainer_2_analysis_transform_fc_1_biasadd_readvariableop_resource:	�e
Rmnist_compression_trainer_2_analysis_transform_fc_2_matmul_readvariableop_resource:	�2a
Smnist_compression_trainer_2_analysis_transform_fc_2_biasadd_readvariableop_resource:2E
7mnist_compression_trainer_2_exp_readvariableop_resource:2f
Smnist_compression_trainer_2_synthesis_transform_fc_1_matmul_readvariableop_resource:	2�c
Tmnist_compression_trainer_2_synthesis_transform_fc_1_biasadd_readvariableop_resource:	�g
Smnist_compression_trainer_2_synthesis_transform_fc_2_matmul_readvariableop_resource:
��c
Tmnist_compression_trainer_2_synthesis_transform_fc_2_biasadd_readvariableop_resource:	�y
_mnist_compression_trainer_2_synthesis_transform_conv_1_conv2d_transpose_readvariableop_resource:2d
Vmnist_compression_trainer_2_synthesis_transform_conv_1_biasadd_readvariableop_resource:y
_mnist_compression_trainer_2_synthesis_transform_conv_2_conv2d_transpose_readvariableop_resource:d
Vmnist_compression_trainer_2_synthesis_transform_conv_2_biasadd_readvariableop_resource:
identity

identity_1��.mnist_compression_trainer_2/Exp/ReadVariableOp�Lmnist_compression_trainer_2/analysis_transform/conv_1/BiasAdd/ReadVariableOp�Kmnist_compression_trainer_2/analysis_transform/conv_1/Conv2D/ReadVariableOp�Lmnist_compression_trainer_2/analysis_transform/conv_2/BiasAdd/ReadVariableOp�Kmnist_compression_trainer_2/analysis_transform/conv_2/Conv2D/ReadVariableOp�Jmnist_compression_trainer_2/analysis_transform/fc_1/BiasAdd/ReadVariableOp�Imnist_compression_trainer_2/analysis_transform/fc_1/MatMul/ReadVariableOp�Jmnist_compression_trainer_2/analysis_transform/fc_2/BiasAdd/ReadVariableOp�Imnist_compression_trainer_2/analysis_transform/fc_2/MatMul/ReadVariableOp�Mmnist_compression_trainer_2/synthesis_transform/conv_1/BiasAdd/ReadVariableOp�Vmnist_compression_trainer_2/synthesis_transform/conv_1/conv2d_transpose/ReadVariableOp�Mmnist_compression_trainer_2/synthesis_transform/conv_2/BiasAdd/ReadVariableOp�Vmnist_compression_trainer_2/synthesis_transform/conv_2/conv2d_transpose/ReadVariableOp�Kmnist_compression_trainer_2/synthesis_transform/fc_1/BiasAdd/ReadVariableOp�Jmnist_compression_trainer_2/synthesis_transform/fc_1/MatMul/ReadVariableOp�Kmnist_compression_trainer_2/synthesis_transform/fc_2/BiasAdd/ReadVariableOp�Jmnist_compression_trainer_2/synthesis_transform/fc_2/MatMul/ReadVariableOpz
 mnist_compression_trainer_2/CastCastinput_1*

DstT0*

SrcT0*/
_output_shapes
:���������j
%mnist_compression_trainer_2/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  C�
#mnist_compression_trainer_2/truedivRealDiv$mnist_compression_trainer_2/Cast:y:0.mnist_compression_trainer_2/truediv/y:output:0*
T0*/
_output_shapes
:����������
)mnist_compression_trainer_2/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"����         �
#mnist_compression_trainer_2/ReshapeReshape'mnist_compression_trainer_2/truediv:z:02mnist_compression_trainer_2/Reshape/shape:output:0*
T0*/
_output_shapes
:����������
Kmnist_compression_trainer_2/analysis_transform/conv_1/Conv2D/ReadVariableOpReadVariableOpTmnist_compression_trainer_2_analysis_transform_conv_1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
<mnist_compression_trainer_2/analysis_transform/conv_1/Conv2DConv2D,mnist_compression_trainer_2/Reshape:output:0Smnist_compression_trainer_2/analysis_transform/conv_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
�
Lmnist_compression_trainer_2/analysis_transform/conv_1/BiasAdd/ReadVariableOpReadVariableOpUmnist_compression_trainer_2_analysis_transform_conv_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
=mnist_compression_trainer_2/analysis_transform/conv_1/BiasAddBiasAddEmnist_compression_trainer_2/analysis_transform/conv_1/Conv2D:output:0Tmnist_compression_trainer_2/analysis_transform/conv_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:����������
?mnist_compression_trainer_2/analysis_transform/conv_1/LeakyRelu	LeakyReluFmnist_compression_trainer_2/analysis_transform/conv_1/BiasAdd:output:0*/
_output_shapes
:����������
Kmnist_compression_trainer_2/analysis_transform/conv_2/Conv2D/ReadVariableOpReadVariableOpTmnist_compression_trainer_2_analysis_transform_conv_2_conv2d_readvariableop_resource*&
_output_shapes
:2*
dtype0�
<mnist_compression_trainer_2/analysis_transform/conv_2/Conv2DConv2DMmnist_compression_trainer_2/analysis_transform/conv_1/LeakyRelu:activations:0Smnist_compression_trainer_2/analysis_transform/conv_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������2*
paddingSAME*
strides
�
Lmnist_compression_trainer_2/analysis_transform/conv_2/BiasAdd/ReadVariableOpReadVariableOpUmnist_compression_trainer_2_analysis_transform_conv_2_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0�
=mnist_compression_trainer_2/analysis_transform/conv_2/BiasAddBiasAddEmnist_compression_trainer_2/analysis_transform/conv_2/Conv2D:output:0Tmnist_compression_trainer_2/analysis_transform/conv_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������2�
?mnist_compression_trainer_2/analysis_transform/conv_2/LeakyRelu	LeakyReluFmnist_compression_trainer_2/analysis_transform/conv_2/BiasAdd:output:0*/
_output_shapes
:���������2�
>mnist_compression_trainer_2/analysis_transform/flatten_2/ConstConst*
_output_shapes
:*
dtype0*
valueB"�����	  �
@mnist_compression_trainer_2/analysis_transform/flatten_2/ReshapeReshapeMmnist_compression_trainer_2/analysis_transform/conv_2/LeakyRelu:activations:0Gmnist_compression_trainer_2/analysis_transform/flatten_2/Const:output:0*
T0*(
_output_shapes
:�����������
Imnist_compression_trainer_2/analysis_transform/fc_1/MatMul/ReadVariableOpReadVariableOpRmnist_compression_trainer_2_analysis_transform_fc_1_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
:mnist_compression_trainer_2/analysis_transform/fc_1/MatMulMatMulImnist_compression_trainer_2/analysis_transform/flatten_2/Reshape:output:0Qmnist_compression_trainer_2/analysis_transform/fc_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
Jmnist_compression_trainer_2/analysis_transform/fc_1/BiasAdd/ReadVariableOpReadVariableOpSmnist_compression_trainer_2_analysis_transform_fc_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
;mnist_compression_trainer_2/analysis_transform/fc_1/BiasAddBiasAddDmnist_compression_trainer_2/analysis_transform/fc_1/MatMul:product:0Rmnist_compression_trainer_2/analysis_transform/fc_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
=mnist_compression_trainer_2/analysis_transform/fc_1/LeakyRelu	LeakyReluDmnist_compression_trainer_2/analysis_transform/fc_1/BiasAdd:output:0*(
_output_shapes
:�����������
Imnist_compression_trainer_2/analysis_transform/fc_2/MatMul/ReadVariableOpReadVariableOpRmnist_compression_trainer_2_analysis_transform_fc_2_matmul_readvariableop_resource*
_output_shapes
:	�2*
dtype0�
:mnist_compression_trainer_2/analysis_transform/fc_2/MatMulMatMulKmnist_compression_trainer_2/analysis_transform/fc_1/LeakyRelu:activations:0Qmnist_compression_trainer_2/analysis_transform/fc_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
Jmnist_compression_trainer_2/analysis_transform/fc_2/BiasAdd/ReadVariableOpReadVariableOpSmnist_compression_trainer_2_analysis_transform_fc_2_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0�
;mnist_compression_trainer_2/analysis_transform/fc_2/BiasAddBiasAddDmnist_compression_trainer_2/analysis_transform/fc_2/MatMul:product:0Rmnist_compression_trainer_2/analysis_transform/fc_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
.mnist_compression_trainer_2/Exp/ReadVariableOpReadVariableOp7mnist_compression_trainer_2_exp_readvariableop_resource*
_output_shapes
:2*
dtype0�
mnist_compression_trainer_2/ExpExp6mnist_compression_trainer_2/Exp/ReadVariableOp:value:0*
T0*
_output_shapes
:2m
(mnist_compression_trainer_2/Logistic/locConst*
_output_shapes
: *
dtype0*
valueB
 *    �
�mnist_compression_trainer_2/continuous_batched_entropy_model/Logistic_CONSTRUCTED_AT_mnist_compression_trainer_2/mode/shape_as_tensorConst*
_output_shapes
: *
dtype0*
valueB �
{mnist_compression_trainer_2/continuous_batched_entropy_model/Logistic_CONSTRUCTED_AT_mnist_compression_trainer_2/mode/ConstConst*
_output_shapes
: *
dtype0*
value	B : �
�mnist_compression_trainer_2/continuous_batched_entropy_model/Logistic_CONSTRUCTED_AT_mnist_compression_trainer_2/mode/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
�mnist_compression_trainer_2/continuous_batched_entropy_model/Logistic_CONSTRUCTED_AT_mnist_compression_trainer_2/mode/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: �
�mnist_compression_trainer_2/continuous_batched_entropy_model/Logistic_CONSTRUCTED_AT_mnist_compression_trainer_2/mode/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
�mnist_compression_trainer_2/continuous_batched_entropy_model/Logistic_CONSTRUCTED_AT_mnist_compression_trainer_2/mode/strided_sliceStridedSlice�mnist_compression_trainer_2/continuous_batched_entropy_model/Logistic_CONSTRUCTED_AT_mnist_compression_trainer_2/mode/shape_as_tensor:output:0�mnist_compression_trainer_2/continuous_batched_entropy_model/Logistic_CONSTRUCTED_AT_mnist_compression_trainer_2/mode/strided_slice/stack:output:0�mnist_compression_trainer_2/continuous_batched_entropy_model/Logistic_CONSTRUCTED_AT_mnist_compression_trainer_2/mode/strided_slice/stack_1:output:0�mnist_compression_trainer_2/continuous_batched_entropy_model/Logistic_CONSTRUCTED_AT_mnist_compression_trainer_2/mode/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *

begin_mask�
�mnist_compression_trainer_2/continuous_batched_entropy_model/Logistic_CONSTRUCTED_AT_mnist_compression_trainer_2/mode/shape_as_tensor_1Const*
_output_shapes
:*
dtype0*
valueB:2�
}mnist_compression_trainer_2/continuous_batched_entropy_model/Logistic_CONSTRUCTED_AT_mnist_compression_trainer_2/mode/Const_1Const*
_output_shapes
: *
dtype0*
value	B : �
�mnist_compression_trainer_2/continuous_batched_entropy_model/Logistic_CONSTRUCTED_AT_mnist_compression_trainer_2/mode/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: �
�mnist_compression_trainer_2/continuous_batched_entropy_model/Logistic_CONSTRUCTED_AT_mnist_compression_trainer_2/mode/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
�mnist_compression_trainer_2/continuous_batched_entropy_model/Logistic_CONSTRUCTED_AT_mnist_compression_trainer_2/mode/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
�mnist_compression_trainer_2/continuous_batched_entropy_model/Logistic_CONSTRUCTED_AT_mnist_compression_trainer_2/mode/strided_slice_1StridedSlice�mnist_compression_trainer_2/continuous_batched_entropy_model/Logistic_CONSTRUCTED_AT_mnist_compression_trainer_2/mode/shape_as_tensor_1:output:0�mnist_compression_trainer_2/continuous_batched_entropy_model/Logistic_CONSTRUCTED_AT_mnist_compression_trainer_2/mode/strided_slice_1/stack:output:0�mnist_compression_trainer_2/continuous_batched_entropy_model/Logistic_CONSTRUCTED_AT_mnist_compression_trainer_2/mode/strided_slice_1/stack_1:output:0�mnist_compression_trainer_2/continuous_batched_entropy_model/Logistic_CONSTRUCTED_AT_mnist_compression_trainer_2/mode/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask�
�mnist_compression_trainer_2/continuous_batched_entropy_model/Logistic_CONSTRUCTED_AT_mnist_compression_trainer_2/mode/BroadcastArgs/s0Const*
_output_shapes
: *
dtype0*
valueB �
�mnist_compression_trainer_2/continuous_batched_entropy_model/Logistic_CONSTRUCTED_AT_mnist_compression_trainer_2/mode/BroadcastArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB �
�mnist_compression_trainer_2/continuous_batched_entropy_model/Logistic_CONSTRUCTED_AT_mnist_compression_trainer_2/mode/BroadcastArgsBroadcastArgs�mnist_compression_trainer_2/continuous_batched_entropy_model/Logistic_CONSTRUCTED_AT_mnist_compression_trainer_2/mode/BroadcastArgs/s0_1:output:0�mnist_compression_trainer_2/continuous_batched_entropy_model/Logistic_CONSTRUCTED_AT_mnist_compression_trainer_2/mode/strided_slice:output:0*
_output_shapes
: �
�mnist_compression_trainer_2/continuous_batched_entropy_model/Logistic_CONSTRUCTED_AT_mnist_compression_trainer_2/mode/BroadcastArgs_1BroadcastArgs�mnist_compression_trainer_2/continuous_batched_entropy_model/Logistic_CONSTRUCTED_AT_mnist_compression_trainer_2/mode/BroadcastArgs:r0:0�mnist_compression_trainer_2/continuous_batched_entropy_model/Logistic_CONSTRUCTED_AT_mnist_compression_trainer_2/mode/strided_slice_1:output:0*
_output_shapes
:�
�mnist_compression_trainer_2/continuous_batched_entropy_model/Logistic_CONSTRUCTED_AT_mnist_compression_trainer_2/mode/BroadcastToBroadcastTo1mnist_compression_trainer_2/Logistic/loc:output:0�mnist_compression_trainer_2/continuous_batched_entropy_model/Logistic_CONSTRUCTED_AT_mnist_compression_trainer_2/mode/BroadcastArgs_1:r0:0*
T0*
_output_shapes
:2�
Bmnist_compression_trainer_2/continuous_batched_entropy_model/RoundRound�mnist_compression_trainer_2/continuous_batched_entropy_model/Logistic_CONSTRUCTED_AT_mnist_compression_trainer_2/mode/BroadcastTo:output:0*
T0*
_output_shapes
:2�
@mnist_compression_trainer_2/continuous_batched_entropy_model/subSub�mnist_compression_trainer_2/continuous_batched_entropy_model/Logistic_CONSTRUCTED_AT_mnist_compression_trainer_2/mode/BroadcastTo:output:0Fmnist_compression_trainer_2/continuous_batched_entropy_model/Round:y:0*
T0*
_output_shapes
:2�
Imnist_compression_trainer_2/continuous_batched_entropy_model/StopGradientStopGradientDmnist_compression_trainer_2/continuous_batched_entropy_model/sub:z:0*
T0*
_output_shapes
:2�
Dmnist_compression_trainer_2/continuous_batched_entropy_model/Round_1RoundRmnist_compression_trainer_2/continuous_batched_entropy_model/StopGradient:output:0*
T0*
_output_shapes
:2�
Bmnist_compression_trainer_2/continuous_batched_entropy_model/sub_1SubRmnist_compression_trainer_2/continuous_batched_entropy_model/StopGradient:output:0Hmnist_compression_trainer_2/continuous_batched_entropy_model/Round_1:y:0*
T0*
_output_shapes
:2�
Kmnist_compression_trainer_2/continuous_batched_entropy_model/StopGradient_1StopGradientFmnist_compression_trainer_2/continuous_batched_entropy_model/sub_1:z:0*
T0*
_output_shapes
:2�
Bmnist_compression_trainer_2/continuous_batched_entropy_model/sub_2SubDmnist_compression_trainer_2/analysis_transform/fc_2/BiasAdd:output:0Tmnist_compression_trainer_2/continuous_batched_entropy_model/StopGradient_1:output:0*
T0*'
_output_shapes
:���������2�
Dmnist_compression_trainer_2/continuous_batched_entropy_model/Round_2RoundFmnist_compression_trainer_2/continuous_batched_entropy_model/sub_2:z:0*
T0*'
_output_shapes
:���������2�
@mnist_compression_trainer_2/continuous_batched_entropy_model/addAddV2Hmnist_compression_trainer_2/continuous_batched_entropy_model/Round_2:y:0Tmnist_compression_trainer_2/continuous_batched_entropy_model/StopGradient_1:output:0*
T0*'
_output_shapes
:���������2�
Emnist_compression_trainer_2/continuous_batched_entropy_model/IdentityIdentityDmnist_compression_trainer_2/continuous_batched_entropy_model/add:z:0*
T0*'
_output_shapes
:���������2�
Fmnist_compression_trainer_2/continuous_batched_entropy_model/IdentityN	IdentityNDmnist_compression_trainer_2/continuous_batched_entropy_model/add:z:0Dmnist_compression_trainer_2/analysis_transform/fc_2/BiasAdd:output:0Tmnist_compression_trainer_2/continuous_batched_entropy_model/StopGradient_1:output:0*
T
2*,
_gradient_op_typeCustomGradient-131826*@
_output_shapes.
,:���������2:���������2:2�
�mnist_compression_trainer_2/continuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_mnist_compression_trainer_2/log_prob/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
�mnist_compression_trainer_2/continuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_mnist_compression_trainer_2/log_prob/addAddV2Omnist_compression_trainer_2/continuous_batched_entropy_model/IdentityN:output:0�mnist_compression_trainer_2/continuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_mnist_compression_trainer_2/log_prob/add/y:output:0*
T0*'
_output_shapes
:���������2�
�mnist_compression_trainer_2/continuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_mnist_compression_trainer_2/log_prob/Logistic/log_survival_function/standardize/subSub�mnist_compression_trainer_2/continuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_mnist_compression_trainer_2/log_prob/add:z:01mnist_compression_trainer_2/Logistic/loc:output:0*
T0*'
_output_shapes
:���������2�
�mnist_compression_trainer_2/continuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_mnist_compression_trainer_2/log_prob/Logistic/log_survival_function/standardize/truedivRealDiv�mnist_compression_trainer_2/continuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_mnist_compression_trainer_2/log_prob/Logistic/log_survival_function/standardize/sub:z:0#mnist_compression_trainer_2/Exp:y:0*
T0*'
_output_shapes
:���������2�
�mnist_compression_trainer_2/continuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_mnist_compression_trainer_2/log_prob/Logistic/log_survival_function/SoftplusSoftplus�mnist_compression_trainer_2/continuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_mnist_compression_trainer_2/log_prob/Logistic/log_survival_function/standardize/truediv:z:0*
T0*'
_output_shapes
:���������2�
�mnist_compression_trainer_2/continuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_mnist_compression_trainer_2/log_prob/Logistic/log_survival_function/NegNeg�mnist_compression_trainer_2/continuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_mnist_compression_trainer_2/log_prob/Logistic/log_survival_function/Softplus:activations:0*
T0*'
_output_shapes
:���������2�
�mnist_compression_trainer_2/continuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_mnist_compression_trainer_2/log_prob/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
�mnist_compression_trainer_2/continuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_mnist_compression_trainer_2/log_prob/subSubOmnist_compression_trainer_2/continuous_batched_entropy_model/IdentityN:output:0�mnist_compression_trainer_2/continuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_mnist_compression_trainer_2/log_prob/sub/y:output:0*
T0*'
_output_shapes
:���������2�
�mnist_compression_trainer_2/continuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_mnist_compression_trainer_2/log_prob/Logistic/log_survival_function_1/standardize/subSub�mnist_compression_trainer_2/continuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_mnist_compression_trainer_2/log_prob/sub:z:01mnist_compression_trainer_2/Logistic/loc:output:0*
T0*'
_output_shapes
:���������2�
�mnist_compression_trainer_2/continuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_mnist_compression_trainer_2/log_prob/Logistic/log_survival_function_1/standardize/truedivRealDiv�mnist_compression_trainer_2/continuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_mnist_compression_trainer_2/log_prob/Logistic/log_survival_function_1/standardize/sub:z:0#mnist_compression_trainer_2/Exp:y:0*
T0*'
_output_shapes
:���������2�
�mnist_compression_trainer_2/continuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_mnist_compression_trainer_2/log_prob/Logistic/log_survival_function_1/SoftplusSoftplus�mnist_compression_trainer_2/continuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_mnist_compression_trainer_2/log_prob/Logistic/log_survival_function_1/standardize/truediv:z:0*
T0*'
_output_shapes
:���������2�
�mnist_compression_trainer_2/continuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_mnist_compression_trainer_2/log_prob/Logistic/log_survival_function_1/NegNeg�mnist_compression_trainer_2/continuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_mnist_compression_trainer_2/log_prob/Logistic/log_survival_function_1/Softplus:activations:0*
T0*'
_output_shapes
:���������2�
�mnist_compression_trainer_2/continuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_mnist_compression_trainer_2/log_prob/add_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
�mnist_compression_trainer_2/continuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_mnist_compression_trainer_2/log_prob/add_1AddV2Omnist_compression_trainer_2/continuous_batched_entropy_model/IdentityN:output:0�mnist_compression_trainer_2/continuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_mnist_compression_trainer_2/log_prob/add_1/y:output:0*
T0*'
_output_shapes
:���������2�
�mnist_compression_trainer_2/continuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_mnist_compression_trainer_2/log_prob/Logistic/log_cdf/standardize/subSub�mnist_compression_trainer_2/continuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_mnist_compression_trainer_2/log_prob/add_1:z:01mnist_compression_trainer_2/Logistic/loc:output:0*
T0*'
_output_shapes
:���������2�
�mnist_compression_trainer_2/continuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_mnist_compression_trainer_2/log_prob/Logistic/log_cdf/standardize/truedivRealDiv�mnist_compression_trainer_2/continuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_mnist_compression_trainer_2/log_prob/Logistic/log_cdf/standardize/sub:z:0#mnist_compression_trainer_2/Exp:y:0*
T0*'
_output_shapes
:���������2�
�mnist_compression_trainer_2/continuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_mnist_compression_trainer_2/log_prob/Logistic/log_cdf/NegNeg�mnist_compression_trainer_2/continuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_mnist_compression_trainer_2/log_prob/Logistic/log_cdf/standardize/truediv:z:0*
T0*'
_output_shapes
:���������2�
�mnist_compression_trainer_2/continuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_mnist_compression_trainer_2/log_prob/Logistic/log_cdf/SoftplusSoftplus�mnist_compression_trainer_2/continuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_mnist_compression_trainer_2/log_prob/Logistic/log_cdf/Neg:y:0*
T0*'
_output_shapes
:���������2�
�mnist_compression_trainer_2/continuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_mnist_compression_trainer_2/log_prob/Logistic/log_cdf/Neg_1Neg�mnist_compression_trainer_2/continuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_mnist_compression_trainer_2/log_prob/Logistic/log_cdf/Softplus:activations:0*
T0*'
_output_shapes
:���������2�
�mnist_compression_trainer_2/continuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_mnist_compression_trainer_2/log_prob/sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
�mnist_compression_trainer_2/continuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_mnist_compression_trainer_2/log_prob/sub_1SubOmnist_compression_trainer_2/continuous_batched_entropy_model/IdentityN:output:0�mnist_compression_trainer_2/continuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_mnist_compression_trainer_2/log_prob/sub_1/y:output:0*
T0*'
_output_shapes
:���������2�
�mnist_compression_trainer_2/continuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_mnist_compression_trainer_2/log_prob/Logistic/log_cdf_1/standardize/subSub�mnist_compression_trainer_2/continuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_mnist_compression_trainer_2/log_prob/sub_1:z:01mnist_compression_trainer_2/Logistic/loc:output:0*
T0*'
_output_shapes
:���������2�
�mnist_compression_trainer_2/continuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_mnist_compression_trainer_2/log_prob/Logistic/log_cdf_1/standardize/truedivRealDiv�mnist_compression_trainer_2/continuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_mnist_compression_trainer_2/log_prob/Logistic/log_cdf_1/standardize/sub:z:0#mnist_compression_trainer_2/Exp:y:0*
T0*'
_output_shapes
:���������2�
�mnist_compression_trainer_2/continuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_mnist_compression_trainer_2/log_prob/Logistic/log_cdf_1/NegNeg�mnist_compression_trainer_2/continuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_mnist_compression_trainer_2/log_prob/Logistic/log_cdf_1/standardize/truediv:z:0*
T0*'
_output_shapes
:���������2�
�mnist_compression_trainer_2/continuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_mnist_compression_trainer_2/log_prob/Logistic/log_cdf_1/SoftplusSoftplus�mnist_compression_trainer_2/continuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_mnist_compression_trainer_2/log_prob/Logistic/log_cdf_1/Neg:y:0*
T0*'
_output_shapes
:���������2�
�mnist_compression_trainer_2/continuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_mnist_compression_trainer_2/log_prob/Logistic/log_cdf_1/Neg_1Neg�mnist_compression_trainer_2/continuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_mnist_compression_trainer_2/log_prob/Logistic/log_cdf_1/Softplus:activations:0*
T0*'
_output_shapes
:���������2�
�mnist_compression_trainer_2/continuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_mnist_compression_trainer_2/log_prob/LessLess�mnist_compression_trainer_2/continuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_mnist_compression_trainer_2/log_prob/Logistic/log_survival_function/Neg:y:0�mnist_compression_trainer_2/continuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_mnist_compression_trainer_2/log_prob/Logistic/log_cdf/Neg_1:y:0*
T0*'
_output_shapes
:���������2�
�mnist_compression_trainer_2/continuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_mnist_compression_trainer_2/log_prob/SelectV2SelectV2�mnist_compression_trainer_2/continuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_mnist_compression_trainer_2/log_prob/Less:z:0�mnist_compression_trainer_2/continuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_mnist_compression_trainer_2/log_prob/Logistic/log_survival_function_1/Neg:y:0�mnist_compression_trainer_2/continuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_mnist_compression_trainer_2/log_prob/Logistic/log_cdf/Neg_1:y:0*
T0*'
_output_shapes
:���������2�
�mnist_compression_trainer_2/continuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_mnist_compression_trainer_2/log_prob/SelectV2_1SelectV2�mnist_compression_trainer_2/continuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_mnist_compression_trainer_2/log_prob/Less:z:0�mnist_compression_trainer_2/continuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_mnist_compression_trainer_2/log_prob/Logistic/log_survival_function/Neg:y:0�mnist_compression_trainer_2/continuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_mnist_compression_trainer_2/log_prob/Logistic/log_cdf_1/Neg_1:y:0*
T0*'
_output_shapes
:���������2�
�mnist_compression_trainer_2/continuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_mnist_compression_trainer_2/log_prob/logsum_expbig_minus_expsmall/IsInfIsInf�mnist_compression_trainer_2/continuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_mnist_compression_trainer_2/log_prob/SelectV2:output:0*
T0*'
_output_shapes
:���������2�
�mnist_compression_trainer_2/continuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_mnist_compression_trainer_2/log_prob/logsum_expbig_minus_expsmall/subSub�mnist_compression_trainer_2/continuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_mnist_compression_trainer_2/log_prob/SelectV2_1:output:0�mnist_compression_trainer_2/continuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_mnist_compression_trainer_2/log_prob/SelectV2:output:0*
T0*'
_output_shapes
:���������2�
�mnist_compression_trainer_2/continuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_mnist_compression_trainer_2/log_prob/logsum_expbig_minus_expsmall/ExpExp�mnist_compression_trainer_2/continuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_mnist_compression_trainer_2/log_prob/logsum_expbig_minus_expsmall/sub:z:0*
T0*'
_output_shapes
:���������2�
�mnist_compression_trainer_2/continuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_mnist_compression_trainer_2/log_prob/logsum_expbig_minus_expsmall/NegNeg�mnist_compression_trainer_2/continuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_mnist_compression_trainer_2/log_prob/logsum_expbig_minus_expsmall/Exp:y:0*
T0*'
_output_shapes
:���������2�
�mnist_compression_trainer_2/continuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_mnist_compression_trainer_2/log_prob/logsum_expbig_minus_expsmall/Log1pLog1p�mnist_compression_trainer_2/continuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_mnist_compression_trainer_2/log_prob/logsum_expbig_minus_expsmall/Neg:y:0*
T0*'
_output_shapes
:���������2�
�mnist_compression_trainer_2/continuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_mnist_compression_trainer_2/log_prob/logsum_expbig_minus_expsmall/addAddV2�mnist_compression_trainer_2/continuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_mnist_compression_trainer_2/log_prob/logsum_expbig_minus_expsmall/Log1p:y:0�mnist_compression_trainer_2/continuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_mnist_compression_trainer_2/log_prob/SelectV2:output:0*
T0*'
_output_shapes
:���������2�
�mnist_compression_trainer_2/continuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_mnist_compression_trainer_2/log_prob/logsum_expbig_minus_expsmall/SelectV2SelectV2�mnist_compression_trainer_2/continuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_mnist_compression_trainer_2/log_prob/logsum_expbig_minus_expsmall/IsInf:y:0�mnist_compression_trainer_2/continuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_mnist_compression_trainer_2/log_prob/SelectV2:output:0�mnist_compression_trainer_2/continuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_mnist_compression_trainer_2/log_prob/logsum_expbig_minus_expsmall/add:z:0*
T0*'
_output_shapes
:���������2�
Rmnist_compression_trainer_2/continuous_batched_entropy_model/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
����������
@mnist_compression_trainer_2/continuous_batched_entropy_model/SumSum�mnist_compression_trainer_2/continuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_mnist_compression_trainer_2/log_prob/logsum_expbig_minus_expsmall/SelectV2:output:0[mnist_compression_trainer_2/continuous_batched_entropy_model/Sum/reduction_indices:output:0*
T0*#
_output_shapes
:����������
Bmnist_compression_trainer_2/continuous_batched_entropy_model/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @�
@mnist_compression_trainer_2/continuous_batched_entropy_model/LogLogKmnist_compression_trainer_2/continuous_batched_entropy_model/Const:output:0*
T0*
_output_shapes
: �
@mnist_compression_trainer_2/continuous_batched_entropy_model/NegNegDmnist_compression_trainer_2/continuous_batched_entropy_model/Log:y:0*
T0*
_output_shapes
: �
Dmnist_compression_trainer_2/continuous_batched_entropy_model/truedivRealDivImnist_compression_trainer_2/continuous_batched_entropy_model/Sum:output:0Dmnist_compression_trainer_2/continuous_batched_entropy_model/Neg:y:0*
T0*#
_output_shapes
:����������
Jmnist_compression_trainer_2/synthesis_transform/fc_1/MatMul/ReadVariableOpReadVariableOpSmnist_compression_trainer_2_synthesis_transform_fc_1_matmul_readvariableop_resource*
_output_shapes
:	2�*
dtype0�
;mnist_compression_trainer_2/synthesis_transform/fc_1/MatMulMatMulOmnist_compression_trainer_2/continuous_batched_entropy_model/IdentityN:output:0Rmnist_compression_trainer_2/synthesis_transform/fc_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
Kmnist_compression_trainer_2/synthesis_transform/fc_1/BiasAdd/ReadVariableOpReadVariableOpTmnist_compression_trainer_2_synthesis_transform_fc_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
<mnist_compression_trainer_2/synthesis_transform/fc_1/BiasAddBiasAddEmnist_compression_trainer_2/synthesis_transform/fc_1/MatMul:product:0Smnist_compression_trainer_2/synthesis_transform/fc_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
>mnist_compression_trainer_2/synthesis_transform/fc_1/LeakyRelu	LeakyReluEmnist_compression_trainer_2/synthesis_transform/fc_1/BiasAdd:output:0*(
_output_shapes
:�����������
Jmnist_compression_trainer_2/synthesis_transform/fc_2/MatMul/ReadVariableOpReadVariableOpSmnist_compression_trainer_2_synthesis_transform_fc_2_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
;mnist_compression_trainer_2/synthesis_transform/fc_2/MatMulMatMulLmnist_compression_trainer_2/synthesis_transform/fc_1/LeakyRelu:activations:0Rmnist_compression_trainer_2/synthesis_transform/fc_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
Kmnist_compression_trainer_2/synthesis_transform/fc_2/BiasAdd/ReadVariableOpReadVariableOpTmnist_compression_trainer_2_synthesis_transform_fc_2_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
<mnist_compression_trainer_2/synthesis_transform/fc_2/BiasAddBiasAddEmnist_compression_trainer_2/synthesis_transform/fc_2/MatMul:product:0Smnist_compression_trainer_2/synthesis_transform/fc_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
>mnist_compression_trainer_2/synthesis_transform/fc_2/LeakyRelu	LeakyReluEmnist_compression_trainer_2/synthesis_transform/fc_2/BiasAdd:output:0*(
_output_shapes
:�����������
?mnist_compression_trainer_2/synthesis_transform/reshape_2/ShapeShapeLmnist_compression_trainer_2/synthesis_transform/fc_2/LeakyRelu:activations:0*
T0*
_output_shapes
::���
Mmnist_compression_trainer_2/synthesis_transform/reshape_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
Omnist_compression_trainer_2/synthesis_transform/reshape_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
Omnist_compression_trainer_2/synthesis_transform/reshape_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
Gmnist_compression_trainer_2/synthesis_transform/reshape_2/strided_sliceStridedSliceHmnist_compression_trainer_2/synthesis_transform/reshape_2/Shape:output:0Vmnist_compression_trainer_2/synthesis_transform/reshape_2/strided_slice/stack:output:0Xmnist_compression_trainer_2/synthesis_transform/reshape_2/strided_slice/stack_1:output:0Xmnist_compression_trainer_2/synthesis_transform/reshape_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
Imnist_compression_trainer_2/synthesis_transform/reshape_2/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :�
Imnist_compression_trainer_2/synthesis_transform/reshape_2/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :�
Imnist_compression_trainer_2/synthesis_transform/reshape_2/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2�
Gmnist_compression_trainer_2/synthesis_transform/reshape_2/Reshape/shapePackPmnist_compression_trainer_2/synthesis_transform/reshape_2/strided_slice:output:0Rmnist_compression_trainer_2/synthesis_transform/reshape_2/Reshape/shape/1:output:0Rmnist_compression_trainer_2/synthesis_transform/reshape_2/Reshape/shape/2:output:0Rmnist_compression_trainer_2/synthesis_transform/reshape_2/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:�
Amnist_compression_trainer_2/synthesis_transform/reshape_2/ReshapeReshapeLmnist_compression_trainer_2/synthesis_transform/fc_2/LeakyRelu:activations:0Pmnist_compression_trainer_2/synthesis_transform/reshape_2/Reshape/shape:output:0*
T0*/
_output_shapes
:���������2�
<mnist_compression_trainer_2/synthesis_transform/conv_1/ShapeShapeJmnist_compression_trainer_2/synthesis_transform/reshape_2/Reshape:output:0*
T0*
_output_shapes
::���
Jmnist_compression_trainer_2/synthesis_transform/conv_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
Lmnist_compression_trainer_2/synthesis_transform/conv_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
Lmnist_compression_trainer_2/synthesis_transform/conv_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
Dmnist_compression_trainer_2/synthesis_transform/conv_1/strided_sliceStridedSliceEmnist_compression_trainer_2/synthesis_transform/conv_1/Shape:output:0Smnist_compression_trainer_2/synthesis_transform/conv_1/strided_slice/stack:output:0Umnist_compression_trainer_2/synthesis_transform/conv_1/strided_slice/stack_1:output:0Umnist_compression_trainer_2/synthesis_transform/conv_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
>mnist_compression_trainer_2/synthesis_transform/conv_1/stack/1Const*
_output_shapes
: *
dtype0*
value	B :�
>mnist_compression_trainer_2/synthesis_transform/conv_1/stack/2Const*
_output_shapes
: *
dtype0*
value	B :�
>mnist_compression_trainer_2/synthesis_transform/conv_1/stack/3Const*
_output_shapes
: *
dtype0*
value	B :�
<mnist_compression_trainer_2/synthesis_transform/conv_1/stackPackMmnist_compression_trainer_2/synthesis_transform/conv_1/strided_slice:output:0Gmnist_compression_trainer_2/synthesis_transform/conv_1/stack/1:output:0Gmnist_compression_trainer_2/synthesis_transform/conv_1/stack/2:output:0Gmnist_compression_trainer_2/synthesis_transform/conv_1/stack/3:output:0*
N*
T0*
_output_shapes
:�
Lmnist_compression_trainer_2/synthesis_transform/conv_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: �
Nmnist_compression_trainer_2/synthesis_transform/conv_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
Nmnist_compression_trainer_2/synthesis_transform/conv_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
Fmnist_compression_trainer_2/synthesis_transform/conv_1/strided_slice_1StridedSliceEmnist_compression_trainer_2/synthesis_transform/conv_1/stack:output:0Umnist_compression_trainer_2/synthesis_transform/conv_1/strided_slice_1/stack:output:0Wmnist_compression_trainer_2/synthesis_transform/conv_1/strided_slice_1/stack_1:output:0Wmnist_compression_trainer_2/synthesis_transform/conv_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
Vmnist_compression_trainer_2/synthesis_transform/conv_1/conv2d_transpose/ReadVariableOpReadVariableOp_mnist_compression_trainer_2_synthesis_transform_conv_1_conv2d_transpose_readvariableop_resource*&
_output_shapes
:2*
dtype0�
Gmnist_compression_trainer_2/synthesis_transform/conv_1/conv2d_transposeConv2DBackpropInputEmnist_compression_trainer_2/synthesis_transform/conv_1/stack:output:0^mnist_compression_trainer_2/synthesis_transform/conv_1/conv2d_transpose/ReadVariableOp:value:0Jmnist_compression_trainer_2/synthesis_transform/reshape_2/Reshape:output:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
�
Mmnist_compression_trainer_2/synthesis_transform/conv_1/BiasAdd/ReadVariableOpReadVariableOpVmnist_compression_trainer_2_synthesis_transform_conv_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
>mnist_compression_trainer_2/synthesis_transform/conv_1/BiasAddBiasAddPmnist_compression_trainer_2/synthesis_transform/conv_1/conv2d_transpose:output:0Umnist_compression_trainer_2/synthesis_transform/conv_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:����������
@mnist_compression_trainer_2/synthesis_transform/conv_1/LeakyRelu	LeakyReluGmnist_compression_trainer_2/synthesis_transform/conv_1/BiasAdd:output:0*/
_output_shapes
:����������
<mnist_compression_trainer_2/synthesis_transform/conv_2/ShapeShapeNmnist_compression_trainer_2/synthesis_transform/conv_1/LeakyRelu:activations:0*
T0*
_output_shapes
::���
Jmnist_compression_trainer_2/synthesis_transform/conv_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
Lmnist_compression_trainer_2/synthesis_transform/conv_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
Lmnist_compression_trainer_2/synthesis_transform/conv_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
Dmnist_compression_trainer_2/synthesis_transform/conv_2/strided_sliceStridedSliceEmnist_compression_trainer_2/synthesis_transform/conv_2/Shape:output:0Smnist_compression_trainer_2/synthesis_transform/conv_2/strided_slice/stack:output:0Umnist_compression_trainer_2/synthesis_transform/conv_2/strided_slice/stack_1:output:0Umnist_compression_trainer_2/synthesis_transform/conv_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
>mnist_compression_trainer_2/synthesis_transform/conv_2/stack/1Const*
_output_shapes
: *
dtype0*
value	B :�
>mnist_compression_trainer_2/synthesis_transform/conv_2/stack/2Const*
_output_shapes
: *
dtype0*
value	B :�
>mnist_compression_trainer_2/synthesis_transform/conv_2/stack/3Const*
_output_shapes
: *
dtype0*
value	B :�
<mnist_compression_trainer_2/synthesis_transform/conv_2/stackPackMmnist_compression_trainer_2/synthesis_transform/conv_2/strided_slice:output:0Gmnist_compression_trainer_2/synthesis_transform/conv_2/stack/1:output:0Gmnist_compression_trainer_2/synthesis_transform/conv_2/stack/2:output:0Gmnist_compression_trainer_2/synthesis_transform/conv_2/stack/3:output:0*
N*
T0*
_output_shapes
:�
Lmnist_compression_trainer_2/synthesis_transform/conv_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: �
Nmnist_compression_trainer_2/synthesis_transform/conv_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
Nmnist_compression_trainer_2/synthesis_transform/conv_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
Fmnist_compression_trainer_2/synthesis_transform/conv_2/strided_slice_1StridedSliceEmnist_compression_trainer_2/synthesis_transform/conv_2/stack:output:0Umnist_compression_trainer_2/synthesis_transform/conv_2/strided_slice_1/stack:output:0Wmnist_compression_trainer_2/synthesis_transform/conv_2/strided_slice_1/stack_1:output:0Wmnist_compression_trainer_2/synthesis_transform/conv_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
Vmnist_compression_trainer_2/synthesis_transform/conv_2/conv2d_transpose/ReadVariableOpReadVariableOp_mnist_compression_trainer_2_synthesis_transform_conv_2_conv2d_transpose_readvariableop_resource*&
_output_shapes
:*
dtype0�
Gmnist_compression_trainer_2/synthesis_transform/conv_2/conv2d_transposeConv2DBackpropInputEmnist_compression_trainer_2/synthesis_transform/conv_2/stack:output:0^mnist_compression_trainer_2/synthesis_transform/conv_2/conv2d_transpose/ReadVariableOp:value:0Nmnist_compression_trainer_2/synthesis_transform/conv_1/LeakyRelu:activations:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
�
Mmnist_compression_trainer_2/synthesis_transform/conv_2/BiasAdd/ReadVariableOpReadVariableOpVmnist_compression_trainer_2_synthesis_transform_conv_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
>mnist_compression_trainer_2/synthesis_transform/conv_2/BiasAddBiasAddPmnist_compression_trainer_2/synthesis_transform/conv_2/conv2d_transpose:output:0Umnist_compression_trainer_2/synthesis_transform/conv_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:����������
@mnist_compression_trainer_2/synthesis_transform/conv_2/LeakyRelu	LeakyReluGmnist_compression_trainer_2/synthesis_transform/conv_2/BiasAdd:output:0*/
_output_shapes
:���������k
!mnist_compression_trainer_2/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
 mnist_compression_trainer_2/MeanMeanHmnist_compression_trainer_2/continuous_batched_entropy_model/truediv:z:0*mnist_compression_trainer_2/Const:output:0*
T0*
_output_shapes
: �
mnist_compression_trainer_2/subSub,mnist_compression_trainer_2/Reshape:output:0Nmnist_compression_trainer_2/synthesis_transform/conv_2/LeakyRelu:activations:0*
T0*/
_output_shapes
:����������
mnist_compression_trainer_2/AbsAbs#mnist_compression_trainer_2/sub:z:0*
T0*/
_output_shapes
:���������|
#mnist_compression_trainer_2/Const_1Const*
_output_shapes
:*
dtype0*%
valueB"             �
"mnist_compression_trainer_2/Mean_1Mean#mnist_compression_trainer_2/Abs:y:0,mnist_compression_trainer_2/Const_1:output:0*
T0*
_output_shapes
: i
IdentityIdentity+mnist_compression_trainer_2/Mean_1:output:0^NoOp*
T0*
_output_shapes
: i

Identity_1Identity)mnist_compression_trainer_2/Mean:output:0^NoOp*
T0*
_output_shapes
: �

NoOpNoOp/^mnist_compression_trainer_2/Exp/ReadVariableOpM^mnist_compression_trainer_2/analysis_transform/conv_1/BiasAdd/ReadVariableOpL^mnist_compression_trainer_2/analysis_transform/conv_1/Conv2D/ReadVariableOpM^mnist_compression_trainer_2/analysis_transform/conv_2/BiasAdd/ReadVariableOpL^mnist_compression_trainer_2/analysis_transform/conv_2/Conv2D/ReadVariableOpK^mnist_compression_trainer_2/analysis_transform/fc_1/BiasAdd/ReadVariableOpJ^mnist_compression_trainer_2/analysis_transform/fc_1/MatMul/ReadVariableOpK^mnist_compression_trainer_2/analysis_transform/fc_2/BiasAdd/ReadVariableOpJ^mnist_compression_trainer_2/analysis_transform/fc_2/MatMul/ReadVariableOpN^mnist_compression_trainer_2/synthesis_transform/conv_1/BiasAdd/ReadVariableOpW^mnist_compression_trainer_2/synthesis_transform/conv_1/conv2d_transpose/ReadVariableOpN^mnist_compression_trainer_2/synthesis_transform/conv_2/BiasAdd/ReadVariableOpW^mnist_compression_trainer_2/synthesis_transform/conv_2/conv2d_transpose/ReadVariableOpL^mnist_compression_trainer_2/synthesis_transform/fc_1/BiasAdd/ReadVariableOpK^mnist_compression_trainer_2/synthesis_transform/fc_1/MatMul/ReadVariableOpL^mnist_compression_trainer_2/synthesis_transform/fc_2/BiasAdd/ReadVariableOpK^mnist_compression_trainer_2/synthesis_transform/fc_2/MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:���������: : : : : : : : : : : : : : : : : 2`
.mnist_compression_trainer_2/Exp/ReadVariableOp.mnist_compression_trainer_2/Exp/ReadVariableOp2�
Lmnist_compression_trainer_2/analysis_transform/conv_1/BiasAdd/ReadVariableOpLmnist_compression_trainer_2/analysis_transform/conv_1/BiasAdd/ReadVariableOp2�
Kmnist_compression_trainer_2/analysis_transform/conv_1/Conv2D/ReadVariableOpKmnist_compression_trainer_2/analysis_transform/conv_1/Conv2D/ReadVariableOp2�
Lmnist_compression_trainer_2/analysis_transform/conv_2/BiasAdd/ReadVariableOpLmnist_compression_trainer_2/analysis_transform/conv_2/BiasAdd/ReadVariableOp2�
Kmnist_compression_trainer_2/analysis_transform/conv_2/Conv2D/ReadVariableOpKmnist_compression_trainer_2/analysis_transform/conv_2/Conv2D/ReadVariableOp2�
Jmnist_compression_trainer_2/analysis_transform/fc_1/BiasAdd/ReadVariableOpJmnist_compression_trainer_2/analysis_transform/fc_1/BiasAdd/ReadVariableOp2�
Imnist_compression_trainer_2/analysis_transform/fc_1/MatMul/ReadVariableOpImnist_compression_trainer_2/analysis_transform/fc_1/MatMul/ReadVariableOp2�
Jmnist_compression_trainer_2/analysis_transform/fc_2/BiasAdd/ReadVariableOpJmnist_compression_trainer_2/analysis_transform/fc_2/BiasAdd/ReadVariableOp2�
Imnist_compression_trainer_2/analysis_transform/fc_2/MatMul/ReadVariableOpImnist_compression_trainer_2/analysis_transform/fc_2/MatMul/ReadVariableOp2�
Mmnist_compression_trainer_2/synthesis_transform/conv_1/BiasAdd/ReadVariableOpMmnist_compression_trainer_2/synthesis_transform/conv_1/BiasAdd/ReadVariableOp2�
Vmnist_compression_trainer_2/synthesis_transform/conv_1/conv2d_transpose/ReadVariableOpVmnist_compression_trainer_2/synthesis_transform/conv_1/conv2d_transpose/ReadVariableOp2�
Mmnist_compression_trainer_2/synthesis_transform/conv_2/BiasAdd/ReadVariableOpMmnist_compression_trainer_2/synthesis_transform/conv_2/BiasAdd/ReadVariableOp2�
Vmnist_compression_trainer_2/synthesis_transform/conv_2/conv2d_transpose/ReadVariableOpVmnist_compression_trainer_2/synthesis_transform/conv_2/conv2d_transpose/ReadVariableOp2�
Kmnist_compression_trainer_2/synthesis_transform/fc_1/BiasAdd/ReadVariableOpKmnist_compression_trainer_2/synthesis_transform/fc_1/BiasAdd/ReadVariableOp2�
Jmnist_compression_trainer_2/synthesis_transform/fc_1/MatMul/ReadVariableOpJmnist_compression_trainer_2/synthesis_transform/fc_1/MatMul/ReadVariableOp2�
Kmnist_compression_trainer_2/synthesis_transform/fc_2/BiasAdd/ReadVariableOpKmnist_compression_trainer_2/synthesis_transform/fc_2/BiasAdd/ReadVariableOp2�
Jmnist_compression_trainer_2/synthesis_transform/fc_2/MatMul/ReadVariableOpJmnist_compression_trainer_2/synthesis_transform/fc_2/MatMul/ReadVariableOp:X T
/
_output_shapes
:���������
!
_user_specified_name	input_1:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
<__inference_mnist_compression_trainer_2_layer_call_fn_132680
input_1!
unknown:
	unknown_0:#
	unknown_1:2
	unknown_2:2
	unknown_3:
��
	unknown_4:	�
	unknown_5:	�2
	unknown_6:2
	unknown_7:2
	unknown_8:	2�
	unknown_9:	�

unknown_10:
��

unknown_11:	�$

unknown_12:2

unknown_13:$

unknown_14:

unknown_15:
identity

identity_1��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: : *3
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *`
f[RY
W__inference_mnist_compression_trainer_2_layer_call_and_return_conditional_losses_132598^
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*
_output_shapes
: `

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*
_output_shapes
: <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:���������: : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
/
_output_shapes
:���������
!
_user_specified_name	input_1:&"
 
_user_specified_name132642:&"
 
_user_specified_name132644:&"
 
_user_specified_name132646:&"
 
_user_specified_name132648:&"
 
_user_specified_name132650:&"
 
_user_specified_name132652:&"
 
_user_specified_name132654:&"
 
_user_specified_name132656:&	"
 
_user_specified_name132658:&
"
 
_user_specified_name132660:&"
 
_user_specified_name132662:&"
 
_user_specified_name132664:&"
 
_user_specified_name132666:&"
 
_user_specified_name132668:&"
 
_user_specified_name132670:&"
 
_user_specified_name132672:&"
 
_user_specified_name132674
�!
�
B__inference_conv_1_layer_call_and_return_conditional_losses_132164

inputsB
(conv2d_transpose_readvariableop_resource:2-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�conv2d_transpose/ReadVariableOpI
ShapeShapeinputs*
T0*
_output_shapes
::��]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: I
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: I
stack/3Const*
_output_shapes
: *
dtype0*
value	B :y
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
:2*
dtype0�
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+���������������������������*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+���������������������������k
	LeakyRelu	LeakyReluBiasAdd:output:0*A
_output_shapes/
-:+����������������������������
IdentityIdentityLeakyRelu:activations:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������]
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+���������������������������2: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+���������������������������2
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�

�
@__inference_fc_1_layer_call_and_return_conditional_losses_132229

inputs1
matmul_readvariableop_resource:	2�.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	2�*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������R
	LeakyRelu	LeakyReluBiasAdd:output:0*(
_output_shapes
:����������g
IdentityIdentityLeakyRelu:activations:0^NoOp*
T0*(
_output_shapes
:����������S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������2: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������2
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�!
�
B__inference_conv_2_layer_call_and_return_conditional_losses_132207

inputsB
(conv2d_transpose_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�conv2d_transpose/ReadVariableOpI
ShapeShapeinputs*
T0*
_output_shapes
::��]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: I
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: I
stack/3Const*
_output_shapes
: *
dtype0*
value	B :y
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
:*
dtype0�
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+���������������������������*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+���������������������������k
	LeakyRelu	LeakyReluBiasAdd:output:0*A
_output_shapes/
-:+����������������������������
IdentityIdentityLeakyRelu:activations:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������]
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+���������������������������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�

�
@__inference_fc_1_layer_call_and_return_conditional_losses_132798

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������R
	LeakyRelu	LeakyReluBiasAdd:output:0*(
_output_shapes
:����������g
IdentityIdentityLeakyRelu:activations:0^NoOp*
T0*(
_output_shapes
:����������S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
3__inference_analysis_transform_layer_call_fn_132068
conv_1_input!
unknown:
	unknown_0:#
	unknown_1:2
	unknown_2:2
	unknown_3:
��
	unknown_4:	�
	unknown_5:	�2
	unknown_6:2
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallconv_1_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������2**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *W
fRRP
N__inference_analysis_transform_layer_call_and_return_conditional_losses_132022o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������2<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:���������: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
/
_output_shapes
:���������
&
_user_specified_nameconv_1_input:&"
 
_user_specified_name132050:&"
 
_user_specified_name132052:&"
 
_user_specified_name132054:&"
 
_user_specified_name132056:&"
 
_user_specified_name132058:&"
 
_user_specified_name132060:&"
 
_user_specified_name132062:&"
 
_user_specified_name132064
�
�
N__inference_analysis_transform_layer_call_and_return_conditional_losses_132022
conv_1_input'
conv_1_131962:
conv_1_131964:'
conv_2_131978:2
conv_2_131980:2
fc_1_132001:
��
fc_1_132003:	�
fc_2_132016:	�2
fc_2_132018:2
identity��conv_1/StatefulPartitionedCall�conv_2/StatefulPartitionedCall�fc_1/StatefulPartitionedCall�fc_2/StatefulPartitionedCall�
conv_1/StatefulPartitionedCallStatefulPartitionedCallconv_1_inputconv_1_131962conv_1_131964*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_conv_1_layer_call_and_return_conditional_losses_131961�
conv_2/StatefulPartitionedCallStatefulPartitionedCall'conv_1/StatefulPartitionedCall:output:0conv_2_131978conv_2_131980*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_conv_2_layer_call_and_return_conditional_losses_131977�
flatten_2/PartitionedCallPartitionedCall'conv_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_flatten_2_layer_call_and_return_conditional_losses_131988�
fc_1/StatefulPartitionedCallStatefulPartitionedCall"flatten_2/PartitionedCall:output:0fc_1_132001fc_1_132003*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *I
fDRB
@__inference_fc_1_layer_call_and_return_conditional_losses_132000�
fc_2/StatefulPartitionedCallStatefulPartitionedCall%fc_1/StatefulPartitionedCall:output:0fc_2_132016fc_2_132018*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *I
fDRB
@__inference_fc_2_layer_call_and_return_conditional_losses_132015t
IdentityIdentity%fc_2/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������2�
NoOpNoOp^conv_1/StatefulPartitionedCall^conv_2/StatefulPartitionedCall^fc_1/StatefulPartitionedCall^fc_2/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:���������: : : : : : : : 2@
conv_1/StatefulPartitionedCallconv_1/StatefulPartitionedCall2@
conv_2/StatefulPartitionedCallconv_2/StatefulPartitionedCall2<
fc_1/StatefulPartitionedCallfc_1/StatefulPartitionedCall2<
fc_2/StatefulPartitionedCallfc_2/StatefulPartitionedCall:] Y
/
_output_shapes
:���������
&
_user_specified_nameconv_1_input:&"
 
_user_specified_name131962:&"
 
_user_specified_name131964:&"
 
_user_specified_name131978:&"
 
_user_specified_name131980:&"
 
_user_specified_name132001:&"
 
_user_specified_name132003:&"
 
_user_specified_name132016:&"
 
_user_specified_name132018
�
�
'__inference_conv_2_layer_call_fn_132928

inputs!
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_conv_2_layer_call_and_return_conditional_losses_132207�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+���������������������������: : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs:&"
 
_user_specified_name132922:&"
 
_user_specified_name132924
�
F
*__inference_reshape_2_layer_call_fn_132862

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������2* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_reshape_2_layer_call_and_return_conditional_losses_132264h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:���������2"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
B__inference_conv_1_layer_call_and_return_conditional_losses_131961

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������Y
	LeakyRelu	LeakyReluBiasAdd:output:0*/
_output_shapes
:���������n
IdentityIdentityLeakyRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�

�
@__inference_fc_1_layer_call_and_return_conditional_losses_132000

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������R
	LeakyRelu	LeakyReluBiasAdd:output:0*(
_output_shapes
:����������g
IdentityIdentityLeakyRelu:activations:0^NoOp*
T0*(
_output_shapes
:����������S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
%__inference_fc_2_layer_call_fn_132846

inputs
unknown:
��
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *I
fDRB
@__inference_fc_2_layer_call_and_return_conditional_losses_132245p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs:&"
 
_user_specified_name132840:&"
 
_user_specified_name132842
�
�
$__inference_signature_wrapper_132727
input_1!
unknown:
	unknown_0:#
	unknown_1:2
	unknown_2:2
	unknown_3:
��
	unknown_4:	�
	unknown_5:	�2
	unknown_6:2
	unknown_7:2
	unknown_8:	2�
	unknown_9:	�

unknown_10:
��

unknown_11:	�$

unknown_12:2

unknown_13:$

unknown_14:

unknown_15:
identity

identity_1��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: : *3
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� **
f%R#
!__inference__wrapped_model_131948^
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*
_output_shapes
: `

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*
_output_shapes
: <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:���������: : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
/
_output_shapes
:���������
!
_user_specified_name	input_1:&"
 
_user_specified_name132689:&"
 
_user_specified_name132691:&"
 
_user_specified_name132693:&"
 
_user_specified_name132695:&"
 
_user_specified_name132697:&"
 
_user_specified_name132699:&"
 
_user_specified_name132701:&"
 
_user_specified_name132703:&	"
 
_user_specified_name132705:&
"
 
_user_specified_name132707:&"
 
_user_specified_name132709:&"
 
_user_specified_name132711:&"
 
_user_specified_name132713:&"
 
_user_specified_name132715:&"
 
_user_specified_name132717:&"
 
_user_specified_name132719:&"
 
_user_specified_name132721
�
�
'__inference_conv_1_layer_call_fn_132736

inputs!
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_conv_1_layer_call_and_return_conditional_losses_131961w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs:&"
 
_user_specified_name132730:&"
 
_user_specified_name132732
�
�
B__inference_conv_1_layer_call_and_return_conditional_losses_132747

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������Y
	LeakyRelu	LeakyReluBiasAdd:output:0*/
_output_shapes
:���������n
IdentityIdentityLeakyRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
3__inference_analysis_transform_layer_call_fn_132089
conv_1_input!
unknown:
	unknown_0:#
	unknown_1:2
	unknown_2:2
	unknown_3:
��
	unknown_4:	�
	unknown_5:	�2
	unknown_6:2
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallconv_1_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������2**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *W
fRRP
N__inference_analysis_transform_layer_call_and_return_conditional_losses_132047o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������2<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:���������: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
/
_output_shapes
:���������
&
_user_specified_nameconv_1_input:&"
 
_user_specified_name132071:&"
 
_user_specified_name132073:&"
 
_user_specified_name132075:&"
 
_user_specified_name132077:&"
 
_user_specified_name132079:&"
 
_user_specified_name132081:&"
 
_user_specified_name132083:&"
 
_user_specified_name132085
�
�
%__inference_fc_2_layer_call_fn_132807

inputs
unknown:	�2
	unknown_0:2
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *I
fDRB
@__inference_fc_2_layer_call_and_return_conditional_losses_132015o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������2<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs:&"
 
_user_specified_name132801:&"
 
_user_specified_name132803
�
�
O__inference_synthesis_transform_layer_call_and_return_conditional_losses_132302

fc_1_input
fc_1_132280:	2�
fc_1_132282:	�
fc_2_132285:
��
fc_2_132287:	�'
conv_1_132291:2
conv_1_132293:'
conv_2_132296:
conv_2_132298:
identity��conv_1/StatefulPartitionedCall�conv_2/StatefulPartitionedCall�fc_1/StatefulPartitionedCall�fc_2/StatefulPartitionedCall�
fc_1/StatefulPartitionedCallStatefulPartitionedCall
fc_1_inputfc_1_132280fc_1_132282*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *I
fDRB
@__inference_fc_1_layer_call_and_return_conditional_losses_132229�
fc_2/StatefulPartitionedCallStatefulPartitionedCall%fc_1/StatefulPartitionedCall:output:0fc_2_132285fc_2_132287*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *I
fDRB
@__inference_fc_2_layer_call_and_return_conditional_losses_132245�
reshape_2/PartitionedCallPartitionedCall%fc_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������2* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_reshape_2_layer_call_and_return_conditional_losses_132264�
conv_1/StatefulPartitionedCallStatefulPartitionedCall"reshape_2/PartitionedCall:output:0conv_1_132291conv_1_132293*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_conv_1_layer_call_and_return_conditional_losses_132164�
conv_2/StatefulPartitionedCallStatefulPartitionedCall'conv_1/StatefulPartitionedCall:output:0conv_2_132296conv_2_132298*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_conv_2_layer_call_and_return_conditional_losses_132207~
IdentityIdentity'conv_2/StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:����������
NoOpNoOp^conv_1/StatefulPartitionedCall^conv_2/StatefulPartitionedCall^fc_1/StatefulPartitionedCall^fc_2/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������2: : : : : : : : 2@
conv_1/StatefulPartitionedCallconv_1/StatefulPartitionedCall2@
conv_2/StatefulPartitionedCallconv_2/StatefulPartitionedCall2<
fc_1/StatefulPartitionedCallfc_1/StatefulPartitionedCall2<
fc_2/StatefulPartitionedCallfc_2/StatefulPartitionedCall:S O
'
_output_shapes
:���������2
$
_user_specified_name
fc_1_input:&"
 
_user_specified_name132280:&"
 
_user_specified_name132282:&"
 
_user_specified_name132285:&"
 
_user_specified_name132287:&"
 
_user_specified_name132291:&"
 
_user_specified_name132293:&"
 
_user_specified_name132296:&"
 
_user_specified_name132298
�
�
4__inference_synthesis_transform_layer_call_fn_132323

fc_1_input
unknown:	2�
	unknown_0:	�
	unknown_1:
��
	unknown_2:	�#
	unknown_3:2
	unknown_4:#
	unknown_5:
	unknown_6:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCall
fc_1_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *X
fSRQ
O__inference_synthesis_transform_layer_call_and_return_conditional_losses_132277w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������2: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
'
_output_shapes
:���������2
$
_user_specified_name
fc_1_input:&"
 
_user_specified_name132305:&"
 
_user_specified_name132307:&"
 
_user_specified_name132309:&"
 
_user_specified_name132311:&"
 
_user_specified_name132313:&"
 
_user_specified_name132315:&"
 
_user_specified_name132317:&"
 
_user_specified_name132319
�
�
O__inference_synthesis_transform_layer_call_and_return_conditional_losses_132277

fc_1_input
fc_1_132230:	2�
fc_1_132232:	�
fc_2_132246:
��
fc_2_132248:	�'
conv_1_132266:2
conv_1_132268:'
conv_2_132271:
conv_2_132273:
identity��conv_1/StatefulPartitionedCall�conv_2/StatefulPartitionedCall�fc_1/StatefulPartitionedCall�fc_2/StatefulPartitionedCall�
fc_1/StatefulPartitionedCallStatefulPartitionedCall
fc_1_inputfc_1_132230fc_1_132232*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *I
fDRB
@__inference_fc_1_layer_call_and_return_conditional_losses_132229�
fc_2/StatefulPartitionedCallStatefulPartitionedCall%fc_1/StatefulPartitionedCall:output:0fc_2_132246fc_2_132248*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *I
fDRB
@__inference_fc_2_layer_call_and_return_conditional_losses_132245�
reshape_2/PartitionedCallPartitionedCall%fc_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������2* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_reshape_2_layer_call_and_return_conditional_losses_132264�
conv_1/StatefulPartitionedCallStatefulPartitionedCall"reshape_2/PartitionedCall:output:0conv_1_132266conv_1_132268*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_conv_1_layer_call_and_return_conditional_losses_132164�
conv_2/StatefulPartitionedCallStatefulPartitionedCall'conv_1/StatefulPartitionedCall:output:0conv_2_132271conv_2_132273*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_conv_2_layer_call_and_return_conditional_losses_132207~
IdentityIdentity'conv_2/StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:����������
NoOpNoOp^conv_1/StatefulPartitionedCall^conv_2/StatefulPartitionedCall^fc_1/StatefulPartitionedCall^fc_2/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������2: : : : : : : : 2@
conv_1/StatefulPartitionedCallconv_1/StatefulPartitionedCall2@
conv_2/StatefulPartitionedCallconv_2/StatefulPartitionedCall2<
fc_1/StatefulPartitionedCallfc_1/StatefulPartitionedCall2<
fc_2/StatefulPartitionedCallfc_2/StatefulPartitionedCall:S O
'
_output_shapes
:���������2
$
_user_specified_name
fc_1_input:&"
 
_user_specified_name132230:&"
 
_user_specified_name132232:&"
 
_user_specified_name132246:&"
 
_user_specified_name132248:&"
 
_user_specified_name132266:&"
 
_user_specified_name132268:&"
 
_user_specified_name132271:&"
 
_user_specified_name132273
�
o
#__inference_internal_grad_fn_133098
result_grads_0
result_grads_1
result_grads_2
identityV
IdentityIdentityresult_grads_0*
T0*'
_output_shapes
:���������2"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:���������2:���������2:2:W S
'
_output_shapes
:���������2
(
_user_specified_nameresult_grads_0:WS
'
_output_shapes
:���������2
(
_user_specified_nameresult_grads_1:JF

_output_shapes
:2
(
_user_specified_nameresult_grads_2
��
�7
__inference__traced_save_133375
file_prefix-
read_disablecopyonread_variable:2B
(read_1_disablecopyonread_conv_1_kernel_1:4
&read_2_disablecopyonread_conv_1_bias_1:B
(read_3_disablecopyonread_conv_2_kernel_1:24
&read_4_disablecopyonread_conv_2_bias_1:2:
&read_5_disablecopyonread_fc_1_kernel_1:
��3
$read_6_disablecopyonread_fc_1_bias_1:	�9
&read_7_disablecopyonread_fc_2_kernel_1:	�22
$read_8_disablecopyonread_fc_2_bias_1:27
$read_9_disablecopyonread_fc_1_kernel:	2�2
#read_10_disablecopyonread_fc_1_bias:	�9
%read_11_disablecopyonread_fc_2_kernel:
��2
#read_12_disablecopyonread_fc_2_bias:	�A
'read_13_disablecopyonread_conv_1_kernel:23
%read_14_disablecopyonread_conv_1_bias:A
'read_15_disablecopyonread_conv_2_kernel:3
%read_16_disablecopyonread_conv_2_bias:-
#read_17_disablecopyonread_iteration:	 1
'read_18_disablecopyonread_learning_rate: J
0read_19_disablecopyonread_adam_m_conv_1_kernel_1:J
0read_20_disablecopyonread_adam_v_conv_1_kernel_1:<
.read_21_disablecopyonread_adam_m_conv_1_bias_1:<
.read_22_disablecopyonread_adam_v_conv_1_bias_1:J
0read_23_disablecopyonread_adam_m_conv_2_kernel_1:2J
0read_24_disablecopyonread_adam_v_conv_2_kernel_1:2<
.read_25_disablecopyonread_adam_m_conv_2_bias_1:2<
.read_26_disablecopyonread_adam_v_conv_2_bias_1:2B
.read_27_disablecopyonread_adam_m_fc_1_kernel_1:
��B
.read_28_disablecopyonread_adam_v_fc_1_kernel_1:
��;
,read_29_disablecopyonread_adam_m_fc_1_bias_1:	�;
,read_30_disablecopyonread_adam_v_fc_1_bias_1:	�A
.read_31_disablecopyonread_adam_m_fc_2_kernel_1:	�2A
.read_32_disablecopyonread_adam_v_fc_2_kernel_1:	�2:
,read_33_disablecopyonread_adam_m_fc_2_bias_1:2:
,read_34_disablecopyonread_adam_v_fc_2_bias_1:2?
,read_35_disablecopyonread_adam_m_fc_1_kernel:	2�?
,read_36_disablecopyonread_adam_v_fc_1_kernel:	2�9
*read_37_disablecopyonread_adam_m_fc_1_bias:	�9
*read_38_disablecopyonread_adam_v_fc_1_bias:	�@
,read_39_disablecopyonread_adam_m_fc_2_kernel:
��@
,read_40_disablecopyonread_adam_v_fc_2_kernel:
��9
*read_41_disablecopyonread_adam_m_fc_2_bias:	�9
*read_42_disablecopyonread_adam_v_fc_2_bias:	�H
.read_43_disablecopyonread_adam_m_conv_1_kernel:2H
.read_44_disablecopyonread_adam_v_conv_1_kernel:2:
,read_45_disablecopyonread_adam_m_conv_1_bias::
,read_46_disablecopyonread_adam_v_conv_1_bias:H
.read_47_disablecopyonread_adam_m_conv_2_kernel:H
.read_48_disablecopyonread_adam_v_conv_2_kernel::
,read_49_disablecopyonread_adam_m_conv_2_bias::
,read_50_disablecopyonread_adam_v_conv_2_bias:7
)read_51_disablecopyonread_adam_m_variable:27
)read_52_disablecopyonread_adam_v_variable:2+
!read_53_disablecopyonread_total_4: +
!read_54_disablecopyonread_count_4: +
!read_55_disablecopyonread_total_3: +
!read_56_disablecopyonread_count_3: +
!read_57_disablecopyonread_total_2: +
!read_58_disablecopyonread_count_2: +
!read_59_disablecopyonread_total_1: +
!read_60_disablecopyonread_count_1: )
read_61_disablecopyonread_total: )
read_62_disablecopyonread_count: 
savev2_const
identity_127��MergeV2Checkpoints�Read/DisableCopyOnRead�Read/ReadVariableOp�Read_1/DisableCopyOnRead�Read_1/ReadVariableOp�Read_10/DisableCopyOnRead�Read_10/ReadVariableOp�Read_11/DisableCopyOnRead�Read_11/ReadVariableOp�Read_12/DisableCopyOnRead�Read_12/ReadVariableOp�Read_13/DisableCopyOnRead�Read_13/ReadVariableOp�Read_14/DisableCopyOnRead�Read_14/ReadVariableOp�Read_15/DisableCopyOnRead�Read_15/ReadVariableOp�Read_16/DisableCopyOnRead�Read_16/ReadVariableOp�Read_17/DisableCopyOnRead�Read_17/ReadVariableOp�Read_18/DisableCopyOnRead�Read_18/ReadVariableOp�Read_19/DisableCopyOnRead�Read_19/ReadVariableOp�Read_2/DisableCopyOnRead�Read_2/ReadVariableOp�Read_20/DisableCopyOnRead�Read_20/ReadVariableOp�Read_21/DisableCopyOnRead�Read_21/ReadVariableOp�Read_22/DisableCopyOnRead�Read_22/ReadVariableOp�Read_23/DisableCopyOnRead�Read_23/ReadVariableOp�Read_24/DisableCopyOnRead�Read_24/ReadVariableOp�Read_25/DisableCopyOnRead�Read_25/ReadVariableOp�Read_26/DisableCopyOnRead�Read_26/ReadVariableOp�Read_27/DisableCopyOnRead�Read_27/ReadVariableOp�Read_28/DisableCopyOnRead�Read_28/ReadVariableOp�Read_29/DisableCopyOnRead�Read_29/ReadVariableOp�Read_3/DisableCopyOnRead�Read_3/ReadVariableOp�Read_30/DisableCopyOnRead�Read_30/ReadVariableOp�Read_31/DisableCopyOnRead�Read_31/ReadVariableOp�Read_32/DisableCopyOnRead�Read_32/ReadVariableOp�Read_33/DisableCopyOnRead�Read_33/ReadVariableOp�Read_34/DisableCopyOnRead�Read_34/ReadVariableOp�Read_35/DisableCopyOnRead�Read_35/ReadVariableOp�Read_36/DisableCopyOnRead�Read_36/ReadVariableOp�Read_37/DisableCopyOnRead�Read_37/ReadVariableOp�Read_38/DisableCopyOnRead�Read_38/ReadVariableOp�Read_39/DisableCopyOnRead�Read_39/ReadVariableOp�Read_4/DisableCopyOnRead�Read_4/ReadVariableOp�Read_40/DisableCopyOnRead�Read_40/ReadVariableOp�Read_41/DisableCopyOnRead�Read_41/ReadVariableOp�Read_42/DisableCopyOnRead�Read_42/ReadVariableOp�Read_43/DisableCopyOnRead�Read_43/ReadVariableOp�Read_44/DisableCopyOnRead�Read_44/ReadVariableOp�Read_45/DisableCopyOnRead�Read_45/ReadVariableOp�Read_46/DisableCopyOnRead�Read_46/ReadVariableOp�Read_47/DisableCopyOnRead�Read_47/ReadVariableOp�Read_48/DisableCopyOnRead�Read_48/ReadVariableOp�Read_49/DisableCopyOnRead�Read_49/ReadVariableOp�Read_5/DisableCopyOnRead�Read_5/ReadVariableOp�Read_50/DisableCopyOnRead�Read_50/ReadVariableOp�Read_51/DisableCopyOnRead�Read_51/ReadVariableOp�Read_52/DisableCopyOnRead�Read_52/ReadVariableOp�Read_53/DisableCopyOnRead�Read_53/ReadVariableOp�Read_54/DisableCopyOnRead�Read_54/ReadVariableOp�Read_55/DisableCopyOnRead�Read_55/ReadVariableOp�Read_56/DisableCopyOnRead�Read_56/ReadVariableOp�Read_57/DisableCopyOnRead�Read_57/ReadVariableOp�Read_58/DisableCopyOnRead�Read_58/ReadVariableOp�Read_59/DisableCopyOnRead�Read_59/ReadVariableOp�Read_6/DisableCopyOnRead�Read_6/ReadVariableOp�Read_60/DisableCopyOnRead�Read_60/ReadVariableOp�Read_61/DisableCopyOnRead�Read_61/ReadVariableOp�Read_62/DisableCopyOnRead�Read_62/ReadVariableOp�Read_7/DisableCopyOnRead�Read_7/ReadVariableOp�Read_8/DisableCopyOnRead�Read_8/ReadVariableOp�Read_9/DisableCopyOnRead�Read_9/ReadVariableOpw
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
_temp/part�
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
value	B : �
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: q
Read/DisableCopyOnReadDisableCopyOnReadread_disablecopyonread_variable"/device:CPU:0*
_output_shapes
 �
Read/ReadVariableOpReadVariableOpread_disablecopyonread_variable^Read/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:2*
dtype0e
IdentityIdentityRead/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:2]

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0*
_output_shapes
:2|
Read_1/DisableCopyOnReadDisableCopyOnRead(read_1_disablecopyonread_conv_1_kernel_1"/device:CPU:0*
_output_shapes
 �
Read_1/ReadVariableOpReadVariableOp(read_1_disablecopyonread_conv_1_kernel_1^Read_1/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:*
dtype0u

Identity_2IdentityRead_1/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:k

Identity_3IdentityIdentity_2:output:0"/device:CPU:0*
T0*&
_output_shapes
:z
Read_2/DisableCopyOnReadDisableCopyOnRead&read_2_disablecopyonread_conv_1_bias_1"/device:CPU:0*
_output_shapes
 �
Read_2/ReadVariableOpReadVariableOp&read_2_disablecopyonread_conv_1_bias_1^Read_2/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0i

Identity_4IdentityRead_2/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:_

Identity_5IdentityIdentity_4:output:0"/device:CPU:0*
T0*
_output_shapes
:|
Read_3/DisableCopyOnReadDisableCopyOnRead(read_3_disablecopyonread_conv_2_kernel_1"/device:CPU:0*
_output_shapes
 �
Read_3/ReadVariableOpReadVariableOp(read_3_disablecopyonread_conv_2_kernel_1^Read_3/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:2*
dtype0u

Identity_6IdentityRead_3/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:2k

Identity_7IdentityIdentity_6:output:0"/device:CPU:0*
T0*&
_output_shapes
:2z
Read_4/DisableCopyOnReadDisableCopyOnRead&read_4_disablecopyonread_conv_2_bias_1"/device:CPU:0*
_output_shapes
 �
Read_4/ReadVariableOpReadVariableOp&read_4_disablecopyonread_conv_2_bias_1^Read_4/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:2*
dtype0i

Identity_8IdentityRead_4/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:2_

Identity_9IdentityIdentity_8:output:0"/device:CPU:0*
T0*
_output_shapes
:2z
Read_5/DisableCopyOnReadDisableCopyOnRead&read_5_disablecopyonread_fc_1_kernel_1"/device:CPU:0*
_output_shapes
 �
Read_5/ReadVariableOpReadVariableOp&read_5_disablecopyonread_fc_1_kernel_1^Read_5/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
��*
dtype0p
Identity_10IdentityRead_5/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
��g
Identity_11IdentityIdentity_10:output:0"/device:CPU:0*
T0* 
_output_shapes
:
��x
Read_6/DisableCopyOnReadDisableCopyOnRead$read_6_disablecopyonread_fc_1_bias_1"/device:CPU:0*
_output_shapes
 �
Read_6/ReadVariableOpReadVariableOp$read_6_disablecopyonread_fc_1_bias_1^Read_6/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0k
Identity_12IdentityRead_6/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_13IdentityIdentity_12:output:0"/device:CPU:0*
T0*
_output_shapes	
:�z
Read_7/DisableCopyOnReadDisableCopyOnRead&read_7_disablecopyonread_fc_2_kernel_1"/device:CPU:0*
_output_shapes
 �
Read_7/ReadVariableOpReadVariableOp&read_7_disablecopyonread_fc_2_kernel_1^Read_7/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�2*
dtype0o
Identity_14IdentityRead_7/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�2f
Identity_15IdentityIdentity_14:output:0"/device:CPU:0*
T0*
_output_shapes
:	�2x
Read_8/DisableCopyOnReadDisableCopyOnRead$read_8_disablecopyonread_fc_2_bias_1"/device:CPU:0*
_output_shapes
 �
Read_8/ReadVariableOpReadVariableOp$read_8_disablecopyonread_fc_2_bias_1^Read_8/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:2*
dtype0j
Identity_16IdentityRead_8/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:2a
Identity_17IdentityIdentity_16:output:0"/device:CPU:0*
T0*
_output_shapes
:2x
Read_9/DisableCopyOnReadDisableCopyOnRead$read_9_disablecopyonread_fc_1_kernel"/device:CPU:0*
_output_shapes
 �
Read_9/ReadVariableOpReadVariableOp$read_9_disablecopyonread_fc_1_kernel^Read_9/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	2�*
dtype0o
Identity_18IdentityRead_9/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	2�f
Identity_19IdentityIdentity_18:output:0"/device:CPU:0*
T0*
_output_shapes
:	2�x
Read_10/DisableCopyOnReadDisableCopyOnRead#read_10_disablecopyonread_fc_1_bias"/device:CPU:0*
_output_shapes
 �
Read_10/ReadVariableOpReadVariableOp#read_10_disablecopyonread_fc_1_bias^Read_10/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_20IdentityRead_10/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_21IdentityIdentity_20:output:0"/device:CPU:0*
T0*
_output_shapes	
:�z
Read_11/DisableCopyOnReadDisableCopyOnRead%read_11_disablecopyonread_fc_2_kernel"/device:CPU:0*
_output_shapes
 �
Read_11/ReadVariableOpReadVariableOp%read_11_disablecopyonread_fc_2_kernel^Read_11/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
��*
dtype0q
Identity_22IdentityRead_11/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
��g
Identity_23IdentityIdentity_22:output:0"/device:CPU:0*
T0* 
_output_shapes
:
��x
Read_12/DisableCopyOnReadDisableCopyOnRead#read_12_disablecopyonread_fc_2_bias"/device:CPU:0*
_output_shapes
 �
Read_12/ReadVariableOpReadVariableOp#read_12_disablecopyonread_fc_2_bias^Read_12/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_24IdentityRead_12/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_25IdentityIdentity_24:output:0"/device:CPU:0*
T0*
_output_shapes	
:�|
Read_13/DisableCopyOnReadDisableCopyOnRead'read_13_disablecopyonread_conv_1_kernel"/device:CPU:0*
_output_shapes
 �
Read_13/ReadVariableOpReadVariableOp'read_13_disablecopyonread_conv_1_kernel^Read_13/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:2*
dtype0w
Identity_26IdentityRead_13/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:2m
Identity_27IdentityIdentity_26:output:0"/device:CPU:0*
T0*&
_output_shapes
:2z
Read_14/DisableCopyOnReadDisableCopyOnRead%read_14_disablecopyonread_conv_1_bias"/device:CPU:0*
_output_shapes
 �
Read_14/ReadVariableOpReadVariableOp%read_14_disablecopyonread_conv_1_bias^Read_14/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_28IdentityRead_14/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_29IdentityIdentity_28:output:0"/device:CPU:0*
T0*
_output_shapes
:|
Read_15/DisableCopyOnReadDisableCopyOnRead'read_15_disablecopyonread_conv_2_kernel"/device:CPU:0*
_output_shapes
 �
Read_15/ReadVariableOpReadVariableOp'read_15_disablecopyonread_conv_2_kernel^Read_15/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:*
dtype0w
Identity_30IdentityRead_15/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:m
Identity_31IdentityIdentity_30:output:0"/device:CPU:0*
T0*&
_output_shapes
:z
Read_16/DisableCopyOnReadDisableCopyOnRead%read_16_disablecopyonread_conv_2_bias"/device:CPU:0*
_output_shapes
 �
Read_16/ReadVariableOpReadVariableOp%read_16_disablecopyonread_conv_2_bias^Read_16/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_32IdentityRead_16/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_33IdentityIdentity_32:output:0"/device:CPU:0*
T0*
_output_shapes
:x
Read_17/DisableCopyOnReadDisableCopyOnRead#read_17_disablecopyonread_iteration"/device:CPU:0*
_output_shapes
 �
Read_17/ReadVariableOpReadVariableOp#read_17_disablecopyonread_iteration^Read_17/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0	g
Identity_34IdentityRead_17/ReadVariableOp:value:0"/device:CPU:0*
T0	*
_output_shapes
: ]
Identity_35IdentityIdentity_34:output:0"/device:CPU:0*
T0	*
_output_shapes
: |
Read_18/DisableCopyOnReadDisableCopyOnRead'read_18_disablecopyonread_learning_rate"/device:CPU:0*
_output_shapes
 �
Read_18/ReadVariableOpReadVariableOp'read_18_disablecopyonread_learning_rate^Read_18/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_36IdentityRead_18/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_37IdentityIdentity_36:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_19/DisableCopyOnReadDisableCopyOnRead0read_19_disablecopyonread_adam_m_conv_1_kernel_1"/device:CPU:0*
_output_shapes
 �
Read_19/ReadVariableOpReadVariableOp0read_19_disablecopyonread_adam_m_conv_1_kernel_1^Read_19/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:*
dtype0w
Identity_38IdentityRead_19/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:m
Identity_39IdentityIdentity_38:output:0"/device:CPU:0*
T0*&
_output_shapes
:�
Read_20/DisableCopyOnReadDisableCopyOnRead0read_20_disablecopyonread_adam_v_conv_1_kernel_1"/device:CPU:0*
_output_shapes
 �
Read_20/ReadVariableOpReadVariableOp0read_20_disablecopyonread_adam_v_conv_1_kernel_1^Read_20/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:*
dtype0w
Identity_40IdentityRead_20/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:m
Identity_41IdentityIdentity_40:output:0"/device:CPU:0*
T0*&
_output_shapes
:�
Read_21/DisableCopyOnReadDisableCopyOnRead.read_21_disablecopyonread_adam_m_conv_1_bias_1"/device:CPU:0*
_output_shapes
 �
Read_21/ReadVariableOpReadVariableOp.read_21_disablecopyonread_adam_m_conv_1_bias_1^Read_21/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_42IdentityRead_21/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_43IdentityIdentity_42:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_22/DisableCopyOnReadDisableCopyOnRead.read_22_disablecopyonread_adam_v_conv_1_bias_1"/device:CPU:0*
_output_shapes
 �
Read_22/ReadVariableOpReadVariableOp.read_22_disablecopyonread_adam_v_conv_1_bias_1^Read_22/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_44IdentityRead_22/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_45IdentityIdentity_44:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_23/DisableCopyOnReadDisableCopyOnRead0read_23_disablecopyonread_adam_m_conv_2_kernel_1"/device:CPU:0*
_output_shapes
 �
Read_23/ReadVariableOpReadVariableOp0read_23_disablecopyonread_adam_m_conv_2_kernel_1^Read_23/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:2*
dtype0w
Identity_46IdentityRead_23/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:2m
Identity_47IdentityIdentity_46:output:0"/device:CPU:0*
T0*&
_output_shapes
:2�
Read_24/DisableCopyOnReadDisableCopyOnRead0read_24_disablecopyonread_adam_v_conv_2_kernel_1"/device:CPU:0*
_output_shapes
 �
Read_24/ReadVariableOpReadVariableOp0read_24_disablecopyonread_adam_v_conv_2_kernel_1^Read_24/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:2*
dtype0w
Identity_48IdentityRead_24/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:2m
Identity_49IdentityIdentity_48:output:0"/device:CPU:0*
T0*&
_output_shapes
:2�
Read_25/DisableCopyOnReadDisableCopyOnRead.read_25_disablecopyonread_adam_m_conv_2_bias_1"/device:CPU:0*
_output_shapes
 �
Read_25/ReadVariableOpReadVariableOp.read_25_disablecopyonread_adam_m_conv_2_bias_1^Read_25/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:2*
dtype0k
Identity_50IdentityRead_25/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:2a
Identity_51IdentityIdentity_50:output:0"/device:CPU:0*
T0*
_output_shapes
:2�
Read_26/DisableCopyOnReadDisableCopyOnRead.read_26_disablecopyonread_adam_v_conv_2_bias_1"/device:CPU:0*
_output_shapes
 �
Read_26/ReadVariableOpReadVariableOp.read_26_disablecopyonread_adam_v_conv_2_bias_1^Read_26/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:2*
dtype0k
Identity_52IdentityRead_26/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:2a
Identity_53IdentityIdentity_52:output:0"/device:CPU:0*
T0*
_output_shapes
:2�
Read_27/DisableCopyOnReadDisableCopyOnRead.read_27_disablecopyonread_adam_m_fc_1_kernel_1"/device:CPU:0*
_output_shapes
 �
Read_27/ReadVariableOpReadVariableOp.read_27_disablecopyonread_adam_m_fc_1_kernel_1^Read_27/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
��*
dtype0q
Identity_54IdentityRead_27/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
��g
Identity_55IdentityIdentity_54:output:0"/device:CPU:0*
T0* 
_output_shapes
:
���
Read_28/DisableCopyOnReadDisableCopyOnRead.read_28_disablecopyonread_adam_v_fc_1_kernel_1"/device:CPU:0*
_output_shapes
 �
Read_28/ReadVariableOpReadVariableOp.read_28_disablecopyonread_adam_v_fc_1_kernel_1^Read_28/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
��*
dtype0q
Identity_56IdentityRead_28/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
��g
Identity_57IdentityIdentity_56:output:0"/device:CPU:0*
T0* 
_output_shapes
:
���
Read_29/DisableCopyOnReadDisableCopyOnRead,read_29_disablecopyonread_adam_m_fc_1_bias_1"/device:CPU:0*
_output_shapes
 �
Read_29/ReadVariableOpReadVariableOp,read_29_disablecopyonread_adam_m_fc_1_bias_1^Read_29/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_58IdentityRead_29/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_59IdentityIdentity_58:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_30/DisableCopyOnReadDisableCopyOnRead,read_30_disablecopyonread_adam_v_fc_1_bias_1"/device:CPU:0*
_output_shapes
 �
Read_30/ReadVariableOpReadVariableOp,read_30_disablecopyonread_adam_v_fc_1_bias_1^Read_30/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_60IdentityRead_30/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_61IdentityIdentity_60:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_31/DisableCopyOnReadDisableCopyOnRead.read_31_disablecopyonread_adam_m_fc_2_kernel_1"/device:CPU:0*
_output_shapes
 �
Read_31/ReadVariableOpReadVariableOp.read_31_disablecopyonread_adam_m_fc_2_kernel_1^Read_31/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�2*
dtype0p
Identity_62IdentityRead_31/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�2f
Identity_63IdentityIdentity_62:output:0"/device:CPU:0*
T0*
_output_shapes
:	�2�
Read_32/DisableCopyOnReadDisableCopyOnRead.read_32_disablecopyonread_adam_v_fc_2_kernel_1"/device:CPU:0*
_output_shapes
 �
Read_32/ReadVariableOpReadVariableOp.read_32_disablecopyonread_adam_v_fc_2_kernel_1^Read_32/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�2*
dtype0p
Identity_64IdentityRead_32/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�2f
Identity_65IdentityIdentity_64:output:0"/device:CPU:0*
T0*
_output_shapes
:	�2�
Read_33/DisableCopyOnReadDisableCopyOnRead,read_33_disablecopyonread_adam_m_fc_2_bias_1"/device:CPU:0*
_output_shapes
 �
Read_33/ReadVariableOpReadVariableOp,read_33_disablecopyonread_adam_m_fc_2_bias_1^Read_33/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:2*
dtype0k
Identity_66IdentityRead_33/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:2a
Identity_67IdentityIdentity_66:output:0"/device:CPU:0*
T0*
_output_shapes
:2�
Read_34/DisableCopyOnReadDisableCopyOnRead,read_34_disablecopyonread_adam_v_fc_2_bias_1"/device:CPU:0*
_output_shapes
 �
Read_34/ReadVariableOpReadVariableOp,read_34_disablecopyonread_adam_v_fc_2_bias_1^Read_34/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:2*
dtype0k
Identity_68IdentityRead_34/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:2a
Identity_69IdentityIdentity_68:output:0"/device:CPU:0*
T0*
_output_shapes
:2�
Read_35/DisableCopyOnReadDisableCopyOnRead,read_35_disablecopyonread_adam_m_fc_1_kernel"/device:CPU:0*
_output_shapes
 �
Read_35/ReadVariableOpReadVariableOp,read_35_disablecopyonread_adam_m_fc_1_kernel^Read_35/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	2�*
dtype0p
Identity_70IdentityRead_35/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	2�f
Identity_71IdentityIdentity_70:output:0"/device:CPU:0*
T0*
_output_shapes
:	2��
Read_36/DisableCopyOnReadDisableCopyOnRead,read_36_disablecopyonread_adam_v_fc_1_kernel"/device:CPU:0*
_output_shapes
 �
Read_36/ReadVariableOpReadVariableOp,read_36_disablecopyonread_adam_v_fc_1_kernel^Read_36/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	2�*
dtype0p
Identity_72IdentityRead_36/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	2�f
Identity_73IdentityIdentity_72:output:0"/device:CPU:0*
T0*
_output_shapes
:	2�
Read_37/DisableCopyOnReadDisableCopyOnRead*read_37_disablecopyonread_adam_m_fc_1_bias"/device:CPU:0*
_output_shapes
 �
Read_37/ReadVariableOpReadVariableOp*read_37_disablecopyonread_adam_m_fc_1_bias^Read_37/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_74IdentityRead_37/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_75IdentityIdentity_74:output:0"/device:CPU:0*
T0*
_output_shapes	
:�
Read_38/DisableCopyOnReadDisableCopyOnRead*read_38_disablecopyonread_adam_v_fc_1_bias"/device:CPU:0*
_output_shapes
 �
Read_38/ReadVariableOpReadVariableOp*read_38_disablecopyonread_adam_v_fc_1_bias^Read_38/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_76IdentityRead_38/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_77IdentityIdentity_76:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_39/DisableCopyOnReadDisableCopyOnRead,read_39_disablecopyonread_adam_m_fc_2_kernel"/device:CPU:0*
_output_shapes
 �
Read_39/ReadVariableOpReadVariableOp,read_39_disablecopyonread_adam_m_fc_2_kernel^Read_39/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
��*
dtype0q
Identity_78IdentityRead_39/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
��g
Identity_79IdentityIdentity_78:output:0"/device:CPU:0*
T0* 
_output_shapes
:
���
Read_40/DisableCopyOnReadDisableCopyOnRead,read_40_disablecopyonread_adam_v_fc_2_kernel"/device:CPU:0*
_output_shapes
 �
Read_40/ReadVariableOpReadVariableOp,read_40_disablecopyonread_adam_v_fc_2_kernel^Read_40/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
��*
dtype0q
Identity_80IdentityRead_40/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
��g
Identity_81IdentityIdentity_80:output:0"/device:CPU:0*
T0* 
_output_shapes
:
��
Read_41/DisableCopyOnReadDisableCopyOnRead*read_41_disablecopyonread_adam_m_fc_2_bias"/device:CPU:0*
_output_shapes
 �
Read_41/ReadVariableOpReadVariableOp*read_41_disablecopyonread_adam_m_fc_2_bias^Read_41/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_82IdentityRead_41/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_83IdentityIdentity_82:output:0"/device:CPU:0*
T0*
_output_shapes	
:�
Read_42/DisableCopyOnReadDisableCopyOnRead*read_42_disablecopyonread_adam_v_fc_2_bias"/device:CPU:0*
_output_shapes
 �
Read_42/ReadVariableOpReadVariableOp*read_42_disablecopyonread_adam_v_fc_2_bias^Read_42/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_84IdentityRead_42/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_85IdentityIdentity_84:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_43/DisableCopyOnReadDisableCopyOnRead.read_43_disablecopyonread_adam_m_conv_1_kernel"/device:CPU:0*
_output_shapes
 �
Read_43/ReadVariableOpReadVariableOp.read_43_disablecopyonread_adam_m_conv_1_kernel^Read_43/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:2*
dtype0w
Identity_86IdentityRead_43/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:2m
Identity_87IdentityIdentity_86:output:0"/device:CPU:0*
T0*&
_output_shapes
:2�
Read_44/DisableCopyOnReadDisableCopyOnRead.read_44_disablecopyonread_adam_v_conv_1_kernel"/device:CPU:0*
_output_shapes
 �
Read_44/ReadVariableOpReadVariableOp.read_44_disablecopyonread_adam_v_conv_1_kernel^Read_44/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:2*
dtype0w
Identity_88IdentityRead_44/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:2m
Identity_89IdentityIdentity_88:output:0"/device:CPU:0*
T0*&
_output_shapes
:2�
Read_45/DisableCopyOnReadDisableCopyOnRead,read_45_disablecopyonread_adam_m_conv_1_bias"/device:CPU:0*
_output_shapes
 �
Read_45/ReadVariableOpReadVariableOp,read_45_disablecopyonread_adam_m_conv_1_bias^Read_45/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_90IdentityRead_45/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_91IdentityIdentity_90:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_46/DisableCopyOnReadDisableCopyOnRead,read_46_disablecopyonread_adam_v_conv_1_bias"/device:CPU:0*
_output_shapes
 �
Read_46/ReadVariableOpReadVariableOp,read_46_disablecopyonread_adam_v_conv_1_bias^Read_46/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_92IdentityRead_46/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_93IdentityIdentity_92:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_47/DisableCopyOnReadDisableCopyOnRead.read_47_disablecopyonread_adam_m_conv_2_kernel"/device:CPU:0*
_output_shapes
 �
Read_47/ReadVariableOpReadVariableOp.read_47_disablecopyonread_adam_m_conv_2_kernel^Read_47/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:*
dtype0w
Identity_94IdentityRead_47/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:m
Identity_95IdentityIdentity_94:output:0"/device:CPU:0*
T0*&
_output_shapes
:�
Read_48/DisableCopyOnReadDisableCopyOnRead.read_48_disablecopyonread_adam_v_conv_2_kernel"/device:CPU:0*
_output_shapes
 �
Read_48/ReadVariableOpReadVariableOp.read_48_disablecopyonread_adam_v_conv_2_kernel^Read_48/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:*
dtype0w
Identity_96IdentityRead_48/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:m
Identity_97IdentityIdentity_96:output:0"/device:CPU:0*
T0*&
_output_shapes
:�
Read_49/DisableCopyOnReadDisableCopyOnRead,read_49_disablecopyonread_adam_m_conv_2_bias"/device:CPU:0*
_output_shapes
 �
Read_49/ReadVariableOpReadVariableOp,read_49_disablecopyonread_adam_m_conv_2_bias^Read_49/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_98IdentityRead_49/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_99IdentityIdentity_98:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_50/DisableCopyOnReadDisableCopyOnRead,read_50_disablecopyonread_adam_v_conv_2_bias"/device:CPU:0*
_output_shapes
 �
Read_50/ReadVariableOpReadVariableOp,read_50_disablecopyonread_adam_v_conv_2_bias^Read_50/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0l
Identity_100IdentityRead_50/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_101IdentityIdentity_100:output:0"/device:CPU:0*
T0*
_output_shapes
:~
Read_51/DisableCopyOnReadDisableCopyOnRead)read_51_disablecopyonread_adam_m_variable"/device:CPU:0*
_output_shapes
 �
Read_51/ReadVariableOpReadVariableOp)read_51_disablecopyonread_adam_m_variable^Read_51/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:2*
dtype0l
Identity_102IdentityRead_51/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:2c
Identity_103IdentityIdentity_102:output:0"/device:CPU:0*
T0*
_output_shapes
:2~
Read_52/DisableCopyOnReadDisableCopyOnRead)read_52_disablecopyonread_adam_v_variable"/device:CPU:0*
_output_shapes
 �
Read_52/ReadVariableOpReadVariableOp)read_52_disablecopyonread_adam_v_variable^Read_52/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:2*
dtype0l
Identity_104IdentityRead_52/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:2c
Identity_105IdentityIdentity_104:output:0"/device:CPU:0*
T0*
_output_shapes
:2v
Read_53/DisableCopyOnReadDisableCopyOnRead!read_53_disablecopyonread_total_4"/device:CPU:0*
_output_shapes
 �
Read_53/ReadVariableOpReadVariableOp!read_53_disablecopyonread_total_4^Read_53/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0h
Identity_106IdentityRead_53/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _
Identity_107IdentityIdentity_106:output:0"/device:CPU:0*
T0*
_output_shapes
: v
Read_54/DisableCopyOnReadDisableCopyOnRead!read_54_disablecopyonread_count_4"/device:CPU:0*
_output_shapes
 �
Read_54/ReadVariableOpReadVariableOp!read_54_disablecopyonread_count_4^Read_54/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0h
Identity_108IdentityRead_54/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _
Identity_109IdentityIdentity_108:output:0"/device:CPU:0*
T0*
_output_shapes
: v
Read_55/DisableCopyOnReadDisableCopyOnRead!read_55_disablecopyonread_total_3"/device:CPU:0*
_output_shapes
 �
Read_55/ReadVariableOpReadVariableOp!read_55_disablecopyonread_total_3^Read_55/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0h
Identity_110IdentityRead_55/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _
Identity_111IdentityIdentity_110:output:0"/device:CPU:0*
T0*
_output_shapes
: v
Read_56/DisableCopyOnReadDisableCopyOnRead!read_56_disablecopyonread_count_3"/device:CPU:0*
_output_shapes
 �
Read_56/ReadVariableOpReadVariableOp!read_56_disablecopyonread_count_3^Read_56/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0h
Identity_112IdentityRead_56/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _
Identity_113IdentityIdentity_112:output:0"/device:CPU:0*
T0*
_output_shapes
: v
Read_57/DisableCopyOnReadDisableCopyOnRead!read_57_disablecopyonread_total_2"/device:CPU:0*
_output_shapes
 �
Read_57/ReadVariableOpReadVariableOp!read_57_disablecopyonread_total_2^Read_57/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0h
Identity_114IdentityRead_57/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _
Identity_115IdentityIdentity_114:output:0"/device:CPU:0*
T0*
_output_shapes
: v
Read_58/DisableCopyOnReadDisableCopyOnRead!read_58_disablecopyonread_count_2"/device:CPU:0*
_output_shapes
 �
Read_58/ReadVariableOpReadVariableOp!read_58_disablecopyonread_count_2^Read_58/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0h
Identity_116IdentityRead_58/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _
Identity_117IdentityIdentity_116:output:0"/device:CPU:0*
T0*
_output_shapes
: v
Read_59/DisableCopyOnReadDisableCopyOnRead!read_59_disablecopyonread_total_1"/device:CPU:0*
_output_shapes
 �
Read_59/ReadVariableOpReadVariableOp!read_59_disablecopyonread_total_1^Read_59/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0h
Identity_118IdentityRead_59/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _
Identity_119IdentityIdentity_118:output:0"/device:CPU:0*
T0*
_output_shapes
: v
Read_60/DisableCopyOnReadDisableCopyOnRead!read_60_disablecopyonread_count_1"/device:CPU:0*
_output_shapes
 �
Read_60/ReadVariableOpReadVariableOp!read_60_disablecopyonread_count_1^Read_60/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0h
Identity_120IdentityRead_60/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _
Identity_121IdentityIdentity_120:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_61/DisableCopyOnReadDisableCopyOnReadread_61_disablecopyonread_total"/device:CPU:0*
_output_shapes
 �
Read_61/ReadVariableOpReadVariableOpread_61_disablecopyonread_total^Read_61/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0h
Identity_122IdentityRead_61/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _
Identity_123IdentityIdentity_122:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_62/DisableCopyOnReadDisableCopyOnReadread_62_disablecopyonread_count"/device:CPU:0*
_output_shapes
 �
Read_62/ReadVariableOpReadVariableOpread_62_disablecopyonread_count^Read_62/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0h
Identity_124IdentityRead_62/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _
Identity_125IdentityIdentity_124:output:0"/device:CPU:0*
T0*
_output_shapes
: �
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:@*
dtype0*�
value�B�@B+prior_log_scales/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/25/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/26/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/27/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/28/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/29/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/30/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/31/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/32/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/33/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/34/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/3/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/3/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/4/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/4/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:@*
dtype0*�
value�B�@B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0Identity_9:output:0Identity_11:output:0Identity_13:output:0Identity_15:output:0Identity_17:output:0Identity_19:output:0Identity_21:output:0Identity_23:output:0Identity_25:output:0Identity_27:output:0Identity_29:output:0Identity_31:output:0Identity_33:output:0Identity_35:output:0Identity_37:output:0Identity_39:output:0Identity_41:output:0Identity_43:output:0Identity_45:output:0Identity_47:output:0Identity_49:output:0Identity_51:output:0Identity_53:output:0Identity_55:output:0Identity_57:output:0Identity_59:output:0Identity_61:output:0Identity_63:output:0Identity_65:output:0Identity_67:output:0Identity_69:output:0Identity_71:output:0Identity_73:output:0Identity_75:output:0Identity_77:output:0Identity_79:output:0Identity_81:output:0Identity_83:output:0Identity_85:output:0Identity_87:output:0Identity_89:output:0Identity_91:output:0Identity_93:output:0Identity_95:output:0Identity_97:output:0Identity_99:output:0Identity_101:output:0Identity_103:output:0Identity_105:output:0Identity_107:output:0Identity_109:output:0Identity_111:output:0Identity_113:output:0Identity_115:output:0Identity_117:output:0Identity_119:output:0Identity_121:output:0Identity_123:output:0Identity_125:output:0savev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *N
dtypesD
B2@	�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 j
Identity_126Identityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: W
Identity_127IdentityIdentity_126:output:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOp^MergeV2Checkpoints^Read/DisableCopyOnRead^Read/ReadVariableOp^Read_1/DisableCopyOnRead^Read_1/ReadVariableOp^Read_10/DisableCopyOnRead^Read_10/ReadVariableOp^Read_11/DisableCopyOnRead^Read_11/ReadVariableOp^Read_12/DisableCopyOnRead^Read_12/ReadVariableOp^Read_13/DisableCopyOnRead^Read_13/ReadVariableOp^Read_14/DisableCopyOnRead^Read_14/ReadVariableOp^Read_15/DisableCopyOnRead^Read_15/ReadVariableOp^Read_16/DisableCopyOnRead^Read_16/ReadVariableOp^Read_17/DisableCopyOnRead^Read_17/ReadVariableOp^Read_18/DisableCopyOnRead^Read_18/ReadVariableOp^Read_19/DisableCopyOnRead^Read_19/ReadVariableOp^Read_2/DisableCopyOnRead^Read_2/ReadVariableOp^Read_20/DisableCopyOnRead^Read_20/ReadVariableOp^Read_21/DisableCopyOnRead^Read_21/ReadVariableOp^Read_22/DisableCopyOnRead^Read_22/ReadVariableOp^Read_23/DisableCopyOnRead^Read_23/ReadVariableOp^Read_24/DisableCopyOnRead^Read_24/ReadVariableOp^Read_25/DisableCopyOnRead^Read_25/ReadVariableOp^Read_26/DisableCopyOnRead^Read_26/ReadVariableOp^Read_27/DisableCopyOnRead^Read_27/ReadVariableOp^Read_28/DisableCopyOnRead^Read_28/ReadVariableOp^Read_29/DisableCopyOnRead^Read_29/ReadVariableOp^Read_3/DisableCopyOnRead^Read_3/ReadVariableOp^Read_30/DisableCopyOnRead^Read_30/ReadVariableOp^Read_31/DisableCopyOnRead^Read_31/ReadVariableOp^Read_32/DisableCopyOnRead^Read_32/ReadVariableOp^Read_33/DisableCopyOnRead^Read_33/ReadVariableOp^Read_34/DisableCopyOnRead^Read_34/ReadVariableOp^Read_35/DisableCopyOnRead^Read_35/ReadVariableOp^Read_36/DisableCopyOnRead^Read_36/ReadVariableOp^Read_37/DisableCopyOnRead^Read_37/ReadVariableOp^Read_38/DisableCopyOnRead^Read_38/ReadVariableOp^Read_39/DisableCopyOnRead^Read_39/ReadVariableOp^Read_4/DisableCopyOnRead^Read_4/ReadVariableOp^Read_40/DisableCopyOnRead^Read_40/ReadVariableOp^Read_41/DisableCopyOnRead^Read_41/ReadVariableOp^Read_42/DisableCopyOnRead^Read_42/ReadVariableOp^Read_43/DisableCopyOnRead^Read_43/ReadVariableOp^Read_44/DisableCopyOnRead^Read_44/ReadVariableOp^Read_45/DisableCopyOnRead^Read_45/ReadVariableOp^Read_46/DisableCopyOnRead^Read_46/ReadVariableOp^Read_47/DisableCopyOnRead^Read_47/ReadVariableOp^Read_48/DisableCopyOnRead^Read_48/ReadVariableOp^Read_49/DisableCopyOnRead^Read_49/ReadVariableOp^Read_5/DisableCopyOnRead^Read_5/ReadVariableOp^Read_50/DisableCopyOnRead^Read_50/ReadVariableOp^Read_51/DisableCopyOnRead^Read_51/ReadVariableOp^Read_52/DisableCopyOnRead^Read_52/ReadVariableOp^Read_53/DisableCopyOnRead^Read_53/ReadVariableOp^Read_54/DisableCopyOnRead^Read_54/ReadVariableOp^Read_55/DisableCopyOnRead^Read_55/ReadVariableOp^Read_56/DisableCopyOnRead^Read_56/ReadVariableOp^Read_57/DisableCopyOnRead^Read_57/ReadVariableOp^Read_58/DisableCopyOnRead^Read_58/ReadVariableOp^Read_59/DisableCopyOnRead^Read_59/ReadVariableOp^Read_6/DisableCopyOnRead^Read_6/ReadVariableOp^Read_60/DisableCopyOnRead^Read_60/ReadVariableOp^Read_61/DisableCopyOnRead^Read_61/ReadVariableOp^Read_62/DisableCopyOnRead^Read_62/ReadVariableOp^Read_7/DisableCopyOnRead^Read_7/ReadVariableOp^Read_8/DisableCopyOnRead^Read_8/ReadVariableOp^Read_9/DisableCopyOnRead^Read_9/ReadVariableOp*
_output_shapes
 "%
identity_127Identity_127:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints20
Read/DisableCopyOnReadRead/DisableCopyOnRead2*
Read/ReadVariableOpRead/ReadVariableOp24
Read_1/DisableCopyOnReadRead_1/DisableCopyOnRead2.
Read_1/ReadVariableOpRead_1/ReadVariableOp26
Read_10/DisableCopyOnReadRead_10/DisableCopyOnRead20
Read_10/ReadVariableOpRead_10/ReadVariableOp26
Read_11/DisableCopyOnReadRead_11/DisableCopyOnRead20
Read_11/ReadVariableOpRead_11/ReadVariableOp26
Read_12/DisableCopyOnReadRead_12/DisableCopyOnRead20
Read_12/ReadVariableOpRead_12/ReadVariableOp26
Read_13/DisableCopyOnReadRead_13/DisableCopyOnRead20
Read_13/ReadVariableOpRead_13/ReadVariableOp26
Read_14/DisableCopyOnReadRead_14/DisableCopyOnRead20
Read_14/ReadVariableOpRead_14/ReadVariableOp26
Read_15/DisableCopyOnReadRead_15/DisableCopyOnRead20
Read_15/ReadVariableOpRead_15/ReadVariableOp26
Read_16/DisableCopyOnReadRead_16/DisableCopyOnRead20
Read_16/ReadVariableOpRead_16/ReadVariableOp26
Read_17/DisableCopyOnReadRead_17/DisableCopyOnRead20
Read_17/ReadVariableOpRead_17/ReadVariableOp26
Read_18/DisableCopyOnReadRead_18/DisableCopyOnRead20
Read_18/ReadVariableOpRead_18/ReadVariableOp26
Read_19/DisableCopyOnReadRead_19/DisableCopyOnRead20
Read_19/ReadVariableOpRead_19/ReadVariableOp24
Read_2/DisableCopyOnReadRead_2/DisableCopyOnRead2.
Read_2/ReadVariableOpRead_2/ReadVariableOp26
Read_20/DisableCopyOnReadRead_20/DisableCopyOnRead20
Read_20/ReadVariableOpRead_20/ReadVariableOp26
Read_21/DisableCopyOnReadRead_21/DisableCopyOnRead20
Read_21/ReadVariableOpRead_21/ReadVariableOp26
Read_22/DisableCopyOnReadRead_22/DisableCopyOnRead20
Read_22/ReadVariableOpRead_22/ReadVariableOp26
Read_23/DisableCopyOnReadRead_23/DisableCopyOnRead20
Read_23/ReadVariableOpRead_23/ReadVariableOp26
Read_24/DisableCopyOnReadRead_24/DisableCopyOnRead20
Read_24/ReadVariableOpRead_24/ReadVariableOp26
Read_25/DisableCopyOnReadRead_25/DisableCopyOnRead20
Read_25/ReadVariableOpRead_25/ReadVariableOp26
Read_26/DisableCopyOnReadRead_26/DisableCopyOnRead20
Read_26/ReadVariableOpRead_26/ReadVariableOp26
Read_27/DisableCopyOnReadRead_27/DisableCopyOnRead20
Read_27/ReadVariableOpRead_27/ReadVariableOp26
Read_28/DisableCopyOnReadRead_28/DisableCopyOnRead20
Read_28/ReadVariableOpRead_28/ReadVariableOp26
Read_29/DisableCopyOnReadRead_29/DisableCopyOnRead20
Read_29/ReadVariableOpRead_29/ReadVariableOp24
Read_3/DisableCopyOnReadRead_3/DisableCopyOnRead2.
Read_3/ReadVariableOpRead_3/ReadVariableOp26
Read_30/DisableCopyOnReadRead_30/DisableCopyOnRead20
Read_30/ReadVariableOpRead_30/ReadVariableOp26
Read_31/DisableCopyOnReadRead_31/DisableCopyOnRead20
Read_31/ReadVariableOpRead_31/ReadVariableOp26
Read_32/DisableCopyOnReadRead_32/DisableCopyOnRead20
Read_32/ReadVariableOpRead_32/ReadVariableOp26
Read_33/DisableCopyOnReadRead_33/DisableCopyOnRead20
Read_33/ReadVariableOpRead_33/ReadVariableOp26
Read_34/DisableCopyOnReadRead_34/DisableCopyOnRead20
Read_34/ReadVariableOpRead_34/ReadVariableOp26
Read_35/DisableCopyOnReadRead_35/DisableCopyOnRead20
Read_35/ReadVariableOpRead_35/ReadVariableOp26
Read_36/DisableCopyOnReadRead_36/DisableCopyOnRead20
Read_36/ReadVariableOpRead_36/ReadVariableOp26
Read_37/DisableCopyOnReadRead_37/DisableCopyOnRead20
Read_37/ReadVariableOpRead_37/ReadVariableOp26
Read_38/DisableCopyOnReadRead_38/DisableCopyOnRead20
Read_38/ReadVariableOpRead_38/ReadVariableOp26
Read_39/DisableCopyOnReadRead_39/DisableCopyOnRead20
Read_39/ReadVariableOpRead_39/ReadVariableOp24
Read_4/DisableCopyOnReadRead_4/DisableCopyOnRead2.
Read_4/ReadVariableOpRead_4/ReadVariableOp26
Read_40/DisableCopyOnReadRead_40/DisableCopyOnRead20
Read_40/ReadVariableOpRead_40/ReadVariableOp26
Read_41/DisableCopyOnReadRead_41/DisableCopyOnRead20
Read_41/ReadVariableOpRead_41/ReadVariableOp26
Read_42/DisableCopyOnReadRead_42/DisableCopyOnRead20
Read_42/ReadVariableOpRead_42/ReadVariableOp26
Read_43/DisableCopyOnReadRead_43/DisableCopyOnRead20
Read_43/ReadVariableOpRead_43/ReadVariableOp26
Read_44/DisableCopyOnReadRead_44/DisableCopyOnRead20
Read_44/ReadVariableOpRead_44/ReadVariableOp26
Read_45/DisableCopyOnReadRead_45/DisableCopyOnRead20
Read_45/ReadVariableOpRead_45/ReadVariableOp26
Read_46/DisableCopyOnReadRead_46/DisableCopyOnRead20
Read_46/ReadVariableOpRead_46/ReadVariableOp26
Read_47/DisableCopyOnReadRead_47/DisableCopyOnRead20
Read_47/ReadVariableOpRead_47/ReadVariableOp26
Read_48/DisableCopyOnReadRead_48/DisableCopyOnRead20
Read_48/ReadVariableOpRead_48/ReadVariableOp26
Read_49/DisableCopyOnReadRead_49/DisableCopyOnRead20
Read_49/ReadVariableOpRead_49/ReadVariableOp24
Read_5/DisableCopyOnReadRead_5/DisableCopyOnRead2.
Read_5/ReadVariableOpRead_5/ReadVariableOp26
Read_50/DisableCopyOnReadRead_50/DisableCopyOnRead20
Read_50/ReadVariableOpRead_50/ReadVariableOp26
Read_51/DisableCopyOnReadRead_51/DisableCopyOnRead20
Read_51/ReadVariableOpRead_51/ReadVariableOp26
Read_52/DisableCopyOnReadRead_52/DisableCopyOnRead20
Read_52/ReadVariableOpRead_52/ReadVariableOp26
Read_53/DisableCopyOnReadRead_53/DisableCopyOnRead20
Read_53/ReadVariableOpRead_53/ReadVariableOp26
Read_54/DisableCopyOnReadRead_54/DisableCopyOnRead20
Read_54/ReadVariableOpRead_54/ReadVariableOp26
Read_55/DisableCopyOnReadRead_55/DisableCopyOnRead20
Read_55/ReadVariableOpRead_55/ReadVariableOp26
Read_56/DisableCopyOnReadRead_56/DisableCopyOnRead20
Read_56/ReadVariableOpRead_56/ReadVariableOp26
Read_57/DisableCopyOnReadRead_57/DisableCopyOnRead20
Read_57/ReadVariableOpRead_57/ReadVariableOp26
Read_58/DisableCopyOnReadRead_58/DisableCopyOnRead20
Read_58/ReadVariableOpRead_58/ReadVariableOp26
Read_59/DisableCopyOnReadRead_59/DisableCopyOnRead20
Read_59/ReadVariableOpRead_59/ReadVariableOp24
Read_6/DisableCopyOnReadRead_6/DisableCopyOnRead2.
Read_6/ReadVariableOpRead_6/ReadVariableOp26
Read_60/DisableCopyOnReadRead_60/DisableCopyOnRead20
Read_60/ReadVariableOpRead_60/ReadVariableOp26
Read_61/DisableCopyOnReadRead_61/DisableCopyOnRead20
Read_61/ReadVariableOpRead_61/ReadVariableOp26
Read_62/DisableCopyOnReadRead_62/DisableCopyOnRead20
Read_62/ReadVariableOpRead_62/ReadVariableOp24
Read_7/DisableCopyOnReadRead_7/DisableCopyOnRead2.
Read_7/ReadVariableOpRead_7/ReadVariableOp24
Read_8/DisableCopyOnReadRead_8/DisableCopyOnRead2.
Read_8/ReadVariableOpRead_8/ReadVariableOp24
Read_9/DisableCopyOnReadRead_9/DisableCopyOnRead2.
Read_9/ReadVariableOpRead_9/ReadVariableOp:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:($
"
_user_specified_name
Variable:/+
)
_user_specified_nameconv_1/kernel_1:-)
'
_user_specified_nameconv_1/bias_1:/+
)
_user_specified_nameconv_2/kernel_1:-)
'
_user_specified_nameconv_2/bias_1:-)
'
_user_specified_namefc_1/kernel_1:+'
%
_user_specified_namefc_1/bias_1:-)
'
_user_specified_namefc_2/kernel_1:+	'
%
_user_specified_namefc_2/bias_1:+
'
%
_user_specified_namefc_1/kernel:)%
#
_user_specified_name	fc_1/bias:+'
%
_user_specified_namefc_2/kernel:)%
#
_user_specified_name	fc_2/bias:-)
'
_user_specified_nameconv_1/kernel:+'
%
_user_specified_nameconv_1/bias:-)
'
_user_specified_nameconv_2/kernel:+'
%
_user_specified_nameconv_2/bias:)%
#
_user_specified_name	iteration:-)
'
_user_specified_namelearning_rate:62
0
_user_specified_nameAdam/m/conv_1/kernel_1:62
0
_user_specified_nameAdam/v/conv_1/kernel_1:40
.
_user_specified_nameAdam/m/conv_1/bias_1:40
.
_user_specified_nameAdam/v/conv_1/bias_1:62
0
_user_specified_nameAdam/m/conv_2/kernel_1:62
0
_user_specified_nameAdam/v/conv_2/kernel_1:40
.
_user_specified_nameAdam/m/conv_2/bias_1:40
.
_user_specified_nameAdam/v/conv_2/bias_1:40
.
_user_specified_nameAdam/m/fc_1/kernel_1:40
.
_user_specified_nameAdam/v/fc_1/kernel_1:2.
,
_user_specified_nameAdam/m/fc_1/bias_1:2.
,
_user_specified_nameAdam/v/fc_1/bias_1:4 0
.
_user_specified_nameAdam/m/fc_2/kernel_1:4!0
.
_user_specified_nameAdam/v/fc_2/kernel_1:2".
,
_user_specified_nameAdam/m/fc_2/bias_1:2#.
,
_user_specified_nameAdam/v/fc_2/bias_1:2$.
,
_user_specified_nameAdam/m/fc_1/kernel:2%.
,
_user_specified_nameAdam/v/fc_1/kernel:0&,
*
_user_specified_nameAdam/m/fc_1/bias:0',
*
_user_specified_nameAdam/v/fc_1/bias:2(.
,
_user_specified_nameAdam/m/fc_2/kernel:2).
,
_user_specified_nameAdam/v/fc_2/kernel:0*,
*
_user_specified_nameAdam/m/fc_2/bias:0+,
*
_user_specified_nameAdam/v/fc_2/bias:4,0
.
_user_specified_nameAdam/m/conv_1/kernel:4-0
.
_user_specified_nameAdam/v/conv_1/kernel:2..
,
_user_specified_nameAdam/m/conv_1/bias:2/.
,
_user_specified_nameAdam/v/conv_1/bias:400
.
_user_specified_nameAdam/m/conv_2/kernel:410
.
_user_specified_nameAdam/v/conv_2/kernel:22.
,
_user_specified_nameAdam/m/conv_2/bias:23.
,
_user_specified_nameAdam/v/conv_2/bias:/4+
)
_user_specified_nameAdam/m/Variable:/5+
)
_user_specified_nameAdam/v/Variable:'6#
!
_user_specified_name	total_4:'7#
!
_user_specified_name	count_4:'8#
!
_user_specified_name	total_3:'9#
!
_user_specified_name	count_3:':#
!
_user_specified_name	total_2:';#
!
_user_specified_name	count_2:'<#
!
_user_specified_name	total_1:'=#
!
_user_specified_name	count_1:%>!

_user_specified_nametotal:%?!

_user_specified_namecount:=@9

_output_shapes
: 

_user_specified_nameConst
�
a
E__inference_flatten_2_layer_call_and_return_conditional_losses_132778

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"�����	  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:����������Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������2:W S
/
_output_shapes
:���������2
 
_user_specified_nameinputs
�
�
B__inference_conv_2_layer_call_and_return_conditional_losses_131977

inputs8
conv2d_readvariableop_resource:2-
biasadd_readvariableop_resource:2
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:2*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������2*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������2Y
	LeakyRelu	LeakyReluBiasAdd:output:0*/
_output_shapes
:���������2n
IdentityIdentityLeakyRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������2S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
B__inference_conv_2_layer_call_and_return_conditional_losses_132767

inputs8
conv2d_readvariableop_resource:2-
biasadd_readvariableop_resource:2
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:2*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������2*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������2Y
	LeakyRelu	LeakyReluBiasAdd:output:0*/
_output_shapes
:���������2n
IdentityIdentityLeakyRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������2S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
o
#__inference_internal_grad_fn_133104
result_grads_0
result_grads_1
result_grads_2
identityV
IdentityIdentityresult_grads_0*
T0*'
_output_shapes
:���������2"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:���������2:���������2:2:W S
'
_output_shapes
:���������2
(
_user_specified_nameresult_grads_0:WS
'
_output_shapes
:���������2
(
_user_specified_nameresult_grads_1:JF

_output_shapes
:2
(
_user_specified_nameresult_grads_2
�

�
@__inference_fc_2_layer_call_and_return_conditional_losses_132245

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������R
	LeakyRelu	LeakyReluBiasAdd:output:0*(
_output_shapes
:����������g
IdentityIdentityLeakyRelu:activations:0^NoOp*
T0*(
_output_shapes
:����������S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�!
�
B__inference_conv_1_layer_call_and_return_conditional_losses_132919

inputsB
(conv2d_transpose_readvariableop_resource:2-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�conv2d_transpose/ReadVariableOpI
ShapeShapeinputs*
T0*
_output_shapes
::��]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: I
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: I
stack/3Const*
_output_shapes
: *
dtype0*
value	B :y
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
:2*
dtype0�
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+���������������������������*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+���������������������������k
	LeakyRelu	LeakyReluBiasAdd:output:0*A
_output_shapes/
-:+����������������������������
IdentityIdentityLeakyRelu:activations:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������]
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+���������������������������2: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+���������������������������2
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�!
�
B__inference_conv_2_layer_call_and_return_conditional_losses_132962

inputsB
(conv2d_transpose_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�conv2d_transpose/ReadVariableOpI
ShapeShapeinputs*
T0*
_output_shapes
::��]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: I
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: I
stack/3Const*
_output_shapes
: *
dtype0*
value	B :y
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
:*
dtype0�
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+���������������������������*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+���������������������������k
	LeakyRelu	LeakyReluBiasAdd:output:0*A
_output_shapes/
-:+����������������������������
IdentityIdentityLeakyRelu:activations:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������]
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+���������������������������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
a
E__inference_reshape_2_layer_call_and_return_conditional_losses_132264

inputs
identityI
ShapeShapeinputs*
T0*
_output_shapes
::��]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :Q
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :Q
Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2�
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:l
ReshapeReshapeinputsReshape/shape:output:0*
T0*/
_output_shapes
:���������2`
IdentityIdentityReshape:output:0*
T0*/
_output_shapes
:���������2"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
%__inference_fc_1_layer_call_fn_132787

inputs
unknown:
��
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *I
fDRB
@__inference_fc_1_layer_call_and_return_conditional_losses_132000p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs:&"
 
_user_specified_name132781:&"
 
_user_specified_name132783
�
F
*__inference_flatten_2_layer_call_fn_132772

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_flatten_2_layer_call_and_return_conditional_losses_131988a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������2:W S
/
_output_shapes
:���������2
 
_user_specified_nameinputs
�	
�
@__inference_fc_2_layer_call_and_return_conditional_losses_132817

inputs1
matmul_readvariableop_resource:	�2-
biasadd_readvariableop_resource:2
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�2*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������2S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
4__inference_synthesis_transform_layer_call_fn_132344

fc_1_input
unknown:	2�
	unknown_0:	�
	unknown_1:
��
	unknown_2:	�#
	unknown_3:2
	unknown_4:#
	unknown_5:
	unknown_6:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCall
fc_1_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *X
fSRQ
O__inference_synthesis_transform_layer_call_and_return_conditional_losses_132302w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������2: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
'
_output_shapes
:���������2
$
_user_specified_name
fc_1_input:&"
 
_user_specified_name132326:&"
 
_user_specified_name132328:&"
 
_user_specified_name132330:&"
 
_user_specified_name132332:&"
 
_user_specified_name132334:&"
 
_user_specified_name132336:&"
 
_user_specified_name132338:&"
 
_user_specified_name132340
�
a
E__inference_flatten_2_layer_call_and_return_conditional_losses_131988

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"�����	  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:����������Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������2:W S
/
_output_shapes
:���������2
 
_user_specified_nameinputs
�
�
<__inference_mnist_compression_trainer_2_layer_call_fn_132639
input_1!
unknown:
	unknown_0:#
	unknown_1:2
	unknown_2:2
	unknown_3:
��
	unknown_4:	�
	unknown_5:	�2
	unknown_6:2
	unknown_7:2
	unknown_8:	2�
	unknown_9:	�

unknown_10:
��

unknown_11:	�$

unknown_12:2

unknown_13:$

unknown_14:

unknown_15:
identity

identity_1��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: : *3
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *`
f[RY
W__inference_mnist_compression_trainer_2_layer_call_and_return_conditional_losses_132471^
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*
_output_shapes
: `

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*
_output_shapes
: <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:���������: : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
/
_output_shapes
:���������
!
_user_specified_name	input_1:&"
 
_user_specified_name132601:&"
 
_user_specified_name132603:&"
 
_user_specified_name132605:&"
 
_user_specified_name132607:&"
 
_user_specified_name132609:&"
 
_user_specified_name132611:&"
 
_user_specified_name132613:&"
 
_user_specified_name132615:&	"
 
_user_specified_name132617:&
"
 
_user_specified_name132619:&"
 
_user_specified_name132621:&"
 
_user_specified_name132623:&"
 
_user_specified_name132625:&"
 
_user_specified_name132627:&"
 
_user_specified_name132629:&"
 
_user_specified_name132631:&"
 
_user_specified_name132633
�
�
'__inference_conv_1_layer_call_fn_132885

inputs!
unknown:2
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_conv_1_layer_call_and_return_conditional_losses_132164�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+���������������������������2: : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+���������������������������2
 
_user_specified_nameinputs:&"
 
_user_specified_name132879:&"
 
_user_specified_name132881
�
a
E__inference_reshape_2_layer_call_and_return_conditional_losses_132876

inputs
identityI
ShapeShapeinputs*
T0*
_output_shapes
::��]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :Q
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :Q
Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2�
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:l
ReshapeReshapeinputsReshape/shape:output:0*
T0*/
_output_shapes
:���������2`
IdentityIdentityReshape:output:0*
T0*/
_output_shapes
:���������2"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�

�
@__inference_fc_1_layer_call_and_return_conditional_losses_132837

inputs1
matmul_readvariableop_resource:	2�.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	2�*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������R
	LeakyRelu	LeakyReluBiasAdd:output:0*(
_output_shapes
:����������g
IdentityIdentityLeakyRelu:activations:0^NoOp*
T0*(
_output_shapes
:����������S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������2: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������2
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
%__inference_fc_1_layer_call_fn_132826

inputs
unknown:	2�
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *I
fDRB
@__inference_fc_1_layer_call_and_return_conditional_losses_132229p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������2: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������2
 
_user_specified_nameinputs:&"
 
_user_specified_name132820:&"
 
_user_specified_name132822
�
�
N__inference_analysis_transform_layer_call_and_return_conditional_losses_132047
conv_1_input'
conv_1_132025:
conv_1_132027:'
conv_2_132030:2
conv_2_132032:2
fc_1_132036:
��
fc_1_132038:	�
fc_2_132041:	�2
fc_2_132043:2
identity��conv_1/StatefulPartitionedCall�conv_2/StatefulPartitionedCall�fc_1/StatefulPartitionedCall�fc_2/StatefulPartitionedCall�
conv_1/StatefulPartitionedCallStatefulPartitionedCallconv_1_inputconv_1_132025conv_1_132027*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_conv_1_layer_call_and_return_conditional_losses_131961�
conv_2/StatefulPartitionedCallStatefulPartitionedCall'conv_1/StatefulPartitionedCall:output:0conv_2_132030conv_2_132032*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_conv_2_layer_call_and_return_conditional_losses_131977�
flatten_2/PartitionedCallPartitionedCall'conv_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_flatten_2_layer_call_and_return_conditional_losses_131988�
fc_1/StatefulPartitionedCallStatefulPartitionedCall"flatten_2/PartitionedCall:output:0fc_1_132036fc_1_132038*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *I
fDRB
@__inference_fc_1_layer_call_and_return_conditional_losses_132000�
fc_2/StatefulPartitionedCallStatefulPartitionedCall%fc_1/StatefulPartitionedCall:output:0fc_2_132041fc_2_132043*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *I
fDRB
@__inference_fc_2_layer_call_and_return_conditional_losses_132015t
IdentityIdentity%fc_2/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������2�
NoOpNoOp^conv_1/StatefulPartitionedCall^conv_2/StatefulPartitionedCall^fc_1/StatefulPartitionedCall^fc_2/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:���������: : : : : : : : 2@
conv_1/StatefulPartitionedCallconv_1/StatefulPartitionedCall2@
conv_2/StatefulPartitionedCallconv_2/StatefulPartitionedCall2<
fc_1/StatefulPartitionedCallfc_1/StatefulPartitionedCall2<
fc_2/StatefulPartitionedCallfc_2/StatefulPartitionedCall:] Y
/
_output_shapes
:���������
&
_user_specified_nameconv_1_input:&"
 
_user_specified_name132025:&"
 
_user_specified_name132027:&"
 
_user_specified_name132030:&"
 
_user_specified_name132032:&"
 
_user_specified_name132036:&"
 
_user_specified_name132038:&"
 
_user_specified_name132041:&"
 
_user_specified_name132043
�
�
'__inference_conv_2_layer_call_fn_132756

inputs!
unknown:2
	unknown_0:2
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_conv_2_layer_call_and_return_conditional_losses_131977w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������2<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs:&"
 
_user_specified_name132750:&"
 
_user_specified_name132752
��
�
W__inference_mnist_compression_trainer_2_layer_call_and_return_conditional_losses_132471
input_13
analysis_transform_132375:'
analysis_transform_132377:3
analysis_transform_132379:2'
analysis_transform_132381:2-
analysis_transform_132383:
��(
analysis_transform_132385:	�,
analysis_transform_132387:	�2'
analysis_transform_132389:2)
exp_readvariableop_resource:2-
synthesis_transform_132446:	2�)
synthesis_transform_132448:	�.
synthesis_transform_132450:
��)
synthesis_transform_132452:	�4
synthesis_transform_132454:2(
synthesis_transform_132456:4
synthesis_transform_132458:(
synthesis_transform_132460:
identity

identity_1��Exp/ReadVariableOp�*analysis_transform/StatefulPartitionedCall�+synthesis_transform/StatefulPartitionedCall^
CastCastinput_1*

DstT0*

SrcT0*/
_output_shapes
:���������N
	truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  Cj
truedivRealDivCast:y:0truediv/y:output:0*
T0*/
_output_shapes
:���������f
Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"����         q
ReshapeReshapetruediv:z:0Reshape/shape:output:0*
T0*/
_output_shapes
:����������
*analysis_transform/StatefulPartitionedCallStatefulPartitionedCallReshape:output:0analysis_transform_132375analysis_transform_132377analysis_transform_132379analysis_transform_132381analysis_transform_132383analysis_transform_132385analysis_transform_132387analysis_transform_132389*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������2**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *W
fRRP
N__inference_analysis_transform_layer_call_and_return_conditional_losses_132022j
Exp/ReadVariableOpReadVariableOpexp_readvariableop_resource*
_output_shapes
:2*
dtype0K
ExpExpExp/ReadVariableOp:value:0*
T0*
_output_shapes
:2Q
Logistic/locConst*
_output_shapes
: *
dtype0*
valueB
 *    �
&continuous_batched_entropy_model/ShapeShape3analysis_transform/StatefulPartitionedCall:output:0*
T0*
_output_shapes
::��x
3continuous_batched_entropy_model/random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *   �x
3continuous_batched_entropy_model/random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
=continuous_batched_entropy_model/random_uniform/RandomUniformRandomUniform/continuous_batched_entropy_model/Shape:output:0*
T0*'
_output_shapes
:���������2*
dtype0�
3continuous_batched_entropy_model/random_uniform/subSub<continuous_batched_entropy_model/random_uniform/max:output:0<continuous_batched_entropy_model/random_uniform/min:output:0*
T0*
_output_shapes
: �
3continuous_batched_entropy_model/random_uniform/mulMulFcontinuous_batched_entropy_model/random_uniform/RandomUniform:output:07continuous_batched_entropy_model/random_uniform/sub:z:0*
T0*'
_output_shapes
:���������2�
/continuous_batched_entropy_model/random_uniformAddV27continuous_batched_entropy_model/random_uniform/mul:z:0<continuous_batched_entropy_model/random_uniform/min:output:0*
T0*'
_output_shapes
:���������2�
$continuous_batched_entropy_model/addAddV23analysis_transform/StatefulPartitionedCall:output:03continuous_batched_entropy_model/random_uniform:z:0*
T0*'
_output_shapes
:���������2�
Vcontinuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_top_level/log_prob/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
Tcontinuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_top_level/log_prob/addAddV2(continuous_batched_entropy_model/add:z:0_continuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_top_level/log_prob/add/y:output:0*
T0*'
_output_shapes
:���������2�
continuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_top_level/log_prob/Logistic/log_survival_function/standardize/subSubXcontinuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_top_level/log_prob/add:z:0Logistic/loc:output:0*
T0*'
_output_shapes
:���������2�
�continuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_top_level/log_prob/Logistic/log_survival_function/standardize/truedivRealDiv�continuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_top_level/log_prob/Logistic/log_survival_function/standardize/sub:z:0Exp:y:0*
T0*'
_output_shapes
:���������2�
xcontinuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_top_level/log_prob/Logistic/log_survival_function/SoftplusSoftplus�continuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_top_level/log_prob/Logistic/log_survival_function/standardize/truediv:z:0*
T0*'
_output_shapes
:���������2�
scontinuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_top_level/log_prob/Logistic/log_survival_function/NegNeg�continuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_top_level/log_prob/Logistic/log_survival_function/Softplus:activations:0*
T0*'
_output_shapes
:���������2�
Vcontinuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_top_level/log_prob/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
Tcontinuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_top_level/log_prob/subSub(continuous_batched_entropy_model/add:z:0_continuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_top_level/log_prob/sub/y:output:0*
T0*'
_output_shapes
:���������2�
�continuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_top_level/log_prob/Logistic/log_survival_function_1/standardize/subSubXcontinuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_top_level/log_prob/sub:z:0Logistic/loc:output:0*
T0*'
_output_shapes
:���������2�
�continuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_top_level/log_prob/Logistic/log_survival_function_1/standardize/truedivRealDiv�continuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_top_level/log_prob/Logistic/log_survival_function_1/standardize/sub:z:0Exp:y:0*
T0*'
_output_shapes
:���������2�
zcontinuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_top_level/log_prob/Logistic/log_survival_function_1/SoftplusSoftplus�continuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_top_level/log_prob/Logistic/log_survival_function_1/standardize/truediv:z:0*
T0*'
_output_shapes
:���������2�
ucontinuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_top_level/log_prob/Logistic/log_survival_function_1/NegNeg�continuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_top_level/log_prob/Logistic/log_survival_function_1/Softplus:activations:0*
T0*'
_output_shapes
:���������2�
Xcontinuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_top_level/log_prob/add_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
Vcontinuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_top_level/log_prob/add_1AddV2(continuous_batched_entropy_model/add:z:0acontinuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_top_level/log_prob/add_1/y:output:0*
T0*'
_output_shapes
:���������2�
qcontinuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_top_level/log_prob/Logistic/log_cdf/standardize/subSubZcontinuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_top_level/log_prob/add_1:z:0Logistic/loc:output:0*
T0*'
_output_shapes
:���������2�
ucontinuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_top_level/log_prob/Logistic/log_cdf/standardize/truedivRealDivucontinuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_top_level/log_prob/Logistic/log_cdf/standardize/sub:z:0Exp:y:0*
T0*'
_output_shapes
:���������2�
econtinuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_top_level/log_prob/Logistic/log_cdf/NegNegycontinuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_top_level/log_prob/Logistic/log_cdf/standardize/truediv:z:0*
T0*'
_output_shapes
:���������2�
jcontinuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_top_level/log_prob/Logistic/log_cdf/SoftplusSoftplusicontinuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_top_level/log_prob/Logistic/log_cdf/Neg:y:0*
T0*'
_output_shapes
:���������2�
gcontinuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_top_level/log_prob/Logistic/log_cdf/Neg_1Negxcontinuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_top_level/log_prob/Logistic/log_cdf/Softplus:activations:0*
T0*'
_output_shapes
:���������2�
Xcontinuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_top_level/log_prob/sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
Vcontinuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_top_level/log_prob/sub_1Sub(continuous_batched_entropy_model/add:z:0acontinuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_top_level/log_prob/sub_1/y:output:0*
T0*'
_output_shapes
:���������2�
scontinuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_top_level/log_prob/Logistic/log_cdf_1/standardize/subSubZcontinuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_top_level/log_prob/sub_1:z:0Logistic/loc:output:0*
T0*'
_output_shapes
:���������2�
wcontinuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_top_level/log_prob/Logistic/log_cdf_1/standardize/truedivRealDivwcontinuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_top_level/log_prob/Logistic/log_cdf_1/standardize/sub:z:0Exp:y:0*
T0*'
_output_shapes
:���������2�
gcontinuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_top_level/log_prob/Logistic/log_cdf_1/NegNeg{continuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_top_level/log_prob/Logistic/log_cdf_1/standardize/truediv:z:0*
T0*'
_output_shapes
:���������2�
lcontinuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_top_level/log_prob/Logistic/log_cdf_1/SoftplusSoftpluskcontinuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_top_level/log_prob/Logistic/log_cdf_1/Neg:y:0*
T0*'
_output_shapes
:���������2�
icontinuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_top_level/log_prob/Logistic/log_cdf_1/Neg_1Negzcontinuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_top_level/log_prob/Logistic/log_cdf_1/Softplus:activations:0*
T0*'
_output_shapes
:���������2�
Ucontinuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_top_level/log_prob/LessLesswcontinuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_top_level/log_prob/Logistic/log_survival_function/Neg:y:0kcontinuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_top_level/log_prob/Logistic/log_cdf/Neg_1:y:0*
T0*'
_output_shapes
:���������2�
Ycontinuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_top_level/log_prob/SelectV2SelectV2Ycontinuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_top_level/log_prob/Less:z:0ycontinuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_top_level/log_prob/Logistic/log_survival_function_1/Neg:y:0kcontinuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_top_level/log_prob/Logistic/log_cdf/Neg_1:y:0*
T0*'
_output_shapes
:���������2�
[continuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_top_level/log_prob/SelectV2_1SelectV2Ycontinuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_top_level/log_prob/Less:z:0wcontinuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_top_level/log_prob/Logistic/log_survival_function/Neg:y:0mcontinuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_top_level/log_prob/Logistic/log_cdf_1/Neg_1:y:0*
T0*'
_output_shapes
:���������2�
scontinuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_top_level/log_prob/logsum_expbig_minus_expsmall/IsInfIsInfbcontinuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_top_level/log_prob/SelectV2:output:0*
T0*'
_output_shapes
:���������2�
qcontinuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_top_level/log_prob/logsum_expbig_minus_expsmall/subSubdcontinuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_top_level/log_prob/SelectV2_1:output:0bcontinuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_top_level/log_prob/SelectV2:output:0*
T0*'
_output_shapes
:���������2�
qcontinuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_top_level/log_prob/logsum_expbig_minus_expsmall/ExpExpucontinuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_top_level/log_prob/logsum_expbig_minus_expsmall/sub:z:0*
T0*'
_output_shapes
:���������2�
qcontinuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_top_level/log_prob/logsum_expbig_minus_expsmall/NegNegucontinuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_top_level/log_prob/logsum_expbig_minus_expsmall/Exp:y:0*
T0*'
_output_shapes
:���������2�
scontinuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_top_level/log_prob/logsum_expbig_minus_expsmall/Log1pLog1pucontinuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_top_level/log_prob/logsum_expbig_minus_expsmall/Neg:y:0*
T0*'
_output_shapes
:���������2�
qcontinuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_top_level/log_prob/logsum_expbig_minus_expsmall/addAddV2wcontinuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_top_level/log_prob/logsum_expbig_minus_expsmall/Log1p:y:0bcontinuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_top_level/log_prob/SelectV2:output:0*
T0*'
_output_shapes
:���������2�
vcontinuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_top_level/log_prob/logsum_expbig_minus_expsmall/SelectV2SelectV2wcontinuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_top_level/log_prob/logsum_expbig_minus_expsmall/IsInf:y:0bcontinuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_top_level/log_prob/SelectV2:output:0ucontinuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_top_level/log_prob/logsum_expbig_minus_expsmall/add:z:0*
T0*'
_output_shapes
:���������2�
6continuous_batched_entropy_model/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
����������
$continuous_batched_entropy_model/SumSumcontinuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_top_level/log_prob/logsum_expbig_minus_expsmall/SelectV2:output:0?continuous_batched_entropy_model/Sum/reduction_indices:output:0*
T0*#
_output_shapes
:���������k
&continuous_batched_entropy_model/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @}
$continuous_batched_entropy_model/LogLog/continuous_batched_entropy_model/Const:output:0*
T0*
_output_shapes
: v
$continuous_batched_entropy_model/NegNeg(continuous_batched_entropy_model/Log:y:0*
T0*
_output_shapes
: �
(continuous_batched_entropy_model/truedivRealDiv-continuous_batched_entropy_model/Sum:output:0(continuous_batched_entropy_model/Neg:y:0*
T0*#
_output_shapes
:����������
+synthesis_transform/StatefulPartitionedCallStatefulPartitionedCall(continuous_batched_entropy_model/add:z:0synthesis_transform_132446synthesis_transform_132448synthesis_transform_132450synthesis_transform_132452synthesis_transform_132454synthesis_transform_132456synthesis_transform_132458synthesis_transform_132460*
Tin
2	*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *X
fSRQ
O__inference_synthesis_transform_layer_call_and_return_conditional_losses_132277O
ConstConst*
_output_shapes
:*
dtype0*
valueB: k
MeanMean,continuous_batched_entropy_model/truediv:z:0Const:output:0*
T0*
_output_shapes
: �
subSubReshape:output:04synthesis_transform/StatefulPartitionedCall:output:0*
T0*/
_output_shapes
:���������M
AbsAbssub:z:0*
T0*/
_output_shapes
:���������`
Const_1Const*
_output_shapes
:*
dtype0*%
valueB"             J
Mean_1MeanAbs:y:0Const_1:output:0*
T0*
_output_shapes
: M
IdentityIdentityMean_1:output:0^NoOp*
T0*
_output_shapes
: M

Identity_1IdentityMean:output:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOp^Exp/ReadVariableOp+^analysis_transform/StatefulPartitionedCall,^synthesis_transform/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:���������: : : : : : : : : : : : : : : : : 2(
Exp/ReadVariableOpExp/ReadVariableOp2X
*analysis_transform/StatefulPartitionedCall*analysis_transform/StatefulPartitionedCall2Z
+synthesis_transform/StatefulPartitionedCall+synthesis_transform/StatefulPartitionedCall:X T
/
_output_shapes
:���������
!
_user_specified_name	input_1:&"
 
_user_specified_name132375:&"
 
_user_specified_name132377:&"
 
_user_specified_name132379:&"
 
_user_specified_name132381:&"
 
_user_specified_name132383:&"
 
_user_specified_name132385:&"
 
_user_specified_name132387:&"
 
_user_specified_name132389:(	$
"
_user_specified_name
resource:&
"
 
_user_specified_name132446:&"
 
_user_specified_name132448:&"
 
_user_specified_name132450:&"
 
_user_specified_name132452:&"
 
_user_specified_name132454:&"
 
_user_specified_name132456:&"
 
_user_specified_name132458:&"
 
_user_specified_name132460
��
�%
"__inference__traced_restore_133573
file_prefix'
assignvariableop_variable:2<
"assignvariableop_1_conv_1_kernel_1:.
 assignvariableop_2_conv_1_bias_1:<
"assignvariableop_3_conv_2_kernel_1:2.
 assignvariableop_4_conv_2_bias_1:24
 assignvariableop_5_fc_1_kernel_1:
��-
assignvariableop_6_fc_1_bias_1:	�3
 assignvariableop_7_fc_2_kernel_1:	�2,
assignvariableop_8_fc_2_bias_1:21
assignvariableop_9_fc_1_kernel:	2�,
assignvariableop_10_fc_1_bias:	�3
assignvariableop_11_fc_2_kernel:
��,
assignvariableop_12_fc_2_bias:	�;
!assignvariableop_13_conv_1_kernel:2-
assignvariableop_14_conv_1_bias:;
!assignvariableop_15_conv_2_kernel:-
assignvariableop_16_conv_2_bias:'
assignvariableop_17_iteration:	 +
!assignvariableop_18_learning_rate: D
*assignvariableop_19_adam_m_conv_1_kernel_1:D
*assignvariableop_20_adam_v_conv_1_kernel_1:6
(assignvariableop_21_adam_m_conv_1_bias_1:6
(assignvariableop_22_adam_v_conv_1_bias_1:D
*assignvariableop_23_adam_m_conv_2_kernel_1:2D
*assignvariableop_24_adam_v_conv_2_kernel_1:26
(assignvariableop_25_adam_m_conv_2_bias_1:26
(assignvariableop_26_adam_v_conv_2_bias_1:2<
(assignvariableop_27_adam_m_fc_1_kernel_1:
��<
(assignvariableop_28_adam_v_fc_1_kernel_1:
��5
&assignvariableop_29_adam_m_fc_1_bias_1:	�5
&assignvariableop_30_adam_v_fc_1_bias_1:	�;
(assignvariableop_31_adam_m_fc_2_kernel_1:	�2;
(assignvariableop_32_adam_v_fc_2_kernel_1:	�24
&assignvariableop_33_adam_m_fc_2_bias_1:24
&assignvariableop_34_adam_v_fc_2_bias_1:29
&assignvariableop_35_adam_m_fc_1_kernel:	2�9
&assignvariableop_36_adam_v_fc_1_kernel:	2�3
$assignvariableop_37_adam_m_fc_1_bias:	�3
$assignvariableop_38_adam_v_fc_1_bias:	�:
&assignvariableop_39_adam_m_fc_2_kernel:
��:
&assignvariableop_40_adam_v_fc_2_kernel:
��3
$assignvariableop_41_adam_m_fc_2_bias:	�3
$assignvariableop_42_adam_v_fc_2_bias:	�B
(assignvariableop_43_adam_m_conv_1_kernel:2B
(assignvariableop_44_adam_v_conv_1_kernel:24
&assignvariableop_45_adam_m_conv_1_bias:4
&assignvariableop_46_adam_v_conv_1_bias:B
(assignvariableop_47_adam_m_conv_2_kernel:B
(assignvariableop_48_adam_v_conv_2_kernel:4
&assignvariableop_49_adam_m_conv_2_bias:4
&assignvariableop_50_adam_v_conv_2_bias:1
#assignvariableop_51_adam_m_variable:21
#assignvariableop_52_adam_v_variable:2%
assignvariableop_53_total_4: %
assignvariableop_54_count_4: %
assignvariableop_55_total_3: %
assignvariableop_56_count_3: %
assignvariableop_57_total_2: %
assignvariableop_58_count_2: %
assignvariableop_59_total_1: %
assignvariableop_60_count_1: #
assignvariableop_61_total: #
assignvariableop_62_count: 
identity_64��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_25�AssignVariableOp_26�AssignVariableOp_27�AssignVariableOp_28�AssignVariableOp_29�AssignVariableOp_3�AssignVariableOp_30�AssignVariableOp_31�AssignVariableOp_32�AssignVariableOp_33�AssignVariableOp_34�AssignVariableOp_35�AssignVariableOp_36�AssignVariableOp_37�AssignVariableOp_38�AssignVariableOp_39�AssignVariableOp_4�AssignVariableOp_40�AssignVariableOp_41�AssignVariableOp_42�AssignVariableOp_43�AssignVariableOp_44�AssignVariableOp_45�AssignVariableOp_46�AssignVariableOp_47�AssignVariableOp_48�AssignVariableOp_49�AssignVariableOp_5�AssignVariableOp_50�AssignVariableOp_51�AssignVariableOp_52�AssignVariableOp_53�AssignVariableOp_54�AssignVariableOp_55�AssignVariableOp_56�AssignVariableOp_57�AssignVariableOp_58�AssignVariableOp_59�AssignVariableOp_6�AssignVariableOp_60�AssignVariableOp_61�AssignVariableOp_62�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:@*
dtype0*�
value�B�@B+prior_log_scales/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/25/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/26/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/27/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/28/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/29/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/30/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/31/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/32/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/33/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/34/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/3/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/3/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/4/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/4/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:@*
dtype0*�
value�B�@B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*�
_output_shapes�
�::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*N
dtypesD
B2@	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOpassignvariableop_variableIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOp"assignvariableop_1_conv_1_kernel_1Identity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOp assignvariableop_2_conv_1_bias_1Identity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOp"assignvariableop_3_conv_2_kernel_1Identity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOp assignvariableop_4_conv_2_bias_1Identity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOp assignvariableop_5_fc_1_kernel_1Identity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOpassignvariableop_6_fc_1_bias_1Identity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOp assignvariableop_7_fc_2_kernel_1Identity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOpassignvariableop_8_fc_2_bias_1Identity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOpassignvariableop_9_fc_1_kernelIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOpassignvariableop_10_fc_1_biasIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOpassignvariableop_11_fc_2_kernelIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOpassignvariableop_12_fc_2_biasIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOp!assignvariableop_13_conv_1_kernelIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOpassignvariableop_14_conv_1_biasIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOp!assignvariableop_15_conv_2_kernelIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_16AssignVariableOpassignvariableop_16_conv_2_biasIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_17AssignVariableOpassignvariableop_17_iterationIdentity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_18AssignVariableOp!assignvariableop_18_learning_rateIdentity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOp*assignvariableop_19_adam_m_conv_1_kernel_1Identity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_20AssignVariableOp*assignvariableop_20_adam_v_conv_1_kernel_1Identity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_21AssignVariableOp(assignvariableop_21_adam_m_conv_1_bias_1Identity_21:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_22AssignVariableOp(assignvariableop_22_adam_v_conv_1_bias_1Identity_22:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_23AssignVariableOp*assignvariableop_23_adam_m_conv_2_kernel_1Identity_23:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_24AssignVariableOp*assignvariableop_24_adam_v_conv_2_kernel_1Identity_24:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_25AssignVariableOp(assignvariableop_25_adam_m_conv_2_bias_1Identity_25:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_26AssignVariableOp(assignvariableop_26_adam_v_conv_2_bias_1Identity_26:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_27AssignVariableOp(assignvariableop_27_adam_m_fc_1_kernel_1Identity_27:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_28AssignVariableOp(assignvariableop_28_adam_v_fc_1_kernel_1Identity_28:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_29AssignVariableOp&assignvariableop_29_adam_m_fc_1_bias_1Identity_29:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_30AssignVariableOp&assignvariableop_30_adam_v_fc_1_bias_1Identity_30:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_31AssignVariableOp(assignvariableop_31_adam_m_fc_2_kernel_1Identity_31:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_32AssignVariableOp(assignvariableop_32_adam_v_fc_2_kernel_1Identity_32:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_33AssignVariableOp&assignvariableop_33_adam_m_fc_2_bias_1Identity_33:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_34AssignVariableOp&assignvariableop_34_adam_v_fc_2_bias_1Identity_34:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_35AssignVariableOp&assignvariableop_35_adam_m_fc_1_kernelIdentity_35:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_36AssignVariableOp&assignvariableop_36_adam_v_fc_1_kernelIdentity_36:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_37AssignVariableOp$assignvariableop_37_adam_m_fc_1_biasIdentity_37:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_38AssignVariableOp$assignvariableop_38_adam_v_fc_1_biasIdentity_38:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_39AssignVariableOp&assignvariableop_39_adam_m_fc_2_kernelIdentity_39:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_40AssignVariableOp&assignvariableop_40_adam_v_fc_2_kernelIdentity_40:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_41AssignVariableOp$assignvariableop_41_adam_m_fc_2_biasIdentity_41:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_42AssignVariableOp$assignvariableop_42_adam_v_fc_2_biasIdentity_42:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_43AssignVariableOp(assignvariableop_43_adam_m_conv_1_kernelIdentity_43:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_44AssignVariableOp(assignvariableop_44_adam_v_conv_1_kernelIdentity_44:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_45AssignVariableOp&assignvariableop_45_adam_m_conv_1_biasIdentity_45:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_46AssignVariableOp&assignvariableop_46_adam_v_conv_1_biasIdentity_46:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_47AssignVariableOp(assignvariableop_47_adam_m_conv_2_kernelIdentity_47:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_48AssignVariableOp(assignvariableop_48_adam_v_conv_2_kernelIdentity_48:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_49AssignVariableOp&assignvariableop_49_adam_m_conv_2_biasIdentity_49:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_50AssignVariableOp&assignvariableop_50_adam_v_conv_2_biasIdentity_50:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_51AssignVariableOp#assignvariableop_51_adam_m_variableIdentity_51:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_52AssignVariableOp#assignvariableop_52_adam_v_variableIdentity_52:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_53AssignVariableOpassignvariableop_53_total_4Identity_53:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_54AssignVariableOpassignvariableop_54_count_4Identity_54:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_55AssignVariableOpassignvariableop_55_total_3Identity_55:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_56AssignVariableOpassignvariableop_56_count_3Identity_56:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_57AssignVariableOpassignvariableop_57_total_2Identity_57:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_58AssignVariableOpassignvariableop_58_count_2Identity_58:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_59AssignVariableOpassignvariableop_59_total_1Identity_59:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_60AssignVariableOpassignvariableop_60_count_1Identity_60:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_61AssignVariableOpassignvariableop_61_totalIdentity_61:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_62AssignVariableOpassignvariableop_62_countIdentity_62:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 �
Identity_63Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_64IdentityIdentity_63:output:0^NoOp_1*
T0*
_output_shapes
: �
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
_output_shapes
 "#
identity_64Identity_64:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_56AssignVariableOp_562*
AssignVariableOp_57AssignVariableOp_572*
AssignVariableOp_58AssignVariableOp_582*
AssignVariableOp_59AssignVariableOp_592(
AssignVariableOp_6AssignVariableOp_62*
AssignVariableOp_60AssignVariableOp_602*
AssignVariableOp_61AssignVariableOp_612*
AssignVariableOp_62AssignVariableOp_622(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:($
"
_user_specified_name
Variable:/+
)
_user_specified_nameconv_1/kernel_1:-)
'
_user_specified_nameconv_1/bias_1:/+
)
_user_specified_nameconv_2/kernel_1:-)
'
_user_specified_nameconv_2/bias_1:-)
'
_user_specified_namefc_1/kernel_1:+'
%
_user_specified_namefc_1/bias_1:-)
'
_user_specified_namefc_2/kernel_1:+	'
%
_user_specified_namefc_2/bias_1:+
'
%
_user_specified_namefc_1/kernel:)%
#
_user_specified_name	fc_1/bias:+'
%
_user_specified_namefc_2/kernel:)%
#
_user_specified_name	fc_2/bias:-)
'
_user_specified_nameconv_1/kernel:+'
%
_user_specified_nameconv_1/bias:-)
'
_user_specified_nameconv_2/kernel:+'
%
_user_specified_nameconv_2/bias:)%
#
_user_specified_name	iteration:-)
'
_user_specified_namelearning_rate:62
0
_user_specified_nameAdam/m/conv_1/kernel_1:62
0
_user_specified_nameAdam/v/conv_1/kernel_1:40
.
_user_specified_nameAdam/m/conv_1/bias_1:40
.
_user_specified_nameAdam/v/conv_1/bias_1:62
0
_user_specified_nameAdam/m/conv_2/kernel_1:62
0
_user_specified_nameAdam/v/conv_2/kernel_1:40
.
_user_specified_nameAdam/m/conv_2/bias_1:40
.
_user_specified_nameAdam/v/conv_2/bias_1:40
.
_user_specified_nameAdam/m/fc_1/kernel_1:40
.
_user_specified_nameAdam/v/fc_1/kernel_1:2.
,
_user_specified_nameAdam/m/fc_1/bias_1:2.
,
_user_specified_nameAdam/v/fc_1/bias_1:4 0
.
_user_specified_nameAdam/m/fc_2/kernel_1:4!0
.
_user_specified_nameAdam/v/fc_2/kernel_1:2".
,
_user_specified_nameAdam/m/fc_2/bias_1:2#.
,
_user_specified_nameAdam/v/fc_2/bias_1:2$.
,
_user_specified_nameAdam/m/fc_1/kernel:2%.
,
_user_specified_nameAdam/v/fc_1/kernel:0&,
*
_user_specified_nameAdam/m/fc_1/bias:0',
*
_user_specified_nameAdam/v/fc_1/bias:2(.
,
_user_specified_nameAdam/m/fc_2/kernel:2).
,
_user_specified_nameAdam/v/fc_2/kernel:0*,
*
_user_specified_nameAdam/m/fc_2/bias:0+,
*
_user_specified_nameAdam/v/fc_2/bias:4,0
.
_user_specified_nameAdam/m/conv_1/kernel:4-0
.
_user_specified_nameAdam/v/conv_1/kernel:2..
,
_user_specified_nameAdam/m/conv_1/bias:2/.
,
_user_specified_nameAdam/v/conv_1/bias:400
.
_user_specified_nameAdam/m/conv_2/kernel:410
.
_user_specified_nameAdam/v/conv_2/kernel:22.
,
_user_specified_nameAdam/m/conv_2/bias:23.
,
_user_specified_nameAdam/v/conv_2/bias:/4+
)
_user_specified_nameAdam/m/Variable:/5+
)
_user_specified_nameAdam/v/Variable:'6#
!
_user_specified_name	total_4:'7#
!
_user_specified_name	count_4:'8#
!
_user_specified_name	total_3:'9#
!
_user_specified_name	count_3:':#
!
_user_specified_name	total_2:';#
!
_user_specified_name	count_2:'<#
!
_user_specified_name	total_1:'=#
!
_user_specified_name	count_1:%>!

_user_specified_nametotal:%?!

_user_specified_namecount
�
�
W__inference_mnist_compression_trainer_2_layer_call_and_return_conditional_losses_132598
input_13
analysis_transform_132479:'
analysis_transform_132481:3
analysis_transform_132483:2'
analysis_transform_132485:2-
analysis_transform_132487:
��(
analysis_transform_132489:	�,
analysis_transform_132491:	�2'
analysis_transform_132493:2)
exp_readvariableop_resource:2-
synthesis_transform_132573:	2�)
synthesis_transform_132575:	�.
synthesis_transform_132577:
��)
synthesis_transform_132579:	�4
synthesis_transform_132581:2(
synthesis_transform_132583:4
synthesis_transform_132585:(
synthesis_transform_132587:
identity

identity_1��Exp/ReadVariableOp�*analysis_transform/StatefulPartitionedCall�+synthesis_transform/StatefulPartitionedCall^
CastCastinput_1*

DstT0*

SrcT0*/
_output_shapes
:���������N
	truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  Cj
truedivRealDivCast:y:0truediv/y:output:0*
T0*/
_output_shapes
:���������f
Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"����         q
ReshapeReshapetruediv:z:0Reshape/shape:output:0*
T0*/
_output_shapes
:����������
*analysis_transform/StatefulPartitionedCallStatefulPartitionedCallReshape:output:0analysis_transform_132479analysis_transform_132481analysis_transform_132483analysis_transform_132485analysis_transform_132487analysis_transform_132489analysis_transform_132491analysis_transform_132493*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������2**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *W
fRRP
N__inference_analysis_transform_layer_call_and_return_conditional_losses_132047j
Exp/ReadVariableOpReadVariableOpexp_readvariableop_resource*
_output_shapes
:2*
dtype0K
ExpExpExp/ReadVariableOp:value:0*
T0*
_output_shapes
:2Q
Logistic/locConst*
_output_shapes
: *
dtype0*
valueB
 *    �
Wcontinuous_batched_entropy_model/Logistic_CONSTRUCTED_AT_top_level/mode/shape_as_tensorConst*
_output_shapes
: *
dtype0*
valueB �
Mcontinuous_batched_entropy_model/Logistic_CONSTRUCTED_AT_top_level/mode/ConstConst*
_output_shapes
: *
dtype0*
value	B : �
[continuous_batched_entropy_model/Logistic_CONSTRUCTED_AT_top_level/mode/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
]continuous_batched_entropy_model/Logistic_CONSTRUCTED_AT_top_level/mode/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: �
]continuous_batched_entropy_model/Logistic_CONSTRUCTED_AT_top_level/mode/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
Ucontinuous_batched_entropy_model/Logistic_CONSTRUCTED_AT_top_level/mode/strided_sliceStridedSlice`continuous_batched_entropy_model/Logistic_CONSTRUCTED_AT_top_level/mode/shape_as_tensor:output:0dcontinuous_batched_entropy_model/Logistic_CONSTRUCTED_AT_top_level/mode/strided_slice/stack:output:0fcontinuous_batched_entropy_model/Logistic_CONSTRUCTED_AT_top_level/mode/strided_slice/stack_1:output:0fcontinuous_batched_entropy_model/Logistic_CONSTRUCTED_AT_top_level/mode/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *

begin_mask�
Ycontinuous_batched_entropy_model/Logistic_CONSTRUCTED_AT_top_level/mode/shape_as_tensor_1Const*
_output_shapes
:*
dtype0*
valueB:2�
Ocontinuous_batched_entropy_model/Logistic_CONSTRUCTED_AT_top_level/mode/Const_1Const*
_output_shapes
: *
dtype0*
value	B : �
]continuous_batched_entropy_model/Logistic_CONSTRUCTED_AT_top_level/mode/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: �
_continuous_batched_entropy_model/Logistic_CONSTRUCTED_AT_top_level/mode/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
_continuous_batched_entropy_model/Logistic_CONSTRUCTED_AT_top_level/mode/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
Wcontinuous_batched_entropy_model/Logistic_CONSTRUCTED_AT_top_level/mode/strided_slice_1StridedSlicebcontinuous_batched_entropy_model/Logistic_CONSTRUCTED_AT_top_level/mode/shape_as_tensor_1:output:0fcontinuous_batched_entropy_model/Logistic_CONSTRUCTED_AT_top_level/mode/strided_slice_1/stack:output:0hcontinuous_batched_entropy_model/Logistic_CONSTRUCTED_AT_top_level/mode/strided_slice_1/stack_1:output:0hcontinuous_batched_entropy_model/Logistic_CONSTRUCTED_AT_top_level/mode/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask�
Xcontinuous_batched_entropy_model/Logistic_CONSTRUCTED_AT_top_level/mode/BroadcastArgs/s0Const*
_output_shapes
: *
dtype0*
valueB �
Zcontinuous_batched_entropy_model/Logistic_CONSTRUCTED_AT_top_level/mode/BroadcastArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB �
Ucontinuous_batched_entropy_model/Logistic_CONSTRUCTED_AT_top_level/mode/BroadcastArgsBroadcastArgsccontinuous_batched_entropy_model/Logistic_CONSTRUCTED_AT_top_level/mode/BroadcastArgs/s0_1:output:0^continuous_batched_entropy_model/Logistic_CONSTRUCTED_AT_top_level/mode/strided_slice:output:0*
_output_shapes
: �
Wcontinuous_batched_entropy_model/Logistic_CONSTRUCTED_AT_top_level/mode/BroadcastArgs_1BroadcastArgsZcontinuous_batched_entropy_model/Logistic_CONSTRUCTED_AT_top_level/mode/BroadcastArgs:r0:0`continuous_batched_entropy_model/Logistic_CONSTRUCTED_AT_top_level/mode/strided_slice_1:output:0*
_output_shapes
:�
Scontinuous_batched_entropy_model/Logistic_CONSTRUCTED_AT_top_level/mode/BroadcastToBroadcastToLogistic/loc:output:0\continuous_batched_entropy_model/Logistic_CONSTRUCTED_AT_top_level/mode/BroadcastArgs_1:r0:0*
T0*
_output_shapes
:2�
&continuous_batched_entropy_model/RoundRound\continuous_batched_entropy_model/Logistic_CONSTRUCTED_AT_top_level/mode/BroadcastTo:output:0*
T0*
_output_shapes
:2�
$continuous_batched_entropy_model/subSub\continuous_batched_entropy_model/Logistic_CONSTRUCTED_AT_top_level/mode/BroadcastTo:output:0*continuous_batched_entropy_model/Round:y:0*
T0*
_output_shapes
:2�
-continuous_batched_entropy_model/StopGradientStopGradient(continuous_batched_entropy_model/sub:z:0*
T0*
_output_shapes
:2�
(continuous_batched_entropy_model/Round_1Round6continuous_batched_entropy_model/StopGradient:output:0*
T0*
_output_shapes
:2�
&continuous_batched_entropy_model/sub_1Sub6continuous_batched_entropy_model/StopGradient:output:0,continuous_batched_entropy_model/Round_1:y:0*
T0*
_output_shapes
:2�
/continuous_batched_entropy_model/StopGradient_1StopGradient*continuous_batched_entropy_model/sub_1:z:0*
T0*
_output_shapes
:2�
&continuous_batched_entropy_model/sub_2Sub3analysis_transform/StatefulPartitionedCall:output:08continuous_batched_entropy_model/StopGradient_1:output:0*
T0*'
_output_shapes
:���������2�
(continuous_batched_entropy_model/Round_2Round*continuous_batched_entropy_model/sub_2:z:0*
T0*'
_output_shapes
:���������2�
$continuous_batched_entropy_model/addAddV2,continuous_batched_entropy_model/Round_2:y:08continuous_batched_entropy_model/StopGradient_1:output:0*
T0*'
_output_shapes
:���������2�
)continuous_batched_entropy_model/IdentityIdentity(continuous_batched_entropy_model/add:z:0*
T0*'
_output_shapes
:���������2�
*continuous_batched_entropy_model/IdentityN	IdentityN(continuous_batched_entropy_model/add:z:03analysis_transform/StatefulPartitionedCall:output:08continuous_batched_entropy_model/StopGradient_1:output:0*
T
2*,
_gradient_op_typeCustomGradient-132523*@
_output_shapes.
,:���������2:���������2:2�
Vcontinuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_top_level/log_prob/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
Tcontinuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_top_level/log_prob/addAddV23continuous_batched_entropy_model/IdentityN:output:0_continuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_top_level/log_prob/add/y:output:0*
T0*'
_output_shapes
:���������2�
continuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_top_level/log_prob/Logistic/log_survival_function/standardize/subSubXcontinuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_top_level/log_prob/add:z:0Logistic/loc:output:0*
T0*'
_output_shapes
:���������2�
�continuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_top_level/log_prob/Logistic/log_survival_function/standardize/truedivRealDiv�continuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_top_level/log_prob/Logistic/log_survival_function/standardize/sub:z:0Exp:y:0*
T0*'
_output_shapes
:���������2�
xcontinuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_top_level/log_prob/Logistic/log_survival_function/SoftplusSoftplus�continuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_top_level/log_prob/Logistic/log_survival_function/standardize/truediv:z:0*
T0*'
_output_shapes
:���������2�
scontinuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_top_level/log_prob/Logistic/log_survival_function/NegNeg�continuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_top_level/log_prob/Logistic/log_survival_function/Softplus:activations:0*
T0*'
_output_shapes
:���������2�
Vcontinuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_top_level/log_prob/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
Tcontinuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_top_level/log_prob/subSub3continuous_batched_entropy_model/IdentityN:output:0_continuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_top_level/log_prob/sub/y:output:0*
T0*'
_output_shapes
:���������2�
�continuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_top_level/log_prob/Logistic/log_survival_function_1/standardize/subSubXcontinuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_top_level/log_prob/sub:z:0Logistic/loc:output:0*
T0*'
_output_shapes
:���������2�
�continuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_top_level/log_prob/Logistic/log_survival_function_1/standardize/truedivRealDiv�continuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_top_level/log_prob/Logistic/log_survival_function_1/standardize/sub:z:0Exp:y:0*
T0*'
_output_shapes
:���������2�
zcontinuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_top_level/log_prob/Logistic/log_survival_function_1/SoftplusSoftplus�continuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_top_level/log_prob/Logistic/log_survival_function_1/standardize/truediv:z:0*
T0*'
_output_shapes
:���������2�
ucontinuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_top_level/log_prob/Logistic/log_survival_function_1/NegNeg�continuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_top_level/log_prob/Logistic/log_survival_function_1/Softplus:activations:0*
T0*'
_output_shapes
:���������2�
Xcontinuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_top_level/log_prob/add_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
Vcontinuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_top_level/log_prob/add_1AddV23continuous_batched_entropy_model/IdentityN:output:0acontinuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_top_level/log_prob/add_1/y:output:0*
T0*'
_output_shapes
:���������2�
qcontinuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_top_level/log_prob/Logistic/log_cdf/standardize/subSubZcontinuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_top_level/log_prob/add_1:z:0Logistic/loc:output:0*
T0*'
_output_shapes
:���������2�
ucontinuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_top_level/log_prob/Logistic/log_cdf/standardize/truedivRealDivucontinuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_top_level/log_prob/Logistic/log_cdf/standardize/sub:z:0Exp:y:0*
T0*'
_output_shapes
:���������2�
econtinuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_top_level/log_prob/Logistic/log_cdf/NegNegycontinuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_top_level/log_prob/Logistic/log_cdf/standardize/truediv:z:0*
T0*'
_output_shapes
:���������2�
jcontinuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_top_level/log_prob/Logistic/log_cdf/SoftplusSoftplusicontinuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_top_level/log_prob/Logistic/log_cdf/Neg:y:0*
T0*'
_output_shapes
:���������2�
gcontinuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_top_level/log_prob/Logistic/log_cdf/Neg_1Negxcontinuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_top_level/log_prob/Logistic/log_cdf/Softplus:activations:0*
T0*'
_output_shapes
:���������2�
Xcontinuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_top_level/log_prob/sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
Vcontinuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_top_level/log_prob/sub_1Sub3continuous_batched_entropy_model/IdentityN:output:0acontinuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_top_level/log_prob/sub_1/y:output:0*
T0*'
_output_shapes
:���������2�
scontinuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_top_level/log_prob/Logistic/log_cdf_1/standardize/subSubZcontinuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_top_level/log_prob/sub_1:z:0Logistic/loc:output:0*
T0*'
_output_shapes
:���������2�
wcontinuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_top_level/log_prob/Logistic/log_cdf_1/standardize/truedivRealDivwcontinuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_top_level/log_prob/Logistic/log_cdf_1/standardize/sub:z:0Exp:y:0*
T0*'
_output_shapes
:���������2�
gcontinuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_top_level/log_prob/Logistic/log_cdf_1/NegNeg{continuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_top_level/log_prob/Logistic/log_cdf_1/standardize/truediv:z:0*
T0*'
_output_shapes
:���������2�
lcontinuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_top_level/log_prob/Logistic/log_cdf_1/SoftplusSoftpluskcontinuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_top_level/log_prob/Logistic/log_cdf_1/Neg:y:0*
T0*'
_output_shapes
:���������2�
icontinuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_top_level/log_prob/Logistic/log_cdf_1/Neg_1Negzcontinuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_top_level/log_prob/Logistic/log_cdf_1/Softplus:activations:0*
T0*'
_output_shapes
:���������2�
Ucontinuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_top_level/log_prob/LessLesswcontinuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_top_level/log_prob/Logistic/log_survival_function/Neg:y:0kcontinuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_top_level/log_prob/Logistic/log_cdf/Neg_1:y:0*
T0*'
_output_shapes
:���������2�
Ycontinuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_top_level/log_prob/SelectV2SelectV2Ycontinuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_top_level/log_prob/Less:z:0ycontinuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_top_level/log_prob/Logistic/log_survival_function_1/Neg:y:0kcontinuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_top_level/log_prob/Logistic/log_cdf/Neg_1:y:0*
T0*'
_output_shapes
:���������2�
[continuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_top_level/log_prob/SelectV2_1SelectV2Ycontinuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_top_level/log_prob/Less:z:0wcontinuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_top_level/log_prob/Logistic/log_survival_function/Neg:y:0mcontinuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_top_level/log_prob/Logistic/log_cdf_1/Neg_1:y:0*
T0*'
_output_shapes
:���������2�
scontinuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_top_level/log_prob/logsum_expbig_minus_expsmall/IsInfIsInfbcontinuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_top_level/log_prob/SelectV2:output:0*
T0*'
_output_shapes
:���������2�
qcontinuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_top_level/log_prob/logsum_expbig_minus_expsmall/subSubdcontinuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_top_level/log_prob/SelectV2_1:output:0bcontinuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_top_level/log_prob/SelectV2:output:0*
T0*'
_output_shapes
:���������2�
qcontinuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_top_level/log_prob/logsum_expbig_minus_expsmall/ExpExpucontinuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_top_level/log_prob/logsum_expbig_minus_expsmall/sub:z:0*
T0*'
_output_shapes
:���������2�
qcontinuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_top_level/log_prob/logsum_expbig_minus_expsmall/NegNegucontinuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_top_level/log_prob/logsum_expbig_minus_expsmall/Exp:y:0*
T0*'
_output_shapes
:���������2�
scontinuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_top_level/log_prob/logsum_expbig_minus_expsmall/Log1pLog1pucontinuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_top_level/log_prob/logsum_expbig_minus_expsmall/Neg:y:0*
T0*'
_output_shapes
:���������2�
qcontinuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_top_level/log_prob/logsum_expbig_minus_expsmall/addAddV2wcontinuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_top_level/log_prob/logsum_expbig_minus_expsmall/Log1p:y:0bcontinuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_top_level/log_prob/SelectV2:output:0*
T0*'
_output_shapes
:���������2�
vcontinuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_top_level/log_prob/logsum_expbig_minus_expsmall/SelectV2SelectV2wcontinuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_top_level/log_prob/logsum_expbig_minus_expsmall/IsInf:y:0bcontinuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_top_level/log_prob/SelectV2:output:0ucontinuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_top_level/log_prob/logsum_expbig_minus_expsmall/add:z:0*
T0*'
_output_shapes
:���������2�
6continuous_batched_entropy_model/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
����������
$continuous_batched_entropy_model/SumSumcontinuous_batched_entropy_model/NoisyLogistic_CONSTRUCTED_AT_top_level/log_prob/logsum_expbig_minus_expsmall/SelectV2:output:0?continuous_batched_entropy_model/Sum/reduction_indices:output:0*
T0*#
_output_shapes
:���������k
&continuous_batched_entropy_model/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @}
$continuous_batched_entropy_model/LogLog/continuous_batched_entropy_model/Const:output:0*
T0*
_output_shapes
: v
$continuous_batched_entropy_model/NegNeg(continuous_batched_entropy_model/Log:y:0*
T0*
_output_shapes
: �
(continuous_batched_entropy_model/truedivRealDiv-continuous_batched_entropy_model/Sum:output:0(continuous_batched_entropy_model/Neg:y:0*
T0*#
_output_shapes
:����������
+synthesis_transform/StatefulPartitionedCallStatefulPartitionedCall3continuous_batched_entropy_model/IdentityN:output:0synthesis_transform_132573synthesis_transform_132575synthesis_transform_132577synthesis_transform_132579synthesis_transform_132581synthesis_transform_132583synthesis_transform_132585synthesis_transform_132587*
Tin
2	*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *X
fSRQ
O__inference_synthesis_transform_layer_call_and_return_conditional_losses_132302O
ConstConst*
_output_shapes
:*
dtype0*
valueB: k
MeanMean,continuous_batched_entropy_model/truediv:z:0Const:output:0*
T0*
_output_shapes
: �
subSubReshape:output:04synthesis_transform/StatefulPartitionedCall:output:0*
T0*/
_output_shapes
:���������M
AbsAbssub:z:0*
T0*/
_output_shapes
:���������`
Const_1Const*
_output_shapes
:*
dtype0*%
valueB"             J
Mean_1MeanAbs:y:0Const_1:output:0*
T0*
_output_shapes
: M
IdentityIdentityMean_1:output:0^NoOp*
T0*
_output_shapes
: M

Identity_1IdentityMean:output:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOp^Exp/ReadVariableOp+^analysis_transform/StatefulPartitionedCall,^synthesis_transform/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:���������: : : : : : : : : : : : : : : : : 2(
Exp/ReadVariableOpExp/ReadVariableOp2X
*analysis_transform/StatefulPartitionedCall*analysis_transform/StatefulPartitionedCall2Z
+synthesis_transform/StatefulPartitionedCall+synthesis_transform/StatefulPartitionedCall:X T
/
_output_shapes
:���������
!
_user_specified_name	input_1:&"
 
_user_specified_name132479:&"
 
_user_specified_name132481:&"
 
_user_specified_name132483:&"
 
_user_specified_name132485:&"
 
_user_specified_name132487:&"
 
_user_specified_name132489:&"
 
_user_specified_name132491:&"
 
_user_specified_name132493:(	$
"
_user_specified_name
resource:&
"
 
_user_specified_name132573:&"
 
_user_specified_name132575:&"
 
_user_specified_name132577:&"
 
_user_specified_name132579:&"
 
_user_specified_name132581:&"
 
_user_specified_name132583:&"
 
_user_specified_name132585:&"
 
_user_specified_name132587
�

�
@__inference_fc_2_layer_call_and_return_conditional_losses_132857

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������R
	LeakyRelu	LeakyReluBiasAdd:output:0*(
_output_shapes
:����������g
IdentityIdentityLeakyRelu:activations:0^NoOp*
T0*(
_output_shapes
:����������S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource<
#__inference_internal_grad_fn_133098CustomGradient-132523<
#__inference_internal_grad_fn_133104CustomGradient-131826"�L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
C
input_18
serving_default_input_1:0���������-

distortion
StatefulPartitionedCall:0 '
rate
StatefulPartitionedCall:1 tensorflow/serving/predict:��
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
analysis_transform
	synthesis_transform

prior_log_scales
	optimizer
loss

signatures"
_tf_keras_model
�
0
1
2
3
4
5
6
7
8
9
10
11
12
13
14
15

16"
trackable_list_wrapper
�
0
1
2
3
4
5
6
7
8
9
10
11
12
13
14
15

16"
trackable_list_wrapper
 "
trackable_list_wrapper
�
non_trainable_variables

layers
 metrics
!layer_regularization_losses
"layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
#trace_0
$trace_12�
<__inference_mnist_compression_trainer_2_layer_call_fn_132639
<__inference_mnist_compression_trainer_2_layer_call_fn_132680�
���
FullArgSpec
args�
jx
varargs
 
varkw
 
defaults
 

kwonlyargs�

jtraining%
kwonlydefaults�

trainingp 
annotations� *
 z#trace_0z$trace_1
�
%trace_0
&trace_12�
W__inference_mnist_compression_trainer_2_layer_call_and_return_conditional_losses_132471
W__inference_mnist_compression_trainer_2_layer_call_and_return_conditional_losses_132598�
���
FullArgSpec
args�
jx
varargs
 
varkw
 
defaults
 

kwonlyargs�

jtraining%
kwonlydefaults�

trainingp 
annotations� *
 z%trace_0z&trace_1
�B�
!__inference__wrapped_model_131948input_1"�
���
FullArgSpec
args� 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�
'layer_with_weights-0
'layer-0
(layer_with_weights-1
(layer-1
)layer-2
*layer_with_weights-2
*layer-3
+layer_with_weights-3
+layer-4
,	variables
-trainable_variables
.regularization_losses
/	keras_api
0__call__
*1&call_and_return_all_conditional_losses"
_tf_keras_sequential
�
2layer_with_weights-0
2layer-0
3layer_with_weights-1
3layer-1
4layer-2
5layer_with_weights-2
5layer-3
6layer_with_weights-3
6layer-4
7	variables
8trainable_variables
9regularization_losses
:	keras_api
;__call__
*<&call_and_return_all_conditional_losses"
_tf_keras_sequential
:22Variable
�
=
_variables
>_iterations
?_learning_rate
@_index_dict
A
_momentums
B_velocities
C_update_step_xla"
experimentalOptimizer
 "
trackable_dict_wrapper
,
Dserving_default"
signature_map
':%2conv_1/kernel
:2conv_1/bias
':%22conv_2/kernel
:22conv_2/bias
:
��2fc_1/kernel
:�2	fc_1/bias
:	�22fc_2/kernel
:22	fc_2/bias
:	2�2fc_1/kernel
:�2	fc_1/bias
:
��2fc_2/kernel
:�2	fc_2/bias
':%22conv_1/kernel
:2conv_1/bias
':%2conv_2/kernel
:2conv_2/bias
 "
trackable_list_wrapper
.
0
	1"
trackable_list_wrapper
C
E0
F1
G2
H3
I4"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
<__inference_mnist_compression_trainer_2_layer_call_fn_132639input_1"�
���
FullArgSpec
args�
jx
varargs
 
varkw
 
defaults
 

kwonlyargs�

jtraining%
kwonlydefaults�

trainingp 
annotations� *
 
�B�
<__inference_mnist_compression_trainer_2_layer_call_fn_132680input_1"�
���
FullArgSpec
args�
jx
varargs
 
varkw
 
defaults
 

kwonlyargs�

jtraining%
kwonlydefaults�

trainingp 
annotations� *
 
�B�
W__inference_mnist_compression_trainer_2_layer_call_and_return_conditional_losses_132471input_1"�
���
FullArgSpec
args�
jx
varargs
 
varkw
 
defaults
 

kwonlyargs�

jtraining%
kwonlydefaults�

trainingp 
annotations� *
 
�B�
W__inference_mnist_compression_trainer_2_layer_call_and_return_conditional_losses_132598input_1"�
���
FullArgSpec
args�
jx
varargs
 
varkw
 
defaults
 

kwonlyargs�

jtraining%
kwonlydefaults�

trainingp 
annotations� *
 
�
J	variables
Ktrainable_variables
Lregularization_losses
M	keras_api
N__call__
*O&call_and_return_all_conditional_losses

kernel
bias
 P_jit_compiled_convolution_op"
_tf_keras_layer
�
Q	variables
Rtrainable_variables
Sregularization_losses
T	keras_api
U__call__
*V&call_and_return_all_conditional_losses

kernel
bias
 W_jit_compiled_convolution_op"
_tf_keras_layer
�
X	variables
Ytrainable_variables
Zregularization_losses
[	keras_api
\__call__
*]&call_and_return_all_conditional_losses"
_tf_keras_layer
�
^	variables
_trainable_variables
`regularization_losses
a	keras_api
b__call__
*c&call_and_return_all_conditional_losses

kernel
bias"
_tf_keras_layer
�
d	variables
etrainable_variables
fregularization_losses
g	keras_api
h__call__
*i&call_and_return_all_conditional_losses

kernel
bias"
_tf_keras_layer
X
0
1
2
3
4
5
6
7"
trackable_list_wrapper
X
0
1
2
3
4
5
6
7"
trackable_list_wrapper
 "
trackable_list_wrapper
�
jnon_trainable_variables

klayers
lmetrics
mlayer_regularization_losses
nlayer_metrics
,	variables
-trainable_variables
.regularization_losses
0__call__
*1&call_and_return_all_conditional_losses
&1"call_and_return_conditional_losses"
_generic_user_object
�
otrace_0
ptrace_12�
3__inference_analysis_transform_layer_call_fn_132068
3__inference_analysis_transform_layer_call_fn_132089�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zotrace_0zptrace_1
�
qtrace_0
rtrace_12�
N__inference_analysis_transform_layer_call_and_return_conditional_losses_132022
N__inference_analysis_transform_layer_call_and_return_conditional_losses_132047�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zqtrace_0zrtrace_1
�
s	variables
ttrainable_variables
uregularization_losses
v	keras_api
w__call__
*x&call_and_return_all_conditional_losses

kernel
bias"
_tf_keras_layer
�
y	variables
ztrainable_variables
{regularization_losses
|	keras_api
}__call__
*~&call_and_return_all_conditional_losses

kernel
bias"
_tf_keras_layer
�
	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

kernel
bias
!�_jit_compiled_convolution_op"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

kernel
bias
!�_jit_compiled_convolution_op"
_tf_keras_layer
X
0
1
2
3
4
5
6
7"
trackable_list_wrapper
X
0
1
2
3
4
5
6
7"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
7	variables
8trainable_variables
9regularization_losses
;__call__
*<&call_and_return_all_conditional_losses
&<"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
4__inference_synthesis_transform_layer_call_fn_132323
4__inference_synthesis_transform_layer_call_fn_132344�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
O__inference_synthesis_transform_layer_call_and_return_conditional_losses_132277
O__inference_synthesis_transform_layer_call_and_return_conditional_losses_132302�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
>0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13
�14
�15
�16
�17
�18
�19
�20
�21
�22
�23
�24
�25
�26
�27
�28
�29
�30
�31
�32
�33
�34"
trackable_list_wrapper
:	 2	iteration
: 2learning_rate
 "
trackable_dict_wrapper
�
�0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13
�14
�15
�16"
trackable_list_wrapper
�
�0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13
�14
�15
�16"
trackable_list_wrapper
�2��
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
�B�
$__inference_signature_wrapper_132727input_1"�
���
FullArgSpec
args� 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
R
�	variables
�	keras_api

�total

�count"
_tf_keras_metric
R
�	variables
�	keras_api

�total

�count"
_tf_keras_metric
R
�	variables
�	keras_api

�total

�count"
_tf_keras_metric
c
�	variables
�	keras_api

�total

�count
�
_fn_kwargs"
_tf_keras_metric
c
�	variables
�	keras_api

�total

�count
�
_fn_kwargs"
_tf_keras_metric
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
J	variables
Ktrainable_variables
Lregularization_losses
N__call__
*O&call_and_return_all_conditional_losses
&O"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
'__inference_conv_1_layer_call_fn_132736�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
B__inference_conv_1_layer_call_and_return_conditional_losses_132747�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�2��
���
FullArgSpec
args�
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
Q	variables
Rtrainable_variables
Sregularization_losses
U__call__
*V&call_and_return_all_conditional_losses
&V"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
'__inference_conv_2_layer_call_fn_132756�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
B__inference_conv_2_layer_call_and_return_conditional_losses_132767�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�2��
���
FullArgSpec
args�
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
X	variables
Ytrainable_variables
Zregularization_losses
\__call__
*]&call_and_return_all_conditional_losses
&]"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
*__inference_flatten_2_layer_call_fn_132772�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
E__inference_flatten_2_layer_call_and_return_conditional_losses_132778�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
^	variables
_trainable_variables
`regularization_losses
b__call__
*c&call_and_return_all_conditional_losses
&c"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
%__inference_fc_1_layer_call_fn_132787�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
@__inference_fc_1_layer_call_and_return_conditional_losses_132798�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
d	variables
etrainable_variables
fregularization_losses
h__call__
*i&call_and_return_all_conditional_losses
&i"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
%__inference_fc_2_layer_call_fn_132807�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
@__inference_fc_2_layer_call_and_return_conditional_losses_132817�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
 "
trackable_list_wrapper
C
'0
(1
)2
*3
+4"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
3__inference_analysis_transform_layer_call_fn_132068conv_1_input"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
3__inference_analysis_transform_layer_call_fn_132089conv_1_input"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
N__inference_analysis_transform_layer_call_and_return_conditional_losses_132022conv_1_input"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
N__inference_analysis_transform_layer_call_and_return_conditional_losses_132047conv_1_input"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
s	variables
ttrainable_variables
uregularization_losses
w__call__
*x&call_and_return_all_conditional_losses
&x"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
%__inference_fc_1_layer_call_fn_132826�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
@__inference_fc_1_layer_call_and_return_conditional_losses_132837�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
y	variables
ztrainable_variables
{regularization_losses
}__call__
*~&call_and_return_all_conditional_losses
&~"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
%__inference_fc_2_layer_call_fn_132846�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
@__inference_fc_2_layer_call_and_return_conditional_losses_132857�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
*__inference_reshape_2_layer_call_fn_132862�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
E__inference_reshape_2_layer_call_and_return_conditional_losses_132876�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
'__inference_conv_1_layer_call_fn_132885�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
B__inference_conv_1_layer_call_and_return_conditional_losses_132919�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�2��
���
FullArgSpec
args�
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
'__inference_conv_2_layer_call_fn_132928�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
B__inference_conv_2_layer_call_and_return_conditional_losses_132962�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�2��
���
FullArgSpec
args�
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
 "
trackable_list_wrapper
C
20
31
42
53
64"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
4__inference_synthesis_transform_layer_call_fn_132323
fc_1_input"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
4__inference_synthesis_transform_layer_call_fn_132344
fc_1_input"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
O__inference_synthesis_transform_layer_call_and_return_conditional_losses_132277
fc_1_input"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
O__inference_synthesis_transform_layer_call_and_return_conditional_losses_132302
fc_1_input"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
,:*2Adam/m/conv_1/kernel
,:*2Adam/v/conv_1/kernel
:2Adam/m/conv_1/bias
:2Adam/v/conv_1/bias
,:*22Adam/m/conv_2/kernel
,:*22Adam/v/conv_2/kernel
:22Adam/m/conv_2/bias
:22Adam/v/conv_2/bias
$:"
��2Adam/m/fc_1/kernel
$:"
��2Adam/v/fc_1/kernel
:�2Adam/m/fc_1/bias
:�2Adam/v/fc_1/bias
#:!	�22Adam/m/fc_2/kernel
#:!	�22Adam/v/fc_2/kernel
:22Adam/m/fc_2/bias
:22Adam/v/fc_2/bias
#:!	2�2Adam/m/fc_1/kernel
#:!	2�2Adam/v/fc_1/kernel
:�2Adam/m/fc_1/bias
:�2Adam/v/fc_1/bias
$:"
��2Adam/m/fc_2/kernel
$:"
��2Adam/v/fc_2/kernel
:�2Adam/m/fc_2/bias
:�2Adam/v/fc_2/bias
,:*22Adam/m/conv_1/kernel
,:*22Adam/v/conv_1/kernel
:2Adam/m/conv_1/bias
:2Adam/v/conv_1/bias
,:*2Adam/m/conv_2/kernel
,:*2Adam/v/conv_2/kernel
:2Adam/m/conv_2/bias
:2Adam/v/conv_2/bias
:22Adam/m/Variable
:22Adam/v/Variable
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
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
�B�
'__inference_conv_1_layer_call_fn_132736inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
B__inference_conv_1_layer_call_and_return_conditional_losses_132747inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
'__inference_conv_2_layer_call_fn_132756inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
B__inference_conv_2_layer_call_and_return_conditional_losses_132767inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
*__inference_flatten_2_layer_call_fn_132772inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
E__inference_flatten_2_layer_call_and_return_conditional_losses_132778inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
%__inference_fc_1_layer_call_fn_132787inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
@__inference_fc_1_layer_call_and_return_conditional_losses_132798inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
%__inference_fc_2_layer_call_fn_132807inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
@__inference_fc_2_layer_call_and_return_conditional_losses_132817inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
%__inference_fc_1_layer_call_fn_132826inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
@__inference_fc_1_layer_call_and_return_conditional_losses_132837inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
%__inference_fc_2_layer_call_fn_132846inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
@__inference_fc_2_layer_call_and_return_conditional_losses_132857inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
*__inference_reshape_2_layer_call_fn_132862inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
E__inference_reshape_2_layer_call_and_return_conditional_losses_132876inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
'__inference_conv_1_layer_call_fn_132885inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
B__inference_conv_1_layer_call_and_return_conditional_losses_132919inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
'__inference_conv_2_layer_call_fn_132928inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
B__inference_conv_2_layer_call_and_return_conditional_losses_132962inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 �
!__inference__wrapped_model_131948�
8�5
.�+
)�&
input_1���������
� "=�:
!

distortion�

distortion 

rate�

rate �
N__inference_analysis_transform_layer_call_and_return_conditional_losses_132022E�B
;�8
.�+
conv_1_input���������
p

 
� ",�)
"�
tensor_0���������2
� �
N__inference_analysis_transform_layer_call_and_return_conditional_losses_132047E�B
;�8
.�+
conv_1_input���������
p 

 
� ",�)
"�
tensor_0���������2
� �
3__inference_analysis_transform_layer_call_fn_132068tE�B
;�8
.�+
conv_1_input���������
p

 
� "!�
unknown���������2�
3__inference_analysis_transform_layer_call_fn_132089tE�B
;�8
.�+
conv_1_input���������
p 

 
� "!�
unknown���������2�
B__inference_conv_1_layer_call_and_return_conditional_losses_132747s7�4
-�*
(�%
inputs���������
� "4�1
*�'
tensor_0���������
� �
B__inference_conv_1_layer_call_and_return_conditional_losses_132919�I�F
?�<
:�7
inputs+���������������������������2
� "F�C
<�9
tensor_0+���������������������������
� �
'__inference_conv_1_layer_call_fn_132736h7�4
-�*
(�%
inputs���������
� ")�&
unknown����������
'__inference_conv_1_layer_call_fn_132885�I�F
?�<
:�7
inputs+���������������������������2
� ";�8
unknown+����������������������������
B__inference_conv_2_layer_call_and_return_conditional_losses_132767s7�4
-�*
(�%
inputs���������
� "4�1
*�'
tensor_0���������2
� �
B__inference_conv_2_layer_call_and_return_conditional_losses_132962�I�F
?�<
:�7
inputs+���������������������������
� "F�C
<�9
tensor_0+���������������������������
� �
'__inference_conv_2_layer_call_fn_132756h7�4
-�*
(�%
inputs���������
� ")�&
unknown���������2�
'__inference_conv_2_layer_call_fn_132928�I�F
?�<
:�7
inputs+���������������������������
� ";�8
unknown+����������������������������
@__inference_fc_1_layer_call_and_return_conditional_losses_132798e0�-
&�#
!�
inputs����������
� "-�*
#� 
tensor_0����������
� �
@__inference_fc_1_layer_call_and_return_conditional_losses_132837d/�,
%�"
 �
inputs���������2
� "-�*
#� 
tensor_0����������
� �
%__inference_fc_1_layer_call_fn_132787Z0�-
&�#
!�
inputs����������
� ""�
unknown�����������
%__inference_fc_1_layer_call_fn_132826Y/�,
%�"
 �
inputs���������2
� ""�
unknown�����������
@__inference_fc_2_layer_call_and_return_conditional_losses_132817d0�-
&�#
!�
inputs����������
� ",�)
"�
tensor_0���������2
� �
@__inference_fc_2_layer_call_and_return_conditional_losses_132857e0�-
&�#
!�
inputs����������
� "-�*
#� 
tensor_0����������
� �
%__inference_fc_2_layer_call_fn_132807Y0�-
&�#
!�
inputs����������
� "!�
unknown���������2�
%__inference_fc_2_layer_call_fn_132846Z0�-
&�#
!�
inputs����������
� ""�
unknown�����������
E__inference_flatten_2_layer_call_and_return_conditional_losses_132778h7�4
-�*
(�%
inputs���������2
� "-�*
#� 
tensor_0����������
� �
*__inference_flatten_2_layer_call_fn_132772]7�4
-�*
(�%
inputs���������2
� ""�
unknown�����������
#__inference_internal_grad_fn_133098���
x�u

 
(�%
result_grads_0���������2
(�%
result_grads_1���������2
�
result_grads_22
� "/�,

 
"�
tensor_1���������2

 �
#__inference_internal_grad_fn_133104���
x�u

 
(�%
result_grads_0���������2
(�%
result_grads_1���������2
�
result_grads_22
� "/�,

 
"�
tensor_1���������2

 �
W__inference_mnist_compression_trainer_2_layer_call_and_return_conditional_losses_132471�
H�E
.�+
)�&
input_1���������
�

trainingp"Y�V
O�L
*

distortion�
tensor_0_distortion 

rate�
tensor_0_rate 
� �
W__inference_mnist_compression_trainer_2_layer_call_and_return_conditional_losses_132598�
H�E
.�+
)�&
input_1���������
�

trainingp "Y�V
O�L
*

distortion�
tensor_0_distortion 

rate�
tensor_0_rate 
� �
<__inference_mnist_compression_trainer_2_layer_call_fn_132639�
H�E
.�+
)�&
input_1���������
�

trainingp"=�:
!

distortion�

distortion 

rate�

rate �
<__inference_mnist_compression_trainer_2_layer_call_fn_132680�
H�E
.�+
)�&
input_1���������
�

trainingp "=�:
!

distortion�

distortion 

rate�

rate �
E__inference_reshape_2_layer_call_and_return_conditional_losses_132876h0�-
&�#
!�
inputs����������
� "4�1
*�'
tensor_0���������2
� �
*__inference_reshape_2_layer_call_fn_132862]0�-
&�#
!�
inputs����������
� ")�&
unknown���������2�
$__inference_signature_wrapper_132727�
C�@
� 
9�6
4
input_1)�&
input_1���������"=�:
!

distortion�

distortion 

rate�

rate �
O__inference_synthesis_transform_layer_call_and_return_conditional_losses_132277};�8
1�.
$�!

fc_1_input���������2
p

 
� "4�1
*�'
tensor_0���������
� �
O__inference_synthesis_transform_layer_call_and_return_conditional_losses_132302};�8
1�.
$�!

fc_1_input���������2
p 

 
� "4�1
*�'
tensor_0���������
� �
4__inference_synthesis_transform_layer_call_fn_132323r;�8
1�.
$�!

fc_1_input���������2
p

 
� ")�&
unknown����������
4__inference_synthesis_transform_layer_call_fn_132344r;�8
1�.
$�!

fc_1_input���������2
p 

 
� ")�&
unknown���������