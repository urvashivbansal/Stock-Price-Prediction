??)
??
B
AddV2
x"T
y"T
z"T"
Ttype:
2	??
B
AssignVariableOp
resource
value"dtype"
dtypetype?
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
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
.
Identity

input"T
output"T"	
Ttype
\
	LeakyRelu
features"T
activations"T"
alphafloat%??L>"
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
=
Mul
x"T
y"T
z"T"
Ttype:
2	?
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
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
[
Split
	split_dim

value"T
output"T*	num_split"
	num_splitint(0"	
Ttype
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
executor_typestring ?
@
StaticRegexFullMatch	
input

output
"
patternstring
?
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
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
?
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type
output_handle"
element_dtypetype"

shape_typetype:
2	
?
TensorListReserve
element_shape"
shape_type
num_elements

handle"
element_dtypetype"

shape_typetype:
2	
?
TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsint?????????
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?
?
While

input2T
output2T"
T
list(type)("
condfunc"
bodyfunc" 
output_shapeslist(shape)
 "
parallel_iterationsint
?"serve*2.4.12v2.4.1-0-g85c8b2a817f8??&
z
dense_8/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*
shared_namedense_8/kernel
s
"dense_8/kernel/Read/ReadVariableOpReadVariableOpdense_8/kernel* 
_output_shapes
:
??*
dtype0
q
dense_8/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_namedense_8/bias
j
 dense_8/bias/Read/ReadVariableOpReadVariableOpdense_8/bias*
_output_shapes	
:?*
dtype0
y
dense_9/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?d*
shared_namedense_9/kernel
r
"dense_9/kernel/Read/ReadVariableOpReadVariableOpdense_9/kernel*
_output_shapes
:	?d*
dtype0
p
dense_9/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*
shared_namedense_9/bias
i
 dense_9/bias/Read/ReadVariableOpReadVariableOpdense_9/bias*
_output_shapes
:d*
dtype0
z
dense_10/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d2* 
shared_namedense_10/kernel
s
#dense_10/kernel/Read/ReadVariableOpReadVariableOpdense_10/kernel*
_output_shapes

:d2*
dtype0
r
dense_10/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*
shared_namedense_10/bias
k
!dense_10/bias/Read/ReadVariableOpReadVariableOpdense_10/bias*
_output_shapes
:2*
dtype0
z
dense_11/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2* 
shared_namedense_11/kernel
s
#dense_11/kernel/Read/ReadVariableOpReadVariableOpdense_11/kernel*
_output_shapes

:2*
dtype0
r
dense_11/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_11/bias
k
!dense_11/bias/Read/ReadVariableOpReadVariableOpdense_11/bias*
_output_shapes
:*
dtype0
`
beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namebeta_1
Y
beta_1/Read/ReadVariableOpReadVariableOpbeta_1*
_output_shapes
: *
dtype0
`
beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namebeta_2
Y
beta_2/Read/ReadVariableOpReadVariableOpbeta_2*
_output_shapes
: *
dtype0
^
decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namedecay
W
decay/Read/ReadVariableOpReadVariableOpdecay*
_output_shapes
: *
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
?
lstm_4/lstm_cell_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?**
shared_namelstm_4/lstm_cell_4/kernel
?
-lstm_4/lstm_cell_4/kernel/Read/ReadVariableOpReadVariableOplstm_4/lstm_cell_4/kernel*
_output_shapes
:	?*
dtype0
?
#lstm_4/lstm_cell_4/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*4
shared_name%#lstm_4/lstm_cell_4/recurrent_kernel
?
7lstm_4/lstm_cell_4/recurrent_kernel/Read/ReadVariableOpReadVariableOp#lstm_4/lstm_cell_4/recurrent_kernel* 
_output_shapes
:
??*
dtype0
?
lstm_4/lstm_cell_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*(
shared_namelstm_4/lstm_cell_4/bias
?
+lstm_4/lstm_cell_4/bias/Read/ReadVariableOpReadVariableOplstm_4/lstm_cell_4/bias*
_output_shapes	
:?*
dtype0
?
lstm_5/lstm_cell_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??**
shared_namelstm_5/lstm_cell_5/kernel
?
-lstm_5/lstm_cell_5/kernel/Read/ReadVariableOpReadVariableOplstm_5/lstm_cell_5/kernel* 
_output_shapes
:
??*
dtype0
?
#lstm_5/lstm_cell_5/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*4
shared_name%#lstm_5/lstm_cell_5/recurrent_kernel
?
7lstm_5/lstm_cell_5/recurrent_kernel/Read/ReadVariableOpReadVariableOp#lstm_5/lstm_cell_5/recurrent_kernel* 
_output_shapes
:
??*
dtype0
?
lstm_5/lstm_cell_5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*(
shared_namelstm_5/lstm_cell_5/bias
?
+lstm_5/lstm_cell_5/bias/Read/ReadVariableOpReadVariableOplstm_5/lstm_cell_5/bias*
_output_shapes	
:?*
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
Adam/dense_8/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*&
shared_nameAdam/dense_8/kernel/m
?
)Adam/dense_8/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_8/kernel/m* 
_output_shapes
:
??*
dtype0

Adam/dense_8/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*$
shared_nameAdam/dense_8/bias/m
x
'Adam/dense_8/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_8/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/dense_9/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?d*&
shared_nameAdam/dense_9/kernel/m
?
)Adam/dense_9/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_9/kernel/m*
_output_shapes
:	?d*
dtype0
~
Adam/dense_9/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*$
shared_nameAdam/dense_9/bias/m
w
'Adam/dense_9/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_9/bias/m*
_output_shapes
:d*
dtype0
?
Adam/dense_10/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d2*'
shared_nameAdam/dense_10/kernel/m
?
*Adam/dense_10/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_10/kernel/m*
_output_shapes

:d2*
dtype0
?
Adam/dense_10/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*%
shared_nameAdam/dense_10/bias/m
y
(Adam/dense_10/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_10/bias/m*
_output_shapes
:2*
dtype0
?
Adam/dense_11/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*'
shared_nameAdam/dense_11/kernel/m
?
*Adam/dense_11/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_11/kernel/m*
_output_shapes

:2*
dtype0
?
Adam/dense_11/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_11/bias/m
y
(Adam/dense_11/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_11/bias/m*
_output_shapes
:*
dtype0
?
 Adam/lstm_4/lstm_cell_4/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*1
shared_name" Adam/lstm_4/lstm_cell_4/kernel/m
?
4Adam/lstm_4/lstm_cell_4/kernel/m/Read/ReadVariableOpReadVariableOp Adam/lstm_4/lstm_cell_4/kernel/m*
_output_shapes
:	?*
dtype0
?
*Adam/lstm_4/lstm_cell_4/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*;
shared_name,*Adam/lstm_4/lstm_cell_4/recurrent_kernel/m
?
>Adam/lstm_4/lstm_cell_4/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp*Adam/lstm_4/lstm_cell_4/recurrent_kernel/m* 
_output_shapes
:
??*
dtype0
?
Adam/lstm_4/lstm_cell_4/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*/
shared_name Adam/lstm_4/lstm_cell_4/bias/m
?
2Adam/lstm_4/lstm_cell_4/bias/m/Read/ReadVariableOpReadVariableOpAdam/lstm_4/lstm_cell_4/bias/m*
_output_shapes	
:?*
dtype0
?
 Adam/lstm_5/lstm_cell_5/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*1
shared_name" Adam/lstm_5/lstm_cell_5/kernel/m
?
4Adam/lstm_5/lstm_cell_5/kernel/m/Read/ReadVariableOpReadVariableOp Adam/lstm_5/lstm_cell_5/kernel/m* 
_output_shapes
:
??*
dtype0
?
*Adam/lstm_5/lstm_cell_5/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*;
shared_name,*Adam/lstm_5/lstm_cell_5/recurrent_kernel/m
?
>Adam/lstm_5/lstm_cell_5/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp*Adam/lstm_5/lstm_cell_5/recurrent_kernel/m* 
_output_shapes
:
??*
dtype0
?
Adam/lstm_5/lstm_cell_5/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*/
shared_name Adam/lstm_5/lstm_cell_5/bias/m
?
2Adam/lstm_5/lstm_cell_5/bias/m/Read/ReadVariableOpReadVariableOpAdam/lstm_5/lstm_cell_5/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/dense_8/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*&
shared_nameAdam/dense_8/kernel/v
?
)Adam/dense_8/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_8/kernel/v* 
_output_shapes
:
??*
dtype0

Adam/dense_8/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*$
shared_nameAdam/dense_8/bias/v
x
'Adam/dense_8/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_8/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/dense_9/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?d*&
shared_nameAdam/dense_9/kernel/v
?
)Adam/dense_9/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_9/kernel/v*
_output_shapes
:	?d*
dtype0
~
Adam/dense_9/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*$
shared_nameAdam/dense_9/bias/v
w
'Adam/dense_9/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_9/bias/v*
_output_shapes
:d*
dtype0
?
Adam/dense_10/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d2*'
shared_nameAdam/dense_10/kernel/v
?
*Adam/dense_10/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_10/kernel/v*
_output_shapes

:d2*
dtype0
?
Adam/dense_10/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*%
shared_nameAdam/dense_10/bias/v
y
(Adam/dense_10/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_10/bias/v*
_output_shapes
:2*
dtype0
?
Adam/dense_11/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*'
shared_nameAdam/dense_11/kernel/v
?
*Adam/dense_11/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_11/kernel/v*
_output_shapes

:2*
dtype0
?
Adam/dense_11/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_11/bias/v
y
(Adam/dense_11/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_11/bias/v*
_output_shapes
:*
dtype0
?
 Adam/lstm_4/lstm_cell_4/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*1
shared_name" Adam/lstm_4/lstm_cell_4/kernel/v
?
4Adam/lstm_4/lstm_cell_4/kernel/v/Read/ReadVariableOpReadVariableOp Adam/lstm_4/lstm_cell_4/kernel/v*
_output_shapes
:	?*
dtype0
?
*Adam/lstm_4/lstm_cell_4/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*;
shared_name,*Adam/lstm_4/lstm_cell_4/recurrent_kernel/v
?
>Adam/lstm_4/lstm_cell_4/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp*Adam/lstm_4/lstm_cell_4/recurrent_kernel/v* 
_output_shapes
:
??*
dtype0
?
Adam/lstm_4/lstm_cell_4/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*/
shared_name Adam/lstm_4/lstm_cell_4/bias/v
?
2Adam/lstm_4/lstm_cell_4/bias/v/Read/ReadVariableOpReadVariableOpAdam/lstm_4/lstm_cell_4/bias/v*
_output_shapes	
:?*
dtype0
?
 Adam/lstm_5/lstm_cell_5/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*1
shared_name" Adam/lstm_5/lstm_cell_5/kernel/v
?
4Adam/lstm_5/lstm_cell_5/kernel/v/Read/ReadVariableOpReadVariableOp Adam/lstm_5/lstm_cell_5/kernel/v* 
_output_shapes
:
??*
dtype0
?
*Adam/lstm_5/lstm_cell_5/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*;
shared_name,*Adam/lstm_5/lstm_cell_5/recurrent_kernel/v
?
>Adam/lstm_5/lstm_cell_5/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp*Adam/lstm_5/lstm_cell_5/recurrent_kernel/v* 
_output_shapes
:
??*
dtype0
?
Adam/lstm_5/lstm_cell_5/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*/
shared_name Adam/lstm_5/lstm_cell_5/bias/v
?
2Adam/lstm_5/lstm_cell_5/bias/v/Read/ReadVariableOpReadVariableOpAdam/lstm_5/lstm_cell_5/bias/v*
_output_shapes	
:?*
dtype0

NoOpNoOp
?K
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?J
value?JB?J B?J
?
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer_with_weights-3
layer-3
layer_with_weights-4
layer-4
layer_with_weights-5
layer-5
	optimizer
	variables
	trainable_variables

regularization_losses
	keras_api

signatures
l
cell

state_spec
	variables
trainable_variables
regularization_losses
	keras_api
l
cell

state_spec
	variables
trainable_variables
regularization_losses
	keras_api
h

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
h

kernel
 bias
!	variables
"trainable_variables
#regularization_losses
$	keras_api
h

%kernel
&bias
'	variables
(trainable_variables
)regularization_losses
*	keras_api
h

+kernel
,bias
-	variables
.trainable_variables
/regularization_losses
0	keras_api
?

1beta_1

2beta_2
	3decay
4learning_rate
5iterm}m~m m?%m?&m?+m?,m?6m?7m?8m?9m?:m?;m?v?v?v? v?%v?&v?+v?,v?6v?7v?8v?9v?:v?;v?
f
60
71
82
93
:4
;5
6
7
8
 9
%10
&11
+12
,13
f
60
71
82
93
:4
;5
6
7
8
 9
%10
&11
+12
,13
 
?

<layers
=layer_regularization_losses
>metrics
	variables
	trainable_variables

regularization_losses
?non_trainable_variables
@layer_metrics
 
~

6kernel
7recurrent_kernel
8bias
A	variables
Btrainable_variables
Cregularization_losses
D	keras_api
 

60
71
82

60
71
82
 
?

Elayers
Flayer_regularization_losses
Gmetrics
	variables
trainable_variables
regularization_losses

Hstates
Inon_trainable_variables
Jlayer_metrics
~

9kernel
:recurrent_kernel
;bias
K	variables
Ltrainable_variables
Mregularization_losses
N	keras_api
 

90
:1
;2

90
:1
;2
 
?

Olayers
Player_regularization_losses
Qmetrics
	variables
trainable_variables
regularization_losses

Rstates
Snon_trainable_variables
Tlayer_metrics
ZX
VARIABLE_VALUEdense_8/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_8/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
?

Ulayers
Vlayer_regularization_losses
Wmetrics
	variables
trainable_variables
regularization_losses
Xnon_trainable_variables
Ylayer_metrics
ZX
VARIABLE_VALUEdense_9/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_9/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE

0
 1

0
 1
 
?

Zlayers
[layer_regularization_losses
\metrics
!	variables
"trainable_variables
#regularization_losses
]non_trainable_variables
^layer_metrics
[Y
VARIABLE_VALUEdense_10/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_10/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE

%0
&1

%0
&1
 
?

_layers
`layer_regularization_losses
ametrics
'	variables
(trainable_variables
)regularization_losses
bnon_trainable_variables
clayer_metrics
[Y
VARIABLE_VALUEdense_11/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_11/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE

+0
,1

+0
,1
 
?

dlayers
elayer_regularization_losses
fmetrics
-	variables
.trainable_variables
/regularization_losses
gnon_trainable_variables
hlayer_metrics
GE
VARIABLE_VALUEbeta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
GE
VARIABLE_VALUEbeta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
EC
VARIABLE_VALUEdecay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUElearning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUElstm_4/lstm_cell_4/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
_]
VARIABLE_VALUE#lstm_4/lstm_cell_4/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
SQ
VARIABLE_VALUElstm_4/lstm_cell_4/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUElstm_5/lstm_cell_5/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
_]
VARIABLE_VALUE#lstm_5/lstm_cell_5/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
SQ
VARIABLE_VALUElstm_5/lstm_cell_5/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
*
0
1
2
3
4
5
 

i0
j1
 
 

60
71
82

60
71
82
 
?

klayers
llayer_regularization_losses
mmetrics
A	variables
Btrainable_variables
Cregularization_losses
nnon_trainable_variables
olayer_metrics

0
 
 
 
 
 

90
:1
;2

90
:1
;2
 
?

players
qlayer_regularization_losses
rmetrics
K	variables
Ltrainable_variables
Mregularization_losses
snon_trainable_variables
tlayer_metrics

0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
4
	utotal
	vcount
w	variables
x	keras_api
4
	ytotal
	zcount
{	variables
|	keras_api
 
 
 
 
 
 
 
 
 
 
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

u0
v1

w	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE

y0
z1

{	variables
}{
VARIABLE_VALUEAdam/dense_8/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_8/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_9/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_9/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_10/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_10/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_11/kernel/mRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_11/bias/mPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/lstm_4/lstm_cell_4/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE*Adam/lstm_4/lstm_cell_4/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUEAdam/lstm_4/lstm_cell_4/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/lstm_5/lstm_cell_5/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE*Adam/lstm_5/lstm_cell_5/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUEAdam/lstm_5/lstm_cell_5/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_8/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_8/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_9/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_9/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_10/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_10/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_11/kernel/vRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_11/bias/vPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/lstm_4/lstm_cell_4/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE*Adam/lstm_4/lstm_cell_4/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUEAdam/lstm_4/lstm_cell_4/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/lstm_5/lstm_cell_5/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE*Adam/lstm_5/lstm_cell_5/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUEAdam/lstm_5/lstm_cell_5/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_lstm_4_inputPlaceholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_4_inputlstm_4/lstm_cell_4/kernel#lstm_4/lstm_cell_4/recurrent_kernellstm_4/lstm_cell_4/biaslstm_5/lstm_cell_5/kernel#lstm_5/lstm_cell_5/recurrent_kernellstm_5/lstm_cell_5/biasdense_8/kerneldense_8/biasdense_9/kerneldense_9/biasdense_10/kerneldense_10/biasdense_11/kerneldense_11/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *-
f(R&
$__inference_signature_wrapper_184136
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename"dense_8/kernel/Read/ReadVariableOp dense_8/bias/Read/ReadVariableOp"dense_9/kernel/Read/ReadVariableOp dense_9/bias/Read/ReadVariableOp#dense_10/kernel/Read/ReadVariableOp!dense_10/bias/Read/ReadVariableOp#dense_11/kernel/Read/ReadVariableOp!dense_11/bias/Read/ReadVariableOpbeta_1/Read/ReadVariableOpbeta_2/Read/ReadVariableOpdecay/Read/ReadVariableOp!learning_rate/Read/ReadVariableOpAdam/iter/Read/ReadVariableOp-lstm_4/lstm_cell_4/kernel/Read/ReadVariableOp7lstm_4/lstm_cell_4/recurrent_kernel/Read/ReadVariableOp+lstm_4/lstm_cell_4/bias/Read/ReadVariableOp-lstm_5/lstm_cell_5/kernel/Read/ReadVariableOp7lstm_5/lstm_cell_5/recurrent_kernel/Read/ReadVariableOp+lstm_5/lstm_cell_5/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp)Adam/dense_8/kernel/m/Read/ReadVariableOp'Adam/dense_8/bias/m/Read/ReadVariableOp)Adam/dense_9/kernel/m/Read/ReadVariableOp'Adam/dense_9/bias/m/Read/ReadVariableOp*Adam/dense_10/kernel/m/Read/ReadVariableOp(Adam/dense_10/bias/m/Read/ReadVariableOp*Adam/dense_11/kernel/m/Read/ReadVariableOp(Adam/dense_11/bias/m/Read/ReadVariableOp4Adam/lstm_4/lstm_cell_4/kernel/m/Read/ReadVariableOp>Adam/lstm_4/lstm_cell_4/recurrent_kernel/m/Read/ReadVariableOp2Adam/lstm_4/lstm_cell_4/bias/m/Read/ReadVariableOp4Adam/lstm_5/lstm_cell_5/kernel/m/Read/ReadVariableOp>Adam/lstm_5/lstm_cell_5/recurrent_kernel/m/Read/ReadVariableOp2Adam/lstm_5/lstm_cell_5/bias/m/Read/ReadVariableOp)Adam/dense_8/kernel/v/Read/ReadVariableOp'Adam/dense_8/bias/v/Read/ReadVariableOp)Adam/dense_9/kernel/v/Read/ReadVariableOp'Adam/dense_9/bias/v/Read/ReadVariableOp*Adam/dense_10/kernel/v/Read/ReadVariableOp(Adam/dense_10/bias/v/Read/ReadVariableOp*Adam/dense_11/kernel/v/Read/ReadVariableOp(Adam/dense_11/bias/v/Read/ReadVariableOp4Adam/lstm_4/lstm_cell_4/kernel/v/Read/ReadVariableOp>Adam/lstm_4/lstm_cell_4/recurrent_kernel/v/Read/ReadVariableOp2Adam/lstm_4/lstm_cell_4/bias/v/Read/ReadVariableOp4Adam/lstm_5/lstm_cell_5/kernel/v/Read/ReadVariableOp>Adam/lstm_5/lstm_cell_5/recurrent_kernel/v/Read/ReadVariableOp2Adam/lstm_5/lstm_cell_5/bias/v/Read/ReadVariableOpConst*@
Tin9
725	*
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
GPU 2J 8? *(
f#R!
__inference__traced_save_186630
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_8/kerneldense_8/biasdense_9/kerneldense_9/biasdense_10/kerneldense_10/biasdense_11/kerneldense_11/biasbeta_1beta_2decaylearning_rate	Adam/iterlstm_4/lstm_cell_4/kernel#lstm_4/lstm_cell_4/recurrent_kernellstm_4/lstm_cell_4/biaslstm_5/lstm_cell_5/kernel#lstm_5/lstm_cell_5/recurrent_kernellstm_5/lstm_cell_5/biastotalcounttotal_1count_1Adam/dense_8/kernel/mAdam/dense_8/bias/mAdam/dense_9/kernel/mAdam/dense_9/bias/mAdam/dense_10/kernel/mAdam/dense_10/bias/mAdam/dense_11/kernel/mAdam/dense_11/bias/m Adam/lstm_4/lstm_cell_4/kernel/m*Adam/lstm_4/lstm_cell_4/recurrent_kernel/mAdam/lstm_4/lstm_cell_4/bias/m Adam/lstm_5/lstm_cell_5/kernel/m*Adam/lstm_5/lstm_cell_5/recurrent_kernel/mAdam/lstm_5/lstm_cell_5/bias/mAdam/dense_8/kernel/vAdam/dense_8/bias/vAdam/dense_9/kernel/vAdam/dense_9/bias/vAdam/dense_10/kernel/vAdam/dense_10/bias/vAdam/dense_11/kernel/vAdam/dense_11/bias/v Adam/lstm_4/lstm_cell_4/kernel/v*Adam/lstm_4/lstm_cell_4/recurrent_kernel/vAdam/lstm_4/lstm_cell_4/bias/v Adam/lstm_5/lstm_cell_5/kernel/v*Adam/lstm_5/lstm_cell_5/recurrent_kernel/vAdam/lstm_5/lstm_cell_5/bias/v*?
Tin8
624*
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
GPU 2J 8? *+
f&R$
"__inference__traced_restore_186793??%
?
?
G__inference_lstm_cell_4_layer_call_and_return_conditional_losses_181982

inputs

states
states_1"
matmul_readvariableop_resource$
 matmul_1_readvariableop_resource#
biasadd_readvariableop_resource
identity

identity_1

identity_2??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul_1/ReadVariableOpz
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
add?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
split`
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:??????????2	
Sigmoidd
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:??????????2
	Sigmoid_1]
mulMulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:??????????2
mul]
	LeakyRelu	LeakyRelusplit:output:2*(
_output_shapes
:??????????2
	LeakyRelun
mul_1MulSigmoid:y:0LeakyRelu:activations:0*
T0*(
_output_shapes
:??????????2
mul_1^
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:??????????2
add_1d
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:??????????2
	Sigmoid_2\
LeakyRelu_1	LeakyRelu	add_1:z:0*(
_output_shapes
:??????????2
LeakyRelu_1r
mul_2MulSigmoid_2:y:0LeakyRelu_1:activations:0*
T0*(
_output_shapes
:??????????2
mul_2?
IdentityIdentity	mul_2:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity?

Identity_1Identity	mul_2:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity_1?

Identity_2Identity	add_1:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*Z
_input_shapesI
G:?????????:??????????:??????????:::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:PL
(
_output_shapes
:??????????
 
_user_specified_namestates:PL
(
_output_shapes
:??????????
 
_user_specified_namestates
?
?
%sequential_2_lstm_5_while_cond_181795D
@sequential_2_lstm_5_while_sequential_2_lstm_5_while_loop_counterJ
Fsequential_2_lstm_5_while_sequential_2_lstm_5_while_maximum_iterations)
%sequential_2_lstm_5_while_placeholder+
'sequential_2_lstm_5_while_placeholder_1+
'sequential_2_lstm_5_while_placeholder_2+
'sequential_2_lstm_5_while_placeholder_3F
Bsequential_2_lstm_5_while_less_sequential_2_lstm_5_strided_slice_1\
Xsequential_2_lstm_5_while_sequential_2_lstm_5_while_cond_181795___redundant_placeholder0\
Xsequential_2_lstm_5_while_sequential_2_lstm_5_while_cond_181795___redundant_placeholder1\
Xsequential_2_lstm_5_while_sequential_2_lstm_5_while_cond_181795___redundant_placeholder2\
Xsequential_2_lstm_5_while_sequential_2_lstm_5_while_cond_181795___redundant_placeholder3&
"sequential_2_lstm_5_while_identity
?
sequential_2/lstm_5/while/LessLess%sequential_2_lstm_5_while_placeholderBsequential_2_lstm_5_while_less_sequential_2_lstm_5_strided_slice_1*
T0*
_output_shapes
: 2 
sequential_2/lstm_5/while/Less?
"sequential_2/lstm_5/while/IdentityIdentity"sequential_2/lstm_5/while/Less:z:0*
T0
*
_output_shapes
: 2$
"sequential_2/lstm_5/while/Identity"Q
"sequential_2_lstm_5_while_identity+sequential_2/lstm_5/while/Identity:output:0*U
_input_shapesD
B: : : : :??????????:??????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?

?
lstm_4_while_cond_184533*
&lstm_4_while_lstm_4_while_loop_counter0
,lstm_4_while_lstm_4_while_maximum_iterations
lstm_4_while_placeholder
lstm_4_while_placeholder_1
lstm_4_while_placeholder_2
lstm_4_while_placeholder_3,
(lstm_4_while_less_lstm_4_strided_slice_1B
>lstm_4_while_lstm_4_while_cond_184533___redundant_placeholder0B
>lstm_4_while_lstm_4_while_cond_184533___redundant_placeholder1B
>lstm_4_while_lstm_4_while_cond_184533___redundant_placeholder2B
>lstm_4_while_lstm_4_while_cond_184533___redundant_placeholder3
lstm_4_while_identity
?
lstm_4/while/LessLesslstm_4_while_placeholder(lstm_4_while_less_lstm_4_strided_slice_1*
T0*
_output_shapes
: 2
lstm_4/while/Lessr
lstm_4/while/IdentityIdentitylstm_4/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_4/while/Identity"7
lstm_4_while_identitylstm_4/while/Identity:output:0*U
_input_shapesD
B: : : : :??????????:??????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?

?
-__inference_sequential_2_layer_call_fn_184022
lstm_4_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalllstm_4_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_sequential_2_layer_call_and_return_conditional_losses_1839912
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*b
_input_shapesQ
O:?????????::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:Y U
+
_output_shapes
:?????????
&
_user_specified_namelstm_4_input
?Z
?
B__inference_lstm_5_layer_call_and_return_conditional_losses_185824

inputs.
*lstm_cell_5_matmul_readvariableop_resource0
,lstm_cell_5_matmul_1_readvariableop_resource/
+lstm_cell_5_biasadd_readvariableop_resource
identity??"lstm_cell_5/BiasAdd/ReadVariableOp?!lstm_cell_5/MatMul/ReadVariableOp?#lstm_cell_5/MatMul_1/ReadVariableOp?whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:??????????2
zerosa
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessg
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const~
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:??????????2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm{
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:??????????2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_2?
!lstm_cell_5/MatMul/ReadVariableOpReadVariableOp*lstm_cell_5_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02#
!lstm_cell_5/MatMul/ReadVariableOp?
lstm_cell_5/MatMulMatMulstrided_slice_2:output:0)lstm_cell_5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_5/MatMul?
#lstm_cell_5/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_5_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02%
#lstm_cell_5/MatMul_1/ReadVariableOp?
lstm_cell_5/MatMul_1MatMulzeros:output:0+lstm_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_5/MatMul_1?
lstm_cell_5/addAddV2lstm_cell_5/MatMul:product:0lstm_cell_5/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell_5/add?
"lstm_cell_5/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_5_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02$
"lstm_cell_5/BiasAdd/ReadVariableOp?
lstm_cell_5/BiasAddBiasAddlstm_cell_5/add:z:0*lstm_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_5/BiasAddh
lstm_cell_5/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_5/Const|
lstm_cell_5/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_5/split/split_dim?
lstm_cell_5/splitSplit$lstm_cell_5/split/split_dim:output:0lstm_cell_5/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
lstm_cell_5/split?
lstm_cell_5/SigmoidSigmoidlstm_cell_5/split:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_5/Sigmoid?
lstm_cell_5/Sigmoid_1Sigmoidlstm_cell_5/split:output:1*
T0*(
_output_shapes
:??????????2
lstm_cell_5/Sigmoid_1?
lstm_cell_5/mulMullstm_cell_5/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_5/mul?
lstm_cell_5/LeakyRelu	LeakyRelulstm_cell_5/split:output:2*(
_output_shapes
:??????????2
lstm_cell_5/LeakyRelu?
lstm_cell_5/mul_1Mullstm_cell_5/Sigmoid:y:0#lstm_cell_5/LeakyRelu:activations:0*
T0*(
_output_shapes
:??????????2
lstm_cell_5/mul_1?
lstm_cell_5/add_1AddV2lstm_cell_5/mul:z:0lstm_cell_5/mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_5/add_1?
lstm_cell_5/Sigmoid_2Sigmoidlstm_cell_5/split:output:3*
T0*(
_output_shapes
:??????????2
lstm_cell_5/Sigmoid_2?
lstm_cell_5/LeakyRelu_1	LeakyRelulstm_cell_5/add_1:z:0*(
_output_shapes
:??????????2
lstm_cell_5/LeakyRelu_1?
lstm_cell_5/mul_2Mullstm_cell_5/Sigmoid_2:y:0%lstm_cell_5/LeakyRelu_1:activations:0*
T0*(
_output_shapes
:??????????2
lstm_cell_5/mul_2?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_5_matmul_readvariableop_resource,lstm_cell_5_matmul_1_readvariableop_resource+lstm_cell_5_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :??????????:??????????: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_185739*
condR
while_cond_185738*M
output_shapes<
:: : : : :??????????:??????????: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:??????????2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime?
IdentityIdentitystrided_slice_3:output:0#^lstm_cell_5/BiasAdd/ReadVariableOp"^lstm_cell_5/MatMul/ReadVariableOp$^lstm_cell_5/MatMul_1/ReadVariableOp^while*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:??????????:::2H
"lstm_cell_5/BiasAdd/ReadVariableOp"lstm_cell_5/BiasAdd/ReadVariableOp2F
!lstm_cell_5/MatMul/ReadVariableOp!lstm_cell_5/MatMul/ReadVariableOp2J
#lstm_cell_5/MatMul_1/ReadVariableOp#lstm_cell_5/MatMul_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?Z
?
B__inference_lstm_4_layer_call_and_return_conditional_losses_183438

inputs.
*lstm_cell_4_matmul_readvariableop_resource0
,lstm_cell_4_matmul_1_readvariableop_resource/
+lstm_cell_4_biasadd_readvariableop_resource
identity??"lstm_cell_4/BiasAdd/ReadVariableOp?!lstm_cell_4/MatMul/ReadVariableOp?#lstm_cell_4/MatMul_1/ReadVariableOp?whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:??????????2
zerosa
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessg
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const~
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:??????????2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:?????????2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slice_2?
!lstm_cell_4/MatMul/ReadVariableOpReadVariableOp*lstm_cell_4_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02#
!lstm_cell_4/MatMul/ReadVariableOp?
lstm_cell_4/MatMulMatMulstrided_slice_2:output:0)lstm_cell_4/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_4/MatMul?
#lstm_cell_4/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_4_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02%
#lstm_cell_4/MatMul_1/ReadVariableOp?
lstm_cell_4/MatMul_1MatMulzeros:output:0+lstm_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_4/MatMul_1?
lstm_cell_4/addAddV2lstm_cell_4/MatMul:product:0lstm_cell_4/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell_4/add?
"lstm_cell_4/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_4_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02$
"lstm_cell_4/BiasAdd/ReadVariableOp?
lstm_cell_4/BiasAddBiasAddlstm_cell_4/add:z:0*lstm_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_4/BiasAddh
lstm_cell_4/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_4/Const|
lstm_cell_4/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_4/split/split_dim?
lstm_cell_4/splitSplit$lstm_cell_4/split/split_dim:output:0lstm_cell_4/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
lstm_cell_4/split?
lstm_cell_4/SigmoidSigmoidlstm_cell_4/split:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_4/Sigmoid?
lstm_cell_4/Sigmoid_1Sigmoidlstm_cell_4/split:output:1*
T0*(
_output_shapes
:??????????2
lstm_cell_4/Sigmoid_1?
lstm_cell_4/mulMullstm_cell_4/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_4/mul?
lstm_cell_4/LeakyRelu	LeakyRelulstm_cell_4/split:output:2*(
_output_shapes
:??????????2
lstm_cell_4/LeakyRelu?
lstm_cell_4/mul_1Mullstm_cell_4/Sigmoid:y:0#lstm_cell_4/LeakyRelu:activations:0*
T0*(
_output_shapes
:??????????2
lstm_cell_4/mul_1?
lstm_cell_4/add_1AddV2lstm_cell_4/mul:z:0lstm_cell_4/mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_4/add_1?
lstm_cell_4/Sigmoid_2Sigmoidlstm_cell_4/split:output:3*
T0*(
_output_shapes
:??????????2
lstm_cell_4/Sigmoid_2?
lstm_cell_4/LeakyRelu_1	LeakyRelulstm_cell_4/add_1:z:0*(
_output_shapes
:??????????2
lstm_cell_4/LeakyRelu_1?
lstm_cell_4/mul_2Mullstm_cell_4/Sigmoid_2:y:0%lstm_cell_4/LeakyRelu_1:activations:0*
T0*(
_output_shapes
:??????????2
lstm_cell_4/mul_2?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_4_matmul_readvariableop_resource,lstm_cell_4_matmul_1_readvariableop_resource+lstm_cell_4_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :??????????:??????????: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_183353*
condR
while_cond_183352*M
output_shapes<
:: : : : :??????????:??????????: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:??????????2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime?
IdentityIdentitytranspose_1:y:0#^lstm_cell_4/BiasAdd/ReadVariableOp"^lstm_cell_4/MatMul/ReadVariableOp$^lstm_cell_4/MatMul_1/ReadVariableOp^while*
T0*,
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????:::2H
"lstm_cell_4/BiasAdd/ReadVariableOp"lstm_cell_4/BiasAdd/ReadVariableOp2F
!lstm_cell_4/MatMul/ReadVariableOp!lstm_cell_4/MatMul/ReadVariableOp2J
#lstm_cell_4/MatMul_1/ReadVariableOp#lstm_cell_4/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_183199
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_183199___redundant_placeholder04
0while_while_cond_183199___redundant_placeholder14
0while_while_cond_183199___redundant_placeholder24
0while_while_cond_183199___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*U
_input_shapesD
B: : : : :??????????:??????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?M
?	
lstm_4_while_body_184534*
&lstm_4_while_lstm_4_while_loop_counter0
,lstm_4_while_lstm_4_while_maximum_iterations
lstm_4_while_placeholder
lstm_4_while_placeholder_1
lstm_4_while_placeholder_2
lstm_4_while_placeholder_3)
%lstm_4_while_lstm_4_strided_slice_1_0e
alstm_4_while_tensorarrayv2read_tensorlistgetitem_lstm_4_tensorarrayunstack_tensorlistfromtensor_0=
9lstm_4_while_lstm_cell_4_matmul_readvariableop_resource_0?
;lstm_4_while_lstm_cell_4_matmul_1_readvariableop_resource_0>
:lstm_4_while_lstm_cell_4_biasadd_readvariableop_resource_0
lstm_4_while_identity
lstm_4_while_identity_1
lstm_4_while_identity_2
lstm_4_while_identity_3
lstm_4_while_identity_4
lstm_4_while_identity_5'
#lstm_4_while_lstm_4_strided_slice_1c
_lstm_4_while_tensorarrayv2read_tensorlistgetitem_lstm_4_tensorarrayunstack_tensorlistfromtensor;
7lstm_4_while_lstm_cell_4_matmul_readvariableop_resource=
9lstm_4_while_lstm_cell_4_matmul_1_readvariableop_resource<
8lstm_4_while_lstm_cell_4_biasadd_readvariableop_resource??/lstm_4/while/lstm_cell_4/BiasAdd/ReadVariableOp?.lstm_4/while/lstm_cell_4/MatMul/ReadVariableOp?0lstm_4/while/lstm_cell_4/MatMul_1/ReadVariableOp?
>lstm_4/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2@
>lstm_4/while/TensorArrayV2Read/TensorListGetItem/element_shape?
0lstm_4/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemalstm_4_while_tensorarrayv2read_tensorlistgetitem_lstm_4_tensorarrayunstack_tensorlistfromtensor_0lstm_4_while_placeholderGlstm_4/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype022
0lstm_4/while/TensorArrayV2Read/TensorListGetItem?
.lstm_4/while/lstm_cell_4/MatMul/ReadVariableOpReadVariableOp9lstm_4_while_lstm_cell_4_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype020
.lstm_4/while/lstm_cell_4/MatMul/ReadVariableOp?
lstm_4/while/lstm_cell_4/MatMulMatMul7lstm_4/while/TensorArrayV2Read/TensorListGetItem:item:06lstm_4/while/lstm_cell_4/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2!
lstm_4/while/lstm_cell_4/MatMul?
0lstm_4/while/lstm_cell_4/MatMul_1/ReadVariableOpReadVariableOp;lstm_4_while_lstm_cell_4_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype022
0lstm_4/while/lstm_cell_4/MatMul_1/ReadVariableOp?
!lstm_4/while/lstm_cell_4/MatMul_1MatMullstm_4_while_placeholder_28lstm_4/while/lstm_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2#
!lstm_4/while/lstm_cell_4/MatMul_1?
lstm_4/while/lstm_cell_4/addAddV2)lstm_4/while/lstm_cell_4/MatMul:product:0+lstm_4/while/lstm_cell_4/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_4/while/lstm_cell_4/add?
/lstm_4/while/lstm_cell_4/BiasAdd/ReadVariableOpReadVariableOp:lstm_4_while_lstm_cell_4_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype021
/lstm_4/while/lstm_cell_4/BiasAdd/ReadVariableOp?
 lstm_4/while/lstm_cell_4/BiasAddBiasAdd lstm_4/while/lstm_cell_4/add:z:07lstm_4/while/lstm_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2"
 lstm_4/while/lstm_cell_4/BiasAdd?
lstm_4/while/lstm_cell_4/ConstConst*
_output_shapes
: *
dtype0*
value	B :2 
lstm_4/while/lstm_cell_4/Const?
(lstm_4/while/lstm_cell_4/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2*
(lstm_4/while/lstm_cell_4/split/split_dim?
lstm_4/while/lstm_cell_4/splitSplit1lstm_4/while/lstm_cell_4/split/split_dim:output:0)lstm_4/while/lstm_cell_4/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2 
lstm_4/while/lstm_cell_4/split?
 lstm_4/while/lstm_cell_4/SigmoidSigmoid'lstm_4/while/lstm_cell_4/split:output:0*
T0*(
_output_shapes
:??????????2"
 lstm_4/while/lstm_cell_4/Sigmoid?
"lstm_4/while/lstm_cell_4/Sigmoid_1Sigmoid'lstm_4/while/lstm_cell_4/split:output:1*
T0*(
_output_shapes
:??????????2$
"lstm_4/while/lstm_cell_4/Sigmoid_1?
lstm_4/while/lstm_cell_4/mulMul&lstm_4/while/lstm_cell_4/Sigmoid_1:y:0lstm_4_while_placeholder_3*
T0*(
_output_shapes
:??????????2
lstm_4/while/lstm_cell_4/mul?
"lstm_4/while/lstm_cell_4/LeakyRelu	LeakyRelu'lstm_4/while/lstm_cell_4/split:output:2*(
_output_shapes
:??????????2$
"lstm_4/while/lstm_cell_4/LeakyRelu?
lstm_4/while/lstm_cell_4/mul_1Mul$lstm_4/while/lstm_cell_4/Sigmoid:y:00lstm_4/while/lstm_cell_4/LeakyRelu:activations:0*
T0*(
_output_shapes
:??????????2 
lstm_4/while/lstm_cell_4/mul_1?
lstm_4/while/lstm_cell_4/add_1AddV2 lstm_4/while/lstm_cell_4/mul:z:0"lstm_4/while/lstm_cell_4/mul_1:z:0*
T0*(
_output_shapes
:??????????2 
lstm_4/while/lstm_cell_4/add_1?
"lstm_4/while/lstm_cell_4/Sigmoid_2Sigmoid'lstm_4/while/lstm_cell_4/split:output:3*
T0*(
_output_shapes
:??????????2$
"lstm_4/while/lstm_cell_4/Sigmoid_2?
$lstm_4/while/lstm_cell_4/LeakyRelu_1	LeakyRelu"lstm_4/while/lstm_cell_4/add_1:z:0*(
_output_shapes
:??????????2&
$lstm_4/while/lstm_cell_4/LeakyRelu_1?
lstm_4/while/lstm_cell_4/mul_2Mul&lstm_4/while/lstm_cell_4/Sigmoid_2:y:02lstm_4/while/lstm_cell_4/LeakyRelu_1:activations:0*
T0*(
_output_shapes
:??????????2 
lstm_4/while/lstm_cell_4/mul_2?
1lstm_4/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_4_while_placeholder_1lstm_4_while_placeholder"lstm_4/while/lstm_cell_4/mul_2:z:0*
_output_shapes
: *
element_dtype023
1lstm_4/while/TensorArrayV2Write/TensorListSetItemj
lstm_4/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_4/while/add/y?
lstm_4/while/addAddV2lstm_4_while_placeholderlstm_4/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_4/while/addn
lstm_4/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_4/while/add_1/y?
lstm_4/while/add_1AddV2&lstm_4_while_lstm_4_while_loop_counterlstm_4/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_4/while/add_1?
lstm_4/while/IdentityIdentitylstm_4/while/add_1:z:00^lstm_4/while/lstm_cell_4/BiasAdd/ReadVariableOp/^lstm_4/while/lstm_cell_4/MatMul/ReadVariableOp1^lstm_4/while/lstm_cell_4/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_4/while/Identity?
lstm_4/while/Identity_1Identity,lstm_4_while_lstm_4_while_maximum_iterations0^lstm_4/while/lstm_cell_4/BiasAdd/ReadVariableOp/^lstm_4/while/lstm_cell_4/MatMul/ReadVariableOp1^lstm_4/while/lstm_cell_4/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_4/while/Identity_1?
lstm_4/while/Identity_2Identitylstm_4/while/add:z:00^lstm_4/while/lstm_cell_4/BiasAdd/ReadVariableOp/^lstm_4/while/lstm_cell_4/MatMul/ReadVariableOp1^lstm_4/while/lstm_cell_4/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_4/while/Identity_2?
lstm_4/while/Identity_3IdentityAlstm_4/while/TensorArrayV2Write/TensorListSetItem:output_handle:00^lstm_4/while/lstm_cell_4/BiasAdd/ReadVariableOp/^lstm_4/while/lstm_cell_4/MatMul/ReadVariableOp1^lstm_4/while/lstm_cell_4/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_4/while/Identity_3?
lstm_4/while/Identity_4Identity"lstm_4/while/lstm_cell_4/mul_2:z:00^lstm_4/while/lstm_cell_4/BiasAdd/ReadVariableOp/^lstm_4/while/lstm_cell_4/MatMul/ReadVariableOp1^lstm_4/while/lstm_cell_4/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2
lstm_4/while/Identity_4?
lstm_4/while/Identity_5Identity"lstm_4/while/lstm_cell_4/add_1:z:00^lstm_4/while/lstm_cell_4/BiasAdd/ReadVariableOp/^lstm_4/while/lstm_cell_4/MatMul/ReadVariableOp1^lstm_4/while/lstm_cell_4/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2
lstm_4/while/Identity_5"7
lstm_4_while_identitylstm_4/while/Identity:output:0";
lstm_4_while_identity_1 lstm_4/while/Identity_1:output:0";
lstm_4_while_identity_2 lstm_4/while/Identity_2:output:0";
lstm_4_while_identity_3 lstm_4/while/Identity_3:output:0";
lstm_4_while_identity_4 lstm_4/while/Identity_4:output:0";
lstm_4_while_identity_5 lstm_4/while/Identity_5:output:0"L
#lstm_4_while_lstm_4_strided_slice_1%lstm_4_while_lstm_4_strided_slice_1_0"v
8lstm_4_while_lstm_cell_4_biasadd_readvariableop_resource:lstm_4_while_lstm_cell_4_biasadd_readvariableop_resource_0"x
9lstm_4_while_lstm_cell_4_matmul_1_readvariableop_resource;lstm_4_while_lstm_cell_4_matmul_1_readvariableop_resource_0"t
7lstm_4_while_lstm_cell_4_matmul_readvariableop_resource9lstm_4_while_lstm_cell_4_matmul_readvariableop_resource_0"?
_lstm_4_while_tensorarrayv2read_tensorlistgetitem_lstm_4_tensorarrayunstack_tensorlistfromtensoralstm_4_while_tensorarrayv2read_tensorlistgetitem_lstm_4_tensorarrayunstack_tensorlistfromtensor_0*S
_input_shapesB
@: : : : :??????????:??????????: : :::2b
/lstm_4/while/lstm_cell_4/BiasAdd/ReadVariableOp/lstm_4/while/lstm_cell_4/BiasAdd/ReadVariableOp2`
.lstm_4/while/lstm_cell_4/MatMul/ReadVariableOp.lstm_4/while/lstm_cell_4/MatMul/ReadVariableOp2d
0lstm_4/while/lstm_cell_4/MatMul_1/ReadVariableOp0lstm_4/while/lstm_cell_4/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?B
?
while_body_185411
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_06
2while_lstm_cell_4_matmul_readvariableop_resource_08
4while_lstm_cell_4_matmul_1_readvariableop_resource_07
3while_lstm_cell_4_biasadd_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor4
0while_lstm_cell_4_matmul_readvariableop_resource6
2while_lstm_cell_4_matmul_1_readvariableop_resource5
1while_lstm_cell_4_biasadd_readvariableop_resource??(while/lstm_cell_4/BiasAdd/ReadVariableOp?'while/lstm_cell_4/MatMul/ReadVariableOp?)while/lstm_cell_4/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
'while/lstm_cell_4/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_4_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype02)
'while/lstm_cell_4/MatMul/ReadVariableOp?
while/lstm_cell_4/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_4/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_4/MatMul?
)while/lstm_cell_4/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_4_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02+
)while/lstm_cell_4/MatMul_1/ReadVariableOp?
while/lstm_cell_4/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_4/MatMul_1?
while/lstm_cell_4/addAddV2"while/lstm_cell_4/MatMul:product:0$while/lstm_cell_4/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_4/add?
(while/lstm_cell_4/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_4_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02*
(while/lstm_cell_4/BiasAdd/ReadVariableOp?
while/lstm_cell_4/BiasAddBiasAddwhile/lstm_cell_4/add:z:00while/lstm_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_4/BiasAddt
while/lstm_cell_4/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_4/Const?
!while/lstm_cell_4/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!while/lstm_cell_4/split/split_dim?
while/lstm_cell_4/splitSplit*while/lstm_cell_4/split/split_dim:output:0"while/lstm_cell_4/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
while/lstm_cell_4/split?
while/lstm_cell_4/SigmoidSigmoid while/lstm_cell_4/split:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_4/Sigmoid?
while/lstm_cell_4/Sigmoid_1Sigmoid while/lstm_cell_4/split:output:1*
T0*(
_output_shapes
:??????????2
while/lstm_cell_4/Sigmoid_1?
while/lstm_cell_4/mulMulwhile/lstm_cell_4/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:??????????2
while/lstm_cell_4/mul?
while/lstm_cell_4/LeakyRelu	LeakyRelu while/lstm_cell_4/split:output:2*(
_output_shapes
:??????????2
while/lstm_cell_4/LeakyRelu?
while/lstm_cell_4/mul_1Mulwhile/lstm_cell_4/Sigmoid:y:0)while/lstm_cell_4/LeakyRelu:activations:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_4/mul_1?
while/lstm_cell_4/add_1AddV2while/lstm_cell_4/mul:z:0while/lstm_cell_4/mul_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_4/add_1?
while/lstm_cell_4/Sigmoid_2Sigmoid while/lstm_cell_4/split:output:3*
T0*(
_output_shapes
:??????????2
while/lstm_cell_4/Sigmoid_2?
while/lstm_cell_4/LeakyRelu_1	LeakyReluwhile/lstm_cell_4/add_1:z:0*(
_output_shapes
:??????????2
while/lstm_cell_4/LeakyRelu_1?
while/lstm_cell_4/mul_2Mulwhile/lstm_cell_4/Sigmoid_2:y:0+while/lstm_cell_4/LeakyRelu_1:activations:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_4/mul_2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_4/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1?
while/IdentityIdentitywhile/add_1:z:0)^while/lstm_cell_4/BiasAdd/ReadVariableOp(^while/lstm_cell_4/MatMul/ReadVariableOp*^while/lstm_cell_4/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations)^while/lstm_cell_4/BiasAdd/ReadVariableOp(^while/lstm_cell_4/MatMul/ReadVariableOp*^while/lstm_cell_4/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0)^while/lstm_cell_4/BiasAdd/ReadVariableOp(^while/lstm_cell_4/MatMul/ReadVariableOp*^while/lstm_cell_4/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0)^while/lstm_cell_4/BiasAdd/ReadVariableOp(^while/lstm_cell_4/MatMul/ReadVariableOp*^while/lstm_cell_4/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_4/mul_2:z:0)^while/lstm_cell_4/BiasAdd/ReadVariableOp(^while/lstm_cell_4/MatMul/ReadVariableOp*^while/lstm_cell_4/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_4/add_1:z:0)^while/lstm_cell_4/BiasAdd/ReadVariableOp(^while/lstm_cell_4/MatMul/ReadVariableOp*^while/lstm_cell_4/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_4_biasadd_readvariableop_resource3while_lstm_cell_4_biasadd_readvariableop_resource_0"j
2while_lstm_cell_4_matmul_1_readvariableop_resource4while_lstm_cell_4_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_4_matmul_readvariableop_resource2while_lstm_cell_4_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*S
_input_shapesB
@: : : : :??????????:??????????: : :::2T
(while/lstm_cell_4/BiasAdd/ReadVariableOp(while/lstm_cell_4/BiasAdd/ReadVariableOp2R
'while/lstm_cell_4/MatMul/ReadVariableOp'while/lstm_cell_4/MatMul/ReadVariableOp2V
)while/lstm_cell_4/MatMul_1/ReadVariableOp)while/lstm_cell_4/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?M
?	
lstm_5_while_body_184683*
&lstm_5_while_lstm_5_while_loop_counter0
,lstm_5_while_lstm_5_while_maximum_iterations
lstm_5_while_placeholder
lstm_5_while_placeholder_1
lstm_5_while_placeholder_2
lstm_5_while_placeholder_3)
%lstm_5_while_lstm_5_strided_slice_1_0e
alstm_5_while_tensorarrayv2read_tensorlistgetitem_lstm_5_tensorarrayunstack_tensorlistfromtensor_0=
9lstm_5_while_lstm_cell_5_matmul_readvariableop_resource_0?
;lstm_5_while_lstm_cell_5_matmul_1_readvariableop_resource_0>
:lstm_5_while_lstm_cell_5_biasadd_readvariableop_resource_0
lstm_5_while_identity
lstm_5_while_identity_1
lstm_5_while_identity_2
lstm_5_while_identity_3
lstm_5_while_identity_4
lstm_5_while_identity_5'
#lstm_5_while_lstm_5_strided_slice_1c
_lstm_5_while_tensorarrayv2read_tensorlistgetitem_lstm_5_tensorarrayunstack_tensorlistfromtensor;
7lstm_5_while_lstm_cell_5_matmul_readvariableop_resource=
9lstm_5_while_lstm_cell_5_matmul_1_readvariableop_resource<
8lstm_5_while_lstm_cell_5_biasadd_readvariableop_resource??/lstm_5/while/lstm_cell_5/BiasAdd/ReadVariableOp?.lstm_5/while/lstm_cell_5/MatMul/ReadVariableOp?0lstm_5/while/lstm_cell_5/MatMul_1/ReadVariableOp?
>lstm_5/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2@
>lstm_5/while/TensorArrayV2Read/TensorListGetItem/element_shape?
0lstm_5/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemalstm_5_while_tensorarrayv2read_tensorlistgetitem_lstm_5_tensorarrayunstack_tensorlistfromtensor_0lstm_5_while_placeholderGlstm_5/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype022
0lstm_5/while/TensorArrayV2Read/TensorListGetItem?
.lstm_5/while/lstm_cell_5/MatMul/ReadVariableOpReadVariableOp9lstm_5_while_lstm_cell_5_matmul_readvariableop_resource_0* 
_output_shapes
:
??*
dtype020
.lstm_5/while/lstm_cell_5/MatMul/ReadVariableOp?
lstm_5/while/lstm_cell_5/MatMulMatMul7lstm_5/while/TensorArrayV2Read/TensorListGetItem:item:06lstm_5/while/lstm_cell_5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2!
lstm_5/while/lstm_cell_5/MatMul?
0lstm_5/while/lstm_cell_5/MatMul_1/ReadVariableOpReadVariableOp;lstm_5_while_lstm_cell_5_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype022
0lstm_5/while/lstm_cell_5/MatMul_1/ReadVariableOp?
!lstm_5/while/lstm_cell_5/MatMul_1MatMullstm_5_while_placeholder_28lstm_5/while/lstm_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2#
!lstm_5/while/lstm_cell_5/MatMul_1?
lstm_5/while/lstm_cell_5/addAddV2)lstm_5/while/lstm_cell_5/MatMul:product:0+lstm_5/while/lstm_cell_5/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_5/while/lstm_cell_5/add?
/lstm_5/while/lstm_cell_5/BiasAdd/ReadVariableOpReadVariableOp:lstm_5_while_lstm_cell_5_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype021
/lstm_5/while/lstm_cell_5/BiasAdd/ReadVariableOp?
 lstm_5/while/lstm_cell_5/BiasAddBiasAdd lstm_5/while/lstm_cell_5/add:z:07lstm_5/while/lstm_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2"
 lstm_5/while/lstm_cell_5/BiasAdd?
lstm_5/while/lstm_cell_5/ConstConst*
_output_shapes
: *
dtype0*
value	B :2 
lstm_5/while/lstm_cell_5/Const?
(lstm_5/while/lstm_cell_5/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2*
(lstm_5/while/lstm_cell_5/split/split_dim?
lstm_5/while/lstm_cell_5/splitSplit1lstm_5/while/lstm_cell_5/split/split_dim:output:0)lstm_5/while/lstm_cell_5/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2 
lstm_5/while/lstm_cell_5/split?
 lstm_5/while/lstm_cell_5/SigmoidSigmoid'lstm_5/while/lstm_cell_5/split:output:0*
T0*(
_output_shapes
:??????????2"
 lstm_5/while/lstm_cell_5/Sigmoid?
"lstm_5/while/lstm_cell_5/Sigmoid_1Sigmoid'lstm_5/while/lstm_cell_5/split:output:1*
T0*(
_output_shapes
:??????????2$
"lstm_5/while/lstm_cell_5/Sigmoid_1?
lstm_5/while/lstm_cell_5/mulMul&lstm_5/while/lstm_cell_5/Sigmoid_1:y:0lstm_5_while_placeholder_3*
T0*(
_output_shapes
:??????????2
lstm_5/while/lstm_cell_5/mul?
"lstm_5/while/lstm_cell_5/LeakyRelu	LeakyRelu'lstm_5/while/lstm_cell_5/split:output:2*(
_output_shapes
:??????????2$
"lstm_5/while/lstm_cell_5/LeakyRelu?
lstm_5/while/lstm_cell_5/mul_1Mul$lstm_5/while/lstm_cell_5/Sigmoid:y:00lstm_5/while/lstm_cell_5/LeakyRelu:activations:0*
T0*(
_output_shapes
:??????????2 
lstm_5/while/lstm_cell_5/mul_1?
lstm_5/while/lstm_cell_5/add_1AddV2 lstm_5/while/lstm_cell_5/mul:z:0"lstm_5/while/lstm_cell_5/mul_1:z:0*
T0*(
_output_shapes
:??????????2 
lstm_5/while/lstm_cell_5/add_1?
"lstm_5/while/lstm_cell_5/Sigmoid_2Sigmoid'lstm_5/while/lstm_cell_5/split:output:3*
T0*(
_output_shapes
:??????????2$
"lstm_5/while/lstm_cell_5/Sigmoid_2?
$lstm_5/while/lstm_cell_5/LeakyRelu_1	LeakyRelu"lstm_5/while/lstm_cell_5/add_1:z:0*(
_output_shapes
:??????????2&
$lstm_5/while/lstm_cell_5/LeakyRelu_1?
lstm_5/while/lstm_cell_5/mul_2Mul&lstm_5/while/lstm_cell_5/Sigmoid_2:y:02lstm_5/while/lstm_cell_5/LeakyRelu_1:activations:0*
T0*(
_output_shapes
:??????????2 
lstm_5/while/lstm_cell_5/mul_2?
1lstm_5/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_5_while_placeholder_1lstm_5_while_placeholder"lstm_5/while/lstm_cell_5/mul_2:z:0*
_output_shapes
: *
element_dtype023
1lstm_5/while/TensorArrayV2Write/TensorListSetItemj
lstm_5/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_5/while/add/y?
lstm_5/while/addAddV2lstm_5_while_placeholderlstm_5/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_5/while/addn
lstm_5/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_5/while/add_1/y?
lstm_5/while/add_1AddV2&lstm_5_while_lstm_5_while_loop_counterlstm_5/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_5/while/add_1?
lstm_5/while/IdentityIdentitylstm_5/while/add_1:z:00^lstm_5/while/lstm_cell_5/BiasAdd/ReadVariableOp/^lstm_5/while/lstm_cell_5/MatMul/ReadVariableOp1^lstm_5/while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_5/while/Identity?
lstm_5/while/Identity_1Identity,lstm_5_while_lstm_5_while_maximum_iterations0^lstm_5/while/lstm_cell_5/BiasAdd/ReadVariableOp/^lstm_5/while/lstm_cell_5/MatMul/ReadVariableOp1^lstm_5/while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_5/while/Identity_1?
lstm_5/while/Identity_2Identitylstm_5/while/add:z:00^lstm_5/while/lstm_cell_5/BiasAdd/ReadVariableOp/^lstm_5/while/lstm_cell_5/MatMul/ReadVariableOp1^lstm_5/while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_5/while/Identity_2?
lstm_5/while/Identity_3IdentityAlstm_5/while/TensorArrayV2Write/TensorListSetItem:output_handle:00^lstm_5/while/lstm_cell_5/BiasAdd/ReadVariableOp/^lstm_5/while/lstm_cell_5/MatMul/ReadVariableOp1^lstm_5/while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_5/while/Identity_3?
lstm_5/while/Identity_4Identity"lstm_5/while/lstm_cell_5/mul_2:z:00^lstm_5/while/lstm_cell_5/BiasAdd/ReadVariableOp/^lstm_5/while/lstm_cell_5/MatMul/ReadVariableOp1^lstm_5/while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2
lstm_5/while/Identity_4?
lstm_5/while/Identity_5Identity"lstm_5/while/lstm_cell_5/add_1:z:00^lstm_5/while/lstm_cell_5/BiasAdd/ReadVariableOp/^lstm_5/while/lstm_cell_5/MatMul/ReadVariableOp1^lstm_5/while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2
lstm_5/while/Identity_5"7
lstm_5_while_identitylstm_5/while/Identity:output:0";
lstm_5_while_identity_1 lstm_5/while/Identity_1:output:0";
lstm_5_while_identity_2 lstm_5/while/Identity_2:output:0";
lstm_5_while_identity_3 lstm_5/while/Identity_3:output:0";
lstm_5_while_identity_4 lstm_5/while/Identity_4:output:0";
lstm_5_while_identity_5 lstm_5/while/Identity_5:output:0"L
#lstm_5_while_lstm_5_strided_slice_1%lstm_5_while_lstm_5_strided_slice_1_0"v
8lstm_5_while_lstm_cell_5_biasadd_readvariableop_resource:lstm_5_while_lstm_cell_5_biasadd_readvariableop_resource_0"x
9lstm_5_while_lstm_cell_5_matmul_1_readvariableop_resource;lstm_5_while_lstm_cell_5_matmul_1_readvariableop_resource_0"t
7lstm_5_while_lstm_cell_5_matmul_readvariableop_resource9lstm_5_while_lstm_cell_5_matmul_readvariableop_resource_0"?
_lstm_5_while_tensorarrayv2read_tensorlistgetitem_lstm_5_tensorarrayunstack_tensorlistfromtensoralstm_5_while_tensorarrayv2read_tensorlistgetitem_lstm_5_tensorarrayunstack_tensorlistfromtensor_0*S
_input_shapesB
@: : : : :??????????:??????????: : :::2b
/lstm_5/while/lstm_cell_5/BiasAdd/ReadVariableOp/lstm_5/while/lstm_cell_5/BiasAdd/ReadVariableOp2`
.lstm_5/while/lstm_cell_5/MatMul/ReadVariableOp.lstm_5/while/lstm_cell_5/MatMul/ReadVariableOp2d
0lstm_5/while/lstm_cell_5/MatMul_1/ReadVariableOp0lstm_5/while/lstm_cell_5/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?

?
lstm_5_while_cond_184352*
&lstm_5_while_lstm_5_while_loop_counter0
,lstm_5_while_lstm_5_while_maximum_iterations
lstm_5_while_placeholder
lstm_5_while_placeholder_1
lstm_5_while_placeholder_2
lstm_5_while_placeholder_3,
(lstm_5_while_less_lstm_5_strided_slice_1B
>lstm_5_while_lstm_5_while_cond_184352___redundant_placeholder0B
>lstm_5_while_lstm_5_while_cond_184352___redundant_placeholder1B
>lstm_5_while_lstm_5_while_cond_184352___redundant_placeholder2B
>lstm_5_while_lstm_5_while_cond_184352___redundant_placeholder3
lstm_5_while_identity
?
lstm_5/while/LessLesslstm_5_while_placeholder(lstm_5_while_less_lstm_5_strided_slice_1*
T0*
_output_shapes
: 2
lstm_5/while/Lessr
lstm_5/while/IdentityIdentitylstm_5/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_5/while/Identity"7
lstm_5_while_identitylstm_5/while/Identity:output:0*U
_input_shapesD
B: : : : :??????????:??????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?B
?
while_body_183353
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_06
2while_lstm_cell_4_matmul_readvariableop_resource_08
4while_lstm_cell_4_matmul_1_readvariableop_resource_07
3while_lstm_cell_4_biasadd_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor4
0while_lstm_cell_4_matmul_readvariableop_resource6
2while_lstm_cell_4_matmul_1_readvariableop_resource5
1while_lstm_cell_4_biasadd_readvariableop_resource??(while/lstm_cell_4/BiasAdd/ReadVariableOp?'while/lstm_cell_4/MatMul/ReadVariableOp?)while/lstm_cell_4/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
'while/lstm_cell_4/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_4_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype02)
'while/lstm_cell_4/MatMul/ReadVariableOp?
while/lstm_cell_4/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_4/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_4/MatMul?
)while/lstm_cell_4/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_4_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02+
)while/lstm_cell_4/MatMul_1/ReadVariableOp?
while/lstm_cell_4/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_4/MatMul_1?
while/lstm_cell_4/addAddV2"while/lstm_cell_4/MatMul:product:0$while/lstm_cell_4/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_4/add?
(while/lstm_cell_4/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_4_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02*
(while/lstm_cell_4/BiasAdd/ReadVariableOp?
while/lstm_cell_4/BiasAddBiasAddwhile/lstm_cell_4/add:z:00while/lstm_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_4/BiasAddt
while/lstm_cell_4/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_4/Const?
!while/lstm_cell_4/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!while/lstm_cell_4/split/split_dim?
while/lstm_cell_4/splitSplit*while/lstm_cell_4/split/split_dim:output:0"while/lstm_cell_4/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
while/lstm_cell_4/split?
while/lstm_cell_4/SigmoidSigmoid while/lstm_cell_4/split:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_4/Sigmoid?
while/lstm_cell_4/Sigmoid_1Sigmoid while/lstm_cell_4/split:output:1*
T0*(
_output_shapes
:??????????2
while/lstm_cell_4/Sigmoid_1?
while/lstm_cell_4/mulMulwhile/lstm_cell_4/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:??????????2
while/lstm_cell_4/mul?
while/lstm_cell_4/LeakyRelu	LeakyRelu while/lstm_cell_4/split:output:2*(
_output_shapes
:??????????2
while/lstm_cell_4/LeakyRelu?
while/lstm_cell_4/mul_1Mulwhile/lstm_cell_4/Sigmoid:y:0)while/lstm_cell_4/LeakyRelu:activations:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_4/mul_1?
while/lstm_cell_4/add_1AddV2while/lstm_cell_4/mul:z:0while/lstm_cell_4/mul_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_4/add_1?
while/lstm_cell_4/Sigmoid_2Sigmoid while/lstm_cell_4/split:output:3*
T0*(
_output_shapes
:??????????2
while/lstm_cell_4/Sigmoid_2?
while/lstm_cell_4/LeakyRelu_1	LeakyReluwhile/lstm_cell_4/add_1:z:0*(
_output_shapes
:??????????2
while/lstm_cell_4/LeakyRelu_1?
while/lstm_cell_4/mul_2Mulwhile/lstm_cell_4/Sigmoid_2:y:0+while/lstm_cell_4/LeakyRelu_1:activations:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_4/mul_2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_4/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1?
while/IdentityIdentitywhile/add_1:z:0)^while/lstm_cell_4/BiasAdd/ReadVariableOp(^while/lstm_cell_4/MatMul/ReadVariableOp*^while/lstm_cell_4/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations)^while/lstm_cell_4/BiasAdd/ReadVariableOp(^while/lstm_cell_4/MatMul/ReadVariableOp*^while/lstm_cell_4/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0)^while/lstm_cell_4/BiasAdd/ReadVariableOp(^while/lstm_cell_4/MatMul/ReadVariableOp*^while/lstm_cell_4/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0)^while/lstm_cell_4/BiasAdd/ReadVariableOp(^while/lstm_cell_4/MatMul/ReadVariableOp*^while/lstm_cell_4/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_4/mul_2:z:0)^while/lstm_cell_4/BiasAdd/ReadVariableOp(^while/lstm_cell_4/MatMul/ReadVariableOp*^while/lstm_cell_4/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_4/add_1:z:0)^while/lstm_cell_4/BiasAdd/ReadVariableOp(^while/lstm_cell_4/MatMul/ReadVariableOp*^while/lstm_cell_4/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_4_biasadd_readvariableop_resource3while_lstm_cell_4_biasadd_readvariableop_resource_0"j
2while_lstm_cell_4_matmul_1_readvariableop_resource4while_lstm_cell_4_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_4_matmul_readvariableop_resource2while_lstm_cell_4_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*S
_input_shapesB
@: : : : :??????????:??????????: : :::2T
(while/lstm_cell_4/BiasAdd/ReadVariableOp(while/lstm_cell_4/BiasAdd/ReadVariableOp2R
'while/lstm_cell_4/MatMul/ReadVariableOp'while/lstm_cell_4/MatMul/ReadVariableOp2V
)while/lstm_cell_4/MatMul_1/ReadVariableOp)while/lstm_cell_4/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?
?
G__inference_lstm_cell_5_layer_call_and_return_conditional_losses_182592

inputs

states
states_1"
matmul_readvariableop_resource$
 matmul_1_readvariableop_resource#
biasadd_readvariableop_resource
identity

identity_1

identity_2??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul_1/ReadVariableOpz
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
add?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
split`
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:??????????2	
Sigmoidd
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:??????????2
	Sigmoid_1]
mulMulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:??????????2
mul]
	LeakyRelu	LeakyRelusplit:output:2*(
_output_shapes
:??????????2
	LeakyRelun
mul_1MulSigmoid:y:0LeakyRelu:activations:0*
T0*(
_output_shapes
:??????????2
mul_1^
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:??????????2
add_1d
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:??????????2
	Sigmoid_2\
LeakyRelu_1	LeakyRelu	add_1:z:0*(
_output_shapes
:??????????2
LeakyRelu_1r
mul_2MulSigmoid_2:y:0LeakyRelu_1:activations:0*
T0*(
_output_shapes
:??????????2
mul_2?
IdentityIdentity	mul_2:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity?

Identity_1Identity	mul_2:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity_1?

Identity_2Identity	add_1:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*[
_input_shapesJ
H:??????????:??????????:??????????:::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs:PL
(
_output_shapes
:??????????
 
_user_specified_namestates:PL
(
_output_shapes
:??????????
 
_user_specified_namestates
?B
?
while_body_185914
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_06
2while_lstm_cell_5_matmul_readvariableop_resource_08
4while_lstm_cell_5_matmul_1_readvariableop_resource_07
3while_lstm_cell_5_biasadd_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor4
0while_lstm_cell_5_matmul_readvariableop_resource6
2while_lstm_cell_5_matmul_1_readvariableop_resource5
1while_lstm_cell_5_biasadd_readvariableop_resource??(while/lstm_cell_5/BiasAdd/ReadVariableOp?'while/lstm_cell_5/MatMul/ReadVariableOp?)while/lstm_cell_5/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
'while/lstm_cell_5/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_5_matmul_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02)
'while/lstm_cell_5/MatMul/ReadVariableOp?
while/lstm_cell_5/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_5/MatMul?
)while/lstm_cell_5/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_5_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02+
)while/lstm_cell_5/MatMul_1/ReadVariableOp?
while/lstm_cell_5/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_5/MatMul_1?
while/lstm_cell_5/addAddV2"while/lstm_cell_5/MatMul:product:0$while/lstm_cell_5/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_5/add?
(while/lstm_cell_5/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_5_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02*
(while/lstm_cell_5/BiasAdd/ReadVariableOp?
while/lstm_cell_5/BiasAddBiasAddwhile/lstm_cell_5/add:z:00while/lstm_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_5/BiasAddt
while/lstm_cell_5/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_5/Const?
!while/lstm_cell_5/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!while/lstm_cell_5/split/split_dim?
while/lstm_cell_5/splitSplit*while/lstm_cell_5/split/split_dim:output:0"while/lstm_cell_5/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
while/lstm_cell_5/split?
while/lstm_cell_5/SigmoidSigmoid while/lstm_cell_5/split:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_5/Sigmoid?
while/lstm_cell_5/Sigmoid_1Sigmoid while/lstm_cell_5/split:output:1*
T0*(
_output_shapes
:??????????2
while/lstm_cell_5/Sigmoid_1?
while/lstm_cell_5/mulMulwhile/lstm_cell_5/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:??????????2
while/lstm_cell_5/mul?
while/lstm_cell_5/LeakyRelu	LeakyRelu while/lstm_cell_5/split:output:2*(
_output_shapes
:??????????2
while/lstm_cell_5/LeakyRelu?
while/lstm_cell_5/mul_1Mulwhile/lstm_cell_5/Sigmoid:y:0)while/lstm_cell_5/LeakyRelu:activations:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_5/mul_1?
while/lstm_cell_5/add_1AddV2while/lstm_cell_5/mul:z:0while/lstm_cell_5/mul_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_5/add_1?
while/lstm_cell_5/Sigmoid_2Sigmoid while/lstm_cell_5/split:output:3*
T0*(
_output_shapes
:??????????2
while/lstm_cell_5/Sigmoid_2?
while/lstm_cell_5/LeakyRelu_1	LeakyReluwhile/lstm_cell_5/add_1:z:0*(
_output_shapes
:??????????2
while/lstm_cell_5/LeakyRelu_1?
while/lstm_cell_5/mul_2Mulwhile/lstm_cell_5/Sigmoid_2:y:0+while/lstm_cell_5/LeakyRelu_1:activations:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_5/mul_2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_5/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1?
while/IdentityIdentitywhile/add_1:z:0)^while/lstm_cell_5/BiasAdd/ReadVariableOp(^while/lstm_cell_5/MatMul/ReadVariableOp*^while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations)^while/lstm_cell_5/BiasAdd/ReadVariableOp(^while/lstm_cell_5/MatMul/ReadVariableOp*^while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0)^while/lstm_cell_5/BiasAdd/ReadVariableOp(^while/lstm_cell_5/MatMul/ReadVariableOp*^while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0)^while/lstm_cell_5/BiasAdd/ReadVariableOp(^while/lstm_cell_5/MatMul/ReadVariableOp*^while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_5/mul_2:z:0)^while/lstm_cell_5/BiasAdd/ReadVariableOp(^while/lstm_cell_5/MatMul/ReadVariableOp*^while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_5/add_1:z:0)^while/lstm_cell_5/BiasAdd/ReadVariableOp(^while/lstm_cell_5/MatMul/ReadVariableOp*^while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_5_biasadd_readvariableop_resource3while_lstm_cell_5_biasadd_readvariableop_resource_0"j
2while_lstm_cell_5_matmul_1_readvariableop_resource4while_lstm_cell_5_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_5_matmul_readvariableop_resource2while_lstm_cell_5_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*S
_input_shapesB
@: : : : :??????????:??????????: : :::2T
(while/lstm_cell_5/BiasAdd/ReadVariableOp(while/lstm_cell_5/BiasAdd/ReadVariableOp2R
'while/lstm_cell_5/MatMul/ReadVariableOp'while/lstm_cell_5/MatMul/ReadVariableOp2V
)while/lstm_cell_5/MatMul_1/ReadVariableOp)while/lstm_cell_5/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?
?
while_cond_183687
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_183687___redundant_placeholder04
0while_while_cond_183687___redundant_placeholder14
0while_while_cond_183687___redundant_placeholder24
0while_while_cond_183687___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*U
_input_shapesD
B: : : : :??????????:??????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?
?
'__inference_lstm_5_layer_call_fn_186163
inputs_0
unknown
	unknown_0
	unknown_1
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_lstm_5_layer_call_and_return_conditional_losses_1829882
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*@
_input_shapes/
-:???????????????????:::22
StatefulPartitionedCallStatefulPartitionedCall:_ [
5
_output_shapes#
!:???????????????????
"
_user_specified_name
inputs/0
?Z
?
B__inference_lstm_5_layer_call_and_return_conditional_losses_185671

inputs.
*lstm_cell_5_matmul_readvariableop_resource0
,lstm_cell_5_matmul_1_readvariableop_resource/
+lstm_cell_5_biasadd_readvariableop_resource
identity??"lstm_cell_5/BiasAdd/ReadVariableOp?!lstm_cell_5/MatMul/ReadVariableOp?#lstm_cell_5/MatMul_1/ReadVariableOp?whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:??????????2
zerosa
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessg
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const~
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:??????????2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm{
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:??????????2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_2?
!lstm_cell_5/MatMul/ReadVariableOpReadVariableOp*lstm_cell_5_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02#
!lstm_cell_5/MatMul/ReadVariableOp?
lstm_cell_5/MatMulMatMulstrided_slice_2:output:0)lstm_cell_5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_5/MatMul?
#lstm_cell_5/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_5_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02%
#lstm_cell_5/MatMul_1/ReadVariableOp?
lstm_cell_5/MatMul_1MatMulzeros:output:0+lstm_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_5/MatMul_1?
lstm_cell_5/addAddV2lstm_cell_5/MatMul:product:0lstm_cell_5/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell_5/add?
"lstm_cell_5/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_5_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02$
"lstm_cell_5/BiasAdd/ReadVariableOp?
lstm_cell_5/BiasAddBiasAddlstm_cell_5/add:z:0*lstm_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_5/BiasAddh
lstm_cell_5/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_5/Const|
lstm_cell_5/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_5/split/split_dim?
lstm_cell_5/splitSplit$lstm_cell_5/split/split_dim:output:0lstm_cell_5/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
lstm_cell_5/split?
lstm_cell_5/SigmoidSigmoidlstm_cell_5/split:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_5/Sigmoid?
lstm_cell_5/Sigmoid_1Sigmoidlstm_cell_5/split:output:1*
T0*(
_output_shapes
:??????????2
lstm_cell_5/Sigmoid_1?
lstm_cell_5/mulMullstm_cell_5/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_5/mul?
lstm_cell_5/LeakyRelu	LeakyRelulstm_cell_5/split:output:2*(
_output_shapes
:??????????2
lstm_cell_5/LeakyRelu?
lstm_cell_5/mul_1Mullstm_cell_5/Sigmoid:y:0#lstm_cell_5/LeakyRelu:activations:0*
T0*(
_output_shapes
:??????????2
lstm_cell_5/mul_1?
lstm_cell_5/add_1AddV2lstm_cell_5/mul:z:0lstm_cell_5/mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_5/add_1?
lstm_cell_5/Sigmoid_2Sigmoidlstm_cell_5/split:output:3*
T0*(
_output_shapes
:??????????2
lstm_cell_5/Sigmoid_2?
lstm_cell_5/LeakyRelu_1	LeakyRelulstm_cell_5/add_1:z:0*(
_output_shapes
:??????????2
lstm_cell_5/LeakyRelu_1?
lstm_cell_5/mul_2Mullstm_cell_5/Sigmoid_2:y:0%lstm_cell_5/LeakyRelu_1:activations:0*
T0*(
_output_shapes
:??????????2
lstm_cell_5/mul_2?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_5_matmul_readvariableop_resource,lstm_cell_5_matmul_1_readvariableop_resource+lstm_cell_5_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :??????????:??????????: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_185586*
condR
while_cond_185585*M
output_shapes<
:: : : : :??????????:??????????: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:??????????2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime?
IdentityIdentitystrided_slice_3:output:0#^lstm_cell_5/BiasAdd/ReadVariableOp"^lstm_cell_5/MatMul/ReadVariableOp$^lstm_cell_5/MatMul_1/ReadVariableOp^while*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:??????????:::2H
"lstm_cell_5/BiasAdd/ReadVariableOp"lstm_cell_5/BiasAdd/ReadVariableOp2F
!lstm_cell_5/MatMul/ReadVariableOp!lstm_cell_5/MatMul/ReadVariableOp2J
#lstm_cell_5/MatMul_1/ReadVariableOp#lstm_cell_5/MatMul_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
while_cond_186066
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_186066___redundant_placeholder04
0while_while_cond_186066___redundant_placeholder14
0while_while_cond_186066___redundant_placeholder24
0while_while_cond_186066___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*U
_input_shapesD
B: : : : :??????????:??????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?

?
-__inference_sequential_2_layer_call_fn_184093
lstm_4_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalllstm_4_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_sequential_2_layer_call_and_return_conditional_losses_1840622
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*b
_input_shapesQ
O:?????????::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:Y U
+
_output_shapes
:?????????
&
_user_specified_namelstm_4_input
?D
?
B__inference_lstm_4_layer_call_and_return_conditional_losses_182510

inputs
lstm_cell_4_182428
lstm_cell_4_182430
lstm_cell_4_182432
identity??#lstm_cell_4/StatefulPartitionedCall?whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:??????????2
zerosa
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessg
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const~
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:??????????2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slice_2?
#lstm_cell_4/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_4_182428lstm_cell_4_182430lstm_cell_4_182432*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:??????????:??????????:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_lstm_cell_4_layer_call_and_return_conditional_losses_1820152%
#lstm_cell_4/StatefulPartitionedCall?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_4_182428lstm_cell_4_182430lstm_cell_4_182432*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :??????????:??????????: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_182441*
condR
while_cond_182440*M
output_shapes<
:: : : : :??????????:??????????: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:???????????????????*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:???????????????????2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime?
IdentityIdentitytranspose_1:y:0$^lstm_cell_4/StatefulPartitionedCall^while*
T0*5
_output_shapes#
!:???????????????????2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:??????????????????:::2J
#lstm_cell_4/StatefulPartitionedCall#lstm_cell_4/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
'__inference_lstm_4_layer_call_fn_185518

inputs
unknown
	unknown_0
	unknown_1
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_lstm_4_layer_call_and_return_conditional_losses_1834382
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*,
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????:::22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
}
(__inference_dense_8_layer_call_fn_186194

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_8_layer_call_and_return_conditional_losses_1838142
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
while_cond_185913
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_185913___redundant_placeholder04
0while_while_cond_185913___redundant_placeholder14
0while_while_cond_185913___redundant_placeholder24
0while_while_cond_185913___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*U
_input_shapesD
B: : : : :??????????:??????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?D
?
B__inference_lstm_4_layer_call_and_return_conditional_losses_182378

inputs
lstm_cell_4_182296
lstm_cell_4_182298
lstm_cell_4_182300
identity??#lstm_cell_4/StatefulPartitionedCall?whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:??????????2
zerosa
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessg
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const~
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:??????????2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slice_2?
#lstm_cell_4/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_4_182296lstm_cell_4_182298lstm_cell_4_182300*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:??????????:??????????:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_lstm_cell_4_layer_call_and_return_conditional_losses_1819822%
#lstm_cell_4/StatefulPartitionedCall?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_4_182296lstm_cell_4_182298lstm_cell_4_182300*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :??????????:??????????: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_182309*
condR
while_cond_182308*M
output_shapes<
:: : : : :??????????:??????????: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:???????????????????*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:???????????????????2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime?
IdentityIdentitytranspose_1:y:0$^lstm_cell_4/StatefulPartitionedCall^while*
T0*5
_output_shapes#
!:???????????????????2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:??????????????????:::2J
#lstm_cell_4/StatefulPartitionedCall#lstm_cell_4/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
'__inference_lstm_4_layer_call_fn_185179
inputs_0
unknown
	unknown_0
	unknown_1
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:???????????????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_lstm_4_layer_call_and_return_conditional_losses_1823782
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*5
_output_shapes#
!:???????????????????2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:??????????????????:::22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
,__inference_lstm_cell_4_layer_call_fn_186337

inputs
states_0
states_1
unknown
	unknown_0
	unknown_1
identity

identity_1

identity_2??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:??????????:??????????:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_lstm_cell_4_layer_call_and_return_conditional_losses_1819822
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity?

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity_1?

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*Z
_input_shapesI
G:?????????:??????????:??????????:::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:RN
(
_output_shapes
:??????????
"
_user_specified_name
states/0:RN
(
_output_shapes
:??????????
"
_user_specified_name
states/1
?
?
while_cond_183050
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_183050___redundant_placeholder04
0while_while_cond_183050___redundant_placeholder14
0while_while_cond_183050___redundant_placeholder24
0while_while_cond_183050___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*U
_input_shapesD
B: : : : :??????????:??????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?
?
while_cond_185410
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_185410___redundant_placeholder04
0while_while_cond_185410___redundant_placeholder14
0while_while_cond_185410___redundant_placeholder24
0while_while_cond_185410___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*U
_input_shapesD
B: : : : :??????????:??????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?
?
while_cond_185585
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_185585___redundant_placeholder04
0while_while_cond_185585___redundant_placeholder14
0while_while_cond_185585___redundant_placeholder24
0while_while_cond_185585___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*U
_input_shapesD
B: : : : :??????????:??????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?`
?
%sequential_2_lstm_4_while_body_181647D
@sequential_2_lstm_4_while_sequential_2_lstm_4_while_loop_counterJ
Fsequential_2_lstm_4_while_sequential_2_lstm_4_while_maximum_iterations)
%sequential_2_lstm_4_while_placeholder+
'sequential_2_lstm_4_while_placeholder_1+
'sequential_2_lstm_4_while_placeholder_2+
'sequential_2_lstm_4_while_placeholder_3C
?sequential_2_lstm_4_while_sequential_2_lstm_4_strided_slice_1_0
{sequential_2_lstm_4_while_tensorarrayv2read_tensorlistgetitem_sequential_2_lstm_4_tensorarrayunstack_tensorlistfromtensor_0J
Fsequential_2_lstm_4_while_lstm_cell_4_matmul_readvariableop_resource_0L
Hsequential_2_lstm_4_while_lstm_cell_4_matmul_1_readvariableop_resource_0K
Gsequential_2_lstm_4_while_lstm_cell_4_biasadd_readvariableop_resource_0&
"sequential_2_lstm_4_while_identity(
$sequential_2_lstm_4_while_identity_1(
$sequential_2_lstm_4_while_identity_2(
$sequential_2_lstm_4_while_identity_3(
$sequential_2_lstm_4_while_identity_4(
$sequential_2_lstm_4_while_identity_5A
=sequential_2_lstm_4_while_sequential_2_lstm_4_strided_slice_1}
ysequential_2_lstm_4_while_tensorarrayv2read_tensorlistgetitem_sequential_2_lstm_4_tensorarrayunstack_tensorlistfromtensorH
Dsequential_2_lstm_4_while_lstm_cell_4_matmul_readvariableop_resourceJ
Fsequential_2_lstm_4_while_lstm_cell_4_matmul_1_readvariableop_resourceI
Esequential_2_lstm_4_while_lstm_cell_4_biasadd_readvariableop_resource??<sequential_2/lstm_4/while/lstm_cell_4/BiasAdd/ReadVariableOp?;sequential_2/lstm_4/while/lstm_cell_4/MatMul/ReadVariableOp?=sequential_2/lstm_4/while/lstm_cell_4/MatMul_1/ReadVariableOp?
Ksequential_2/lstm_4/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2M
Ksequential_2/lstm_4/while/TensorArrayV2Read/TensorListGetItem/element_shape?
=sequential_2/lstm_4/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem{sequential_2_lstm_4_while_tensorarrayv2read_tensorlistgetitem_sequential_2_lstm_4_tensorarrayunstack_tensorlistfromtensor_0%sequential_2_lstm_4_while_placeholderTsequential_2/lstm_4/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02?
=sequential_2/lstm_4/while/TensorArrayV2Read/TensorListGetItem?
;sequential_2/lstm_4/while/lstm_cell_4/MatMul/ReadVariableOpReadVariableOpFsequential_2_lstm_4_while_lstm_cell_4_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype02=
;sequential_2/lstm_4/while/lstm_cell_4/MatMul/ReadVariableOp?
,sequential_2/lstm_4/while/lstm_cell_4/MatMulMatMulDsequential_2/lstm_4/while/TensorArrayV2Read/TensorListGetItem:item:0Csequential_2/lstm_4/while/lstm_cell_4/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2.
,sequential_2/lstm_4/while/lstm_cell_4/MatMul?
=sequential_2/lstm_4/while/lstm_cell_4/MatMul_1/ReadVariableOpReadVariableOpHsequential_2_lstm_4_while_lstm_cell_4_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02?
=sequential_2/lstm_4/while/lstm_cell_4/MatMul_1/ReadVariableOp?
.sequential_2/lstm_4/while/lstm_cell_4/MatMul_1MatMul'sequential_2_lstm_4_while_placeholder_2Esequential_2/lstm_4/while/lstm_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????20
.sequential_2/lstm_4/while/lstm_cell_4/MatMul_1?
)sequential_2/lstm_4/while/lstm_cell_4/addAddV26sequential_2/lstm_4/while/lstm_cell_4/MatMul:product:08sequential_2/lstm_4/while/lstm_cell_4/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2+
)sequential_2/lstm_4/while/lstm_cell_4/add?
<sequential_2/lstm_4/while/lstm_cell_4/BiasAdd/ReadVariableOpReadVariableOpGsequential_2_lstm_4_while_lstm_cell_4_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02>
<sequential_2/lstm_4/while/lstm_cell_4/BiasAdd/ReadVariableOp?
-sequential_2/lstm_4/while/lstm_cell_4/BiasAddBiasAdd-sequential_2/lstm_4/while/lstm_cell_4/add:z:0Dsequential_2/lstm_4/while/lstm_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2/
-sequential_2/lstm_4/while/lstm_cell_4/BiasAdd?
+sequential_2/lstm_4/while/lstm_cell_4/ConstConst*
_output_shapes
: *
dtype0*
value	B :2-
+sequential_2/lstm_4/while/lstm_cell_4/Const?
5sequential_2/lstm_4/while/lstm_cell_4/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :27
5sequential_2/lstm_4/while/lstm_cell_4/split/split_dim?
+sequential_2/lstm_4/while/lstm_cell_4/splitSplit>sequential_2/lstm_4/while/lstm_cell_4/split/split_dim:output:06sequential_2/lstm_4/while/lstm_cell_4/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2-
+sequential_2/lstm_4/while/lstm_cell_4/split?
-sequential_2/lstm_4/while/lstm_cell_4/SigmoidSigmoid4sequential_2/lstm_4/while/lstm_cell_4/split:output:0*
T0*(
_output_shapes
:??????????2/
-sequential_2/lstm_4/while/lstm_cell_4/Sigmoid?
/sequential_2/lstm_4/while/lstm_cell_4/Sigmoid_1Sigmoid4sequential_2/lstm_4/while/lstm_cell_4/split:output:1*
T0*(
_output_shapes
:??????????21
/sequential_2/lstm_4/while/lstm_cell_4/Sigmoid_1?
)sequential_2/lstm_4/while/lstm_cell_4/mulMul3sequential_2/lstm_4/while/lstm_cell_4/Sigmoid_1:y:0'sequential_2_lstm_4_while_placeholder_3*
T0*(
_output_shapes
:??????????2+
)sequential_2/lstm_4/while/lstm_cell_4/mul?
/sequential_2/lstm_4/while/lstm_cell_4/LeakyRelu	LeakyRelu4sequential_2/lstm_4/while/lstm_cell_4/split:output:2*(
_output_shapes
:??????????21
/sequential_2/lstm_4/while/lstm_cell_4/LeakyRelu?
+sequential_2/lstm_4/while/lstm_cell_4/mul_1Mul1sequential_2/lstm_4/while/lstm_cell_4/Sigmoid:y:0=sequential_2/lstm_4/while/lstm_cell_4/LeakyRelu:activations:0*
T0*(
_output_shapes
:??????????2-
+sequential_2/lstm_4/while/lstm_cell_4/mul_1?
+sequential_2/lstm_4/while/lstm_cell_4/add_1AddV2-sequential_2/lstm_4/while/lstm_cell_4/mul:z:0/sequential_2/lstm_4/while/lstm_cell_4/mul_1:z:0*
T0*(
_output_shapes
:??????????2-
+sequential_2/lstm_4/while/lstm_cell_4/add_1?
/sequential_2/lstm_4/while/lstm_cell_4/Sigmoid_2Sigmoid4sequential_2/lstm_4/while/lstm_cell_4/split:output:3*
T0*(
_output_shapes
:??????????21
/sequential_2/lstm_4/while/lstm_cell_4/Sigmoid_2?
1sequential_2/lstm_4/while/lstm_cell_4/LeakyRelu_1	LeakyRelu/sequential_2/lstm_4/while/lstm_cell_4/add_1:z:0*(
_output_shapes
:??????????23
1sequential_2/lstm_4/while/lstm_cell_4/LeakyRelu_1?
+sequential_2/lstm_4/while/lstm_cell_4/mul_2Mul3sequential_2/lstm_4/while/lstm_cell_4/Sigmoid_2:y:0?sequential_2/lstm_4/while/lstm_cell_4/LeakyRelu_1:activations:0*
T0*(
_output_shapes
:??????????2-
+sequential_2/lstm_4/while/lstm_cell_4/mul_2?
>sequential_2/lstm_4/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem'sequential_2_lstm_4_while_placeholder_1%sequential_2_lstm_4_while_placeholder/sequential_2/lstm_4/while/lstm_cell_4/mul_2:z:0*
_output_shapes
: *
element_dtype02@
>sequential_2/lstm_4/while/TensorArrayV2Write/TensorListSetItem?
sequential_2/lstm_4/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2!
sequential_2/lstm_4/while/add/y?
sequential_2/lstm_4/while/addAddV2%sequential_2_lstm_4_while_placeholder(sequential_2/lstm_4/while/add/y:output:0*
T0*
_output_shapes
: 2
sequential_2/lstm_4/while/add?
!sequential_2/lstm_4/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2#
!sequential_2/lstm_4/while/add_1/y?
sequential_2/lstm_4/while/add_1AddV2@sequential_2_lstm_4_while_sequential_2_lstm_4_while_loop_counter*sequential_2/lstm_4/while/add_1/y:output:0*
T0*
_output_shapes
: 2!
sequential_2/lstm_4/while/add_1?
"sequential_2/lstm_4/while/IdentityIdentity#sequential_2/lstm_4/while/add_1:z:0=^sequential_2/lstm_4/while/lstm_cell_4/BiasAdd/ReadVariableOp<^sequential_2/lstm_4/while/lstm_cell_4/MatMul/ReadVariableOp>^sequential_2/lstm_4/while/lstm_cell_4/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2$
"sequential_2/lstm_4/while/Identity?
$sequential_2/lstm_4/while/Identity_1IdentityFsequential_2_lstm_4_while_sequential_2_lstm_4_while_maximum_iterations=^sequential_2/lstm_4/while/lstm_cell_4/BiasAdd/ReadVariableOp<^sequential_2/lstm_4/while/lstm_cell_4/MatMul/ReadVariableOp>^sequential_2/lstm_4/while/lstm_cell_4/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2&
$sequential_2/lstm_4/while/Identity_1?
$sequential_2/lstm_4/while/Identity_2Identity!sequential_2/lstm_4/while/add:z:0=^sequential_2/lstm_4/while/lstm_cell_4/BiasAdd/ReadVariableOp<^sequential_2/lstm_4/while/lstm_cell_4/MatMul/ReadVariableOp>^sequential_2/lstm_4/while/lstm_cell_4/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2&
$sequential_2/lstm_4/while/Identity_2?
$sequential_2/lstm_4/while/Identity_3IdentityNsequential_2/lstm_4/while/TensorArrayV2Write/TensorListSetItem:output_handle:0=^sequential_2/lstm_4/while/lstm_cell_4/BiasAdd/ReadVariableOp<^sequential_2/lstm_4/while/lstm_cell_4/MatMul/ReadVariableOp>^sequential_2/lstm_4/while/lstm_cell_4/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2&
$sequential_2/lstm_4/while/Identity_3?
$sequential_2/lstm_4/while/Identity_4Identity/sequential_2/lstm_4/while/lstm_cell_4/mul_2:z:0=^sequential_2/lstm_4/while/lstm_cell_4/BiasAdd/ReadVariableOp<^sequential_2/lstm_4/while/lstm_cell_4/MatMul/ReadVariableOp>^sequential_2/lstm_4/while/lstm_cell_4/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2&
$sequential_2/lstm_4/while/Identity_4?
$sequential_2/lstm_4/while/Identity_5Identity/sequential_2/lstm_4/while/lstm_cell_4/add_1:z:0=^sequential_2/lstm_4/while/lstm_cell_4/BiasAdd/ReadVariableOp<^sequential_2/lstm_4/while/lstm_cell_4/MatMul/ReadVariableOp>^sequential_2/lstm_4/while/lstm_cell_4/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2&
$sequential_2/lstm_4/while/Identity_5"Q
"sequential_2_lstm_4_while_identity+sequential_2/lstm_4/while/Identity:output:0"U
$sequential_2_lstm_4_while_identity_1-sequential_2/lstm_4/while/Identity_1:output:0"U
$sequential_2_lstm_4_while_identity_2-sequential_2/lstm_4/while/Identity_2:output:0"U
$sequential_2_lstm_4_while_identity_3-sequential_2/lstm_4/while/Identity_3:output:0"U
$sequential_2_lstm_4_while_identity_4-sequential_2/lstm_4/while/Identity_4:output:0"U
$sequential_2_lstm_4_while_identity_5-sequential_2/lstm_4/while/Identity_5:output:0"?
Esequential_2_lstm_4_while_lstm_cell_4_biasadd_readvariableop_resourceGsequential_2_lstm_4_while_lstm_cell_4_biasadd_readvariableop_resource_0"?
Fsequential_2_lstm_4_while_lstm_cell_4_matmul_1_readvariableop_resourceHsequential_2_lstm_4_while_lstm_cell_4_matmul_1_readvariableop_resource_0"?
Dsequential_2_lstm_4_while_lstm_cell_4_matmul_readvariableop_resourceFsequential_2_lstm_4_while_lstm_cell_4_matmul_readvariableop_resource_0"?
=sequential_2_lstm_4_while_sequential_2_lstm_4_strided_slice_1?sequential_2_lstm_4_while_sequential_2_lstm_4_strided_slice_1_0"?
ysequential_2_lstm_4_while_tensorarrayv2read_tensorlistgetitem_sequential_2_lstm_4_tensorarrayunstack_tensorlistfromtensor{sequential_2_lstm_4_while_tensorarrayv2read_tensorlistgetitem_sequential_2_lstm_4_tensorarrayunstack_tensorlistfromtensor_0*S
_input_shapesB
@: : : : :??????????:??????????: : :::2|
<sequential_2/lstm_4/while/lstm_cell_4/BiasAdd/ReadVariableOp<sequential_2/lstm_4/while/lstm_cell_4/BiasAdd/ReadVariableOp2z
;sequential_2/lstm_4/while/lstm_cell_4/MatMul/ReadVariableOp;sequential_2/lstm_4/while/lstm_cell_4/MatMul/ReadVariableOp2~
=sequential_2/lstm_4/while/lstm_cell_4/MatMul_1/ReadVariableOp=sequential_2/lstm_4/while/lstm_cell_4/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?
?
'__inference_lstm_4_layer_call_fn_185190
inputs_0
unknown
	unknown_0
	unknown_1
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:???????????????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_lstm_4_layer_call_and_return_conditional_losses_1825102
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*5
_output_shapes#
!:???????????????????2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:??????????????????:::22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?	
?
D__inference_dense_11_layer_call_and_return_conditional_losses_183895

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdd^
	LeakyRelu	LeakyReluBiasAdd:output:0*'
_output_shapes
:?????????2
	LeakyRelu?
IdentityIdentityLeakyRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????2::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????2
 
_user_specified_nameinputs
?B
?
while_body_185083
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_06
2while_lstm_cell_4_matmul_readvariableop_resource_08
4while_lstm_cell_4_matmul_1_readvariableop_resource_07
3while_lstm_cell_4_biasadd_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor4
0while_lstm_cell_4_matmul_readvariableop_resource6
2while_lstm_cell_4_matmul_1_readvariableop_resource5
1while_lstm_cell_4_biasadd_readvariableop_resource??(while/lstm_cell_4/BiasAdd/ReadVariableOp?'while/lstm_cell_4/MatMul/ReadVariableOp?)while/lstm_cell_4/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
'while/lstm_cell_4/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_4_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype02)
'while/lstm_cell_4/MatMul/ReadVariableOp?
while/lstm_cell_4/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_4/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_4/MatMul?
)while/lstm_cell_4/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_4_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02+
)while/lstm_cell_4/MatMul_1/ReadVariableOp?
while/lstm_cell_4/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_4/MatMul_1?
while/lstm_cell_4/addAddV2"while/lstm_cell_4/MatMul:product:0$while/lstm_cell_4/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_4/add?
(while/lstm_cell_4/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_4_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02*
(while/lstm_cell_4/BiasAdd/ReadVariableOp?
while/lstm_cell_4/BiasAddBiasAddwhile/lstm_cell_4/add:z:00while/lstm_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_4/BiasAddt
while/lstm_cell_4/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_4/Const?
!while/lstm_cell_4/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!while/lstm_cell_4/split/split_dim?
while/lstm_cell_4/splitSplit*while/lstm_cell_4/split/split_dim:output:0"while/lstm_cell_4/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
while/lstm_cell_4/split?
while/lstm_cell_4/SigmoidSigmoid while/lstm_cell_4/split:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_4/Sigmoid?
while/lstm_cell_4/Sigmoid_1Sigmoid while/lstm_cell_4/split:output:1*
T0*(
_output_shapes
:??????????2
while/lstm_cell_4/Sigmoid_1?
while/lstm_cell_4/mulMulwhile/lstm_cell_4/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:??????????2
while/lstm_cell_4/mul?
while/lstm_cell_4/LeakyRelu	LeakyRelu while/lstm_cell_4/split:output:2*(
_output_shapes
:??????????2
while/lstm_cell_4/LeakyRelu?
while/lstm_cell_4/mul_1Mulwhile/lstm_cell_4/Sigmoid:y:0)while/lstm_cell_4/LeakyRelu:activations:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_4/mul_1?
while/lstm_cell_4/add_1AddV2while/lstm_cell_4/mul:z:0while/lstm_cell_4/mul_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_4/add_1?
while/lstm_cell_4/Sigmoid_2Sigmoid while/lstm_cell_4/split:output:3*
T0*(
_output_shapes
:??????????2
while/lstm_cell_4/Sigmoid_2?
while/lstm_cell_4/LeakyRelu_1	LeakyReluwhile/lstm_cell_4/add_1:z:0*(
_output_shapes
:??????????2
while/lstm_cell_4/LeakyRelu_1?
while/lstm_cell_4/mul_2Mulwhile/lstm_cell_4/Sigmoid_2:y:0+while/lstm_cell_4/LeakyRelu_1:activations:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_4/mul_2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_4/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1?
while/IdentityIdentitywhile/add_1:z:0)^while/lstm_cell_4/BiasAdd/ReadVariableOp(^while/lstm_cell_4/MatMul/ReadVariableOp*^while/lstm_cell_4/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations)^while/lstm_cell_4/BiasAdd/ReadVariableOp(^while/lstm_cell_4/MatMul/ReadVariableOp*^while/lstm_cell_4/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0)^while/lstm_cell_4/BiasAdd/ReadVariableOp(^while/lstm_cell_4/MatMul/ReadVariableOp*^while/lstm_cell_4/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0)^while/lstm_cell_4/BiasAdd/ReadVariableOp(^while/lstm_cell_4/MatMul/ReadVariableOp*^while/lstm_cell_4/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_4/mul_2:z:0)^while/lstm_cell_4/BiasAdd/ReadVariableOp(^while/lstm_cell_4/MatMul/ReadVariableOp*^while/lstm_cell_4/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_4/add_1:z:0)^while/lstm_cell_4/BiasAdd/ReadVariableOp(^while/lstm_cell_4/MatMul/ReadVariableOp*^while/lstm_cell_4/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_4_biasadd_readvariableop_resource3while_lstm_cell_4_biasadd_readvariableop_resource_0"j
2while_lstm_cell_4_matmul_1_readvariableop_resource4while_lstm_cell_4_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_4_matmul_readvariableop_resource2while_lstm_cell_4_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*S
_input_shapesB
@: : : : :??????????:??????????: : :::2T
(while/lstm_cell_4/BiasAdd/ReadVariableOp(while/lstm_cell_4/BiasAdd/ReadVariableOp2R
'while/lstm_cell_4/MatMul/ReadVariableOp'while/lstm_cell_4/MatMul/ReadVariableOp2V
)while/lstm_cell_4/MatMul_1/ReadVariableOp)while/lstm_cell_4/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?	
?
$__inference_signature_wrapper_184136
lstm_4_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalllstm_4_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? **
f%R#
!__inference__wrapped_model_1819092
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*b
_input_shapesQ
O:?????????::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:Y U
+
_output_shapes
:?????????
&
_user_specified_namelstm_4_input
?B
?
while_body_185739
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_06
2while_lstm_cell_5_matmul_readvariableop_resource_08
4while_lstm_cell_5_matmul_1_readvariableop_resource_07
3while_lstm_cell_5_biasadd_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor4
0while_lstm_cell_5_matmul_readvariableop_resource6
2while_lstm_cell_5_matmul_1_readvariableop_resource5
1while_lstm_cell_5_biasadd_readvariableop_resource??(while/lstm_cell_5/BiasAdd/ReadVariableOp?'while/lstm_cell_5/MatMul/ReadVariableOp?)while/lstm_cell_5/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
'while/lstm_cell_5/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_5_matmul_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02)
'while/lstm_cell_5/MatMul/ReadVariableOp?
while/lstm_cell_5/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_5/MatMul?
)while/lstm_cell_5/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_5_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02+
)while/lstm_cell_5/MatMul_1/ReadVariableOp?
while/lstm_cell_5/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_5/MatMul_1?
while/lstm_cell_5/addAddV2"while/lstm_cell_5/MatMul:product:0$while/lstm_cell_5/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_5/add?
(while/lstm_cell_5/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_5_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02*
(while/lstm_cell_5/BiasAdd/ReadVariableOp?
while/lstm_cell_5/BiasAddBiasAddwhile/lstm_cell_5/add:z:00while/lstm_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_5/BiasAddt
while/lstm_cell_5/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_5/Const?
!while/lstm_cell_5/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!while/lstm_cell_5/split/split_dim?
while/lstm_cell_5/splitSplit*while/lstm_cell_5/split/split_dim:output:0"while/lstm_cell_5/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
while/lstm_cell_5/split?
while/lstm_cell_5/SigmoidSigmoid while/lstm_cell_5/split:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_5/Sigmoid?
while/lstm_cell_5/Sigmoid_1Sigmoid while/lstm_cell_5/split:output:1*
T0*(
_output_shapes
:??????????2
while/lstm_cell_5/Sigmoid_1?
while/lstm_cell_5/mulMulwhile/lstm_cell_5/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:??????????2
while/lstm_cell_5/mul?
while/lstm_cell_5/LeakyRelu	LeakyRelu while/lstm_cell_5/split:output:2*(
_output_shapes
:??????????2
while/lstm_cell_5/LeakyRelu?
while/lstm_cell_5/mul_1Mulwhile/lstm_cell_5/Sigmoid:y:0)while/lstm_cell_5/LeakyRelu:activations:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_5/mul_1?
while/lstm_cell_5/add_1AddV2while/lstm_cell_5/mul:z:0while/lstm_cell_5/mul_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_5/add_1?
while/lstm_cell_5/Sigmoid_2Sigmoid while/lstm_cell_5/split:output:3*
T0*(
_output_shapes
:??????????2
while/lstm_cell_5/Sigmoid_2?
while/lstm_cell_5/LeakyRelu_1	LeakyReluwhile/lstm_cell_5/add_1:z:0*(
_output_shapes
:??????????2
while/lstm_cell_5/LeakyRelu_1?
while/lstm_cell_5/mul_2Mulwhile/lstm_cell_5/Sigmoid_2:y:0+while/lstm_cell_5/LeakyRelu_1:activations:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_5/mul_2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_5/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1?
while/IdentityIdentitywhile/add_1:z:0)^while/lstm_cell_5/BiasAdd/ReadVariableOp(^while/lstm_cell_5/MatMul/ReadVariableOp*^while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations)^while/lstm_cell_5/BiasAdd/ReadVariableOp(^while/lstm_cell_5/MatMul/ReadVariableOp*^while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0)^while/lstm_cell_5/BiasAdd/ReadVariableOp(^while/lstm_cell_5/MatMul/ReadVariableOp*^while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0)^while/lstm_cell_5/BiasAdd/ReadVariableOp(^while/lstm_cell_5/MatMul/ReadVariableOp*^while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_5/mul_2:z:0)^while/lstm_cell_5/BiasAdd/ReadVariableOp(^while/lstm_cell_5/MatMul/ReadVariableOp*^while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_5/add_1:z:0)^while/lstm_cell_5/BiasAdd/ReadVariableOp(^while/lstm_cell_5/MatMul/ReadVariableOp*^while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_5_biasadd_readvariableop_resource3while_lstm_cell_5_biasadd_readvariableop_resource_0"j
2while_lstm_cell_5_matmul_1_readvariableop_resource4while_lstm_cell_5_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_5_matmul_readvariableop_resource2while_lstm_cell_5_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*S
_input_shapesB
@: : : : :??????????:??????????: : :::2T
(while/lstm_cell_5/BiasAdd/ReadVariableOp(while/lstm_cell_5/BiasAdd/ReadVariableOp2R
'while/lstm_cell_5/MatMul/ReadVariableOp'while/lstm_cell_5/MatMul/ReadVariableOp2V
)while/lstm_cell_5/MatMul_1/ReadVariableOp)while/lstm_cell_5/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?

?
lstm_5_while_cond_184682*
&lstm_5_while_lstm_5_while_loop_counter0
,lstm_5_while_lstm_5_while_maximum_iterations
lstm_5_while_placeholder
lstm_5_while_placeholder_1
lstm_5_while_placeholder_2
lstm_5_while_placeholder_3,
(lstm_5_while_less_lstm_5_strided_slice_1B
>lstm_5_while_lstm_5_while_cond_184682___redundant_placeholder0B
>lstm_5_while_lstm_5_while_cond_184682___redundant_placeholder1B
>lstm_5_while_lstm_5_while_cond_184682___redundant_placeholder2B
>lstm_5_while_lstm_5_while_cond_184682___redundant_placeholder3
lstm_5_while_identity
?
lstm_5/while/LessLesslstm_5_while_placeholder(lstm_5_while_less_lstm_5_strided_slice_1*
T0*
_output_shapes
: 2
lstm_5/while/Lessr
lstm_5/while/IdentityIdentitylstm_5/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_5/while/Identity"7
lstm_5_while_identitylstm_5/while/Identity:output:0*U
_input_shapesD
B: : : : :??????????:??????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?B
?
while_body_186067
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_06
2while_lstm_cell_5_matmul_readvariableop_resource_08
4while_lstm_cell_5_matmul_1_readvariableop_resource_07
3while_lstm_cell_5_biasadd_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor4
0while_lstm_cell_5_matmul_readvariableop_resource6
2while_lstm_cell_5_matmul_1_readvariableop_resource5
1while_lstm_cell_5_biasadd_readvariableop_resource??(while/lstm_cell_5/BiasAdd/ReadVariableOp?'while/lstm_cell_5/MatMul/ReadVariableOp?)while/lstm_cell_5/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
'while/lstm_cell_5/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_5_matmul_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02)
'while/lstm_cell_5/MatMul/ReadVariableOp?
while/lstm_cell_5/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_5/MatMul?
)while/lstm_cell_5/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_5_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02+
)while/lstm_cell_5/MatMul_1/ReadVariableOp?
while/lstm_cell_5/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_5/MatMul_1?
while/lstm_cell_5/addAddV2"while/lstm_cell_5/MatMul:product:0$while/lstm_cell_5/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_5/add?
(while/lstm_cell_5/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_5_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02*
(while/lstm_cell_5/BiasAdd/ReadVariableOp?
while/lstm_cell_5/BiasAddBiasAddwhile/lstm_cell_5/add:z:00while/lstm_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_5/BiasAddt
while/lstm_cell_5/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_5/Const?
!while/lstm_cell_5/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!while/lstm_cell_5/split/split_dim?
while/lstm_cell_5/splitSplit*while/lstm_cell_5/split/split_dim:output:0"while/lstm_cell_5/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
while/lstm_cell_5/split?
while/lstm_cell_5/SigmoidSigmoid while/lstm_cell_5/split:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_5/Sigmoid?
while/lstm_cell_5/Sigmoid_1Sigmoid while/lstm_cell_5/split:output:1*
T0*(
_output_shapes
:??????????2
while/lstm_cell_5/Sigmoid_1?
while/lstm_cell_5/mulMulwhile/lstm_cell_5/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:??????????2
while/lstm_cell_5/mul?
while/lstm_cell_5/LeakyRelu	LeakyRelu while/lstm_cell_5/split:output:2*(
_output_shapes
:??????????2
while/lstm_cell_5/LeakyRelu?
while/lstm_cell_5/mul_1Mulwhile/lstm_cell_5/Sigmoid:y:0)while/lstm_cell_5/LeakyRelu:activations:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_5/mul_1?
while/lstm_cell_5/add_1AddV2while/lstm_cell_5/mul:z:0while/lstm_cell_5/mul_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_5/add_1?
while/lstm_cell_5/Sigmoid_2Sigmoid while/lstm_cell_5/split:output:3*
T0*(
_output_shapes
:??????????2
while/lstm_cell_5/Sigmoid_2?
while/lstm_cell_5/LeakyRelu_1	LeakyReluwhile/lstm_cell_5/add_1:z:0*(
_output_shapes
:??????????2
while/lstm_cell_5/LeakyRelu_1?
while/lstm_cell_5/mul_2Mulwhile/lstm_cell_5/Sigmoid_2:y:0+while/lstm_cell_5/LeakyRelu_1:activations:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_5/mul_2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_5/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1?
while/IdentityIdentitywhile/add_1:z:0)^while/lstm_cell_5/BiasAdd/ReadVariableOp(^while/lstm_cell_5/MatMul/ReadVariableOp*^while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations)^while/lstm_cell_5/BiasAdd/ReadVariableOp(^while/lstm_cell_5/MatMul/ReadVariableOp*^while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0)^while/lstm_cell_5/BiasAdd/ReadVariableOp(^while/lstm_cell_5/MatMul/ReadVariableOp*^while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0)^while/lstm_cell_5/BiasAdd/ReadVariableOp(^while/lstm_cell_5/MatMul/ReadVariableOp*^while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_5/mul_2:z:0)^while/lstm_cell_5/BiasAdd/ReadVariableOp(^while/lstm_cell_5/MatMul/ReadVariableOp*^while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_5/add_1:z:0)^while/lstm_cell_5/BiasAdd/ReadVariableOp(^while/lstm_cell_5/MatMul/ReadVariableOp*^while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_5_biasadd_readvariableop_resource3while_lstm_cell_5_biasadd_readvariableop_resource_0"j
2while_lstm_cell_5_matmul_1_readvariableop_resource4while_lstm_cell_5_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_5_matmul_readvariableop_resource2while_lstm_cell_5_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*S
_input_shapesB
@: : : : :??????????:??????????: : :::2T
(while/lstm_cell_5/BiasAdd/ReadVariableOp(while/lstm_cell_5/BiasAdd/ReadVariableOp2R
'while/lstm_cell_5/MatMul/ReadVariableOp'while/lstm_cell_5/MatMul/ReadVariableOp2V
)while/lstm_cell_5/MatMul_1/ReadVariableOp)while/lstm_cell_5/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?
?
while_cond_183352
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_183352___redundant_placeholder04
0while_while_cond_183352___redundant_placeholder14
0while_while_cond_183352___redundant_placeholder24
0while_while_cond_183352___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*U
_input_shapesD
B: : : : :??????????:??????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?B
?
while_body_183200
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_06
2while_lstm_cell_4_matmul_readvariableop_resource_08
4while_lstm_cell_4_matmul_1_readvariableop_resource_07
3while_lstm_cell_4_biasadd_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor4
0while_lstm_cell_4_matmul_readvariableop_resource6
2while_lstm_cell_4_matmul_1_readvariableop_resource5
1while_lstm_cell_4_biasadd_readvariableop_resource??(while/lstm_cell_4/BiasAdd/ReadVariableOp?'while/lstm_cell_4/MatMul/ReadVariableOp?)while/lstm_cell_4/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
'while/lstm_cell_4/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_4_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype02)
'while/lstm_cell_4/MatMul/ReadVariableOp?
while/lstm_cell_4/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_4/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_4/MatMul?
)while/lstm_cell_4/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_4_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02+
)while/lstm_cell_4/MatMul_1/ReadVariableOp?
while/lstm_cell_4/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_4/MatMul_1?
while/lstm_cell_4/addAddV2"while/lstm_cell_4/MatMul:product:0$while/lstm_cell_4/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_4/add?
(while/lstm_cell_4/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_4_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02*
(while/lstm_cell_4/BiasAdd/ReadVariableOp?
while/lstm_cell_4/BiasAddBiasAddwhile/lstm_cell_4/add:z:00while/lstm_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_4/BiasAddt
while/lstm_cell_4/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_4/Const?
!while/lstm_cell_4/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!while/lstm_cell_4/split/split_dim?
while/lstm_cell_4/splitSplit*while/lstm_cell_4/split/split_dim:output:0"while/lstm_cell_4/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
while/lstm_cell_4/split?
while/lstm_cell_4/SigmoidSigmoid while/lstm_cell_4/split:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_4/Sigmoid?
while/lstm_cell_4/Sigmoid_1Sigmoid while/lstm_cell_4/split:output:1*
T0*(
_output_shapes
:??????????2
while/lstm_cell_4/Sigmoid_1?
while/lstm_cell_4/mulMulwhile/lstm_cell_4/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:??????????2
while/lstm_cell_4/mul?
while/lstm_cell_4/LeakyRelu	LeakyRelu while/lstm_cell_4/split:output:2*(
_output_shapes
:??????????2
while/lstm_cell_4/LeakyRelu?
while/lstm_cell_4/mul_1Mulwhile/lstm_cell_4/Sigmoid:y:0)while/lstm_cell_4/LeakyRelu:activations:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_4/mul_1?
while/lstm_cell_4/add_1AddV2while/lstm_cell_4/mul:z:0while/lstm_cell_4/mul_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_4/add_1?
while/lstm_cell_4/Sigmoid_2Sigmoid while/lstm_cell_4/split:output:3*
T0*(
_output_shapes
:??????????2
while/lstm_cell_4/Sigmoid_2?
while/lstm_cell_4/LeakyRelu_1	LeakyReluwhile/lstm_cell_4/add_1:z:0*(
_output_shapes
:??????????2
while/lstm_cell_4/LeakyRelu_1?
while/lstm_cell_4/mul_2Mulwhile/lstm_cell_4/Sigmoid_2:y:0+while/lstm_cell_4/LeakyRelu_1:activations:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_4/mul_2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_4/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1?
while/IdentityIdentitywhile/add_1:z:0)^while/lstm_cell_4/BiasAdd/ReadVariableOp(^while/lstm_cell_4/MatMul/ReadVariableOp*^while/lstm_cell_4/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations)^while/lstm_cell_4/BiasAdd/ReadVariableOp(^while/lstm_cell_4/MatMul/ReadVariableOp*^while/lstm_cell_4/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0)^while/lstm_cell_4/BiasAdd/ReadVariableOp(^while/lstm_cell_4/MatMul/ReadVariableOp*^while/lstm_cell_4/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0)^while/lstm_cell_4/BiasAdd/ReadVariableOp(^while/lstm_cell_4/MatMul/ReadVariableOp*^while/lstm_cell_4/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_4/mul_2:z:0)^while/lstm_cell_4/BiasAdd/ReadVariableOp(^while/lstm_cell_4/MatMul/ReadVariableOp*^while/lstm_cell_4/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_4/add_1:z:0)^while/lstm_cell_4/BiasAdd/ReadVariableOp(^while/lstm_cell_4/MatMul/ReadVariableOp*^while/lstm_cell_4/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_4_biasadd_readvariableop_resource3while_lstm_cell_4_biasadd_readvariableop_resource_0"j
2while_lstm_cell_4_matmul_1_readvariableop_resource4while_lstm_cell_4_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_4_matmul_readvariableop_resource2while_lstm_cell_4_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*S
_input_shapesB
@: : : : :??????????:??????????: : :::2T
(while/lstm_cell_4/BiasAdd/ReadVariableOp(while/lstm_cell_4/BiasAdd/ReadVariableOp2R
'while/lstm_cell_4/MatMul/ReadVariableOp'while/lstm_cell_4/MatMul/ReadVariableOp2V
)while/lstm_cell_4/MatMul_1/ReadVariableOp)while/lstm_cell_4/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?`
?
%sequential_2_lstm_5_while_body_181796D
@sequential_2_lstm_5_while_sequential_2_lstm_5_while_loop_counterJ
Fsequential_2_lstm_5_while_sequential_2_lstm_5_while_maximum_iterations)
%sequential_2_lstm_5_while_placeholder+
'sequential_2_lstm_5_while_placeholder_1+
'sequential_2_lstm_5_while_placeholder_2+
'sequential_2_lstm_5_while_placeholder_3C
?sequential_2_lstm_5_while_sequential_2_lstm_5_strided_slice_1_0
{sequential_2_lstm_5_while_tensorarrayv2read_tensorlistgetitem_sequential_2_lstm_5_tensorarrayunstack_tensorlistfromtensor_0J
Fsequential_2_lstm_5_while_lstm_cell_5_matmul_readvariableop_resource_0L
Hsequential_2_lstm_5_while_lstm_cell_5_matmul_1_readvariableop_resource_0K
Gsequential_2_lstm_5_while_lstm_cell_5_biasadd_readvariableop_resource_0&
"sequential_2_lstm_5_while_identity(
$sequential_2_lstm_5_while_identity_1(
$sequential_2_lstm_5_while_identity_2(
$sequential_2_lstm_5_while_identity_3(
$sequential_2_lstm_5_while_identity_4(
$sequential_2_lstm_5_while_identity_5A
=sequential_2_lstm_5_while_sequential_2_lstm_5_strided_slice_1}
ysequential_2_lstm_5_while_tensorarrayv2read_tensorlistgetitem_sequential_2_lstm_5_tensorarrayunstack_tensorlistfromtensorH
Dsequential_2_lstm_5_while_lstm_cell_5_matmul_readvariableop_resourceJ
Fsequential_2_lstm_5_while_lstm_cell_5_matmul_1_readvariableop_resourceI
Esequential_2_lstm_5_while_lstm_cell_5_biasadd_readvariableop_resource??<sequential_2/lstm_5/while/lstm_cell_5/BiasAdd/ReadVariableOp?;sequential_2/lstm_5/while/lstm_cell_5/MatMul/ReadVariableOp?=sequential_2/lstm_5/while/lstm_cell_5/MatMul_1/ReadVariableOp?
Ksequential_2/lstm_5/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2M
Ksequential_2/lstm_5/while/TensorArrayV2Read/TensorListGetItem/element_shape?
=sequential_2/lstm_5/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem{sequential_2_lstm_5_while_tensorarrayv2read_tensorlistgetitem_sequential_2_lstm_5_tensorarrayunstack_tensorlistfromtensor_0%sequential_2_lstm_5_while_placeholderTsequential_2/lstm_5/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype02?
=sequential_2/lstm_5/while/TensorArrayV2Read/TensorListGetItem?
;sequential_2/lstm_5/while/lstm_cell_5/MatMul/ReadVariableOpReadVariableOpFsequential_2_lstm_5_while_lstm_cell_5_matmul_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02=
;sequential_2/lstm_5/while/lstm_cell_5/MatMul/ReadVariableOp?
,sequential_2/lstm_5/while/lstm_cell_5/MatMulMatMulDsequential_2/lstm_5/while/TensorArrayV2Read/TensorListGetItem:item:0Csequential_2/lstm_5/while/lstm_cell_5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2.
,sequential_2/lstm_5/while/lstm_cell_5/MatMul?
=sequential_2/lstm_5/while/lstm_cell_5/MatMul_1/ReadVariableOpReadVariableOpHsequential_2_lstm_5_while_lstm_cell_5_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02?
=sequential_2/lstm_5/while/lstm_cell_5/MatMul_1/ReadVariableOp?
.sequential_2/lstm_5/while/lstm_cell_5/MatMul_1MatMul'sequential_2_lstm_5_while_placeholder_2Esequential_2/lstm_5/while/lstm_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????20
.sequential_2/lstm_5/while/lstm_cell_5/MatMul_1?
)sequential_2/lstm_5/while/lstm_cell_5/addAddV26sequential_2/lstm_5/while/lstm_cell_5/MatMul:product:08sequential_2/lstm_5/while/lstm_cell_5/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2+
)sequential_2/lstm_5/while/lstm_cell_5/add?
<sequential_2/lstm_5/while/lstm_cell_5/BiasAdd/ReadVariableOpReadVariableOpGsequential_2_lstm_5_while_lstm_cell_5_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02>
<sequential_2/lstm_5/while/lstm_cell_5/BiasAdd/ReadVariableOp?
-sequential_2/lstm_5/while/lstm_cell_5/BiasAddBiasAdd-sequential_2/lstm_5/while/lstm_cell_5/add:z:0Dsequential_2/lstm_5/while/lstm_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2/
-sequential_2/lstm_5/while/lstm_cell_5/BiasAdd?
+sequential_2/lstm_5/while/lstm_cell_5/ConstConst*
_output_shapes
: *
dtype0*
value	B :2-
+sequential_2/lstm_5/while/lstm_cell_5/Const?
5sequential_2/lstm_5/while/lstm_cell_5/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :27
5sequential_2/lstm_5/while/lstm_cell_5/split/split_dim?
+sequential_2/lstm_5/while/lstm_cell_5/splitSplit>sequential_2/lstm_5/while/lstm_cell_5/split/split_dim:output:06sequential_2/lstm_5/while/lstm_cell_5/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2-
+sequential_2/lstm_5/while/lstm_cell_5/split?
-sequential_2/lstm_5/while/lstm_cell_5/SigmoidSigmoid4sequential_2/lstm_5/while/lstm_cell_5/split:output:0*
T0*(
_output_shapes
:??????????2/
-sequential_2/lstm_5/while/lstm_cell_5/Sigmoid?
/sequential_2/lstm_5/while/lstm_cell_5/Sigmoid_1Sigmoid4sequential_2/lstm_5/while/lstm_cell_5/split:output:1*
T0*(
_output_shapes
:??????????21
/sequential_2/lstm_5/while/lstm_cell_5/Sigmoid_1?
)sequential_2/lstm_5/while/lstm_cell_5/mulMul3sequential_2/lstm_5/while/lstm_cell_5/Sigmoid_1:y:0'sequential_2_lstm_5_while_placeholder_3*
T0*(
_output_shapes
:??????????2+
)sequential_2/lstm_5/while/lstm_cell_5/mul?
/sequential_2/lstm_5/while/lstm_cell_5/LeakyRelu	LeakyRelu4sequential_2/lstm_5/while/lstm_cell_5/split:output:2*(
_output_shapes
:??????????21
/sequential_2/lstm_5/while/lstm_cell_5/LeakyRelu?
+sequential_2/lstm_5/while/lstm_cell_5/mul_1Mul1sequential_2/lstm_5/while/lstm_cell_5/Sigmoid:y:0=sequential_2/lstm_5/while/lstm_cell_5/LeakyRelu:activations:0*
T0*(
_output_shapes
:??????????2-
+sequential_2/lstm_5/while/lstm_cell_5/mul_1?
+sequential_2/lstm_5/while/lstm_cell_5/add_1AddV2-sequential_2/lstm_5/while/lstm_cell_5/mul:z:0/sequential_2/lstm_5/while/lstm_cell_5/mul_1:z:0*
T0*(
_output_shapes
:??????????2-
+sequential_2/lstm_5/while/lstm_cell_5/add_1?
/sequential_2/lstm_5/while/lstm_cell_5/Sigmoid_2Sigmoid4sequential_2/lstm_5/while/lstm_cell_5/split:output:3*
T0*(
_output_shapes
:??????????21
/sequential_2/lstm_5/while/lstm_cell_5/Sigmoid_2?
1sequential_2/lstm_5/while/lstm_cell_5/LeakyRelu_1	LeakyRelu/sequential_2/lstm_5/while/lstm_cell_5/add_1:z:0*(
_output_shapes
:??????????23
1sequential_2/lstm_5/while/lstm_cell_5/LeakyRelu_1?
+sequential_2/lstm_5/while/lstm_cell_5/mul_2Mul3sequential_2/lstm_5/while/lstm_cell_5/Sigmoid_2:y:0?sequential_2/lstm_5/while/lstm_cell_5/LeakyRelu_1:activations:0*
T0*(
_output_shapes
:??????????2-
+sequential_2/lstm_5/while/lstm_cell_5/mul_2?
>sequential_2/lstm_5/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem'sequential_2_lstm_5_while_placeholder_1%sequential_2_lstm_5_while_placeholder/sequential_2/lstm_5/while/lstm_cell_5/mul_2:z:0*
_output_shapes
: *
element_dtype02@
>sequential_2/lstm_5/while/TensorArrayV2Write/TensorListSetItem?
sequential_2/lstm_5/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2!
sequential_2/lstm_5/while/add/y?
sequential_2/lstm_5/while/addAddV2%sequential_2_lstm_5_while_placeholder(sequential_2/lstm_5/while/add/y:output:0*
T0*
_output_shapes
: 2
sequential_2/lstm_5/while/add?
!sequential_2/lstm_5/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2#
!sequential_2/lstm_5/while/add_1/y?
sequential_2/lstm_5/while/add_1AddV2@sequential_2_lstm_5_while_sequential_2_lstm_5_while_loop_counter*sequential_2/lstm_5/while/add_1/y:output:0*
T0*
_output_shapes
: 2!
sequential_2/lstm_5/while/add_1?
"sequential_2/lstm_5/while/IdentityIdentity#sequential_2/lstm_5/while/add_1:z:0=^sequential_2/lstm_5/while/lstm_cell_5/BiasAdd/ReadVariableOp<^sequential_2/lstm_5/while/lstm_cell_5/MatMul/ReadVariableOp>^sequential_2/lstm_5/while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2$
"sequential_2/lstm_5/while/Identity?
$sequential_2/lstm_5/while/Identity_1IdentityFsequential_2_lstm_5_while_sequential_2_lstm_5_while_maximum_iterations=^sequential_2/lstm_5/while/lstm_cell_5/BiasAdd/ReadVariableOp<^sequential_2/lstm_5/while/lstm_cell_5/MatMul/ReadVariableOp>^sequential_2/lstm_5/while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2&
$sequential_2/lstm_5/while/Identity_1?
$sequential_2/lstm_5/while/Identity_2Identity!sequential_2/lstm_5/while/add:z:0=^sequential_2/lstm_5/while/lstm_cell_5/BiasAdd/ReadVariableOp<^sequential_2/lstm_5/while/lstm_cell_5/MatMul/ReadVariableOp>^sequential_2/lstm_5/while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2&
$sequential_2/lstm_5/while/Identity_2?
$sequential_2/lstm_5/while/Identity_3IdentityNsequential_2/lstm_5/while/TensorArrayV2Write/TensorListSetItem:output_handle:0=^sequential_2/lstm_5/while/lstm_cell_5/BiasAdd/ReadVariableOp<^sequential_2/lstm_5/while/lstm_cell_5/MatMul/ReadVariableOp>^sequential_2/lstm_5/while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2&
$sequential_2/lstm_5/while/Identity_3?
$sequential_2/lstm_5/while/Identity_4Identity/sequential_2/lstm_5/while/lstm_cell_5/mul_2:z:0=^sequential_2/lstm_5/while/lstm_cell_5/BiasAdd/ReadVariableOp<^sequential_2/lstm_5/while/lstm_cell_5/MatMul/ReadVariableOp>^sequential_2/lstm_5/while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2&
$sequential_2/lstm_5/while/Identity_4?
$sequential_2/lstm_5/while/Identity_5Identity/sequential_2/lstm_5/while/lstm_cell_5/add_1:z:0=^sequential_2/lstm_5/while/lstm_cell_5/BiasAdd/ReadVariableOp<^sequential_2/lstm_5/while/lstm_cell_5/MatMul/ReadVariableOp>^sequential_2/lstm_5/while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2&
$sequential_2/lstm_5/while/Identity_5"Q
"sequential_2_lstm_5_while_identity+sequential_2/lstm_5/while/Identity:output:0"U
$sequential_2_lstm_5_while_identity_1-sequential_2/lstm_5/while/Identity_1:output:0"U
$sequential_2_lstm_5_while_identity_2-sequential_2/lstm_5/while/Identity_2:output:0"U
$sequential_2_lstm_5_while_identity_3-sequential_2/lstm_5/while/Identity_3:output:0"U
$sequential_2_lstm_5_while_identity_4-sequential_2/lstm_5/while/Identity_4:output:0"U
$sequential_2_lstm_5_while_identity_5-sequential_2/lstm_5/while/Identity_5:output:0"?
Esequential_2_lstm_5_while_lstm_cell_5_biasadd_readvariableop_resourceGsequential_2_lstm_5_while_lstm_cell_5_biasadd_readvariableop_resource_0"?
Fsequential_2_lstm_5_while_lstm_cell_5_matmul_1_readvariableop_resourceHsequential_2_lstm_5_while_lstm_cell_5_matmul_1_readvariableop_resource_0"?
Dsequential_2_lstm_5_while_lstm_cell_5_matmul_readvariableop_resourceFsequential_2_lstm_5_while_lstm_cell_5_matmul_readvariableop_resource_0"?
=sequential_2_lstm_5_while_sequential_2_lstm_5_strided_slice_1?sequential_2_lstm_5_while_sequential_2_lstm_5_strided_slice_1_0"?
ysequential_2_lstm_5_while_tensorarrayv2read_tensorlistgetitem_sequential_2_lstm_5_tensorarrayunstack_tensorlistfromtensor{sequential_2_lstm_5_while_tensorarrayv2read_tensorlistgetitem_sequential_2_lstm_5_tensorarrayunstack_tensorlistfromtensor_0*S
_input_shapesB
@: : : : :??????????:??????????: : :::2|
<sequential_2/lstm_5/while/lstm_cell_5/BiasAdd/ReadVariableOp<sequential_2/lstm_5/while/lstm_cell_5/BiasAdd/ReadVariableOp2z
;sequential_2/lstm_5/while/lstm_cell_5/MatMul/ReadVariableOp;sequential_2/lstm_5/while/lstm_cell_5/MatMul/ReadVariableOp2~
=sequential_2/lstm_5/while/lstm_cell_5/MatMul_1/ReadVariableOp=sequential_2/lstm_5/while/lstm_cell_5/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?	
?
-__inference_sequential_2_layer_call_fn_184862

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_sequential_2_layer_call_and_return_conditional_losses_1840622
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*b
_input_shapesQ
O:?????????::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_182308
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_182308___redundant_placeholder04
0while_while_cond_182308___redundant_placeholder14
0while_while_cond_182308___redundant_placeholder24
0while_while_cond_182308___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*U
_input_shapesD
B: : : : :??????????:??????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?[
?
B__inference_lstm_5_layer_call_and_return_conditional_losses_186152
inputs_0.
*lstm_cell_5_matmul_readvariableop_resource0
,lstm_cell_5_matmul_1_readvariableop_resource/
+lstm_cell_5_biasadd_readvariableop_resource
identity??"lstm_cell_5/BiasAdd/ReadVariableOp?!lstm_cell_5/MatMul/ReadVariableOp?#lstm_cell_5/MatMul_1/ReadVariableOp?whileF
ShapeShapeinputs_0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:??????????2
zerosa
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessg
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const~
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:??????????2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*5
_output_shapes#
!:???????????????????2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_2?
!lstm_cell_5/MatMul/ReadVariableOpReadVariableOp*lstm_cell_5_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02#
!lstm_cell_5/MatMul/ReadVariableOp?
lstm_cell_5/MatMulMatMulstrided_slice_2:output:0)lstm_cell_5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_5/MatMul?
#lstm_cell_5/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_5_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02%
#lstm_cell_5/MatMul_1/ReadVariableOp?
lstm_cell_5/MatMul_1MatMulzeros:output:0+lstm_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_5/MatMul_1?
lstm_cell_5/addAddV2lstm_cell_5/MatMul:product:0lstm_cell_5/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell_5/add?
"lstm_cell_5/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_5_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02$
"lstm_cell_5/BiasAdd/ReadVariableOp?
lstm_cell_5/BiasAddBiasAddlstm_cell_5/add:z:0*lstm_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_5/BiasAddh
lstm_cell_5/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_5/Const|
lstm_cell_5/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_5/split/split_dim?
lstm_cell_5/splitSplit$lstm_cell_5/split/split_dim:output:0lstm_cell_5/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
lstm_cell_5/split?
lstm_cell_5/SigmoidSigmoidlstm_cell_5/split:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_5/Sigmoid?
lstm_cell_5/Sigmoid_1Sigmoidlstm_cell_5/split:output:1*
T0*(
_output_shapes
:??????????2
lstm_cell_5/Sigmoid_1?
lstm_cell_5/mulMullstm_cell_5/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_5/mul?
lstm_cell_5/LeakyRelu	LeakyRelulstm_cell_5/split:output:2*(
_output_shapes
:??????????2
lstm_cell_5/LeakyRelu?
lstm_cell_5/mul_1Mullstm_cell_5/Sigmoid:y:0#lstm_cell_5/LeakyRelu:activations:0*
T0*(
_output_shapes
:??????????2
lstm_cell_5/mul_1?
lstm_cell_5/add_1AddV2lstm_cell_5/mul:z:0lstm_cell_5/mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_5/add_1?
lstm_cell_5/Sigmoid_2Sigmoidlstm_cell_5/split:output:3*
T0*(
_output_shapes
:??????????2
lstm_cell_5/Sigmoid_2?
lstm_cell_5/LeakyRelu_1	LeakyRelulstm_cell_5/add_1:z:0*(
_output_shapes
:??????????2
lstm_cell_5/LeakyRelu_1?
lstm_cell_5/mul_2Mullstm_cell_5/Sigmoid_2:y:0%lstm_cell_5/LeakyRelu_1:activations:0*
T0*(
_output_shapes
:??????????2
lstm_cell_5/mul_2?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_5_matmul_readvariableop_resource,lstm_cell_5_matmul_1_readvariableop_resource+lstm_cell_5_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :??????????:??????????: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_186067*
condR
while_cond_186066*M
output_shapes<
:: : : : :??????????:??????????: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:???????????????????*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:???????????????????2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime?
IdentityIdentitystrided_slice_3:output:0#^lstm_cell_5/BiasAdd/ReadVariableOp"^lstm_cell_5/MatMul/ReadVariableOp$^lstm_cell_5/MatMul_1/ReadVariableOp^while*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*@
_input_shapes/
-:???????????????????:::2H
"lstm_cell_5/BiasAdd/ReadVariableOp"lstm_cell_5/BiasAdd/ReadVariableOp2F
!lstm_cell_5/MatMul/ReadVariableOp!lstm_cell_5/MatMul/ReadVariableOp2J
#lstm_cell_5/MatMul_1/ReadVariableOp#lstm_cell_5/MatMul_1/ReadVariableOp2
whilewhile:_ [
5
_output_shapes#
!:???????????????????
"
_user_specified_name
inputs/0
?Z
?
B__inference_lstm_4_layer_call_and_return_conditional_losses_185496

inputs.
*lstm_cell_4_matmul_readvariableop_resource0
,lstm_cell_4_matmul_1_readvariableop_resource/
+lstm_cell_4_biasadd_readvariableop_resource
identity??"lstm_cell_4/BiasAdd/ReadVariableOp?!lstm_cell_4/MatMul/ReadVariableOp?#lstm_cell_4/MatMul_1/ReadVariableOp?whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:??????????2
zerosa
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessg
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const~
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:??????????2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:?????????2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slice_2?
!lstm_cell_4/MatMul/ReadVariableOpReadVariableOp*lstm_cell_4_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02#
!lstm_cell_4/MatMul/ReadVariableOp?
lstm_cell_4/MatMulMatMulstrided_slice_2:output:0)lstm_cell_4/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_4/MatMul?
#lstm_cell_4/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_4_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02%
#lstm_cell_4/MatMul_1/ReadVariableOp?
lstm_cell_4/MatMul_1MatMulzeros:output:0+lstm_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_4/MatMul_1?
lstm_cell_4/addAddV2lstm_cell_4/MatMul:product:0lstm_cell_4/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell_4/add?
"lstm_cell_4/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_4_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02$
"lstm_cell_4/BiasAdd/ReadVariableOp?
lstm_cell_4/BiasAddBiasAddlstm_cell_4/add:z:0*lstm_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_4/BiasAddh
lstm_cell_4/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_4/Const|
lstm_cell_4/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_4/split/split_dim?
lstm_cell_4/splitSplit$lstm_cell_4/split/split_dim:output:0lstm_cell_4/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
lstm_cell_4/split?
lstm_cell_4/SigmoidSigmoidlstm_cell_4/split:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_4/Sigmoid?
lstm_cell_4/Sigmoid_1Sigmoidlstm_cell_4/split:output:1*
T0*(
_output_shapes
:??????????2
lstm_cell_4/Sigmoid_1?
lstm_cell_4/mulMullstm_cell_4/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_4/mul?
lstm_cell_4/LeakyRelu	LeakyRelulstm_cell_4/split:output:2*(
_output_shapes
:??????????2
lstm_cell_4/LeakyRelu?
lstm_cell_4/mul_1Mullstm_cell_4/Sigmoid:y:0#lstm_cell_4/LeakyRelu:activations:0*
T0*(
_output_shapes
:??????????2
lstm_cell_4/mul_1?
lstm_cell_4/add_1AddV2lstm_cell_4/mul:z:0lstm_cell_4/mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_4/add_1?
lstm_cell_4/Sigmoid_2Sigmoidlstm_cell_4/split:output:3*
T0*(
_output_shapes
:??????????2
lstm_cell_4/Sigmoid_2?
lstm_cell_4/LeakyRelu_1	LeakyRelulstm_cell_4/add_1:z:0*(
_output_shapes
:??????????2
lstm_cell_4/LeakyRelu_1?
lstm_cell_4/mul_2Mullstm_cell_4/Sigmoid_2:y:0%lstm_cell_4/LeakyRelu_1:activations:0*
T0*(
_output_shapes
:??????????2
lstm_cell_4/mul_2?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_4_matmul_readvariableop_resource,lstm_cell_4_matmul_1_readvariableop_resource+lstm_cell_4_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :??????????:??????????: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_185411*
condR
while_cond_185410*M
output_shapes<
:: : : : :??????????:??????????: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:??????????2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime?
IdentityIdentitytranspose_1:y:0#^lstm_cell_4/BiasAdd/ReadVariableOp"^lstm_cell_4/MatMul/ReadVariableOp$^lstm_cell_4/MatMul_1/ReadVariableOp^while*
T0*,
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????:::2H
"lstm_cell_4/BiasAdd/ReadVariableOp"lstm_cell_4/BiasAdd/ReadVariableOp2F
!lstm_cell_4/MatMul/ReadVariableOp!lstm_cell_4/MatMul/ReadVariableOp2J
#lstm_cell_4/MatMul_1/ReadVariableOp#lstm_cell_4/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
? 
?
H__inference_sequential_2_layer_call_and_return_conditional_losses_183991

inputs
lstm_4_183956
lstm_4_183958
lstm_4_183960
lstm_5_183963
lstm_5_183965
lstm_5_183967
dense_8_183970
dense_8_183972
dense_9_183975
dense_9_183977
dense_10_183980
dense_10_183982
dense_11_183985
dense_11_183987
identity?? dense_10/StatefulPartitionedCall? dense_11/StatefulPartitionedCall?dense_8/StatefulPartitionedCall?dense_9/StatefulPartitionedCall?lstm_4/StatefulPartitionedCall?lstm_5/StatefulPartitionedCall?
lstm_4/StatefulPartitionedCallStatefulPartitionedCallinputslstm_4_183956lstm_4_183958lstm_4_183960*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_lstm_4_layer_call_and_return_conditional_losses_1832852 
lstm_4/StatefulPartitionedCall?
lstm_5/StatefulPartitionedCallStatefulPartitionedCall'lstm_4/StatefulPartitionedCall:output:0lstm_5_183963lstm_5_183965lstm_5_183967*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_lstm_5_layer_call_and_return_conditional_losses_1836202 
lstm_5/StatefulPartitionedCall?
dense_8/StatefulPartitionedCallStatefulPartitionedCall'lstm_5/StatefulPartitionedCall:output:0dense_8_183970dense_8_183972*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_8_layer_call_and_return_conditional_losses_1838142!
dense_8/StatefulPartitionedCall?
dense_9/StatefulPartitionedCallStatefulPartitionedCall(dense_8/StatefulPartitionedCall:output:0dense_9_183975dense_9_183977*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????d*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_9_layer_call_and_return_conditional_losses_1838412!
dense_9/StatefulPartitionedCall?
 dense_10/StatefulPartitionedCallStatefulPartitionedCall(dense_9/StatefulPartitionedCall:output:0dense_10_183980dense_10_183982*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_10_layer_call_and_return_conditional_losses_1838682"
 dense_10/StatefulPartitionedCall?
 dense_11/StatefulPartitionedCallStatefulPartitionedCall)dense_10/StatefulPartitionedCall:output:0dense_11_183985dense_11_183987*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_11_layer_call_and_return_conditional_losses_1838952"
 dense_11/StatefulPartitionedCall?
IdentityIdentity)dense_11/StatefulPartitionedCall:output:0!^dense_10/StatefulPartitionedCall!^dense_11/StatefulPartitionedCall ^dense_8/StatefulPartitionedCall ^dense_9/StatefulPartitionedCall^lstm_4/StatefulPartitionedCall^lstm_5/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*b
_input_shapesQ
O:?????????::::::::::::::2D
 dense_10/StatefulPartitionedCall dense_10/StatefulPartitionedCall2D
 dense_11/StatefulPartitionedCall dense_11/StatefulPartitionedCall2B
dense_8/StatefulPartitionedCalldense_8/StatefulPartitionedCall2B
dense_9/StatefulPartitionedCalldense_9/StatefulPartitionedCall2@
lstm_4/StatefulPartitionedCalllstm_4/StatefulPartitionedCall2@
lstm_5/StatefulPartitionedCalllstm_5/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?	
?
C__inference_dense_9_layer_call_and_return_conditional_losses_183841

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?d*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:d*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2	
BiasAdd^
	LeakyRelu	LeakyReluBiasAdd:output:0*'
_output_shapes
:?????????d2
	LeakyRelu?
IdentityIdentityLeakyRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????d2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?%
?
while_body_182309
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_lstm_cell_4_182333_0
while_lstm_cell_4_182335_0
while_lstm_cell_4_182337_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_lstm_cell_4_182333
while_lstm_cell_4_182335
while_lstm_cell_4_182337??)while/lstm_cell_4/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
)while/lstm_cell_4/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_4_182333_0while_lstm_cell_4_182335_0while_lstm_cell_4_182337_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:??????????:??????????:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_lstm_cell_4_layer_call_and_return_conditional_losses_1819822+
)while/lstm_cell_4/StatefulPartitionedCall?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder2while/lstm_cell_4/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1?
while/IdentityIdentitywhile/add_1:z:0*^while/lstm_cell_4/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations*^while/lstm_cell_4/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0*^while/lstm_cell_4/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*^while/lstm_cell_4/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identity2while/lstm_cell_4/StatefulPartitionedCall:output:1*^while/lstm_cell_4/StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2
while/Identity_4?
while/Identity_5Identity2while/lstm_cell_4/StatefulPartitionedCall:output:2*^while/lstm_cell_4/StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"6
while_lstm_cell_4_182333while_lstm_cell_4_182333_0"6
while_lstm_cell_4_182335while_lstm_cell_4_182335_0"6
while_lstm_cell_4_182337while_lstm_cell_4_182337_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*S
_input_shapesB
@: : : : :??????????:??????????: : :::2V
)while/lstm_cell_4/StatefulPartitionedCall)while/lstm_cell_4/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?B
?
while_body_185258
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_06
2while_lstm_cell_4_matmul_readvariableop_resource_08
4while_lstm_cell_4_matmul_1_readvariableop_resource_07
3while_lstm_cell_4_biasadd_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor4
0while_lstm_cell_4_matmul_readvariableop_resource6
2while_lstm_cell_4_matmul_1_readvariableop_resource5
1while_lstm_cell_4_biasadd_readvariableop_resource??(while/lstm_cell_4/BiasAdd/ReadVariableOp?'while/lstm_cell_4/MatMul/ReadVariableOp?)while/lstm_cell_4/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
'while/lstm_cell_4/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_4_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype02)
'while/lstm_cell_4/MatMul/ReadVariableOp?
while/lstm_cell_4/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_4/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_4/MatMul?
)while/lstm_cell_4/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_4_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02+
)while/lstm_cell_4/MatMul_1/ReadVariableOp?
while/lstm_cell_4/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_4/MatMul_1?
while/lstm_cell_4/addAddV2"while/lstm_cell_4/MatMul:product:0$while/lstm_cell_4/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_4/add?
(while/lstm_cell_4/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_4_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02*
(while/lstm_cell_4/BiasAdd/ReadVariableOp?
while/lstm_cell_4/BiasAddBiasAddwhile/lstm_cell_4/add:z:00while/lstm_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_4/BiasAddt
while/lstm_cell_4/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_4/Const?
!while/lstm_cell_4/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!while/lstm_cell_4/split/split_dim?
while/lstm_cell_4/splitSplit*while/lstm_cell_4/split/split_dim:output:0"while/lstm_cell_4/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
while/lstm_cell_4/split?
while/lstm_cell_4/SigmoidSigmoid while/lstm_cell_4/split:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_4/Sigmoid?
while/lstm_cell_4/Sigmoid_1Sigmoid while/lstm_cell_4/split:output:1*
T0*(
_output_shapes
:??????????2
while/lstm_cell_4/Sigmoid_1?
while/lstm_cell_4/mulMulwhile/lstm_cell_4/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:??????????2
while/lstm_cell_4/mul?
while/lstm_cell_4/LeakyRelu	LeakyRelu while/lstm_cell_4/split:output:2*(
_output_shapes
:??????????2
while/lstm_cell_4/LeakyRelu?
while/lstm_cell_4/mul_1Mulwhile/lstm_cell_4/Sigmoid:y:0)while/lstm_cell_4/LeakyRelu:activations:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_4/mul_1?
while/lstm_cell_4/add_1AddV2while/lstm_cell_4/mul:z:0while/lstm_cell_4/mul_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_4/add_1?
while/lstm_cell_4/Sigmoid_2Sigmoid while/lstm_cell_4/split:output:3*
T0*(
_output_shapes
:??????????2
while/lstm_cell_4/Sigmoid_2?
while/lstm_cell_4/LeakyRelu_1	LeakyReluwhile/lstm_cell_4/add_1:z:0*(
_output_shapes
:??????????2
while/lstm_cell_4/LeakyRelu_1?
while/lstm_cell_4/mul_2Mulwhile/lstm_cell_4/Sigmoid_2:y:0+while/lstm_cell_4/LeakyRelu_1:activations:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_4/mul_2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_4/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1?
while/IdentityIdentitywhile/add_1:z:0)^while/lstm_cell_4/BiasAdd/ReadVariableOp(^while/lstm_cell_4/MatMul/ReadVariableOp*^while/lstm_cell_4/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations)^while/lstm_cell_4/BiasAdd/ReadVariableOp(^while/lstm_cell_4/MatMul/ReadVariableOp*^while/lstm_cell_4/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0)^while/lstm_cell_4/BiasAdd/ReadVariableOp(^while/lstm_cell_4/MatMul/ReadVariableOp*^while/lstm_cell_4/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0)^while/lstm_cell_4/BiasAdd/ReadVariableOp(^while/lstm_cell_4/MatMul/ReadVariableOp*^while/lstm_cell_4/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_4/mul_2:z:0)^while/lstm_cell_4/BiasAdd/ReadVariableOp(^while/lstm_cell_4/MatMul/ReadVariableOp*^while/lstm_cell_4/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_4/add_1:z:0)^while/lstm_cell_4/BiasAdd/ReadVariableOp(^while/lstm_cell_4/MatMul/ReadVariableOp*^while/lstm_cell_4/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_4_biasadd_readvariableop_resource3while_lstm_cell_4_biasadd_readvariableop_resource_0"j
2while_lstm_cell_4_matmul_1_readvariableop_resource4while_lstm_cell_4_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_4_matmul_readvariableop_resource2while_lstm_cell_4_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*S
_input_shapesB
@: : : : :??????????:??????????: : :::2T
(while/lstm_cell_4/BiasAdd/ReadVariableOp(while/lstm_cell_4/BiasAdd/ReadVariableOp2R
'while/lstm_cell_4/MatMul/ReadVariableOp'while/lstm_cell_4/MatMul/ReadVariableOp2V
)while/lstm_cell_4/MatMul_1/ReadVariableOp)while/lstm_cell_4/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?
?
G__inference_lstm_cell_4_layer_call_and_return_conditional_losses_186287

inputs
states_0
states_1"
matmul_readvariableop_resource$
 matmul_1_readvariableop_resource#
biasadd_readvariableop_resource
identity

identity_1

identity_2??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul_1/ReadVariableOp|
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
add?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
split`
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:??????????2	
Sigmoidd
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:??????????2
	Sigmoid_1]
mulMulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:??????????2
mul]
	LeakyRelu	LeakyRelusplit:output:2*(
_output_shapes
:??????????2
	LeakyRelun
mul_1MulSigmoid:y:0LeakyRelu:activations:0*
T0*(
_output_shapes
:??????????2
mul_1^
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:??????????2
add_1d
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:??????????2
	Sigmoid_2\
LeakyRelu_1	LeakyRelu	add_1:z:0*(
_output_shapes
:??????????2
LeakyRelu_1r
mul_2MulSigmoid_2:y:0LeakyRelu_1:activations:0*
T0*(
_output_shapes
:??????????2
mul_2?
IdentityIdentity	mul_2:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity?

Identity_1Identity	mul_2:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity_1?

Identity_2Identity	add_1:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*Z
_input_shapesI
G:?????????:??????????:??????????:::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:RN
(
_output_shapes
:??????????
"
_user_specified_name
states/0:RN
(
_output_shapes
:??????????
"
_user_specified_name
states/1
?D
?
B__inference_lstm_5_layer_call_and_return_conditional_losses_183120

inputs
lstm_cell_5_183038
lstm_cell_5_183040
lstm_cell_5_183042
identity??#lstm_cell_5/StatefulPartitionedCall?whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:??????????2
zerosa
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessg
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const~
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:??????????2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposeinputstranspose/perm:output:0*
T0*5
_output_shapes#
!:???????????????????2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_2?
#lstm_cell_5/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_5_183038lstm_cell_5_183040lstm_cell_5_183042*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:??????????:??????????:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_lstm_cell_5_layer_call_and_return_conditional_losses_1826252%
#lstm_cell_5/StatefulPartitionedCall?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_5_183038lstm_cell_5_183040lstm_cell_5_183042*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :??????????:??????????: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_183051*
condR
while_cond_183050*M
output_shapes<
:: : : : :??????????:??????????: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:???????????????????*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:???????????????????2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime?
IdentityIdentitystrided_slice_3:output:0$^lstm_cell_5/StatefulPartitionedCall^while*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*@
_input_shapes/
-:???????????????????:::2J
#lstm_cell_5/StatefulPartitionedCall#lstm_cell_5/StatefulPartitionedCall2
whilewhile:] Y
5
_output_shapes#
!:???????????????????
 
_user_specified_nameinputs
?
?
while_cond_182440
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_182440___redundant_placeholder04
0while_while_cond_182440___redundant_placeholder14
0while_while_cond_182440___redundant_placeholder24
0while_while_cond_182440___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*U
_input_shapesD
B: : : : :??????????:??????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?
?
,__inference_lstm_cell_5_layer_call_fn_186454

inputs
states_0
states_1
unknown
	unknown_0
	unknown_1
identity

identity_1

identity_2??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:??????????:??????????:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_lstm_cell_5_layer_call_and_return_conditional_losses_1826252
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity?

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity_1?

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*[
_input_shapesJ
H:??????????:??????????:??????????:::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs:RN
(
_output_shapes
:??????????
"
_user_specified_name
states/0:RN
(
_output_shapes
:??????????
"
_user_specified_name
states/1
?%
?
while_body_183051
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_lstm_cell_5_183075_0
while_lstm_cell_5_183077_0
while_lstm_cell_5_183079_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_lstm_cell_5_183075
while_lstm_cell_5_183077
while_lstm_cell_5_183079??)while/lstm_cell_5/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
)while/lstm_cell_5/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_5_183075_0while_lstm_cell_5_183077_0while_lstm_cell_5_183079_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:??????????:??????????:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_lstm_cell_5_layer_call_and_return_conditional_losses_1826252+
)while/lstm_cell_5/StatefulPartitionedCall?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder2while/lstm_cell_5/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1?
while/IdentityIdentitywhile/add_1:z:0*^while/lstm_cell_5/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations*^while/lstm_cell_5/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0*^while/lstm_cell_5/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*^while/lstm_cell_5/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identity2while/lstm_cell_5/StatefulPartitionedCall:output:1*^while/lstm_cell_5/StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2
while/Identity_4?
while/Identity_5Identity2while/lstm_cell_5/StatefulPartitionedCall:output:2*^while/lstm_cell_5/StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"6
while_lstm_cell_5_183075while_lstm_cell_5_183075_0"6
while_lstm_cell_5_183077while_lstm_cell_5_183077_0"6
while_lstm_cell_5_183079while_lstm_cell_5_183079_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*S
_input_shapesB
@: : : : :??????????:??????????: : :::2V
)while/lstm_cell_5/StatefulPartitionedCall)while/lstm_cell_5/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?
?
while_cond_183534
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_183534___redundant_placeholder04
0while_while_cond_183534___redundant_placeholder14
0while_while_cond_183534___redundant_placeholder24
0while_while_cond_183534___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*U
_input_shapesD
B: : : : :??????????:??????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?[
?
B__inference_lstm_4_layer_call_and_return_conditional_losses_185168
inputs_0.
*lstm_cell_4_matmul_readvariableop_resource0
,lstm_cell_4_matmul_1_readvariableop_resource/
+lstm_cell_4_biasadd_readvariableop_resource
identity??"lstm_cell_4/BiasAdd/ReadVariableOp?!lstm_cell_4/MatMul/ReadVariableOp?#lstm_cell_4/MatMul_1/ReadVariableOp?whileF
ShapeShapeinputs_0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:??????????2
zerosa
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessg
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const~
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:??????????2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slice_2?
!lstm_cell_4/MatMul/ReadVariableOpReadVariableOp*lstm_cell_4_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02#
!lstm_cell_4/MatMul/ReadVariableOp?
lstm_cell_4/MatMulMatMulstrided_slice_2:output:0)lstm_cell_4/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_4/MatMul?
#lstm_cell_4/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_4_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02%
#lstm_cell_4/MatMul_1/ReadVariableOp?
lstm_cell_4/MatMul_1MatMulzeros:output:0+lstm_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_4/MatMul_1?
lstm_cell_4/addAddV2lstm_cell_4/MatMul:product:0lstm_cell_4/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell_4/add?
"lstm_cell_4/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_4_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02$
"lstm_cell_4/BiasAdd/ReadVariableOp?
lstm_cell_4/BiasAddBiasAddlstm_cell_4/add:z:0*lstm_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_4/BiasAddh
lstm_cell_4/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_4/Const|
lstm_cell_4/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_4/split/split_dim?
lstm_cell_4/splitSplit$lstm_cell_4/split/split_dim:output:0lstm_cell_4/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
lstm_cell_4/split?
lstm_cell_4/SigmoidSigmoidlstm_cell_4/split:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_4/Sigmoid?
lstm_cell_4/Sigmoid_1Sigmoidlstm_cell_4/split:output:1*
T0*(
_output_shapes
:??????????2
lstm_cell_4/Sigmoid_1?
lstm_cell_4/mulMullstm_cell_4/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_4/mul?
lstm_cell_4/LeakyRelu	LeakyRelulstm_cell_4/split:output:2*(
_output_shapes
:??????????2
lstm_cell_4/LeakyRelu?
lstm_cell_4/mul_1Mullstm_cell_4/Sigmoid:y:0#lstm_cell_4/LeakyRelu:activations:0*
T0*(
_output_shapes
:??????????2
lstm_cell_4/mul_1?
lstm_cell_4/add_1AddV2lstm_cell_4/mul:z:0lstm_cell_4/mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_4/add_1?
lstm_cell_4/Sigmoid_2Sigmoidlstm_cell_4/split:output:3*
T0*(
_output_shapes
:??????????2
lstm_cell_4/Sigmoid_2?
lstm_cell_4/LeakyRelu_1	LeakyRelulstm_cell_4/add_1:z:0*(
_output_shapes
:??????????2
lstm_cell_4/LeakyRelu_1?
lstm_cell_4/mul_2Mullstm_cell_4/Sigmoid_2:y:0%lstm_cell_4/LeakyRelu_1:activations:0*
T0*(
_output_shapes
:??????????2
lstm_cell_4/mul_2?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_4_matmul_readvariableop_resource,lstm_cell_4_matmul_1_readvariableop_resource+lstm_cell_4_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :??????????:??????????: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_185083*
condR
while_cond_185082*M
output_shapes<
:: : : : :??????????:??????????: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:???????????????????*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:???????????????????2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime?
IdentityIdentitytranspose_1:y:0#^lstm_cell_4/BiasAdd/ReadVariableOp"^lstm_cell_4/MatMul/ReadVariableOp$^lstm_cell_4/MatMul_1/ReadVariableOp^while*
T0*5
_output_shapes#
!:???????????????????2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:??????????????????:::2H
"lstm_cell_4/BiasAdd/ReadVariableOp"lstm_cell_4/BiasAdd/ReadVariableOp2F
!lstm_cell_4/MatMul/ReadVariableOp!lstm_cell_4/MatMul/ReadVariableOp2J
#lstm_cell_4/MatMul_1/ReadVariableOp#lstm_cell_4/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
while_cond_185738
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_185738___redundant_placeholder04
0while_while_cond_185738___redundant_placeholder14
0while_while_cond_185738___redundant_placeholder24
0while_while_cond_185738___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*U
_input_shapesD
B: : : : :??????????:??????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?
?
G__inference_lstm_cell_4_layer_call_and_return_conditional_losses_182015

inputs

states
states_1"
matmul_readvariableop_resource$
 matmul_1_readvariableop_resource#
biasadd_readvariableop_resource
identity

identity_1

identity_2??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul_1/ReadVariableOpz
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
add?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
split`
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:??????????2	
Sigmoidd
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:??????????2
	Sigmoid_1]
mulMulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:??????????2
mul]
	LeakyRelu	LeakyRelusplit:output:2*(
_output_shapes
:??????????2
	LeakyRelun
mul_1MulSigmoid:y:0LeakyRelu:activations:0*
T0*(
_output_shapes
:??????????2
mul_1^
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:??????????2
add_1d
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:??????????2
	Sigmoid_2\
LeakyRelu_1	LeakyRelu	add_1:z:0*(
_output_shapes
:??????????2
LeakyRelu_1r
mul_2MulSigmoid_2:y:0LeakyRelu_1:activations:0*
T0*(
_output_shapes
:??????????2
mul_2?
IdentityIdentity	mul_2:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity?

Identity_1Identity	mul_2:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity_1?

Identity_2Identity	add_1:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*Z
_input_shapesI
G:?????????:??????????:??????????:::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:PL
(
_output_shapes
:??????????
 
_user_specified_namestates:PL
(
_output_shapes
:??????????
 
_user_specified_namestates
?
?
'__inference_lstm_5_layer_call_fn_186174
inputs_0
unknown
	unknown_0
	unknown_1
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_lstm_5_layer_call_and_return_conditional_losses_1831202
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*@
_input_shapes/
-:???????????????????:::22
StatefulPartitionedCallStatefulPartitionedCall:_ [
5
_output_shapes#
!:???????????????????
"
_user_specified_name
inputs/0
?D
?
B__inference_lstm_5_layer_call_and_return_conditional_losses_182988

inputs
lstm_cell_5_182906
lstm_cell_5_182908
lstm_cell_5_182910
identity??#lstm_cell_5/StatefulPartitionedCall?whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:??????????2
zerosa
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessg
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const~
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:??????????2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposeinputstranspose/perm:output:0*
T0*5
_output_shapes#
!:???????????????????2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_2?
#lstm_cell_5/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_5_182906lstm_cell_5_182908lstm_cell_5_182910*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:??????????:??????????:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_lstm_cell_5_layer_call_and_return_conditional_losses_1825922%
#lstm_cell_5/StatefulPartitionedCall?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_5_182906lstm_cell_5_182908lstm_cell_5_182910*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :??????????:??????????: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_182919*
condR
while_cond_182918*M
output_shapes<
:: : : : :??????????:??????????: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:???????????????????*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:???????????????????2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime?
IdentityIdentitystrided_slice_3:output:0$^lstm_cell_5/StatefulPartitionedCall^while*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*@
_input_shapes/
-:???????????????????:::2J
#lstm_cell_5/StatefulPartitionedCall#lstm_cell_5/StatefulPartitionedCall2
whilewhile:] Y
5
_output_shapes#
!:???????????????????
 
_user_specified_nameinputs
?[
?
B__inference_lstm_5_layer_call_and_return_conditional_losses_185999
inputs_0.
*lstm_cell_5_matmul_readvariableop_resource0
,lstm_cell_5_matmul_1_readvariableop_resource/
+lstm_cell_5_biasadd_readvariableop_resource
identity??"lstm_cell_5/BiasAdd/ReadVariableOp?!lstm_cell_5/MatMul/ReadVariableOp?#lstm_cell_5/MatMul_1/ReadVariableOp?whileF
ShapeShapeinputs_0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:??????????2
zerosa
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessg
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const~
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:??????????2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*5
_output_shapes#
!:???????????????????2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_2?
!lstm_cell_5/MatMul/ReadVariableOpReadVariableOp*lstm_cell_5_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02#
!lstm_cell_5/MatMul/ReadVariableOp?
lstm_cell_5/MatMulMatMulstrided_slice_2:output:0)lstm_cell_5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_5/MatMul?
#lstm_cell_5/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_5_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02%
#lstm_cell_5/MatMul_1/ReadVariableOp?
lstm_cell_5/MatMul_1MatMulzeros:output:0+lstm_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_5/MatMul_1?
lstm_cell_5/addAddV2lstm_cell_5/MatMul:product:0lstm_cell_5/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell_5/add?
"lstm_cell_5/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_5_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02$
"lstm_cell_5/BiasAdd/ReadVariableOp?
lstm_cell_5/BiasAddBiasAddlstm_cell_5/add:z:0*lstm_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_5/BiasAddh
lstm_cell_5/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_5/Const|
lstm_cell_5/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_5/split/split_dim?
lstm_cell_5/splitSplit$lstm_cell_5/split/split_dim:output:0lstm_cell_5/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
lstm_cell_5/split?
lstm_cell_5/SigmoidSigmoidlstm_cell_5/split:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_5/Sigmoid?
lstm_cell_5/Sigmoid_1Sigmoidlstm_cell_5/split:output:1*
T0*(
_output_shapes
:??????????2
lstm_cell_5/Sigmoid_1?
lstm_cell_5/mulMullstm_cell_5/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_5/mul?
lstm_cell_5/LeakyRelu	LeakyRelulstm_cell_5/split:output:2*(
_output_shapes
:??????????2
lstm_cell_5/LeakyRelu?
lstm_cell_5/mul_1Mullstm_cell_5/Sigmoid:y:0#lstm_cell_5/LeakyRelu:activations:0*
T0*(
_output_shapes
:??????????2
lstm_cell_5/mul_1?
lstm_cell_5/add_1AddV2lstm_cell_5/mul:z:0lstm_cell_5/mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_5/add_1?
lstm_cell_5/Sigmoid_2Sigmoidlstm_cell_5/split:output:3*
T0*(
_output_shapes
:??????????2
lstm_cell_5/Sigmoid_2?
lstm_cell_5/LeakyRelu_1	LeakyRelulstm_cell_5/add_1:z:0*(
_output_shapes
:??????????2
lstm_cell_5/LeakyRelu_1?
lstm_cell_5/mul_2Mullstm_cell_5/Sigmoid_2:y:0%lstm_cell_5/LeakyRelu_1:activations:0*
T0*(
_output_shapes
:??????????2
lstm_cell_5/mul_2?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_5_matmul_readvariableop_resource,lstm_cell_5_matmul_1_readvariableop_resource+lstm_cell_5_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :??????????:??????????: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_185914*
condR
while_cond_185913*M
output_shapes<
:: : : : :??????????:??????????: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:???????????????????*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:???????????????????2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime?
IdentityIdentitystrided_slice_3:output:0#^lstm_cell_5/BiasAdd/ReadVariableOp"^lstm_cell_5/MatMul/ReadVariableOp$^lstm_cell_5/MatMul_1/ReadVariableOp^while*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*@
_input_shapes/
-:???????????????????:::2H
"lstm_cell_5/BiasAdd/ReadVariableOp"lstm_cell_5/BiasAdd/ReadVariableOp2F
!lstm_cell_5/MatMul/ReadVariableOp!lstm_cell_5/MatMul/ReadVariableOp2J
#lstm_cell_5/MatMul_1/ReadVariableOp#lstm_cell_5/MatMul_1/ReadVariableOp2
whilewhile:_ [
5
_output_shapes#
!:???????????????????
"
_user_specified_name
inputs/0
?
?
'__inference_lstm_5_layer_call_fn_185846

inputs
unknown
	unknown_0
	unknown_1
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_lstm_5_layer_call_and_return_conditional_losses_1837732
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:??????????:::22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
G__inference_lstm_cell_5_layer_call_and_return_conditional_losses_182625

inputs

states
states_1"
matmul_readvariableop_resource$
 matmul_1_readvariableop_resource#
biasadd_readvariableop_resource
identity

identity_1

identity_2??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul_1/ReadVariableOpz
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
add?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
split`
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:??????????2	
Sigmoidd
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:??????????2
	Sigmoid_1]
mulMulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:??????????2
mul]
	LeakyRelu	LeakyRelusplit:output:2*(
_output_shapes
:??????????2
	LeakyRelun
mul_1MulSigmoid:y:0LeakyRelu:activations:0*
T0*(
_output_shapes
:??????????2
mul_1^
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:??????????2
add_1d
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:??????????2
	Sigmoid_2\
LeakyRelu_1	LeakyRelu	add_1:z:0*(
_output_shapes
:??????????2
LeakyRelu_1r
mul_2MulSigmoid_2:y:0LeakyRelu_1:activations:0*
T0*(
_output_shapes
:??????????2
mul_2?
IdentityIdentity	mul_2:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity?

Identity_1Identity	mul_2:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity_1?

Identity_2Identity	add_1:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*[
_input_shapesJ
H:??????????:??????????:??????????:::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs:PL
(
_output_shapes
:??????????
 
_user_specified_namestates:PL
(
_output_shapes
:??????????
 
_user_specified_namestates
?%
?
while_body_182441
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_lstm_cell_4_182465_0
while_lstm_cell_4_182467_0
while_lstm_cell_4_182469_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_lstm_cell_4_182465
while_lstm_cell_4_182467
while_lstm_cell_4_182469??)while/lstm_cell_4/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
)while/lstm_cell_4/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_4_182465_0while_lstm_cell_4_182467_0while_lstm_cell_4_182469_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:??????????:??????????:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_lstm_cell_4_layer_call_and_return_conditional_losses_1820152+
)while/lstm_cell_4/StatefulPartitionedCall?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder2while/lstm_cell_4/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1?
while/IdentityIdentitywhile/add_1:z:0*^while/lstm_cell_4/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations*^while/lstm_cell_4/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0*^while/lstm_cell_4/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*^while/lstm_cell_4/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identity2while/lstm_cell_4/StatefulPartitionedCall:output:1*^while/lstm_cell_4/StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2
while/Identity_4?
while/Identity_5Identity2while/lstm_cell_4/StatefulPartitionedCall:output:2*^while/lstm_cell_4/StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"6
while_lstm_cell_4_182465while_lstm_cell_4_182465_0"6
while_lstm_cell_4_182467while_lstm_cell_4_182467_0"6
while_lstm_cell_4_182469while_lstm_cell_4_182469_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*S
_input_shapesB
@: : : : :??????????:??????????: : :::2V
)while/lstm_cell_4/StatefulPartitionedCall)while/lstm_cell_4/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?	
?
D__inference_dense_10_layer_call_and_return_conditional_losses_183868

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:d2*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????22
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????22	
BiasAdd^
	LeakyRelu	LeakyReluBiasAdd:output:0*'
_output_shapes
:?????????22
	LeakyRelu?
IdentityIdentityLeakyRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????22

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????d::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
? 
?
H__inference_sequential_2_layer_call_and_return_conditional_losses_183950
lstm_4_input
lstm_4_183915
lstm_4_183917
lstm_4_183919
lstm_5_183922
lstm_5_183924
lstm_5_183926
dense_8_183929
dense_8_183931
dense_9_183934
dense_9_183936
dense_10_183939
dense_10_183941
dense_11_183944
dense_11_183946
identity?? dense_10/StatefulPartitionedCall? dense_11/StatefulPartitionedCall?dense_8/StatefulPartitionedCall?dense_9/StatefulPartitionedCall?lstm_4/StatefulPartitionedCall?lstm_5/StatefulPartitionedCall?
lstm_4/StatefulPartitionedCallStatefulPartitionedCalllstm_4_inputlstm_4_183915lstm_4_183917lstm_4_183919*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_lstm_4_layer_call_and_return_conditional_losses_1834382 
lstm_4/StatefulPartitionedCall?
lstm_5/StatefulPartitionedCallStatefulPartitionedCall'lstm_4/StatefulPartitionedCall:output:0lstm_5_183922lstm_5_183924lstm_5_183926*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_lstm_5_layer_call_and_return_conditional_losses_1837732 
lstm_5/StatefulPartitionedCall?
dense_8/StatefulPartitionedCallStatefulPartitionedCall'lstm_5/StatefulPartitionedCall:output:0dense_8_183929dense_8_183931*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_8_layer_call_and_return_conditional_losses_1838142!
dense_8/StatefulPartitionedCall?
dense_9/StatefulPartitionedCallStatefulPartitionedCall(dense_8/StatefulPartitionedCall:output:0dense_9_183934dense_9_183936*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????d*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_9_layer_call_and_return_conditional_losses_1838412!
dense_9/StatefulPartitionedCall?
 dense_10/StatefulPartitionedCallStatefulPartitionedCall(dense_9/StatefulPartitionedCall:output:0dense_10_183939dense_10_183941*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_10_layer_call_and_return_conditional_losses_1838682"
 dense_10/StatefulPartitionedCall?
 dense_11/StatefulPartitionedCallStatefulPartitionedCall)dense_10/StatefulPartitionedCall:output:0dense_11_183944dense_11_183946*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_11_layer_call_and_return_conditional_losses_1838952"
 dense_11/StatefulPartitionedCall?
IdentityIdentity)dense_11/StatefulPartitionedCall:output:0!^dense_10/StatefulPartitionedCall!^dense_11/StatefulPartitionedCall ^dense_8/StatefulPartitionedCall ^dense_9/StatefulPartitionedCall^lstm_4/StatefulPartitionedCall^lstm_5/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*b
_input_shapesQ
O:?????????::::::::::::::2D
 dense_10/StatefulPartitionedCall dense_10/StatefulPartitionedCall2D
 dense_11/StatefulPartitionedCall dense_11/StatefulPartitionedCall2B
dense_8/StatefulPartitionedCalldense_8/StatefulPartitionedCall2B
dense_9/StatefulPartitionedCalldense_9/StatefulPartitionedCall2@
lstm_4/StatefulPartitionedCalllstm_4/StatefulPartitionedCall2@
lstm_5/StatefulPartitionedCalllstm_5/StatefulPartitionedCall:Y U
+
_output_shapes
:?????????
&
_user_specified_namelstm_4_input
?
}
(__inference_dense_9_layer_call_fn_186214

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????d*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_9_layer_call_and_return_conditional_losses_1838412
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????d2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?B
?
while_body_184930
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_06
2while_lstm_cell_4_matmul_readvariableop_resource_08
4while_lstm_cell_4_matmul_1_readvariableop_resource_07
3while_lstm_cell_4_biasadd_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor4
0while_lstm_cell_4_matmul_readvariableop_resource6
2while_lstm_cell_4_matmul_1_readvariableop_resource5
1while_lstm_cell_4_biasadd_readvariableop_resource??(while/lstm_cell_4/BiasAdd/ReadVariableOp?'while/lstm_cell_4/MatMul/ReadVariableOp?)while/lstm_cell_4/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
'while/lstm_cell_4/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_4_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype02)
'while/lstm_cell_4/MatMul/ReadVariableOp?
while/lstm_cell_4/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_4/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_4/MatMul?
)while/lstm_cell_4/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_4_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02+
)while/lstm_cell_4/MatMul_1/ReadVariableOp?
while/lstm_cell_4/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_4/MatMul_1?
while/lstm_cell_4/addAddV2"while/lstm_cell_4/MatMul:product:0$while/lstm_cell_4/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_4/add?
(while/lstm_cell_4/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_4_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02*
(while/lstm_cell_4/BiasAdd/ReadVariableOp?
while/lstm_cell_4/BiasAddBiasAddwhile/lstm_cell_4/add:z:00while/lstm_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_4/BiasAddt
while/lstm_cell_4/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_4/Const?
!while/lstm_cell_4/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!while/lstm_cell_4/split/split_dim?
while/lstm_cell_4/splitSplit*while/lstm_cell_4/split/split_dim:output:0"while/lstm_cell_4/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
while/lstm_cell_4/split?
while/lstm_cell_4/SigmoidSigmoid while/lstm_cell_4/split:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_4/Sigmoid?
while/lstm_cell_4/Sigmoid_1Sigmoid while/lstm_cell_4/split:output:1*
T0*(
_output_shapes
:??????????2
while/lstm_cell_4/Sigmoid_1?
while/lstm_cell_4/mulMulwhile/lstm_cell_4/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:??????????2
while/lstm_cell_4/mul?
while/lstm_cell_4/LeakyRelu	LeakyRelu while/lstm_cell_4/split:output:2*(
_output_shapes
:??????????2
while/lstm_cell_4/LeakyRelu?
while/lstm_cell_4/mul_1Mulwhile/lstm_cell_4/Sigmoid:y:0)while/lstm_cell_4/LeakyRelu:activations:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_4/mul_1?
while/lstm_cell_4/add_1AddV2while/lstm_cell_4/mul:z:0while/lstm_cell_4/mul_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_4/add_1?
while/lstm_cell_4/Sigmoid_2Sigmoid while/lstm_cell_4/split:output:3*
T0*(
_output_shapes
:??????????2
while/lstm_cell_4/Sigmoid_2?
while/lstm_cell_4/LeakyRelu_1	LeakyReluwhile/lstm_cell_4/add_1:z:0*(
_output_shapes
:??????????2
while/lstm_cell_4/LeakyRelu_1?
while/lstm_cell_4/mul_2Mulwhile/lstm_cell_4/Sigmoid_2:y:0+while/lstm_cell_4/LeakyRelu_1:activations:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_4/mul_2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_4/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1?
while/IdentityIdentitywhile/add_1:z:0)^while/lstm_cell_4/BiasAdd/ReadVariableOp(^while/lstm_cell_4/MatMul/ReadVariableOp*^while/lstm_cell_4/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations)^while/lstm_cell_4/BiasAdd/ReadVariableOp(^while/lstm_cell_4/MatMul/ReadVariableOp*^while/lstm_cell_4/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0)^while/lstm_cell_4/BiasAdd/ReadVariableOp(^while/lstm_cell_4/MatMul/ReadVariableOp*^while/lstm_cell_4/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0)^while/lstm_cell_4/BiasAdd/ReadVariableOp(^while/lstm_cell_4/MatMul/ReadVariableOp*^while/lstm_cell_4/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_4/mul_2:z:0)^while/lstm_cell_4/BiasAdd/ReadVariableOp(^while/lstm_cell_4/MatMul/ReadVariableOp*^while/lstm_cell_4/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_4/add_1:z:0)^while/lstm_cell_4/BiasAdd/ReadVariableOp(^while/lstm_cell_4/MatMul/ReadVariableOp*^while/lstm_cell_4/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_4_biasadd_readvariableop_resource3while_lstm_cell_4_biasadd_readvariableop_resource_0"j
2while_lstm_cell_4_matmul_1_readvariableop_resource4while_lstm_cell_4_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_4_matmul_readvariableop_resource2while_lstm_cell_4_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*S
_input_shapesB
@: : : : :??????????:??????????: : :::2T
(while/lstm_cell_4/BiasAdd/ReadVariableOp(while/lstm_cell_4/BiasAdd/ReadVariableOp2R
'while/lstm_cell_4/MatMul/ReadVariableOp'while/lstm_cell_4/MatMul/ReadVariableOp2V
)while/lstm_cell_4/MatMul_1/ReadVariableOp)while/lstm_cell_4/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?
?
while_cond_185082
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_185082___redundant_placeholder04
0while_while_cond_185082___redundant_placeholder14
0while_while_cond_185082___redundant_placeholder24
0while_while_cond_185082___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*U
_input_shapesD
B: : : : :??????????:??????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?B
?
while_body_185586
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_06
2while_lstm_cell_5_matmul_readvariableop_resource_08
4while_lstm_cell_5_matmul_1_readvariableop_resource_07
3while_lstm_cell_5_biasadd_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor4
0while_lstm_cell_5_matmul_readvariableop_resource6
2while_lstm_cell_5_matmul_1_readvariableop_resource5
1while_lstm_cell_5_biasadd_readvariableop_resource??(while/lstm_cell_5/BiasAdd/ReadVariableOp?'while/lstm_cell_5/MatMul/ReadVariableOp?)while/lstm_cell_5/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
'while/lstm_cell_5/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_5_matmul_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02)
'while/lstm_cell_5/MatMul/ReadVariableOp?
while/lstm_cell_5/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_5/MatMul?
)while/lstm_cell_5/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_5_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02+
)while/lstm_cell_5/MatMul_1/ReadVariableOp?
while/lstm_cell_5/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_5/MatMul_1?
while/lstm_cell_5/addAddV2"while/lstm_cell_5/MatMul:product:0$while/lstm_cell_5/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_5/add?
(while/lstm_cell_5/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_5_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02*
(while/lstm_cell_5/BiasAdd/ReadVariableOp?
while/lstm_cell_5/BiasAddBiasAddwhile/lstm_cell_5/add:z:00while/lstm_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_5/BiasAddt
while/lstm_cell_5/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_5/Const?
!while/lstm_cell_5/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!while/lstm_cell_5/split/split_dim?
while/lstm_cell_5/splitSplit*while/lstm_cell_5/split/split_dim:output:0"while/lstm_cell_5/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
while/lstm_cell_5/split?
while/lstm_cell_5/SigmoidSigmoid while/lstm_cell_5/split:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_5/Sigmoid?
while/lstm_cell_5/Sigmoid_1Sigmoid while/lstm_cell_5/split:output:1*
T0*(
_output_shapes
:??????????2
while/lstm_cell_5/Sigmoid_1?
while/lstm_cell_5/mulMulwhile/lstm_cell_5/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:??????????2
while/lstm_cell_5/mul?
while/lstm_cell_5/LeakyRelu	LeakyRelu while/lstm_cell_5/split:output:2*(
_output_shapes
:??????????2
while/lstm_cell_5/LeakyRelu?
while/lstm_cell_5/mul_1Mulwhile/lstm_cell_5/Sigmoid:y:0)while/lstm_cell_5/LeakyRelu:activations:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_5/mul_1?
while/lstm_cell_5/add_1AddV2while/lstm_cell_5/mul:z:0while/lstm_cell_5/mul_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_5/add_1?
while/lstm_cell_5/Sigmoid_2Sigmoid while/lstm_cell_5/split:output:3*
T0*(
_output_shapes
:??????????2
while/lstm_cell_5/Sigmoid_2?
while/lstm_cell_5/LeakyRelu_1	LeakyReluwhile/lstm_cell_5/add_1:z:0*(
_output_shapes
:??????????2
while/lstm_cell_5/LeakyRelu_1?
while/lstm_cell_5/mul_2Mulwhile/lstm_cell_5/Sigmoid_2:y:0+while/lstm_cell_5/LeakyRelu_1:activations:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_5/mul_2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_5/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1?
while/IdentityIdentitywhile/add_1:z:0)^while/lstm_cell_5/BiasAdd/ReadVariableOp(^while/lstm_cell_5/MatMul/ReadVariableOp*^while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations)^while/lstm_cell_5/BiasAdd/ReadVariableOp(^while/lstm_cell_5/MatMul/ReadVariableOp*^while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0)^while/lstm_cell_5/BiasAdd/ReadVariableOp(^while/lstm_cell_5/MatMul/ReadVariableOp*^while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0)^while/lstm_cell_5/BiasAdd/ReadVariableOp(^while/lstm_cell_5/MatMul/ReadVariableOp*^while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_5/mul_2:z:0)^while/lstm_cell_5/BiasAdd/ReadVariableOp(^while/lstm_cell_5/MatMul/ReadVariableOp*^while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_5/add_1:z:0)^while/lstm_cell_5/BiasAdd/ReadVariableOp(^while/lstm_cell_5/MatMul/ReadVariableOp*^while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_5_biasadd_readvariableop_resource3while_lstm_cell_5_biasadd_readvariableop_resource_0"j
2while_lstm_cell_5_matmul_1_readvariableop_resource4while_lstm_cell_5_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_5_matmul_readvariableop_resource2while_lstm_cell_5_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*S
_input_shapesB
@: : : : :??????????:??????????: : :::2T
(while/lstm_cell_5/BiasAdd/ReadVariableOp(while/lstm_cell_5/BiasAdd/ReadVariableOp2R
'while/lstm_cell_5/MatMul/ReadVariableOp'while/lstm_cell_5/MatMul/ReadVariableOp2V
)while/lstm_cell_5/MatMul_1/ReadVariableOp)while/lstm_cell_5/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?
?
,__inference_lstm_cell_5_layer_call_fn_186437

inputs
states_0
states_1
unknown
	unknown_0
	unknown_1
identity

identity_1

identity_2??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:??????????:??????????:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_lstm_cell_5_layer_call_and_return_conditional_losses_1825922
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity?

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity_1?

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*[
_input_shapesJ
H:??????????:??????????:??????????:::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs:RN
(
_output_shapes
:??????????
"
_user_specified_name
states/0:RN
(
_output_shapes
:??????????
"
_user_specified_name
states/1
?	
?
-__inference_sequential_2_layer_call_fn_184829

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_sequential_2_layer_call_and_return_conditional_losses_1839912
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*b
_input_shapesQ
O:?????????::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?h
?
__inference__traced_save_186630
file_prefix-
)savev2_dense_8_kernel_read_readvariableop+
'savev2_dense_8_bias_read_readvariableop-
)savev2_dense_9_kernel_read_readvariableop+
'savev2_dense_9_bias_read_readvariableop.
*savev2_dense_10_kernel_read_readvariableop,
(savev2_dense_10_bias_read_readvariableop.
*savev2_dense_11_kernel_read_readvariableop,
(savev2_dense_11_bias_read_readvariableop%
!savev2_beta_1_read_readvariableop%
!savev2_beta_2_read_readvariableop$
 savev2_decay_read_readvariableop,
(savev2_learning_rate_read_readvariableop(
$savev2_adam_iter_read_readvariableop	8
4savev2_lstm_4_lstm_cell_4_kernel_read_readvariableopB
>savev2_lstm_4_lstm_cell_4_recurrent_kernel_read_readvariableop6
2savev2_lstm_4_lstm_cell_4_bias_read_readvariableop8
4savev2_lstm_5_lstm_cell_5_kernel_read_readvariableopB
>savev2_lstm_5_lstm_cell_5_recurrent_kernel_read_readvariableop6
2savev2_lstm_5_lstm_cell_5_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop4
0savev2_adam_dense_8_kernel_m_read_readvariableop2
.savev2_adam_dense_8_bias_m_read_readvariableop4
0savev2_adam_dense_9_kernel_m_read_readvariableop2
.savev2_adam_dense_9_bias_m_read_readvariableop5
1savev2_adam_dense_10_kernel_m_read_readvariableop3
/savev2_adam_dense_10_bias_m_read_readvariableop5
1savev2_adam_dense_11_kernel_m_read_readvariableop3
/savev2_adam_dense_11_bias_m_read_readvariableop?
;savev2_adam_lstm_4_lstm_cell_4_kernel_m_read_readvariableopI
Esavev2_adam_lstm_4_lstm_cell_4_recurrent_kernel_m_read_readvariableop=
9savev2_adam_lstm_4_lstm_cell_4_bias_m_read_readvariableop?
;savev2_adam_lstm_5_lstm_cell_5_kernel_m_read_readvariableopI
Esavev2_adam_lstm_5_lstm_cell_5_recurrent_kernel_m_read_readvariableop=
9savev2_adam_lstm_5_lstm_cell_5_bias_m_read_readvariableop4
0savev2_adam_dense_8_kernel_v_read_readvariableop2
.savev2_adam_dense_8_bias_v_read_readvariableop4
0savev2_adam_dense_9_kernel_v_read_readvariableop2
.savev2_adam_dense_9_bias_v_read_readvariableop5
1savev2_adam_dense_10_kernel_v_read_readvariableop3
/savev2_adam_dense_10_bias_v_read_readvariableop5
1savev2_adam_dense_11_kernel_v_read_readvariableop3
/savev2_adam_dense_11_bias_v_read_readvariableop?
;savev2_adam_lstm_4_lstm_cell_4_kernel_v_read_readvariableopI
Esavev2_adam_lstm_4_lstm_cell_4_recurrent_kernel_v_read_readvariableop=
9savev2_adam_lstm_4_lstm_cell_4_bias_v_read_readvariableop?
;savev2_adam_lstm_5_lstm_cell_5_kernel_v_read_readvariableopI
Esavev2_adam_lstm_5_lstm_cell_5_recurrent_kernel_v_read_readvariableop=
9savev2_adam_lstm_5_lstm_cell_5_bias_v_read_readvariableop
savev2_const

identity_1??MergeV2Checkpoints?
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1?
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:4*
dtype0*?
value?B?4B6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:4*
dtype0*{
valuerBp4B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0)savev2_dense_8_kernel_read_readvariableop'savev2_dense_8_bias_read_readvariableop)savev2_dense_9_kernel_read_readvariableop'savev2_dense_9_bias_read_readvariableop*savev2_dense_10_kernel_read_readvariableop(savev2_dense_10_bias_read_readvariableop*savev2_dense_11_kernel_read_readvariableop(savev2_dense_11_bias_read_readvariableop!savev2_beta_1_read_readvariableop!savev2_beta_2_read_readvariableop savev2_decay_read_readvariableop(savev2_learning_rate_read_readvariableop$savev2_adam_iter_read_readvariableop4savev2_lstm_4_lstm_cell_4_kernel_read_readvariableop>savev2_lstm_4_lstm_cell_4_recurrent_kernel_read_readvariableop2savev2_lstm_4_lstm_cell_4_bias_read_readvariableop4savev2_lstm_5_lstm_cell_5_kernel_read_readvariableop>savev2_lstm_5_lstm_cell_5_recurrent_kernel_read_readvariableop2savev2_lstm_5_lstm_cell_5_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop0savev2_adam_dense_8_kernel_m_read_readvariableop.savev2_adam_dense_8_bias_m_read_readvariableop0savev2_adam_dense_9_kernel_m_read_readvariableop.savev2_adam_dense_9_bias_m_read_readvariableop1savev2_adam_dense_10_kernel_m_read_readvariableop/savev2_adam_dense_10_bias_m_read_readvariableop1savev2_adam_dense_11_kernel_m_read_readvariableop/savev2_adam_dense_11_bias_m_read_readvariableop;savev2_adam_lstm_4_lstm_cell_4_kernel_m_read_readvariableopEsavev2_adam_lstm_4_lstm_cell_4_recurrent_kernel_m_read_readvariableop9savev2_adam_lstm_4_lstm_cell_4_bias_m_read_readvariableop;savev2_adam_lstm_5_lstm_cell_5_kernel_m_read_readvariableopEsavev2_adam_lstm_5_lstm_cell_5_recurrent_kernel_m_read_readvariableop9savev2_adam_lstm_5_lstm_cell_5_bias_m_read_readvariableop0savev2_adam_dense_8_kernel_v_read_readvariableop.savev2_adam_dense_8_bias_v_read_readvariableop0savev2_adam_dense_9_kernel_v_read_readvariableop.savev2_adam_dense_9_bias_v_read_readvariableop1savev2_adam_dense_10_kernel_v_read_readvariableop/savev2_adam_dense_10_bias_v_read_readvariableop1savev2_adam_dense_11_kernel_v_read_readvariableop/savev2_adam_dense_11_bias_v_read_readvariableop;savev2_adam_lstm_4_lstm_cell_4_kernel_v_read_readvariableopEsavev2_adam_lstm_4_lstm_cell_4_recurrent_kernel_v_read_readvariableop9savev2_adam_lstm_4_lstm_cell_4_bias_v_read_readvariableop;savev2_adam_lstm_5_lstm_cell_5_kernel_v_read_readvariableopEsavev2_adam_lstm_5_lstm_cell_5_recurrent_kernel_v_read_readvariableop9savev2_adam_lstm_5_lstm_cell_5_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *B
dtypes8
624	2
SaveV2?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*?
_input_shapes?
?: :
??:?:	?d:d:d2:2:2:: : : : : :	?:
??:?:
??:
??:?: : : : :
??:?:	?d:d:d2:2:2::	?:
??:?:
??:
??:?:
??:?:	?d:d:d2:2:2::	?:
??:?:
??:
??:?: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:%!

_output_shapes
:	?d: 

_output_shapes
:d:$ 

_output_shapes

:d2: 

_output_shapes
:2:$ 

_output_shapes

:2: 

_output_shapes
::	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	?:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:&"
 
_output_shapes
:
??:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :&"
 
_output_shapes
:
??:!

_output_shapes	
:?:%!

_output_shapes
:	?d: 

_output_shapes
:d:$ 

_output_shapes

:d2: 

_output_shapes
:2:$ 

_output_shapes

:2: 

_output_shapes
::% !

_output_shapes
:	?:&!"
 
_output_shapes
:
??:!"

_output_shapes	
:?:&#"
 
_output_shapes
:
??:&$"
 
_output_shapes
:
??:!%

_output_shapes	
:?:&&"
 
_output_shapes
:
??:!'

_output_shapes	
:?:%(!

_output_shapes
:	?d: )

_output_shapes
:d:$* 

_output_shapes

:d2: +

_output_shapes
:2:$, 

_output_shapes

:2: -

_output_shapes
::%.!

_output_shapes
:	?:&/"
 
_output_shapes
:
??:!0

_output_shapes	
:?:&1"
 
_output_shapes
:
??:&2"
 
_output_shapes
:
??:!3

_output_shapes	
:?:4

_output_shapes
: 
?[
?
B__inference_lstm_4_layer_call_and_return_conditional_losses_185015
inputs_0.
*lstm_cell_4_matmul_readvariableop_resource0
,lstm_cell_4_matmul_1_readvariableop_resource/
+lstm_cell_4_biasadd_readvariableop_resource
identity??"lstm_cell_4/BiasAdd/ReadVariableOp?!lstm_cell_4/MatMul/ReadVariableOp?#lstm_cell_4/MatMul_1/ReadVariableOp?whileF
ShapeShapeinputs_0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:??????????2
zerosa
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessg
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const~
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:??????????2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slice_2?
!lstm_cell_4/MatMul/ReadVariableOpReadVariableOp*lstm_cell_4_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02#
!lstm_cell_4/MatMul/ReadVariableOp?
lstm_cell_4/MatMulMatMulstrided_slice_2:output:0)lstm_cell_4/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_4/MatMul?
#lstm_cell_4/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_4_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02%
#lstm_cell_4/MatMul_1/ReadVariableOp?
lstm_cell_4/MatMul_1MatMulzeros:output:0+lstm_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_4/MatMul_1?
lstm_cell_4/addAddV2lstm_cell_4/MatMul:product:0lstm_cell_4/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell_4/add?
"lstm_cell_4/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_4_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02$
"lstm_cell_4/BiasAdd/ReadVariableOp?
lstm_cell_4/BiasAddBiasAddlstm_cell_4/add:z:0*lstm_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_4/BiasAddh
lstm_cell_4/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_4/Const|
lstm_cell_4/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_4/split/split_dim?
lstm_cell_4/splitSplit$lstm_cell_4/split/split_dim:output:0lstm_cell_4/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
lstm_cell_4/split?
lstm_cell_4/SigmoidSigmoidlstm_cell_4/split:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_4/Sigmoid?
lstm_cell_4/Sigmoid_1Sigmoidlstm_cell_4/split:output:1*
T0*(
_output_shapes
:??????????2
lstm_cell_4/Sigmoid_1?
lstm_cell_4/mulMullstm_cell_4/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_4/mul?
lstm_cell_4/LeakyRelu	LeakyRelulstm_cell_4/split:output:2*(
_output_shapes
:??????????2
lstm_cell_4/LeakyRelu?
lstm_cell_4/mul_1Mullstm_cell_4/Sigmoid:y:0#lstm_cell_4/LeakyRelu:activations:0*
T0*(
_output_shapes
:??????????2
lstm_cell_4/mul_1?
lstm_cell_4/add_1AddV2lstm_cell_4/mul:z:0lstm_cell_4/mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_4/add_1?
lstm_cell_4/Sigmoid_2Sigmoidlstm_cell_4/split:output:3*
T0*(
_output_shapes
:??????????2
lstm_cell_4/Sigmoid_2?
lstm_cell_4/LeakyRelu_1	LeakyRelulstm_cell_4/add_1:z:0*(
_output_shapes
:??????????2
lstm_cell_4/LeakyRelu_1?
lstm_cell_4/mul_2Mullstm_cell_4/Sigmoid_2:y:0%lstm_cell_4/LeakyRelu_1:activations:0*
T0*(
_output_shapes
:??????????2
lstm_cell_4/mul_2?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_4_matmul_readvariableop_resource,lstm_cell_4_matmul_1_readvariableop_resource+lstm_cell_4_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :??????????:??????????: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_184930*
condR
while_cond_184929*M
output_shapes<
:: : : : :??????????:??????????: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:???????????????????*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:???????????????????2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime?
IdentityIdentitytranspose_1:y:0#^lstm_cell_4/BiasAdd/ReadVariableOp"^lstm_cell_4/MatMul/ReadVariableOp$^lstm_cell_4/MatMul_1/ReadVariableOp^while*
T0*5
_output_shapes#
!:???????????????????2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:??????????????????:::2H
"lstm_cell_4/BiasAdd/ReadVariableOp"lstm_cell_4/BiasAdd/ReadVariableOp2F
!lstm_cell_4/MatMul/ReadVariableOp!lstm_cell_4/MatMul/ReadVariableOp2J
#lstm_cell_4/MatMul_1/ReadVariableOp#lstm_cell_4/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
??
?
"__inference__traced_restore_186793
file_prefix#
assignvariableop_dense_8_kernel#
assignvariableop_1_dense_8_bias%
!assignvariableop_2_dense_9_kernel#
assignvariableop_3_dense_9_bias&
"assignvariableop_4_dense_10_kernel$
 assignvariableop_5_dense_10_bias&
"assignvariableop_6_dense_11_kernel$
 assignvariableop_7_dense_11_bias
assignvariableop_8_beta_1
assignvariableop_9_beta_2
assignvariableop_10_decay%
!assignvariableop_11_learning_rate!
assignvariableop_12_adam_iter1
-assignvariableop_13_lstm_4_lstm_cell_4_kernel;
7assignvariableop_14_lstm_4_lstm_cell_4_recurrent_kernel/
+assignvariableop_15_lstm_4_lstm_cell_4_bias1
-assignvariableop_16_lstm_5_lstm_cell_5_kernel;
7assignvariableop_17_lstm_5_lstm_cell_5_recurrent_kernel/
+assignvariableop_18_lstm_5_lstm_cell_5_bias
assignvariableop_19_total
assignvariableop_20_count
assignvariableop_21_total_1
assignvariableop_22_count_1-
)assignvariableop_23_adam_dense_8_kernel_m+
'assignvariableop_24_adam_dense_8_bias_m-
)assignvariableop_25_adam_dense_9_kernel_m+
'assignvariableop_26_adam_dense_9_bias_m.
*assignvariableop_27_adam_dense_10_kernel_m,
(assignvariableop_28_adam_dense_10_bias_m.
*assignvariableop_29_adam_dense_11_kernel_m,
(assignvariableop_30_adam_dense_11_bias_m8
4assignvariableop_31_adam_lstm_4_lstm_cell_4_kernel_mB
>assignvariableop_32_adam_lstm_4_lstm_cell_4_recurrent_kernel_m6
2assignvariableop_33_adam_lstm_4_lstm_cell_4_bias_m8
4assignvariableop_34_adam_lstm_5_lstm_cell_5_kernel_mB
>assignvariableop_35_adam_lstm_5_lstm_cell_5_recurrent_kernel_m6
2assignvariableop_36_adam_lstm_5_lstm_cell_5_bias_m-
)assignvariableop_37_adam_dense_8_kernel_v+
'assignvariableop_38_adam_dense_8_bias_v-
)assignvariableop_39_adam_dense_9_kernel_v+
'assignvariableop_40_adam_dense_9_bias_v.
*assignvariableop_41_adam_dense_10_kernel_v,
(assignvariableop_42_adam_dense_10_bias_v.
*assignvariableop_43_adam_dense_11_kernel_v,
(assignvariableop_44_adam_dense_11_bias_v8
4assignvariableop_45_adam_lstm_4_lstm_cell_4_kernel_vB
>assignvariableop_46_adam_lstm_4_lstm_cell_4_recurrent_kernel_v6
2assignvariableop_47_adam_lstm_4_lstm_cell_4_bias_v8
4assignvariableop_48_adam_lstm_5_lstm_cell_5_kernel_vB
>assignvariableop_49_adam_lstm_5_lstm_cell_5_recurrent_kernel_v6
2assignvariableop_50_adam_lstm_5_lstm_cell_5_bias_v
identity_52??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_30?AssignVariableOp_31?AssignVariableOp_32?AssignVariableOp_33?AssignVariableOp_34?AssignVariableOp_35?AssignVariableOp_36?AssignVariableOp_37?AssignVariableOp_38?AssignVariableOp_39?AssignVariableOp_4?AssignVariableOp_40?AssignVariableOp_41?AssignVariableOp_42?AssignVariableOp_43?AssignVariableOp_44?AssignVariableOp_45?AssignVariableOp_46?AssignVariableOp_47?AssignVariableOp_48?AssignVariableOp_49?AssignVariableOp_5?AssignVariableOp_50?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:4*
dtype0*?
value?B?4B6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:4*
dtype0*{
valuerBp4B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapes?
?::::::::::::::::::::::::::::::::::::::::::::::::::::*B
dtypes8
624	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOpassignvariableop_dense_8_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOpassignvariableop_1_dense_8_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp!assignvariableop_2_dense_9_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOpassignvariableop_3_dense_9_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp"assignvariableop_4_dense_10_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp assignvariableop_5_dense_10_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp"assignvariableop_6_dense_11_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp assignvariableop_7_dense_11_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOpassignvariableop_8_beta_1Identity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOpassignvariableop_9_beta_2Identity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOpassignvariableop_10_decayIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOp!assignvariableop_11_learning_rateIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOpassignvariableop_12_adam_iterIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOp-assignvariableop_13_lstm_4_lstm_cell_4_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOp7assignvariableop_14_lstm_4_lstm_cell_4_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOp+assignvariableop_15_lstm_4_lstm_cell_4_biasIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOp-assignvariableop_16_lstm_5_lstm_cell_5_kernelIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOp7assignvariableop_17_lstm_5_lstm_cell_5_recurrent_kernelIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOp+assignvariableop_18_lstm_5_lstm_cell_5_biasIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOpassignvariableop_19_totalIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOpassignvariableop_20_countIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOpassignvariableop_21_total_1Identity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOpassignvariableop_22_count_1Identity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOp)assignvariableop_23_adam_dense_8_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOp'assignvariableop_24_adam_dense_8_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOp)assignvariableop_25_adam_dense_9_kernel_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOp'assignvariableop_26_adam_dense_9_bias_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27?
AssignVariableOp_27AssignVariableOp*assignvariableop_27_adam_dense_10_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28?
AssignVariableOp_28AssignVariableOp(assignvariableop_28_adam_dense_10_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29?
AssignVariableOp_29AssignVariableOp*assignvariableop_29_adam_dense_11_kernel_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30?
AssignVariableOp_30AssignVariableOp(assignvariableop_30_adam_dense_11_bias_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31?
AssignVariableOp_31AssignVariableOp4assignvariableop_31_adam_lstm_4_lstm_cell_4_kernel_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32?
AssignVariableOp_32AssignVariableOp>assignvariableop_32_adam_lstm_4_lstm_cell_4_recurrent_kernel_mIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33?
AssignVariableOp_33AssignVariableOp2assignvariableop_33_adam_lstm_4_lstm_cell_4_bias_mIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34?
AssignVariableOp_34AssignVariableOp4assignvariableop_34_adam_lstm_5_lstm_cell_5_kernel_mIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35?
AssignVariableOp_35AssignVariableOp>assignvariableop_35_adam_lstm_5_lstm_cell_5_recurrent_kernel_mIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36?
AssignVariableOp_36AssignVariableOp2assignvariableop_36_adam_lstm_5_lstm_cell_5_bias_mIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37?
AssignVariableOp_37AssignVariableOp)assignvariableop_37_adam_dense_8_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38?
AssignVariableOp_38AssignVariableOp'assignvariableop_38_adam_dense_8_bias_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39?
AssignVariableOp_39AssignVariableOp)assignvariableop_39_adam_dense_9_kernel_vIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40?
AssignVariableOp_40AssignVariableOp'assignvariableop_40_adam_dense_9_bias_vIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41?
AssignVariableOp_41AssignVariableOp*assignvariableop_41_adam_dense_10_kernel_vIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_41n
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:2
Identity_42?
AssignVariableOp_42AssignVariableOp(assignvariableop_42_adam_dense_10_bias_vIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_42n
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:2
Identity_43?
AssignVariableOp_43AssignVariableOp*assignvariableop_43_adam_dense_11_kernel_vIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_43n
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:2
Identity_44?
AssignVariableOp_44AssignVariableOp(assignvariableop_44_adam_dense_11_bias_vIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_44n
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:2
Identity_45?
AssignVariableOp_45AssignVariableOp4assignvariableop_45_adam_lstm_4_lstm_cell_4_kernel_vIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_45n
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:2
Identity_46?
AssignVariableOp_46AssignVariableOp>assignvariableop_46_adam_lstm_4_lstm_cell_4_recurrent_kernel_vIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_46n
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:2
Identity_47?
AssignVariableOp_47AssignVariableOp2assignvariableop_47_adam_lstm_4_lstm_cell_4_bias_vIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_47n
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:2
Identity_48?
AssignVariableOp_48AssignVariableOp4assignvariableop_48_adam_lstm_5_lstm_cell_5_kernel_vIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_48n
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:2
Identity_49?
AssignVariableOp_49AssignVariableOp>assignvariableop_49_adam_lstm_5_lstm_cell_5_recurrent_kernel_vIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_49n
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:2
Identity_50?
AssignVariableOp_50AssignVariableOp2assignvariableop_50_adam_lstm_5_lstm_cell_5_bias_vIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_509
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?	
Identity_51Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_51?	
Identity_52IdentityIdentity_51:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_52"#
identity_52Identity_52:output:0*?
_input_shapes?
?: :::::::::::::::::::::::::::::::::::::::::::::::::::2$
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
AssignVariableOp_50AssignVariableOp_502(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?
?
while_cond_184929
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_184929___redundant_placeholder04
0while_while_cond_184929___redundant_placeholder14
0while_while_cond_184929___redundant_placeholder24
0while_while_cond_184929___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*U
_input_shapesD
B: : : : :??????????:??????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
? 
?
H__inference_sequential_2_layer_call_and_return_conditional_losses_184062

inputs
lstm_4_184027
lstm_4_184029
lstm_4_184031
lstm_5_184034
lstm_5_184036
lstm_5_184038
dense_8_184041
dense_8_184043
dense_9_184046
dense_9_184048
dense_10_184051
dense_10_184053
dense_11_184056
dense_11_184058
identity?? dense_10/StatefulPartitionedCall? dense_11/StatefulPartitionedCall?dense_8/StatefulPartitionedCall?dense_9/StatefulPartitionedCall?lstm_4/StatefulPartitionedCall?lstm_5/StatefulPartitionedCall?
lstm_4/StatefulPartitionedCallStatefulPartitionedCallinputslstm_4_184027lstm_4_184029lstm_4_184031*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_lstm_4_layer_call_and_return_conditional_losses_1834382 
lstm_4/StatefulPartitionedCall?
lstm_5/StatefulPartitionedCallStatefulPartitionedCall'lstm_4/StatefulPartitionedCall:output:0lstm_5_184034lstm_5_184036lstm_5_184038*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_lstm_5_layer_call_and_return_conditional_losses_1837732 
lstm_5/StatefulPartitionedCall?
dense_8/StatefulPartitionedCallStatefulPartitionedCall'lstm_5/StatefulPartitionedCall:output:0dense_8_184041dense_8_184043*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_8_layer_call_and_return_conditional_losses_1838142!
dense_8/StatefulPartitionedCall?
dense_9/StatefulPartitionedCallStatefulPartitionedCall(dense_8/StatefulPartitionedCall:output:0dense_9_184046dense_9_184048*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????d*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_9_layer_call_and_return_conditional_losses_1838412!
dense_9/StatefulPartitionedCall?
 dense_10/StatefulPartitionedCallStatefulPartitionedCall(dense_9/StatefulPartitionedCall:output:0dense_10_184051dense_10_184053*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_10_layer_call_and_return_conditional_losses_1838682"
 dense_10/StatefulPartitionedCall?
 dense_11/StatefulPartitionedCallStatefulPartitionedCall)dense_10/StatefulPartitionedCall:output:0dense_11_184056dense_11_184058*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_11_layer_call_and_return_conditional_losses_1838952"
 dense_11/StatefulPartitionedCall?
IdentityIdentity)dense_11/StatefulPartitionedCall:output:0!^dense_10/StatefulPartitionedCall!^dense_11/StatefulPartitionedCall ^dense_8/StatefulPartitionedCall ^dense_9/StatefulPartitionedCall^lstm_4/StatefulPartitionedCall^lstm_5/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*b
_input_shapesQ
O:?????????::::::::::::::2D
 dense_10/StatefulPartitionedCall dense_10/StatefulPartitionedCall2D
 dense_11/StatefulPartitionedCall dense_11/StatefulPartitionedCall2B
dense_8/StatefulPartitionedCalldense_8/StatefulPartitionedCall2B
dense_9/StatefulPartitionedCalldense_9/StatefulPartitionedCall2@
lstm_4/StatefulPartitionedCalllstm_4/StatefulPartitionedCall2@
lstm_5/StatefulPartitionedCalllstm_5/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?%
?
while_body_182919
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_lstm_cell_5_182943_0
while_lstm_cell_5_182945_0
while_lstm_cell_5_182947_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_lstm_cell_5_182943
while_lstm_cell_5_182945
while_lstm_cell_5_182947??)while/lstm_cell_5/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
)while/lstm_cell_5/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_5_182943_0while_lstm_cell_5_182945_0while_lstm_cell_5_182947_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:??????????:??????????:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_lstm_cell_5_layer_call_and_return_conditional_losses_1825922+
)while/lstm_cell_5/StatefulPartitionedCall?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder2while/lstm_cell_5/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1?
while/IdentityIdentitywhile/add_1:z:0*^while/lstm_cell_5/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations*^while/lstm_cell_5/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0*^while/lstm_cell_5/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*^while/lstm_cell_5/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identity2while/lstm_cell_5/StatefulPartitionedCall:output:1*^while/lstm_cell_5/StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2
while/Identity_4?
while/Identity_5Identity2while/lstm_cell_5/StatefulPartitionedCall:output:2*^while/lstm_cell_5/StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"6
while_lstm_cell_5_182943while_lstm_cell_5_182943_0"6
while_lstm_cell_5_182945while_lstm_cell_5_182945_0"6
while_lstm_cell_5_182947while_lstm_cell_5_182947_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*S
_input_shapesB
@: : : : :??????????:??????????: : :::2V
)while/lstm_cell_5/StatefulPartitionedCall)while/lstm_cell_5/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?Z
?
B__inference_lstm_4_layer_call_and_return_conditional_losses_185343

inputs.
*lstm_cell_4_matmul_readvariableop_resource0
,lstm_cell_4_matmul_1_readvariableop_resource/
+lstm_cell_4_biasadd_readvariableop_resource
identity??"lstm_cell_4/BiasAdd/ReadVariableOp?!lstm_cell_4/MatMul/ReadVariableOp?#lstm_cell_4/MatMul_1/ReadVariableOp?whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:??????????2
zerosa
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessg
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const~
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:??????????2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:?????????2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slice_2?
!lstm_cell_4/MatMul/ReadVariableOpReadVariableOp*lstm_cell_4_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02#
!lstm_cell_4/MatMul/ReadVariableOp?
lstm_cell_4/MatMulMatMulstrided_slice_2:output:0)lstm_cell_4/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_4/MatMul?
#lstm_cell_4/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_4_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02%
#lstm_cell_4/MatMul_1/ReadVariableOp?
lstm_cell_4/MatMul_1MatMulzeros:output:0+lstm_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_4/MatMul_1?
lstm_cell_4/addAddV2lstm_cell_4/MatMul:product:0lstm_cell_4/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell_4/add?
"lstm_cell_4/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_4_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02$
"lstm_cell_4/BiasAdd/ReadVariableOp?
lstm_cell_4/BiasAddBiasAddlstm_cell_4/add:z:0*lstm_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_4/BiasAddh
lstm_cell_4/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_4/Const|
lstm_cell_4/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_4/split/split_dim?
lstm_cell_4/splitSplit$lstm_cell_4/split/split_dim:output:0lstm_cell_4/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
lstm_cell_4/split?
lstm_cell_4/SigmoidSigmoidlstm_cell_4/split:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_4/Sigmoid?
lstm_cell_4/Sigmoid_1Sigmoidlstm_cell_4/split:output:1*
T0*(
_output_shapes
:??????????2
lstm_cell_4/Sigmoid_1?
lstm_cell_4/mulMullstm_cell_4/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_4/mul?
lstm_cell_4/LeakyRelu	LeakyRelulstm_cell_4/split:output:2*(
_output_shapes
:??????????2
lstm_cell_4/LeakyRelu?
lstm_cell_4/mul_1Mullstm_cell_4/Sigmoid:y:0#lstm_cell_4/LeakyRelu:activations:0*
T0*(
_output_shapes
:??????????2
lstm_cell_4/mul_1?
lstm_cell_4/add_1AddV2lstm_cell_4/mul:z:0lstm_cell_4/mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_4/add_1?
lstm_cell_4/Sigmoid_2Sigmoidlstm_cell_4/split:output:3*
T0*(
_output_shapes
:??????????2
lstm_cell_4/Sigmoid_2?
lstm_cell_4/LeakyRelu_1	LeakyRelulstm_cell_4/add_1:z:0*(
_output_shapes
:??????????2
lstm_cell_4/LeakyRelu_1?
lstm_cell_4/mul_2Mullstm_cell_4/Sigmoid_2:y:0%lstm_cell_4/LeakyRelu_1:activations:0*
T0*(
_output_shapes
:??????????2
lstm_cell_4/mul_2?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_4_matmul_readvariableop_resource,lstm_cell_4_matmul_1_readvariableop_resource+lstm_cell_4_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :??????????:??????????: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_185258*
condR
while_cond_185257*M
output_shapes<
:: : : : :??????????:??????????: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:??????????2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime?
IdentityIdentitytranspose_1:y:0#^lstm_cell_4/BiasAdd/ReadVariableOp"^lstm_cell_4/MatMul/ReadVariableOp$^lstm_cell_4/MatMul_1/ReadVariableOp^while*
T0*,
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????:::2H
"lstm_cell_4/BiasAdd/ReadVariableOp"lstm_cell_4/BiasAdd/ReadVariableOp2F
!lstm_cell_4/MatMul/ReadVariableOp!lstm_cell_4/MatMul/ReadVariableOp2J
#lstm_cell_4/MatMul_1/ReadVariableOp#lstm_cell_4/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
? 
?
H__inference_sequential_2_layer_call_and_return_conditional_losses_183912
lstm_4_input
lstm_4_183461
lstm_4_183463
lstm_4_183465
lstm_5_183796
lstm_5_183798
lstm_5_183800
dense_8_183825
dense_8_183827
dense_9_183852
dense_9_183854
dense_10_183879
dense_10_183881
dense_11_183906
dense_11_183908
identity?? dense_10/StatefulPartitionedCall? dense_11/StatefulPartitionedCall?dense_8/StatefulPartitionedCall?dense_9/StatefulPartitionedCall?lstm_4/StatefulPartitionedCall?lstm_5/StatefulPartitionedCall?
lstm_4/StatefulPartitionedCallStatefulPartitionedCalllstm_4_inputlstm_4_183461lstm_4_183463lstm_4_183465*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_lstm_4_layer_call_and_return_conditional_losses_1832852 
lstm_4/StatefulPartitionedCall?
lstm_5/StatefulPartitionedCallStatefulPartitionedCall'lstm_4/StatefulPartitionedCall:output:0lstm_5_183796lstm_5_183798lstm_5_183800*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_lstm_5_layer_call_and_return_conditional_losses_1836202 
lstm_5/StatefulPartitionedCall?
dense_8/StatefulPartitionedCallStatefulPartitionedCall'lstm_5/StatefulPartitionedCall:output:0dense_8_183825dense_8_183827*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_8_layer_call_and_return_conditional_losses_1838142!
dense_8/StatefulPartitionedCall?
dense_9/StatefulPartitionedCallStatefulPartitionedCall(dense_8/StatefulPartitionedCall:output:0dense_9_183852dense_9_183854*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????d*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_9_layer_call_and_return_conditional_losses_1838412!
dense_9/StatefulPartitionedCall?
 dense_10/StatefulPartitionedCallStatefulPartitionedCall(dense_9/StatefulPartitionedCall:output:0dense_10_183879dense_10_183881*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_10_layer_call_and_return_conditional_losses_1838682"
 dense_10/StatefulPartitionedCall?
 dense_11/StatefulPartitionedCallStatefulPartitionedCall)dense_10/StatefulPartitionedCall:output:0dense_11_183906dense_11_183908*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_11_layer_call_and_return_conditional_losses_1838952"
 dense_11/StatefulPartitionedCall?
IdentityIdentity)dense_11/StatefulPartitionedCall:output:0!^dense_10/StatefulPartitionedCall!^dense_11/StatefulPartitionedCall ^dense_8/StatefulPartitionedCall ^dense_9/StatefulPartitionedCall^lstm_4/StatefulPartitionedCall^lstm_5/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*b
_input_shapesQ
O:?????????::::::::::::::2D
 dense_10/StatefulPartitionedCall dense_10/StatefulPartitionedCall2D
 dense_11/StatefulPartitionedCall dense_11/StatefulPartitionedCall2B
dense_8/StatefulPartitionedCalldense_8/StatefulPartitionedCall2B
dense_9/StatefulPartitionedCalldense_9/StatefulPartitionedCall2@
lstm_4/StatefulPartitionedCalllstm_4/StatefulPartitionedCall2@
lstm_5/StatefulPartitionedCalllstm_5/StatefulPartitionedCall:Y U
+
_output_shapes
:?????????
&
_user_specified_namelstm_4_input
??
?
!__inference__wrapped_model_181909
lstm_4_inputB
>sequential_2_lstm_4_lstm_cell_4_matmul_readvariableop_resourceD
@sequential_2_lstm_4_lstm_cell_4_matmul_1_readvariableop_resourceC
?sequential_2_lstm_4_lstm_cell_4_biasadd_readvariableop_resourceB
>sequential_2_lstm_5_lstm_cell_5_matmul_readvariableop_resourceD
@sequential_2_lstm_5_lstm_cell_5_matmul_1_readvariableop_resourceC
?sequential_2_lstm_5_lstm_cell_5_biasadd_readvariableop_resource7
3sequential_2_dense_8_matmul_readvariableop_resource8
4sequential_2_dense_8_biasadd_readvariableop_resource7
3sequential_2_dense_9_matmul_readvariableop_resource8
4sequential_2_dense_9_biasadd_readvariableop_resource8
4sequential_2_dense_10_matmul_readvariableop_resource9
5sequential_2_dense_10_biasadd_readvariableop_resource8
4sequential_2_dense_11_matmul_readvariableop_resource9
5sequential_2_dense_11_biasadd_readvariableop_resource
identity??,sequential_2/dense_10/BiasAdd/ReadVariableOp?+sequential_2/dense_10/MatMul/ReadVariableOp?,sequential_2/dense_11/BiasAdd/ReadVariableOp?+sequential_2/dense_11/MatMul/ReadVariableOp?+sequential_2/dense_8/BiasAdd/ReadVariableOp?*sequential_2/dense_8/MatMul/ReadVariableOp?+sequential_2/dense_9/BiasAdd/ReadVariableOp?*sequential_2/dense_9/MatMul/ReadVariableOp?6sequential_2/lstm_4/lstm_cell_4/BiasAdd/ReadVariableOp?5sequential_2/lstm_4/lstm_cell_4/MatMul/ReadVariableOp?7sequential_2/lstm_4/lstm_cell_4/MatMul_1/ReadVariableOp?sequential_2/lstm_4/while?6sequential_2/lstm_5/lstm_cell_5/BiasAdd/ReadVariableOp?5sequential_2/lstm_5/lstm_cell_5/MatMul/ReadVariableOp?7sequential_2/lstm_5/lstm_cell_5/MatMul_1/ReadVariableOp?sequential_2/lstm_5/whiler
sequential_2/lstm_4/ShapeShapelstm_4_input*
T0*
_output_shapes
:2
sequential_2/lstm_4/Shape?
'sequential_2/lstm_4/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'sequential_2/lstm_4/strided_slice/stack?
)sequential_2/lstm_4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)sequential_2/lstm_4/strided_slice/stack_1?
)sequential_2/lstm_4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)sequential_2/lstm_4/strided_slice/stack_2?
!sequential_2/lstm_4/strided_sliceStridedSlice"sequential_2/lstm_4/Shape:output:00sequential_2/lstm_4/strided_slice/stack:output:02sequential_2/lstm_4/strided_slice/stack_1:output:02sequential_2/lstm_4/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!sequential_2/lstm_4/strided_slice?
sequential_2/lstm_4/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2!
sequential_2/lstm_4/zeros/mul/y?
sequential_2/lstm_4/zeros/mulMul*sequential_2/lstm_4/strided_slice:output:0(sequential_2/lstm_4/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
sequential_2/lstm_4/zeros/mul?
 sequential_2/lstm_4/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2"
 sequential_2/lstm_4/zeros/Less/y?
sequential_2/lstm_4/zeros/LessLess!sequential_2/lstm_4/zeros/mul:z:0)sequential_2/lstm_4/zeros/Less/y:output:0*
T0*
_output_shapes
: 2 
sequential_2/lstm_4/zeros/Less?
"sequential_2/lstm_4/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2$
"sequential_2/lstm_4/zeros/packed/1?
 sequential_2/lstm_4/zeros/packedPack*sequential_2/lstm_4/strided_slice:output:0+sequential_2/lstm_4/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2"
 sequential_2/lstm_4/zeros/packed?
sequential_2/lstm_4/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2!
sequential_2/lstm_4/zeros/Const?
sequential_2/lstm_4/zerosFill)sequential_2/lstm_4/zeros/packed:output:0(sequential_2/lstm_4/zeros/Const:output:0*
T0*(
_output_shapes
:??????????2
sequential_2/lstm_4/zeros?
!sequential_2/lstm_4/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2#
!sequential_2/lstm_4/zeros_1/mul/y?
sequential_2/lstm_4/zeros_1/mulMul*sequential_2/lstm_4/strided_slice:output:0*sequential_2/lstm_4/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2!
sequential_2/lstm_4/zeros_1/mul?
"sequential_2/lstm_4/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2$
"sequential_2/lstm_4/zeros_1/Less/y?
 sequential_2/lstm_4/zeros_1/LessLess#sequential_2/lstm_4/zeros_1/mul:z:0+sequential_2/lstm_4/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2"
 sequential_2/lstm_4/zeros_1/Less?
$sequential_2/lstm_4/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2&
$sequential_2/lstm_4/zeros_1/packed/1?
"sequential_2/lstm_4/zeros_1/packedPack*sequential_2/lstm_4/strided_slice:output:0-sequential_2/lstm_4/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2$
"sequential_2/lstm_4/zeros_1/packed?
!sequential_2/lstm_4/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!sequential_2/lstm_4/zeros_1/Const?
sequential_2/lstm_4/zeros_1Fill+sequential_2/lstm_4/zeros_1/packed:output:0*sequential_2/lstm_4/zeros_1/Const:output:0*
T0*(
_output_shapes
:??????????2
sequential_2/lstm_4/zeros_1?
"sequential_2/lstm_4/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2$
"sequential_2/lstm_4/transpose/perm?
sequential_2/lstm_4/transpose	Transposelstm_4_input+sequential_2/lstm_4/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2
sequential_2/lstm_4/transpose?
sequential_2/lstm_4/Shape_1Shape!sequential_2/lstm_4/transpose:y:0*
T0*
_output_shapes
:2
sequential_2/lstm_4/Shape_1?
)sequential_2/lstm_4/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)sequential_2/lstm_4/strided_slice_1/stack?
+sequential_2/lstm_4/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_2/lstm_4/strided_slice_1/stack_1?
+sequential_2/lstm_4/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_2/lstm_4/strided_slice_1/stack_2?
#sequential_2/lstm_4/strided_slice_1StridedSlice$sequential_2/lstm_4/Shape_1:output:02sequential_2/lstm_4/strided_slice_1/stack:output:04sequential_2/lstm_4/strided_slice_1/stack_1:output:04sequential_2/lstm_4/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#sequential_2/lstm_4/strided_slice_1?
/sequential_2/lstm_4/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????21
/sequential_2/lstm_4/TensorArrayV2/element_shape?
!sequential_2/lstm_4/TensorArrayV2TensorListReserve8sequential_2/lstm_4/TensorArrayV2/element_shape:output:0,sequential_2/lstm_4/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02#
!sequential_2/lstm_4/TensorArrayV2?
Isequential_2/lstm_4/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2K
Isequential_2/lstm_4/TensorArrayUnstack/TensorListFromTensor/element_shape?
;sequential_2/lstm_4/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor!sequential_2/lstm_4/transpose:y:0Rsequential_2/lstm_4/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02=
;sequential_2/lstm_4/TensorArrayUnstack/TensorListFromTensor?
)sequential_2/lstm_4/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)sequential_2/lstm_4/strided_slice_2/stack?
+sequential_2/lstm_4/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_2/lstm_4/strided_slice_2/stack_1?
+sequential_2/lstm_4/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_2/lstm_4/strided_slice_2/stack_2?
#sequential_2/lstm_4/strided_slice_2StridedSlice!sequential_2/lstm_4/transpose:y:02sequential_2/lstm_4/strided_slice_2/stack:output:04sequential_2/lstm_4/strided_slice_2/stack_1:output:04sequential_2/lstm_4/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2%
#sequential_2/lstm_4/strided_slice_2?
5sequential_2/lstm_4/lstm_cell_4/MatMul/ReadVariableOpReadVariableOp>sequential_2_lstm_4_lstm_cell_4_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype027
5sequential_2/lstm_4/lstm_cell_4/MatMul/ReadVariableOp?
&sequential_2/lstm_4/lstm_cell_4/MatMulMatMul,sequential_2/lstm_4/strided_slice_2:output:0=sequential_2/lstm_4/lstm_cell_4/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2(
&sequential_2/lstm_4/lstm_cell_4/MatMul?
7sequential_2/lstm_4/lstm_cell_4/MatMul_1/ReadVariableOpReadVariableOp@sequential_2_lstm_4_lstm_cell_4_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype029
7sequential_2/lstm_4/lstm_cell_4/MatMul_1/ReadVariableOp?
(sequential_2/lstm_4/lstm_cell_4/MatMul_1MatMul"sequential_2/lstm_4/zeros:output:0?sequential_2/lstm_4/lstm_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2*
(sequential_2/lstm_4/lstm_cell_4/MatMul_1?
#sequential_2/lstm_4/lstm_cell_4/addAddV20sequential_2/lstm_4/lstm_cell_4/MatMul:product:02sequential_2/lstm_4/lstm_cell_4/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2%
#sequential_2/lstm_4/lstm_cell_4/add?
6sequential_2/lstm_4/lstm_cell_4/BiasAdd/ReadVariableOpReadVariableOp?sequential_2_lstm_4_lstm_cell_4_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype028
6sequential_2/lstm_4/lstm_cell_4/BiasAdd/ReadVariableOp?
'sequential_2/lstm_4/lstm_cell_4/BiasAddBiasAdd'sequential_2/lstm_4/lstm_cell_4/add:z:0>sequential_2/lstm_4/lstm_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2)
'sequential_2/lstm_4/lstm_cell_4/BiasAdd?
%sequential_2/lstm_4/lstm_cell_4/ConstConst*
_output_shapes
: *
dtype0*
value	B :2'
%sequential_2/lstm_4/lstm_cell_4/Const?
/sequential_2/lstm_4/lstm_cell_4/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :21
/sequential_2/lstm_4/lstm_cell_4/split/split_dim?
%sequential_2/lstm_4/lstm_cell_4/splitSplit8sequential_2/lstm_4/lstm_cell_4/split/split_dim:output:00sequential_2/lstm_4/lstm_cell_4/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2'
%sequential_2/lstm_4/lstm_cell_4/split?
'sequential_2/lstm_4/lstm_cell_4/SigmoidSigmoid.sequential_2/lstm_4/lstm_cell_4/split:output:0*
T0*(
_output_shapes
:??????????2)
'sequential_2/lstm_4/lstm_cell_4/Sigmoid?
)sequential_2/lstm_4/lstm_cell_4/Sigmoid_1Sigmoid.sequential_2/lstm_4/lstm_cell_4/split:output:1*
T0*(
_output_shapes
:??????????2+
)sequential_2/lstm_4/lstm_cell_4/Sigmoid_1?
#sequential_2/lstm_4/lstm_cell_4/mulMul-sequential_2/lstm_4/lstm_cell_4/Sigmoid_1:y:0$sequential_2/lstm_4/zeros_1:output:0*
T0*(
_output_shapes
:??????????2%
#sequential_2/lstm_4/lstm_cell_4/mul?
)sequential_2/lstm_4/lstm_cell_4/LeakyRelu	LeakyRelu.sequential_2/lstm_4/lstm_cell_4/split:output:2*(
_output_shapes
:??????????2+
)sequential_2/lstm_4/lstm_cell_4/LeakyRelu?
%sequential_2/lstm_4/lstm_cell_4/mul_1Mul+sequential_2/lstm_4/lstm_cell_4/Sigmoid:y:07sequential_2/lstm_4/lstm_cell_4/LeakyRelu:activations:0*
T0*(
_output_shapes
:??????????2'
%sequential_2/lstm_4/lstm_cell_4/mul_1?
%sequential_2/lstm_4/lstm_cell_4/add_1AddV2'sequential_2/lstm_4/lstm_cell_4/mul:z:0)sequential_2/lstm_4/lstm_cell_4/mul_1:z:0*
T0*(
_output_shapes
:??????????2'
%sequential_2/lstm_4/lstm_cell_4/add_1?
)sequential_2/lstm_4/lstm_cell_4/Sigmoid_2Sigmoid.sequential_2/lstm_4/lstm_cell_4/split:output:3*
T0*(
_output_shapes
:??????????2+
)sequential_2/lstm_4/lstm_cell_4/Sigmoid_2?
+sequential_2/lstm_4/lstm_cell_4/LeakyRelu_1	LeakyRelu)sequential_2/lstm_4/lstm_cell_4/add_1:z:0*(
_output_shapes
:??????????2-
+sequential_2/lstm_4/lstm_cell_4/LeakyRelu_1?
%sequential_2/lstm_4/lstm_cell_4/mul_2Mul-sequential_2/lstm_4/lstm_cell_4/Sigmoid_2:y:09sequential_2/lstm_4/lstm_cell_4/LeakyRelu_1:activations:0*
T0*(
_output_shapes
:??????????2'
%sequential_2/lstm_4/lstm_cell_4/mul_2?
1sequential_2/lstm_4/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   23
1sequential_2/lstm_4/TensorArrayV2_1/element_shape?
#sequential_2/lstm_4/TensorArrayV2_1TensorListReserve:sequential_2/lstm_4/TensorArrayV2_1/element_shape:output:0,sequential_2/lstm_4/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02%
#sequential_2/lstm_4/TensorArrayV2_1v
sequential_2/lstm_4/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
sequential_2/lstm_4/time?
,sequential_2/lstm_4/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2.
,sequential_2/lstm_4/while/maximum_iterations?
&sequential_2/lstm_4/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2(
&sequential_2/lstm_4/while/loop_counter?
sequential_2/lstm_4/whileWhile/sequential_2/lstm_4/while/loop_counter:output:05sequential_2/lstm_4/while/maximum_iterations:output:0!sequential_2/lstm_4/time:output:0,sequential_2/lstm_4/TensorArrayV2_1:handle:0"sequential_2/lstm_4/zeros:output:0$sequential_2/lstm_4/zeros_1:output:0,sequential_2/lstm_4/strided_slice_1:output:0Ksequential_2/lstm_4/TensorArrayUnstack/TensorListFromTensor:output_handle:0>sequential_2_lstm_4_lstm_cell_4_matmul_readvariableop_resource@sequential_2_lstm_4_lstm_cell_4_matmul_1_readvariableop_resource?sequential_2_lstm_4_lstm_cell_4_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :??????????:??????????: : : : : *%
_read_only_resource_inputs
	
*1
body)R'
%sequential_2_lstm_4_while_body_181647*1
cond)R'
%sequential_2_lstm_4_while_cond_181646*M
output_shapes<
:: : : : :??????????:??????????: : : : : *
parallel_iterations 2
sequential_2/lstm_4/while?
Dsequential_2/lstm_4/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2F
Dsequential_2/lstm_4/TensorArrayV2Stack/TensorListStack/element_shape?
6sequential_2/lstm_4/TensorArrayV2Stack/TensorListStackTensorListStack"sequential_2/lstm_4/while:output:3Msequential_2/lstm_4/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????*
element_dtype028
6sequential_2/lstm_4/TensorArrayV2Stack/TensorListStack?
)sequential_2/lstm_4/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2+
)sequential_2/lstm_4/strided_slice_3/stack?
+sequential_2/lstm_4/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2-
+sequential_2/lstm_4/strided_slice_3/stack_1?
+sequential_2/lstm_4/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_2/lstm_4/strided_slice_3/stack_2?
#sequential_2/lstm_4/strided_slice_3StridedSlice?sequential_2/lstm_4/TensorArrayV2Stack/TensorListStack:tensor:02sequential_2/lstm_4/strided_slice_3/stack:output:04sequential_2/lstm_4/strided_slice_3/stack_1:output:04sequential_2/lstm_4/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2%
#sequential_2/lstm_4/strided_slice_3?
$sequential_2/lstm_4/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2&
$sequential_2/lstm_4/transpose_1/perm?
sequential_2/lstm_4/transpose_1	Transpose?sequential_2/lstm_4/TensorArrayV2Stack/TensorListStack:tensor:0-sequential_2/lstm_4/transpose_1/perm:output:0*
T0*,
_output_shapes
:??????????2!
sequential_2/lstm_4/transpose_1?
sequential_2/lstm_4/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
sequential_2/lstm_4/runtime?
sequential_2/lstm_5/ShapeShape#sequential_2/lstm_4/transpose_1:y:0*
T0*
_output_shapes
:2
sequential_2/lstm_5/Shape?
'sequential_2/lstm_5/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'sequential_2/lstm_5/strided_slice/stack?
)sequential_2/lstm_5/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)sequential_2/lstm_5/strided_slice/stack_1?
)sequential_2/lstm_5/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)sequential_2/lstm_5/strided_slice/stack_2?
!sequential_2/lstm_5/strided_sliceStridedSlice"sequential_2/lstm_5/Shape:output:00sequential_2/lstm_5/strided_slice/stack:output:02sequential_2/lstm_5/strided_slice/stack_1:output:02sequential_2/lstm_5/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!sequential_2/lstm_5/strided_slice?
sequential_2/lstm_5/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2!
sequential_2/lstm_5/zeros/mul/y?
sequential_2/lstm_5/zeros/mulMul*sequential_2/lstm_5/strided_slice:output:0(sequential_2/lstm_5/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
sequential_2/lstm_5/zeros/mul?
 sequential_2/lstm_5/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2"
 sequential_2/lstm_5/zeros/Less/y?
sequential_2/lstm_5/zeros/LessLess!sequential_2/lstm_5/zeros/mul:z:0)sequential_2/lstm_5/zeros/Less/y:output:0*
T0*
_output_shapes
: 2 
sequential_2/lstm_5/zeros/Less?
"sequential_2/lstm_5/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2$
"sequential_2/lstm_5/zeros/packed/1?
 sequential_2/lstm_5/zeros/packedPack*sequential_2/lstm_5/strided_slice:output:0+sequential_2/lstm_5/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2"
 sequential_2/lstm_5/zeros/packed?
sequential_2/lstm_5/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2!
sequential_2/lstm_5/zeros/Const?
sequential_2/lstm_5/zerosFill)sequential_2/lstm_5/zeros/packed:output:0(sequential_2/lstm_5/zeros/Const:output:0*
T0*(
_output_shapes
:??????????2
sequential_2/lstm_5/zeros?
!sequential_2/lstm_5/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2#
!sequential_2/lstm_5/zeros_1/mul/y?
sequential_2/lstm_5/zeros_1/mulMul*sequential_2/lstm_5/strided_slice:output:0*sequential_2/lstm_5/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2!
sequential_2/lstm_5/zeros_1/mul?
"sequential_2/lstm_5/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2$
"sequential_2/lstm_5/zeros_1/Less/y?
 sequential_2/lstm_5/zeros_1/LessLess#sequential_2/lstm_5/zeros_1/mul:z:0+sequential_2/lstm_5/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2"
 sequential_2/lstm_5/zeros_1/Less?
$sequential_2/lstm_5/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2&
$sequential_2/lstm_5/zeros_1/packed/1?
"sequential_2/lstm_5/zeros_1/packedPack*sequential_2/lstm_5/strided_slice:output:0-sequential_2/lstm_5/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2$
"sequential_2/lstm_5/zeros_1/packed?
!sequential_2/lstm_5/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!sequential_2/lstm_5/zeros_1/Const?
sequential_2/lstm_5/zeros_1Fill+sequential_2/lstm_5/zeros_1/packed:output:0*sequential_2/lstm_5/zeros_1/Const:output:0*
T0*(
_output_shapes
:??????????2
sequential_2/lstm_5/zeros_1?
"sequential_2/lstm_5/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2$
"sequential_2/lstm_5/transpose/perm?
sequential_2/lstm_5/transpose	Transpose#sequential_2/lstm_4/transpose_1:y:0+sequential_2/lstm_5/transpose/perm:output:0*
T0*,
_output_shapes
:??????????2
sequential_2/lstm_5/transpose?
sequential_2/lstm_5/Shape_1Shape!sequential_2/lstm_5/transpose:y:0*
T0*
_output_shapes
:2
sequential_2/lstm_5/Shape_1?
)sequential_2/lstm_5/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)sequential_2/lstm_5/strided_slice_1/stack?
+sequential_2/lstm_5/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_2/lstm_5/strided_slice_1/stack_1?
+sequential_2/lstm_5/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_2/lstm_5/strided_slice_1/stack_2?
#sequential_2/lstm_5/strided_slice_1StridedSlice$sequential_2/lstm_5/Shape_1:output:02sequential_2/lstm_5/strided_slice_1/stack:output:04sequential_2/lstm_5/strided_slice_1/stack_1:output:04sequential_2/lstm_5/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#sequential_2/lstm_5/strided_slice_1?
/sequential_2/lstm_5/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????21
/sequential_2/lstm_5/TensorArrayV2/element_shape?
!sequential_2/lstm_5/TensorArrayV2TensorListReserve8sequential_2/lstm_5/TensorArrayV2/element_shape:output:0,sequential_2/lstm_5/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02#
!sequential_2/lstm_5/TensorArrayV2?
Isequential_2/lstm_5/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2K
Isequential_2/lstm_5/TensorArrayUnstack/TensorListFromTensor/element_shape?
;sequential_2/lstm_5/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor!sequential_2/lstm_5/transpose:y:0Rsequential_2/lstm_5/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02=
;sequential_2/lstm_5/TensorArrayUnstack/TensorListFromTensor?
)sequential_2/lstm_5/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)sequential_2/lstm_5/strided_slice_2/stack?
+sequential_2/lstm_5/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_2/lstm_5/strided_slice_2/stack_1?
+sequential_2/lstm_5/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_2/lstm_5/strided_slice_2/stack_2?
#sequential_2/lstm_5/strided_slice_2StridedSlice!sequential_2/lstm_5/transpose:y:02sequential_2/lstm_5/strided_slice_2/stack:output:04sequential_2/lstm_5/strided_slice_2/stack_1:output:04sequential_2/lstm_5/strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2%
#sequential_2/lstm_5/strided_slice_2?
5sequential_2/lstm_5/lstm_cell_5/MatMul/ReadVariableOpReadVariableOp>sequential_2_lstm_5_lstm_cell_5_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype027
5sequential_2/lstm_5/lstm_cell_5/MatMul/ReadVariableOp?
&sequential_2/lstm_5/lstm_cell_5/MatMulMatMul,sequential_2/lstm_5/strided_slice_2:output:0=sequential_2/lstm_5/lstm_cell_5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2(
&sequential_2/lstm_5/lstm_cell_5/MatMul?
7sequential_2/lstm_5/lstm_cell_5/MatMul_1/ReadVariableOpReadVariableOp@sequential_2_lstm_5_lstm_cell_5_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype029
7sequential_2/lstm_5/lstm_cell_5/MatMul_1/ReadVariableOp?
(sequential_2/lstm_5/lstm_cell_5/MatMul_1MatMul"sequential_2/lstm_5/zeros:output:0?sequential_2/lstm_5/lstm_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2*
(sequential_2/lstm_5/lstm_cell_5/MatMul_1?
#sequential_2/lstm_5/lstm_cell_5/addAddV20sequential_2/lstm_5/lstm_cell_5/MatMul:product:02sequential_2/lstm_5/lstm_cell_5/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2%
#sequential_2/lstm_5/lstm_cell_5/add?
6sequential_2/lstm_5/lstm_cell_5/BiasAdd/ReadVariableOpReadVariableOp?sequential_2_lstm_5_lstm_cell_5_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype028
6sequential_2/lstm_5/lstm_cell_5/BiasAdd/ReadVariableOp?
'sequential_2/lstm_5/lstm_cell_5/BiasAddBiasAdd'sequential_2/lstm_5/lstm_cell_5/add:z:0>sequential_2/lstm_5/lstm_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2)
'sequential_2/lstm_5/lstm_cell_5/BiasAdd?
%sequential_2/lstm_5/lstm_cell_5/ConstConst*
_output_shapes
: *
dtype0*
value	B :2'
%sequential_2/lstm_5/lstm_cell_5/Const?
/sequential_2/lstm_5/lstm_cell_5/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :21
/sequential_2/lstm_5/lstm_cell_5/split/split_dim?
%sequential_2/lstm_5/lstm_cell_5/splitSplit8sequential_2/lstm_5/lstm_cell_5/split/split_dim:output:00sequential_2/lstm_5/lstm_cell_5/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2'
%sequential_2/lstm_5/lstm_cell_5/split?
'sequential_2/lstm_5/lstm_cell_5/SigmoidSigmoid.sequential_2/lstm_5/lstm_cell_5/split:output:0*
T0*(
_output_shapes
:??????????2)
'sequential_2/lstm_5/lstm_cell_5/Sigmoid?
)sequential_2/lstm_5/lstm_cell_5/Sigmoid_1Sigmoid.sequential_2/lstm_5/lstm_cell_5/split:output:1*
T0*(
_output_shapes
:??????????2+
)sequential_2/lstm_5/lstm_cell_5/Sigmoid_1?
#sequential_2/lstm_5/lstm_cell_5/mulMul-sequential_2/lstm_5/lstm_cell_5/Sigmoid_1:y:0$sequential_2/lstm_5/zeros_1:output:0*
T0*(
_output_shapes
:??????????2%
#sequential_2/lstm_5/lstm_cell_5/mul?
)sequential_2/lstm_5/lstm_cell_5/LeakyRelu	LeakyRelu.sequential_2/lstm_5/lstm_cell_5/split:output:2*(
_output_shapes
:??????????2+
)sequential_2/lstm_5/lstm_cell_5/LeakyRelu?
%sequential_2/lstm_5/lstm_cell_5/mul_1Mul+sequential_2/lstm_5/lstm_cell_5/Sigmoid:y:07sequential_2/lstm_5/lstm_cell_5/LeakyRelu:activations:0*
T0*(
_output_shapes
:??????????2'
%sequential_2/lstm_5/lstm_cell_5/mul_1?
%sequential_2/lstm_5/lstm_cell_5/add_1AddV2'sequential_2/lstm_5/lstm_cell_5/mul:z:0)sequential_2/lstm_5/lstm_cell_5/mul_1:z:0*
T0*(
_output_shapes
:??????????2'
%sequential_2/lstm_5/lstm_cell_5/add_1?
)sequential_2/lstm_5/lstm_cell_5/Sigmoid_2Sigmoid.sequential_2/lstm_5/lstm_cell_5/split:output:3*
T0*(
_output_shapes
:??????????2+
)sequential_2/lstm_5/lstm_cell_5/Sigmoid_2?
+sequential_2/lstm_5/lstm_cell_5/LeakyRelu_1	LeakyRelu)sequential_2/lstm_5/lstm_cell_5/add_1:z:0*(
_output_shapes
:??????????2-
+sequential_2/lstm_5/lstm_cell_5/LeakyRelu_1?
%sequential_2/lstm_5/lstm_cell_5/mul_2Mul-sequential_2/lstm_5/lstm_cell_5/Sigmoid_2:y:09sequential_2/lstm_5/lstm_cell_5/LeakyRelu_1:activations:0*
T0*(
_output_shapes
:??????????2'
%sequential_2/lstm_5/lstm_cell_5/mul_2?
1sequential_2/lstm_5/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   23
1sequential_2/lstm_5/TensorArrayV2_1/element_shape?
#sequential_2/lstm_5/TensorArrayV2_1TensorListReserve:sequential_2/lstm_5/TensorArrayV2_1/element_shape:output:0,sequential_2/lstm_5/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02%
#sequential_2/lstm_5/TensorArrayV2_1v
sequential_2/lstm_5/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
sequential_2/lstm_5/time?
,sequential_2/lstm_5/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2.
,sequential_2/lstm_5/while/maximum_iterations?
&sequential_2/lstm_5/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2(
&sequential_2/lstm_5/while/loop_counter?
sequential_2/lstm_5/whileWhile/sequential_2/lstm_5/while/loop_counter:output:05sequential_2/lstm_5/while/maximum_iterations:output:0!sequential_2/lstm_5/time:output:0,sequential_2/lstm_5/TensorArrayV2_1:handle:0"sequential_2/lstm_5/zeros:output:0$sequential_2/lstm_5/zeros_1:output:0,sequential_2/lstm_5/strided_slice_1:output:0Ksequential_2/lstm_5/TensorArrayUnstack/TensorListFromTensor:output_handle:0>sequential_2_lstm_5_lstm_cell_5_matmul_readvariableop_resource@sequential_2_lstm_5_lstm_cell_5_matmul_1_readvariableop_resource?sequential_2_lstm_5_lstm_cell_5_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :??????????:??????????: : : : : *%
_read_only_resource_inputs
	
*1
body)R'
%sequential_2_lstm_5_while_body_181796*1
cond)R'
%sequential_2_lstm_5_while_cond_181795*M
output_shapes<
:: : : : :??????????:??????????: : : : : *
parallel_iterations 2
sequential_2/lstm_5/while?
Dsequential_2/lstm_5/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2F
Dsequential_2/lstm_5/TensorArrayV2Stack/TensorListStack/element_shape?
6sequential_2/lstm_5/TensorArrayV2Stack/TensorListStackTensorListStack"sequential_2/lstm_5/while:output:3Msequential_2/lstm_5/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????*
element_dtype028
6sequential_2/lstm_5/TensorArrayV2Stack/TensorListStack?
)sequential_2/lstm_5/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2+
)sequential_2/lstm_5/strided_slice_3/stack?
+sequential_2/lstm_5/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2-
+sequential_2/lstm_5/strided_slice_3/stack_1?
+sequential_2/lstm_5/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_2/lstm_5/strided_slice_3/stack_2?
#sequential_2/lstm_5/strided_slice_3StridedSlice?sequential_2/lstm_5/TensorArrayV2Stack/TensorListStack:tensor:02sequential_2/lstm_5/strided_slice_3/stack:output:04sequential_2/lstm_5/strided_slice_3/stack_1:output:04sequential_2/lstm_5/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2%
#sequential_2/lstm_5/strided_slice_3?
$sequential_2/lstm_5/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2&
$sequential_2/lstm_5/transpose_1/perm?
sequential_2/lstm_5/transpose_1	Transpose?sequential_2/lstm_5/TensorArrayV2Stack/TensorListStack:tensor:0-sequential_2/lstm_5/transpose_1/perm:output:0*
T0*,
_output_shapes
:??????????2!
sequential_2/lstm_5/transpose_1?
sequential_2/lstm_5/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
sequential_2/lstm_5/runtime?
*sequential_2/dense_8/MatMul/ReadVariableOpReadVariableOp3sequential_2_dense_8_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02,
*sequential_2/dense_8/MatMul/ReadVariableOp?
sequential_2/dense_8/MatMulMatMul,sequential_2/lstm_5/strided_slice_3:output:02sequential_2/dense_8/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
sequential_2/dense_8/MatMul?
+sequential_2/dense_8/BiasAdd/ReadVariableOpReadVariableOp4sequential_2_dense_8_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02-
+sequential_2/dense_8/BiasAdd/ReadVariableOp?
sequential_2/dense_8/BiasAddBiasAdd%sequential_2/dense_8/MatMul:product:03sequential_2/dense_8/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
sequential_2/dense_8/BiasAdd?
sequential_2/dense_8/LeakyRelu	LeakyRelu%sequential_2/dense_8/BiasAdd:output:0*(
_output_shapes
:??????????2 
sequential_2/dense_8/LeakyRelu?
*sequential_2/dense_9/MatMul/ReadVariableOpReadVariableOp3sequential_2_dense_9_matmul_readvariableop_resource*
_output_shapes
:	?d*
dtype02,
*sequential_2/dense_9/MatMul/ReadVariableOp?
sequential_2/dense_9/MatMulMatMul,sequential_2/dense_8/LeakyRelu:activations:02sequential_2/dense_9/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
sequential_2/dense_9/MatMul?
+sequential_2/dense_9/BiasAdd/ReadVariableOpReadVariableOp4sequential_2_dense_9_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02-
+sequential_2/dense_9/BiasAdd/ReadVariableOp?
sequential_2/dense_9/BiasAddBiasAdd%sequential_2/dense_9/MatMul:product:03sequential_2/dense_9/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
sequential_2/dense_9/BiasAdd?
sequential_2/dense_9/LeakyRelu	LeakyRelu%sequential_2/dense_9/BiasAdd:output:0*'
_output_shapes
:?????????d2 
sequential_2/dense_9/LeakyRelu?
+sequential_2/dense_10/MatMul/ReadVariableOpReadVariableOp4sequential_2_dense_10_matmul_readvariableop_resource*
_output_shapes

:d2*
dtype02-
+sequential_2/dense_10/MatMul/ReadVariableOp?
sequential_2/dense_10/MatMulMatMul,sequential_2/dense_9/LeakyRelu:activations:03sequential_2/dense_10/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????22
sequential_2/dense_10/MatMul?
,sequential_2/dense_10/BiasAdd/ReadVariableOpReadVariableOp5sequential_2_dense_10_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype02.
,sequential_2/dense_10/BiasAdd/ReadVariableOp?
sequential_2/dense_10/BiasAddBiasAdd&sequential_2/dense_10/MatMul:product:04sequential_2/dense_10/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????22
sequential_2/dense_10/BiasAdd?
sequential_2/dense_10/LeakyRelu	LeakyRelu&sequential_2/dense_10/BiasAdd:output:0*'
_output_shapes
:?????????22!
sequential_2/dense_10/LeakyRelu?
+sequential_2/dense_11/MatMul/ReadVariableOpReadVariableOp4sequential_2_dense_11_matmul_readvariableop_resource*
_output_shapes

:2*
dtype02-
+sequential_2/dense_11/MatMul/ReadVariableOp?
sequential_2/dense_11/MatMulMatMul-sequential_2/dense_10/LeakyRelu:activations:03sequential_2/dense_11/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
sequential_2/dense_11/MatMul?
,sequential_2/dense_11/BiasAdd/ReadVariableOpReadVariableOp5sequential_2_dense_11_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02.
,sequential_2/dense_11/BiasAdd/ReadVariableOp?
sequential_2/dense_11/BiasAddBiasAdd&sequential_2/dense_11/MatMul:product:04sequential_2/dense_11/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
sequential_2/dense_11/BiasAdd?
sequential_2/dense_11/LeakyRelu	LeakyRelu&sequential_2/dense_11/BiasAdd:output:0*'
_output_shapes
:?????????2!
sequential_2/dense_11/LeakyRelu?
IdentityIdentity-sequential_2/dense_11/LeakyRelu:activations:0-^sequential_2/dense_10/BiasAdd/ReadVariableOp,^sequential_2/dense_10/MatMul/ReadVariableOp-^sequential_2/dense_11/BiasAdd/ReadVariableOp,^sequential_2/dense_11/MatMul/ReadVariableOp,^sequential_2/dense_8/BiasAdd/ReadVariableOp+^sequential_2/dense_8/MatMul/ReadVariableOp,^sequential_2/dense_9/BiasAdd/ReadVariableOp+^sequential_2/dense_9/MatMul/ReadVariableOp7^sequential_2/lstm_4/lstm_cell_4/BiasAdd/ReadVariableOp6^sequential_2/lstm_4/lstm_cell_4/MatMul/ReadVariableOp8^sequential_2/lstm_4/lstm_cell_4/MatMul_1/ReadVariableOp^sequential_2/lstm_4/while7^sequential_2/lstm_5/lstm_cell_5/BiasAdd/ReadVariableOp6^sequential_2/lstm_5/lstm_cell_5/MatMul/ReadVariableOp8^sequential_2/lstm_5/lstm_cell_5/MatMul_1/ReadVariableOp^sequential_2/lstm_5/while*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*b
_input_shapesQ
O:?????????::::::::::::::2\
,sequential_2/dense_10/BiasAdd/ReadVariableOp,sequential_2/dense_10/BiasAdd/ReadVariableOp2Z
+sequential_2/dense_10/MatMul/ReadVariableOp+sequential_2/dense_10/MatMul/ReadVariableOp2\
,sequential_2/dense_11/BiasAdd/ReadVariableOp,sequential_2/dense_11/BiasAdd/ReadVariableOp2Z
+sequential_2/dense_11/MatMul/ReadVariableOp+sequential_2/dense_11/MatMul/ReadVariableOp2Z
+sequential_2/dense_8/BiasAdd/ReadVariableOp+sequential_2/dense_8/BiasAdd/ReadVariableOp2X
*sequential_2/dense_8/MatMul/ReadVariableOp*sequential_2/dense_8/MatMul/ReadVariableOp2Z
+sequential_2/dense_9/BiasAdd/ReadVariableOp+sequential_2/dense_9/BiasAdd/ReadVariableOp2X
*sequential_2/dense_9/MatMul/ReadVariableOp*sequential_2/dense_9/MatMul/ReadVariableOp2p
6sequential_2/lstm_4/lstm_cell_4/BiasAdd/ReadVariableOp6sequential_2/lstm_4/lstm_cell_4/BiasAdd/ReadVariableOp2n
5sequential_2/lstm_4/lstm_cell_4/MatMul/ReadVariableOp5sequential_2/lstm_4/lstm_cell_4/MatMul/ReadVariableOp2r
7sequential_2/lstm_4/lstm_cell_4/MatMul_1/ReadVariableOp7sequential_2/lstm_4/lstm_cell_4/MatMul_1/ReadVariableOp26
sequential_2/lstm_4/whilesequential_2/lstm_4/while2p
6sequential_2/lstm_5/lstm_cell_5/BiasAdd/ReadVariableOp6sequential_2/lstm_5/lstm_cell_5/BiasAdd/ReadVariableOp2n
5sequential_2/lstm_5/lstm_cell_5/MatMul/ReadVariableOp5sequential_2/lstm_5/lstm_cell_5/MatMul/ReadVariableOp2r
7sequential_2/lstm_5/lstm_cell_5/MatMul_1/ReadVariableOp7sequential_2/lstm_5/lstm_cell_5/MatMul_1/ReadVariableOp26
sequential_2/lstm_5/whilesequential_2/lstm_5/while:Y U
+
_output_shapes
:?????????
&
_user_specified_namelstm_4_input
?
~
)__inference_dense_11_layer_call_fn_186254

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_11_layer_call_and_return_conditional_losses_1838952
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????2::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
~
)__inference_dense_10_layer_call_fn_186234

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_10_layer_call_and_return_conditional_losses_1838682
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????22

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????d::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
'__inference_lstm_5_layer_call_fn_185835

inputs
unknown
	unknown_0
	unknown_1
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_lstm_5_layer_call_and_return_conditional_losses_1836202
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:??????????:::22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?	
?
C__inference_dense_9_layer_call_and_return_conditional_losses_186205

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?d*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:d*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2	
BiasAdd^
	LeakyRelu	LeakyReluBiasAdd:output:0*'
_output_shapes
:?????????d2
	LeakyRelu?
IdentityIdentityLeakyRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????d2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?Z
?
B__inference_lstm_5_layer_call_and_return_conditional_losses_183620

inputs.
*lstm_cell_5_matmul_readvariableop_resource0
,lstm_cell_5_matmul_1_readvariableop_resource/
+lstm_cell_5_biasadd_readvariableop_resource
identity??"lstm_cell_5/BiasAdd/ReadVariableOp?!lstm_cell_5/MatMul/ReadVariableOp?#lstm_cell_5/MatMul_1/ReadVariableOp?whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:??????????2
zerosa
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessg
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const~
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:??????????2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm{
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:??????????2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_2?
!lstm_cell_5/MatMul/ReadVariableOpReadVariableOp*lstm_cell_5_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02#
!lstm_cell_5/MatMul/ReadVariableOp?
lstm_cell_5/MatMulMatMulstrided_slice_2:output:0)lstm_cell_5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_5/MatMul?
#lstm_cell_5/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_5_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02%
#lstm_cell_5/MatMul_1/ReadVariableOp?
lstm_cell_5/MatMul_1MatMulzeros:output:0+lstm_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_5/MatMul_1?
lstm_cell_5/addAddV2lstm_cell_5/MatMul:product:0lstm_cell_5/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell_5/add?
"lstm_cell_5/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_5_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02$
"lstm_cell_5/BiasAdd/ReadVariableOp?
lstm_cell_5/BiasAddBiasAddlstm_cell_5/add:z:0*lstm_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_5/BiasAddh
lstm_cell_5/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_5/Const|
lstm_cell_5/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_5/split/split_dim?
lstm_cell_5/splitSplit$lstm_cell_5/split/split_dim:output:0lstm_cell_5/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
lstm_cell_5/split?
lstm_cell_5/SigmoidSigmoidlstm_cell_5/split:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_5/Sigmoid?
lstm_cell_5/Sigmoid_1Sigmoidlstm_cell_5/split:output:1*
T0*(
_output_shapes
:??????????2
lstm_cell_5/Sigmoid_1?
lstm_cell_5/mulMullstm_cell_5/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_5/mul?
lstm_cell_5/LeakyRelu	LeakyRelulstm_cell_5/split:output:2*(
_output_shapes
:??????????2
lstm_cell_5/LeakyRelu?
lstm_cell_5/mul_1Mullstm_cell_5/Sigmoid:y:0#lstm_cell_5/LeakyRelu:activations:0*
T0*(
_output_shapes
:??????????2
lstm_cell_5/mul_1?
lstm_cell_5/add_1AddV2lstm_cell_5/mul:z:0lstm_cell_5/mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_5/add_1?
lstm_cell_5/Sigmoid_2Sigmoidlstm_cell_5/split:output:3*
T0*(
_output_shapes
:??????????2
lstm_cell_5/Sigmoid_2?
lstm_cell_5/LeakyRelu_1	LeakyRelulstm_cell_5/add_1:z:0*(
_output_shapes
:??????????2
lstm_cell_5/LeakyRelu_1?
lstm_cell_5/mul_2Mullstm_cell_5/Sigmoid_2:y:0%lstm_cell_5/LeakyRelu_1:activations:0*
T0*(
_output_shapes
:??????????2
lstm_cell_5/mul_2?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_5_matmul_readvariableop_resource,lstm_cell_5_matmul_1_readvariableop_resource+lstm_cell_5_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :??????????:??????????: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_183535*
condR
while_cond_183534*M
output_shapes<
:: : : : :??????????:??????????: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:??????????2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime?
IdentityIdentitystrided_slice_3:output:0#^lstm_cell_5/BiasAdd/ReadVariableOp"^lstm_cell_5/MatMul/ReadVariableOp$^lstm_cell_5/MatMul_1/ReadVariableOp^while*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:??????????:::2H
"lstm_cell_5/BiasAdd/ReadVariableOp"lstm_cell_5/BiasAdd/ReadVariableOp2F
!lstm_cell_5/MatMul/ReadVariableOp!lstm_cell_5/MatMul/ReadVariableOp2J
#lstm_cell_5/MatMul_1/ReadVariableOp#lstm_cell_5/MatMul_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
%sequential_2_lstm_4_while_cond_181646D
@sequential_2_lstm_4_while_sequential_2_lstm_4_while_loop_counterJ
Fsequential_2_lstm_4_while_sequential_2_lstm_4_while_maximum_iterations)
%sequential_2_lstm_4_while_placeholder+
'sequential_2_lstm_4_while_placeholder_1+
'sequential_2_lstm_4_while_placeholder_2+
'sequential_2_lstm_4_while_placeholder_3F
Bsequential_2_lstm_4_while_less_sequential_2_lstm_4_strided_slice_1\
Xsequential_2_lstm_4_while_sequential_2_lstm_4_while_cond_181646___redundant_placeholder0\
Xsequential_2_lstm_4_while_sequential_2_lstm_4_while_cond_181646___redundant_placeholder1\
Xsequential_2_lstm_4_while_sequential_2_lstm_4_while_cond_181646___redundant_placeholder2\
Xsequential_2_lstm_4_while_sequential_2_lstm_4_while_cond_181646___redundant_placeholder3&
"sequential_2_lstm_4_while_identity
?
sequential_2/lstm_4/while/LessLess%sequential_2_lstm_4_while_placeholderBsequential_2_lstm_4_while_less_sequential_2_lstm_4_strided_slice_1*
T0*
_output_shapes
: 2 
sequential_2/lstm_4/while/Less?
"sequential_2/lstm_4/while/IdentityIdentity"sequential_2/lstm_4/while/Less:z:0*
T0
*
_output_shapes
: 2$
"sequential_2/lstm_4/while/Identity"Q
"sequential_2_lstm_4_while_identity+sequential_2/lstm_4/while/Identity:output:0*U
_input_shapesD
B: : : : :??????????:??????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?B
?
while_body_183535
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_06
2while_lstm_cell_5_matmul_readvariableop_resource_08
4while_lstm_cell_5_matmul_1_readvariableop_resource_07
3while_lstm_cell_5_biasadd_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor4
0while_lstm_cell_5_matmul_readvariableop_resource6
2while_lstm_cell_5_matmul_1_readvariableop_resource5
1while_lstm_cell_5_biasadd_readvariableop_resource??(while/lstm_cell_5/BiasAdd/ReadVariableOp?'while/lstm_cell_5/MatMul/ReadVariableOp?)while/lstm_cell_5/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
'while/lstm_cell_5/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_5_matmul_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02)
'while/lstm_cell_5/MatMul/ReadVariableOp?
while/lstm_cell_5/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_5/MatMul?
)while/lstm_cell_5/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_5_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02+
)while/lstm_cell_5/MatMul_1/ReadVariableOp?
while/lstm_cell_5/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_5/MatMul_1?
while/lstm_cell_5/addAddV2"while/lstm_cell_5/MatMul:product:0$while/lstm_cell_5/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_5/add?
(while/lstm_cell_5/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_5_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02*
(while/lstm_cell_5/BiasAdd/ReadVariableOp?
while/lstm_cell_5/BiasAddBiasAddwhile/lstm_cell_5/add:z:00while/lstm_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_5/BiasAddt
while/lstm_cell_5/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_5/Const?
!while/lstm_cell_5/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!while/lstm_cell_5/split/split_dim?
while/lstm_cell_5/splitSplit*while/lstm_cell_5/split/split_dim:output:0"while/lstm_cell_5/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
while/lstm_cell_5/split?
while/lstm_cell_5/SigmoidSigmoid while/lstm_cell_5/split:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_5/Sigmoid?
while/lstm_cell_5/Sigmoid_1Sigmoid while/lstm_cell_5/split:output:1*
T0*(
_output_shapes
:??????????2
while/lstm_cell_5/Sigmoid_1?
while/lstm_cell_5/mulMulwhile/lstm_cell_5/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:??????????2
while/lstm_cell_5/mul?
while/lstm_cell_5/LeakyRelu	LeakyRelu while/lstm_cell_5/split:output:2*(
_output_shapes
:??????????2
while/lstm_cell_5/LeakyRelu?
while/lstm_cell_5/mul_1Mulwhile/lstm_cell_5/Sigmoid:y:0)while/lstm_cell_5/LeakyRelu:activations:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_5/mul_1?
while/lstm_cell_5/add_1AddV2while/lstm_cell_5/mul:z:0while/lstm_cell_5/mul_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_5/add_1?
while/lstm_cell_5/Sigmoid_2Sigmoid while/lstm_cell_5/split:output:3*
T0*(
_output_shapes
:??????????2
while/lstm_cell_5/Sigmoid_2?
while/lstm_cell_5/LeakyRelu_1	LeakyReluwhile/lstm_cell_5/add_1:z:0*(
_output_shapes
:??????????2
while/lstm_cell_5/LeakyRelu_1?
while/lstm_cell_5/mul_2Mulwhile/lstm_cell_5/Sigmoid_2:y:0+while/lstm_cell_5/LeakyRelu_1:activations:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_5/mul_2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_5/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1?
while/IdentityIdentitywhile/add_1:z:0)^while/lstm_cell_5/BiasAdd/ReadVariableOp(^while/lstm_cell_5/MatMul/ReadVariableOp*^while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations)^while/lstm_cell_5/BiasAdd/ReadVariableOp(^while/lstm_cell_5/MatMul/ReadVariableOp*^while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0)^while/lstm_cell_5/BiasAdd/ReadVariableOp(^while/lstm_cell_5/MatMul/ReadVariableOp*^while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0)^while/lstm_cell_5/BiasAdd/ReadVariableOp(^while/lstm_cell_5/MatMul/ReadVariableOp*^while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_5/mul_2:z:0)^while/lstm_cell_5/BiasAdd/ReadVariableOp(^while/lstm_cell_5/MatMul/ReadVariableOp*^while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_5/add_1:z:0)^while/lstm_cell_5/BiasAdd/ReadVariableOp(^while/lstm_cell_5/MatMul/ReadVariableOp*^while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_5_biasadd_readvariableop_resource3while_lstm_cell_5_biasadd_readvariableop_resource_0"j
2while_lstm_cell_5_matmul_1_readvariableop_resource4while_lstm_cell_5_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_5_matmul_readvariableop_resource2while_lstm_cell_5_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*S
_input_shapesB
@: : : : :??????????:??????????: : :::2T
(while/lstm_cell_5/BiasAdd/ReadVariableOp(while/lstm_cell_5/BiasAdd/ReadVariableOp2R
'while/lstm_cell_5/MatMul/ReadVariableOp'while/lstm_cell_5/MatMul/ReadVariableOp2V
)while/lstm_cell_5/MatMul_1/ReadVariableOp)while/lstm_cell_5/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?

?
lstm_4_while_cond_184203*
&lstm_4_while_lstm_4_while_loop_counter0
,lstm_4_while_lstm_4_while_maximum_iterations
lstm_4_while_placeholder
lstm_4_while_placeholder_1
lstm_4_while_placeholder_2
lstm_4_while_placeholder_3,
(lstm_4_while_less_lstm_4_strided_slice_1B
>lstm_4_while_lstm_4_while_cond_184203___redundant_placeholder0B
>lstm_4_while_lstm_4_while_cond_184203___redundant_placeholder1B
>lstm_4_while_lstm_4_while_cond_184203___redundant_placeholder2B
>lstm_4_while_lstm_4_while_cond_184203___redundant_placeholder3
lstm_4_while_identity
?
lstm_4/while/LessLesslstm_4_while_placeholder(lstm_4_while_less_lstm_4_strided_slice_1*
T0*
_output_shapes
: 2
lstm_4/while/Lessr
lstm_4/while/IdentityIdentitylstm_4/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_4/while/Identity"7
lstm_4_while_identitylstm_4/while/Identity:output:0*U
_input_shapesD
B: : : : :??????????:??????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?
?
while_cond_182918
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_182918___redundant_placeholder04
0while_while_cond_182918___redundant_placeholder14
0while_while_cond_182918___redundant_placeholder24
0while_while_cond_182918___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*U
_input_shapesD
B: : : : :??????????:??????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?
?
G__inference_lstm_cell_5_layer_call_and_return_conditional_losses_186387

inputs
states_0
states_1"
matmul_readvariableop_resource$
 matmul_1_readvariableop_resource#
biasadd_readvariableop_resource
identity

identity_1

identity_2??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul_1/ReadVariableOp|
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
add?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
split`
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:??????????2	
Sigmoidd
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:??????????2
	Sigmoid_1]
mulMulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:??????????2
mul]
	LeakyRelu	LeakyRelusplit:output:2*(
_output_shapes
:??????????2
	LeakyRelun
mul_1MulSigmoid:y:0LeakyRelu:activations:0*
T0*(
_output_shapes
:??????????2
mul_1^
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:??????????2
add_1d
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:??????????2
	Sigmoid_2\
LeakyRelu_1	LeakyRelu	add_1:z:0*(
_output_shapes
:??????????2
LeakyRelu_1r
mul_2MulSigmoid_2:y:0LeakyRelu_1:activations:0*
T0*(
_output_shapes
:??????????2
mul_2?
IdentityIdentity	mul_2:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity?

Identity_1Identity	mul_2:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity_1?

Identity_2Identity	add_1:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*[
_input_shapesJ
H:??????????:??????????:??????????:::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs:RN
(
_output_shapes
:??????????
"
_user_specified_name
states/0:RN
(
_output_shapes
:??????????
"
_user_specified_name
states/1
?
?
while_cond_185257
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_185257___redundant_placeholder04
0while_while_cond_185257___redundant_placeholder14
0while_while_cond_185257___redundant_placeholder24
0while_while_cond_185257___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*U
_input_shapesD
B: : : : :??????????:??????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?Z
?
B__inference_lstm_4_layer_call_and_return_conditional_losses_183285

inputs.
*lstm_cell_4_matmul_readvariableop_resource0
,lstm_cell_4_matmul_1_readvariableop_resource/
+lstm_cell_4_biasadd_readvariableop_resource
identity??"lstm_cell_4/BiasAdd/ReadVariableOp?!lstm_cell_4/MatMul/ReadVariableOp?#lstm_cell_4/MatMul_1/ReadVariableOp?whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:??????????2
zerosa
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessg
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const~
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:??????????2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:?????????2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slice_2?
!lstm_cell_4/MatMul/ReadVariableOpReadVariableOp*lstm_cell_4_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02#
!lstm_cell_4/MatMul/ReadVariableOp?
lstm_cell_4/MatMulMatMulstrided_slice_2:output:0)lstm_cell_4/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_4/MatMul?
#lstm_cell_4/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_4_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02%
#lstm_cell_4/MatMul_1/ReadVariableOp?
lstm_cell_4/MatMul_1MatMulzeros:output:0+lstm_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_4/MatMul_1?
lstm_cell_4/addAddV2lstm_cell_4/MatMul:product:0lstm_cell_4/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell_4/add?
"lstm_cell_4/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_4_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02$
"lstm_cell_4/BiasAdd/ReadVariableOp?
lstm_cell_4/BiasAddBiasAddlstm_cell_4/add:z:0*lstm_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_4/BiasAddh
lstm_cell_4/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_4/Const|
lstm_cell_4/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_4/split/split_dim?
lstm_cell_4/splitSplit$lstm_cell_4/split/split_dim:output:0lstm_cell_4/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
lstm_cell_4/split?
lstm_cell_4/SigmoidSigmoidlstm_cell_4/split:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_4/Sigmoid?
lstm_cell_4/Sigmoid_1Sigmoidlstm_cell_4/split:output:1*
T0*(
_output_shapes
:??????????2
lstm_cell_4/Sigmoid_1?
lstm_cell_4/mulMullstm_cell_4/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_4/mul?
lstm_cell_4/LeakyRelu	LeakyRelulstm_cell_4/split:output:2*(
_output_shapes
:??????????2
lstm_cell_4/LeakyRelu?
lstm_cell_4/mul_1Mullstm_cell_4/Sigmoid:y:0#lstm_cell_4/LeakyRelu:activations:0*
T0*(
_output_shapes
:??????????2
lstm_cell_4/mul_1?
lstm_cell_4/add_1AddV2lstm_cell_4/mul:z:0lstm_cell_4/mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_4/add_1?
lstm_cell_4/Sigmoid_2Sigmoidlstm_cell_4/split:output:3*
T0*(
_output_shapes
:??????????2
lstm_cell_4/Sigmoid_2?
lstm_cell_4/LeakyRelu_1	LeakyRelulstm_cell_4/add_1:z:0*(
_output_shapes
:??????????2
lstm_cell_4/LeakyRelu_1?
lstm_cell_4/mul_2Mullstm_cell_4/Sigmoid_2:y:0%lstm_cell_4/LeakyRelu_1:activations:0*
T0*(
_output_shapes
:??????????2
lstm_cell_4/mul_2?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_4_matmul_readvariableop_resource,lstm_cell_4_matmul_1_readvariableop_resource+lstm_cell_4_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :??????????:??????????: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_183200*
condR
while_cond_183199*M
output_shapes<
:: : : : :??????????:??????????: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:??????????2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime?
IdentityIdentitytranspose_1:y:0#^lstm_cell_4/BiasAdd/ReadVariableOp"^lstm_cell_4/MatMul/ReadVariableOp$^lstm_cell_4/MatMul_1/ReadVariableOp^while*
T0*,
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????:::2H
"lstm_cell_4/BiasAdd/ReadVariableOp"lstm_cell_4/BiasAdd/ReadVariableOp2F
!lstm_cell_4/MatMul/ReadVariableOp!lstm_cell_4/MatMul/ReadVariableOp2J
#lstm_cell_4/MatMul_1/ReadVariableOp#lstm_cell_4/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
G__inference_lstm_cell_4_layer_call_and_return_conditional_losses_186320

inputs
states_0
states_1"
matmul_readvariableop_resource$
 matmul_1_readvariableop_resource#
biasadd_readvariableop_resource
identity

identity_1

identity_2??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul_1/ReadVariableOp|
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
add?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
split`
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:??????????2	
Sigmoidd
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:??????????2
	Sigmoid_1]
mulMulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:??????????2
mul]
	LeakyRelu	LeakyRelusplit:output:2*(
_output_shapes
:??????????2
	LeakyRelun
mul_1MulSigmoid:y:0LeakyRelu:activations:0*
T0*(
_output_shapes
:??????????2
mul_1^
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:??????????2
add_1d
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:??????????2
	Sigmoid_2\
LeakyRelu_1	LeakyRelu	add_1:z:0*(
_output_shapes
:??????????2
LeakyRelu_1r
mul_2MulSigmoid_2:y:0LeakyRelu_1:activations:0*
T0*(
_output_shapes
:??????????2
mul_2?
IdentityIdentity	mul_2:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity?

Identity_1Identity	mul_2:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity_1?

Identity_2Identity	add_1:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*Z
_input_shapesI
G:?????????:??????????:??????????:::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:RN
(
_output_shapes
:??????????
"
_user_specified_name
states/0:RN
(
_output_shapes
:??????????
"
_user_specified_name
states/1
?

?
C__inference_dense_8_layer_call_and_return_conditional_losses_183814

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAdd_
	LeakyRelu	LeakyReluBiasAdd:output:0*(
_output_shapes
:??????????2
	LeakyRelu?
IdentityIdentityLeakyRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
'__inference_lstm_4_layer_call_fn_185507

inputs
unknown
	unknown_0
	unknown_1
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_lstm_4_layer_call_and_return_conditional_losses_1832852
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*,
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????:::22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?	
?
D__inference_dense_11_layer_call_and_return_conditional_losses_186245

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdd^
	LeakyRelu	LeakyReluBiasAdd:output:0*'
_output_shapes
:?????????2
	LeakyRelu?
IdentityIdentityLeakyRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????2::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????2
 
_user_specified_nameinputs
?

?
C__inference_dense_8_layer_call_and_return_conditional_losses_186185

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAdd_
	LeakyRelu	LeakyReluBiasAdd:output:0*(
_output_shapes
:??????????2
	LeakyRelu?
IdentityIdentityLeakyRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?	
?
D__inference_dense_10_layer_call_and_return_conditional_losses_186225

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:d2*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????22
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????22	
BiasAdd^
	LeakyRelu	LeakyReluBiasAdd:output:0*'
_output_shapes
:?????????22
	LeakyRelu?
IdentityIdentityLeakyRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????22

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????d::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
G__inference_lstm_cell_5_layer_call_and_return_conditional_losses_186420

inputs
states_0
states_1"
matmul_readvariableop_resource$
 matmul_1_readvariableop_resource#
biasadd_readvariableop_resource
identity

identity_1

identity_2??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul_1/ReadVariableOp|
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
add?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
split`
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:??????????2	
Sigmoidd
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:??????????2
	Sigmoid_1]
mulMulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:??????????2
mul]
	LeakyRelu	LeakyRelusplit:output:2*(
_output_shapes
:??????????2
	LeakyRelun
mul_1MulSigmoid:y:0LeakyRelu:activations:0*
T0*(
_output_shapes
:??????????2
mul_1^
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:??????????2
add_1d
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:??????????2
	Sigmoid_2\
LeakyRelu_1	LeakyRelu	add_1:z:0*(
_output_shapes
:??????????2
LeakyRelu_1r
mul_2MulSigmoid_2:y:0LeakyRelu_1:activations:0*
T0*(
_output_shapes
:??????????2
mul_2?
IdentityIdentity	mul_2:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity?

Identity_1Identity	mul_2:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity_1?

Identity_2Identity	add_1:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*[
_input_shapesJ
H:??????????:??????????:??????????:::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs:RN
(
_output_shapes
:??????????
"
_user_specified_name
states/0:RN
(
_output_shapes
:??????????
"
_user_specified_name
states/1
?M
?	
lstm_4_while_body_184204*
&lstm_4_while_lstm_4_while_loop_counter0
,lstm_4_while_lstm_4_while_maximum_iterations
lstm_4_while_placeholder
lstm_4_while_placeholder_1
lstm_4_while_placeholder_2
lstm_4_while_placeholder_3)
%lstm_4_while_lstm_4_strided_slice_1_0e
alstm_4_while_tensorarrayv2read_tensorlistgetitem_lstm_4_tensorarrayunstack_tensorlistfromtensor_0=
9lstm_4_while_lstm_cell_4_matmul_readvariableop_resource_0?
;lstm_4_while_lstm_cell_4_matmul_1_readvariableop_resource_0>
:lstm_4_while_lstm_cell_4_biasadd_readvariableop_resource_0
lstm_4_while_identity
lstm_4_while_identity_1
lstm_4_while_identity_2
lstm_4_while_identity_3
lstm_4_while_identity_4
lstm_4_while_identity_5'
#lstm_4_while_lstm_4_strided_slice_1c
_lstm_4_while_tensorarrayv2read_tensorlistgetitem_lstm_4_tensorarrayunstack_tensorlistfromtensor;
7lstm_4_while_lstm_cell_4_matmul_readvariableop_resource=
9lstm_4_while_lstm_cell_4_matmul_1_readvariableop_resource<
8lstm_4_while_lstm_cell_4_biasadd_readvariableop_resource??/lstm_4/while/lstm_cell_4/BiasAdd/ReadVariableOp?.lstm_4/while/lstm_cell_4/MatMul/ReadVariableOp?0lstm_4/while/lstm_cell_4/MatMul_1/ReadVariableOp?
>lstm_4/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2@
>lstm_4/while/TensorArrayV2Read/TensorListGetItem/element_shape?
0lstm_4/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemalstm_4_while_tensorarrayv2read_tensorlistgetitem_lstm_4_tensorarrayunstack_tensorlistfromtensor_0lstm_4_while_placeholderGlstm_4/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype022
0lstm_4/while/TensorArrayV2Read/TensorListGetItem?
.lstm_4/while/lstm_cell_4/MatMul/ReadVariableOpReadVariableOp9lstm_4_while_lstm_cell_4_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype020
.lstm_4/while/lstm_cell_4/MatMul/ReadVariableOp?
lstm_4/while/lstm_cell_4/MatMulMatMul7lstm_4/while/TensorArrayV2Read/TensorListGetItem:item:06lstm_4/while/lstm_cell_4/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2!
lstm_4/while/lstm_cell_4/MatMul?
0lstm_4/while/lstm_cell_4/MatMul_1/ReadVariableOpReadVariableOp;lstm_4_while_lstm_cell_4_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype022
0lstm_4/while/lstm_cell_4/MatMul_1/ReadVariableOp?
!lstm_4/while/lstm_cell_4/MatMul_1MatMullstm_4_while_placeholder_28lstm_4/while/lstm_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2#
!lstm_4/while/lstm_cell_4/MatMul_1?
lstm_4/while/lstm_cell_4/addAddV2)lstm_4/while/lstm_cell_4/MatMul:product:0+lstm_4/while/lstm_cell_4/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_4/while/lstm_cell_4/add?
/lstm_4/while/lstm_cell_4/BiasAdd/ReadVariableOpReadVariableOp:lstm_4_while_lstm_cell_4_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype021
/lstm_4/while/lstm_cell_4/BiasAdd/ReadVariableOp?
 lstm_4/while/lstm_cell_4/BiasAddBiasAdd lstm_4/while/lstm_cell_4/add:z:07lstm_4/while/lstm_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2"
 lstm_4/while/lstm_cell_4/BiasAdd?
lstm_4/while/lstm_cell_4/ConstConst*
_output_shapes
: *
dtype0*
value	B :2 
lstm_4/while/lstm_cell_4/Const?
(lstm_4/while/lstm_cell_4/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2*
(lstm_4/while/lstm_cell_4/split/split_dim?
lstm_4/while/lstm_cell_4/splitSplit1lstm_4/while/lstm_cell_4/split/split_dim:output:0)lstm_4/while/lstm_cell_4/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2 
lstm_4/while/lstm_cell_4/split?
 lstm_4/while/lstm_cell_4/SigmoidSigmoid'lstm_4/while/lstm_cell_4/split:output:0*
T0*(
_output_shapes
:??????????2"
 lstm_4/while/lstm_cell_4/Sigmoid?
"lstm_4/while/lstm_cell_4/Sigmoid_1Sigmoid'lstm_4/while/lstm_cell_4/split:output:1*
T0*(
_output_shapes
:??????????2$
"lstm_4/while/lstm_cell_4/Sigmoid_1?
lstm_4/while/lstm_cell_4/mulMul&lstm_4/while/lstm_cell_4/Sigmoid_1:y:0lstm_4_while_placeholder_3*
T0*(
_output_shapes
:??????????2
lstm_4/while/lstm_cell_4/mul?
"lstm_4/while/lstm_cell_4/LeakyRelu	LeakyRelu'lstm_4/while/lstm_cell_4/split:output:2*(
_output_shapes
:??????????2$
"lstm_4/while/lstm_cell_4/LeakyRelu?
lstm_4/while/lstm_cell_4/mul_1Mul$lstm_4/while/lstm_cell_4/Sigmoid:y:00lstm_4/while/lstm_cell_4/LeakyRelu:activations:0*
T0*(
_output_shapes
:??????????2 
lstm_4/while/lstm_cell_4/mul_1?
lstm_4/while/lstm_cell_4/add_1AddV2 lstm_4/while/lstm_cell_4/mul:z:0"lstm_4/while/lstm_cell_4/mul_1:z:0*
T0*(
_output_shapes
:??????????2 
lstm_4/while/lstm_cell_4/add_1?
"lstm_4/while/lstm_cell_4/Sigmoid_2Sigmoid'lstm_4/while/lstm_cell_4/split:output:3*
T0*(
_output_shapes
:??????????2$
"lstm_4/while/lstm_cell_4/Sigmoid_2?
$lstm_4/while/lstm_cell_4/LeakyRelu_1	LeakyRelu"lstm_4/while/lstm_cell_4/add_1:z:0*(
_output_shapes
:??????????2&
$lstm_4/while/lstm_cell_4/LeakyRelu_1?
lstm_4/while/lstm_cell_4/mul_2Mul&lstm_4/while/lstm_cell_4/Sigmoid_2:y:02lstm_4/while/lstm_cell_4/LeakyRelu_1:activations:0*
T0*(
_output_shapes
:??????????2 
lstm_4/while/lstm_cell_4/mul_2?
1lstm_4/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_4_while_placeholder_1lstm_4_while_placeholder"lstm_4/while/lstm_cell_4/mul_2:z:0*
_output_shapes
: *
element_dtype023
1lstm_4/while/TensorArrayV2Write/TensorListSetItemj
lstm_4/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_4/while/add/y?
lstm_4/while/addAddV2lstm_4_while_placeholderlstm_4/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_4/while/addn
lstm_4/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_4/while/add_1/y?
lstm_4/while/add_1AddV2&lstm_4_while_lstm_4_while_loop_counterlstm_4/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_4/while/add_1?
lstm_4/while/IdentityIdentitylstm_4/while/add_1:z:00^lstm_4/while/lstm_cell_4/BiasAdd/ReadVariableOp/^lstm_4/while/lstm_cell_4/MatMul/ReadVariableOp1^lstm_4/while/lstm_cell_4/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_4/while/Identity?
lstm_4/while/Identity_1Identity,lstm_4_while_lstm_4_while_maximum_iterations0^lstm_4/while/lstm_cell_4/BiasAdd/ReadVariableOp/^lstm_4/while/lstm_cell_4/MatMul/ReadVariableOp1^lstm_4/while/lstm_cell_4/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_4/while/Identity_1?
lstm_4/while/Identity_2Identitylstm_4/while/add:z:00^lstm_4/while/lstm_cell_4/BiasAdd/ReadVariableOp/^lstm_4/while/lstm_cell_4/MatMul/ReadVariableOp1^lstm_4/while/lstm_cell_4/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_4/while/Identity_2?
lstm_4/while/Identity_3IdentityAlstm_4/while/TensorArrayV2Write/TensorListSetItem:output_handle:00^lstm_4/while/lstm_cell_4/BiasAdd/ReadVariableOp/^lstm_4/while/lstm_cell_4/MatMul/ReadVariableOp1^lstm_4/while/lstm_cell_4/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_4/while/Identity_3?
lstm_4/while/Identity_4Identity"lstm_4/while/lstm_cell_4/mul_2:z:00^lstm_4/while/lstm_cell_4/BiasAdd/ReadVariableOp/^lstm_4/while/lstm_cell_4/MatMul/ReadVariableOp1^lstm_4/while/lstm_cell_4/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2
lstm_4/while/Identity_4?
lstm_4/while/Identity_5Identity"lstm_4/while/lstm_cell_4/add_1:z:00^lstm_4/while/lstm_cell_4/BiasAdd/ReadVariableOp/^lstm_4/while/lstm_cell_4/MatMul/ReadVariableOp1^lstm_4/while/lstm_cell_4/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2
lstm_4/while/Identity_5"7
lstm_4_while_identitylstm_4/while/Identity:output:0";
lstm_4_while_identity_1 lstm_4/while/Identity_1:output:0";
lstm_4_while_identity_2 lstm_4/while/Identity_2:output:0";
lstm_4_while_identity_3 lstm_4/while/Identity_3:output:0";
lstm_4_while_identity_4 lstm_4/while/Identity_4:output:0";
lstm_4_while_identity_5 lstm_4/while/Identity_5:output:0"L
#lstm_4_while_lstm_4_strided_slice_1%lstm_4_while_lstm_4_strided_slice_1_0"v
8lstm_4_while_lstm_cell_4_biasadd_readvariableop_resource:lstm_4_while_lstm_cell_4_biasadd_readvariableop_resource_0"x
9lstm_4_while_lstm_cell_4_matmul_1_readvariableop_resource;lstm_4_while_lstm_cell_4_matmul_1_readvariableop_resource_0"t
7lstm_4_while_lstm_cell_4_matmul_readvariableop_resource9lstm_4_while_lstm_cell_4_matmul_readvariableop_resource_0"?
_lstm_4_while_tensorarrayv2read_tensorlistgetitem_lstm_4_tensorarrayunstack_tensorlistfromtensoralstm_4_while_tensorarrayv2read_tensorlistgetitem_lstm_4_tensorarrayunstack_tensorlistfromtensor_0*S
_input_shapesB
@: : : : :??????????:??????????: : :::2b
/lstm_4/while/lstm_cell_4/BiasAdd/ReadVariableOp/lstm_4/while/lstm_cell_4/BiasAdd/ReadVariableOp2`
.lstm_4/while/lstm_cell_4/MatMul/ReadVariableOp.lstm_4/while/lstm_cell_4/MatMul/ReadVariableOp2d
0lstm_4/while/lstm_cell_4/MatMul_1/ReadVariableOp0lstm_4/while/lstm_cell_4/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
??
?

H__inference_sequential_2_layer_call_and_return_conditional_losses_184466

inputs5
1lstm_4_lstm_cell_4_matmul_readvariableop_resource7
3lstm_4_lstm_cell_4_matmul_1_readvariableop_resource6
2lstm_4_lstm_cell_4_biasadd_readvariableop_resource5
1lstm_5_lstm_cell_5_matmul_readvariableop_resource7
3lstm_5_lstm_cell_5_matmul_1_readvariableop_resource6
2lstm_5_lstm_cell_5_biasadd_readvariableop_resource*
&dense_8_matmul_readvariableop_resource+
'dense_8_biasadd_readvariableop_resource*
&dense_9_matmul_readvariableop_resource+
'dense_9_biasadd_readvariableop_resource+
'dense_10_matmul_readvariableop_resource,
(dense_10_biasadd_readvariableop_resource+
'dense_11_matmul_readvariableop_resource,
(dense_11_biasadd_readvariableop_resource
identity??dense_10/BiasAdd/ReadVariableOp?dense_10/MatMul/ReadVariableOp?dense_11/BiasAdd/ReadVariableOp?dense_11/MatMul/ReadVariableOp?dense_8/BiasAdd/ReadVariableOp?dense_8/MatMul/ReadVariableOp?dense_9/BiasAdd/ReadVariableOp?dense_9/MatMul/ReadVariableOp?)lstm_4/lstm_cell_4/BiasAdd/ReadVariableOp?(lstm_4/lstm_cell_4/MatMul/ReadVariableOp?*lstm_4/lstm_cell_4/MatMul_1/ReadVariableOp?lstm_4/while?)lstm_5/lstm_cell_5/BiasAdd/ReadVariableOp?(lstm_5/lstm_cell_5/MatMul/ReadVariableOp?*lstm_5/lstm_cell_5/MatMul_1/ReadVariableOp?lstm_5/whileR
lstm_4/ShapeShapeinputs*
T0*
_output_shapes
:2
lstm_4/Shape?
lstm_4/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_4/strided_slice/stack?
lstm_4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_4/strided_slice/stack_1?
lstm_4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_4/strided_slice/stack_2?
lstm_4/strided_sliceStridedSlicelstm_4/Shape:output:0#lstm_4/strided_slice/stack:output:0%lstm_4/strided_slice/stack_1:output:0%lstm_4/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_4/strided_slicek
lstm_4/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm_4/zeros/mul/y?
lstm_4/zeros/mulMullstm_4/strided_slice:output:0lstm_4/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_4/zeros/mulm
lstm_4/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm_4/zeros/Less/y?
lstm_4/zeros/LessLesslstm_4/zeros/mul:z:0lstm_4/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_4/zeros/Lessq
lstm_4/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
lstm_4/zeros/packed/1?
lstm_4/zeros/packedPacklstm_4/strided_slice:output:0lstm_4/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_4/zeros/packedm
lstm_4/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_4/zeros/Const?
lstm_4/zerosFilllstm_4/zeros/packed:output:0lstm_4/zeros/Const:output:0*
T0*(
_output_shapes
:??????????2
lstm_4/zeroso
lstm_4/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm_4/zeros_1/mul/y?
lstm_4/zeros_1/mulMullstm_4/strided_slice:output:0lstm_4/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_4/zeros_1/mulq
lstm_4/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm_4/zeros_1/Less/y?
lstm_4/zeros_1/LessLesslstm_4/zeros_1/mul:z:0lstm_4/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_4/zeros_1/Lessu
lstm_4/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
lstm_4/zeros_1/packed/1?
lstm_4/zeros_1/packedPacklstm_4/strided_slice:output:0 lstm_4/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_4/zeros_1/packedq
lstm_4/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_4/zeros_1/Const?
lstm_4/zeros_1Filllstm_4/zeros_1/packed:output:0lstm_4/zeros_1/Const:output:0*
T0*(
_output_shapes
:??????????2
lstm_4/zeros_1?
lstm_4/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_4/transpose/perm?
lstm_4/transpose	Transposeinputslstm_4/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2
lstm_4/transposed
lstm_4/Shape_1Shapelstm_4/transpose:y:0*
T0*
_output_shapes
:2
lstm_4/Shape_1?
lstm_4/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_4/strided_slice_1/stack?
lstm_4/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_4/strided_slice_1/stack_1?
lstm_4/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_4/strided_slice_1/stack_2?
lstm_4/strided_slice_1StridedSlicelstm_4/Shape_1:output:0%lstm_4/strided_slice_1/stack:output:0'lstm_4/strided_slice_1/stack_1:output:0'lstm_4/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_4/strided_slice_1?
"lstm_4/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2$
"lstm_4/TensorArrayV2/element_shape?
lstm_4/TensorArrayV2TensorListReserve+lstm_4/TensorArrayV2/element_shape:output:0lstm_4/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_4/TensorArrayV2?
<lstm_4/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2>
<lstm_4/TensorArrayUnstack/TensorListFromTensor/element_shape?
.lstm_4/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_4/transpose:y:0Elstm_4/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type020
.lstm_4/TensorArrayUnstack/TensorListFromTensor?
lstm_4/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_4/strided_slice_2/stack?
lstm_4/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_4/strided_slice_2/stack_1?
lstm_4/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_4/strided_slice_2/stack_2?
lstm_4/strided_slice_2StridedSlicelstm_4/transpose:y:0%lstm_4/strided_slice_2/stack:output:0'lstm_4/strided_slice_2/stack_1:output:0'lstm_4/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
lstm_4/strided_slice_2?
(lstm_4/lstm_cell_4/MatMul/ReadVariableOpReadVariableOp1lstm_4_lstm_cell_4_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02*
(lstm_4/lstm_cell_4/MatMul/ReadVariableOp?
lstm_4/lstm_cell_4/MatMulMatMullstm_4/strided_slice_2:output:00lstm_4/lstm_cell_4/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_4/lstm_cell_4/MatMul?
*lstm_4/lstm_cell_4/MatMul_1/ReadVariableOpReadVariableOp3lstm_4_lstm_cell_4_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02,
*lstm_4/lstm_cell_4/MatMul_1/ReadVariableOp?
lstm_4/lstm_cell_4/MatMul_1MatMullstm_4/zeros:output:02lstm_4/lstm_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_4/lstm_cell_4/MatMul_1?
lstm_4/lstm_cell_4/addAddV2#lstm_4/lstm_cell_4/MatMul:product:0%lstm_4/lstm_cell_4/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_4/lstm_cell_4/add?
)lstm_4/lstm_cell_4/BiasAdd/ReadVariableOpReadVariableOp2lstm_4_lstm_cell_4_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02+
)lstm_4/lstm_cell_4/BiasAdd/ReadVariableOp?
lstm_4/lstm_cell_4/BiasAddBiasAddlstm_4/lstm_cell_4/add:z:01lstm_4/lstm_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_4/lstm_cell_4/BiasAddv
lstm_4/lstm_cell_4/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_4/lstm_cell_4/Const?
"lstm_4/lstm_cell_4/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"lstm_4/lstm_cell_4/split/split_dim?
lstm_4/lstm_cell_4/splitSplit+lstm_4/lstm_cell_4/split/split_dim:output:0#lstm_4/lstm_cell_4/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
lstm_4/lstm_cell_4/split?
lstm_4/lstm_cell_4/SigmoidSigmoid!lstm_4/lstm_cell_4/split:output:0*
T0*(
_output_shapes
:??????????2
lstm_4/lstm_cell_4/Sigmoid?
lstm_4/lstm_cell_4/Sigmoid_1Sigmoid!lstm_4/lstm_cell_4/split:output:1*
T0*(
_output_shapes
:??????????2
lstm_4/lstm_cell_4/Sigmoid_1?
lstm_4/lstm_cell_4/mulMul lstm_4/lstm_cell_4/Sigmoid_1:y:0lstm_4/zeros_1:output:0*
T0*(
_output_shapes
:??????????2
lstm_4/lstm_cell_4/mul?
lstm_4/lstm_cell_4/LeakyRelu	LeakyRelu!lstm_4/lstm_cell_4/split:output:2*(
_output_shapes
:??????????2
lstm_4/lstm_cell_4/LeakyRelu?
lstm_4/lstm_cell_4/mul_1Mullstm_4/lstm_cell_4/Sigmoid:y:0*lstm_4/lstm_cell_4/LeakyRelu:activations:0*
T0*(
_output_shapes
:??????????2
lstm_4/lstm_cell_4/mul_1?
lstm_4/lstm_cell_4/add_1AddV2lstm_4/lstm_cell_4/mul:z:0lstm_4/lstm_cell_4/mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_4/lstm_cell_4/add_1?
lstm_4/lstm_cell_4/Sigmoid_2Sigmoid!lstm_4/lstm_cell_4/split:output:3*
T0*(
_output_shapes
:??????????2
lstm_4/lstm_cell_4/Sigmoid_2?
lstm_4/lstm_cell_4/LeakyRelu_1	LeakyRelulstm_4/lstm_cell_4/add_1:z:0*(
_output_shapes
:??????????2 
lstm_4/lstm_cell_4/LeakyRelu_1?
lstm_4/lstm_cell_4/mul_2Mul lstm_4/lstm_cell_4/Sigmoid_2:y:0,lstm_4/lstm_cell_4/LeakyRelu_1:activations:0*
T0*(
_output_shapes
:??????????2
lstm_4/lstm_cell_4/mul_2?
$lstm_4/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2&
$lstm_4/TensorArrayV2_1/element_shape?
lstm_4/TensorArrayV2_1TensorListReserve-lstm_4/TensorArrayV2_1/element_shape:output:0lstm_4/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_4/TensorArrayV2_1\
lstm_4/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_4/time?
lstm_4/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2!
lstm_4/while/maximum_iterationsx
lstm_4/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_4/while/loop_counter?
lstm_4/whileWhile"lstm_4/while/loop_counter:output:0(lstm_4/while/maximum_iterations:output:0lstm_4/time:output:0lstm_4/TensorArrayV2_1:handle:0lstm_4/zeros:output:0lstm_4/zeros_1:output:0lstm_4/strided_slice_1:output:0>lstm_4/TensorArrayUnstack/TensorListFromTensor:output_handle:01lstm_4_lstm_cell_4_matmul_readvariableop_resource3lstm_4_lstm_cell_4_matmul_1_readvariableop_resource2lstm_4_lstm_cell_4_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :??????????:??????????: : : : : *%
_read_only_resource_inputs
	
*$
bodyR
lstm_4_while_body_184204*$
condR
lstm_4_while_cond_184203*M
output_shapes<
:: : : : :??????????:??????????: : : : : *
parallel_iterations 2
lstm_4/while?
7lstm_4/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   29
7lstm_4/TensorArrayV2Stack/TensorListStack/element_shape?
)lstm_4/TensorArrayV2Stack/TensorListStackTensorListStacklstm_4/while:output:3@lstm_4/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????*
element_dtype02+
)lstm_4/TensorArrayV2Stack/TensorListStack?
lstm_4/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
lstm_4/strided_slice_3/stack?
lstm_4/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2 
lstm_4/strided_slice_3/stack_1?
lstm_4/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_4/strided_slice_3/stack_2?
lstm_4/strided_slice_3StridedSlice2lstm_4/TensorArrayV2Stack/TensorListStack:tensor:0%lstm_4/strided_slice_3/stack:output:0'lstm_4/strided_slice_3/stack_1:output:0'lstm_4/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
lstm_4/strided_slice_3?
lstm_4/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_4/transpose_1/perm?
lstm_4/transpose_1	Transpose2lstm_4/TensorArrayV2Stack/TensorListStack:tensor:0 lstm_4/transpose_1/perm:output:0*
T0*,
_output_shapes
:??????????2
lstm_4/transpose_1t
lstm_4/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_4/runtimeb
lstm_5/ShapeShapelstm_4/transpose_1:y:0*
T0*
_output_shapes
:2
lstm_5/Shape?
lstm_5/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_5/strided_slice/stack?
lstm_5/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_5/strided_slice/stack_1?
lstm_5/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_5/strided_slice/stack_2?
lstm_5/strided_sliceStridedSlicelstm_5/Shape:output:0#lstm_5/strided_slice/stack:output:0%lstm_5/strided_slice/stack_1:output:0%lstm_5/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_5/strided_slicek
lstm_5/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm_5/zeros/mul/y?
lstm_5/zeros/mulMullstm_5/strided_slice:output:0lstm_5/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_5/zeros/mulm
lstm_5/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm_5/zeros/Less/y?
lstm_5/zeros/LessLesslstm_5/zeros/mul:z:0lstm_5/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_5/zeros/Lessq
lstm_5/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
lstm_5/zeros/packed/1?
lstm_5/zeros/packedPacklstm_5/strided_slice:output:0lstm_5/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_5/zeros/packedm
lstm_5/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_5/zeros/Const?
lstm_5/zerosFilllstm_5/zeros/packed:output:0lstm_5/zeros/Const:output:0*
T0*(
_output_shapes
:??????????2
lstm_5/zeroso
lstm_5/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm_5/zeros_1/mul/y?
lstm_5/zeros_1/mulMullstm_5/strided_slice:output:0lstm_5/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_5/zeros_1/mulq
lstm_5/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm_5/zeros_1/Less/y?
lstm_5/zeros_1/LessLesslstm_5/zeros_1/mul:z:0lstm_5/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_5/zeros_1/Lessu
lstm_5/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
lstm_5/zeros_1/packed/1?
lstm_5/zeros_1/packedPacklstm_5/strided_slice:output:0 lstm_5/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_5/zeros_1/packedq
lstm_5/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_5/zeros_1/Const?
lstm_5/zeros_1Filllstm_5/zeros_1/packed:output:0lstm_5/zeros_1/Const:output:0*
T0*(
_output_shapes
:??????????2
lstm_5/zeros_1?
lstm_5/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_5/transpose/perm?
lstm_5/transpose	Transposelstm_4/transpose_1:y:0lstm_5/transpose/perm:output:0*
T0*,
_output_shapes
:??????????2
lstm_5/transposed
lstm_5/Shape_1Shapelstm_5/transpose:y:0*
T0*
_output_shapes
:2
lstm_5/Shape_1?
lstm_5/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_5/strided_slice_1/stack?
lstm_5/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_5/strided_slice_1/stack_1?
lstm_5/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_5/strided_slice_1/stack_2?
lstm_5/strided_slice_1StridedSlicelstm_5/Shape_1:output:0%lstm_5/strided_slice_1/stack:output:0'lstm_5/strided_slice_1/stack_1:output:0'lstm_5/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_5/strided_slice_1?
"lstm_5/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2$
"lstm_5/TensorArrayV2/element_shape?
lstm_5/TensorArrayV2TensorListReserve+lstm_5/TensorArrayV2/element_shape:output:0lstm_5/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_5/TensorArrayV2?
<lstm_5/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2>
<lstm_5/TensorArrayUnstack/TensorListFromTensor/element_shape?
.lstm_5/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_5/transpose:y:0Elstm_5/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type020
.lstm_5/TensorArrayUnstack/TensorListFromTensor?
lstm_5/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_5/strided_slice_2/stack?
lstm_5/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_5/strided_slice_2/stack_1?
lstm_5/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_5/strided_slice_2/stack_2?
lstm_5/strided_slice_2StridedSlicelstm_5/transpose:y:0%lstm_5/strided_slice_2/stack:output:0'lstm_5/strided_slice_2/stack_1:output:0'lstm_5/strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
lstm_5/strided_slice_2?
(lstm_5/lstm_cell_5/MatMul/ReadVariableOpReadVariableOp1lstm_5_lstm_cell_5_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02*
(lstm_5/lstm_cell_5/MatMul/ReadVariableOp?
lstm_5/lstm_cell_5/MatMulMatMullstm_5/strided_slice_2:output:00lstm_5/lstm_cell_5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_5/lstm_cell_5/MatMul?
*lstm_5/lstm_cell_5/MatMul_1/ReadVariableOpReadVariableOp3lstm_5_lstm_cell_5_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02,
*lstm_5/lstm_cell_5/MatMul_1/ReadVariableOp?
lstm_5/lstm_cell_5/MatMul_1MatMullstm_5/zeros:output:02lstm_5/lstm_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_5/lstm_cell_5/MatMul_1?
lstm_5/lstm_cell_5/addAddV2#lstm_5/lstm_cell_5/MatMul:product:0%lstm_5/lstm_cell_5/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_5/lstm_cell_5/add?
)lstm_5/lstm_cell_5/BiasAdd/ReadVariableOpReadVariableOp2lstm_5_lstm_cell_5_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02+
)lstm_5/lstm_cell_5/BiasAdd/ReadVariableOp?
lstm_5/lstm_cell_5/BiasAddBiasAddlstm_5/lstm_cell_5/add:z:01lstm_5/lstm_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_5/lstm_cell_5/BiasAddv
lstm_5/lstm_cell_5/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_5/lstm_cell_5/Const?
"lstm_5/lstm_cell_5/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"lstm_5/lstm_cell_5/split/split_dim?
lstm_5/lstm_cell_5/splitSplit+lstm_5/lstm_cell_5/split/split_dim:output:0#lstm_5/lstm_cell_5/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
lstm_5/lstm_cell_5/split?
lstm_5/lstm_cell_5/SigmoidSigmoid!lstm_5/lstm_cell_5/split:output:0*
T0*(
_output_shapes
:??????????2
lstm_5/lstm_cell_5/Sigmoid?
lstm_5/lstm_cell_5/Sigmoid_1Sigmoid!lstm_5/lstm_cell_5/split:output:1*
T0*(
_output_shapes
:??????????2
lstm_5/lstm_cell_5/Sigmoid_1?
lstm_5/lstm_cell_5/mulMul lstm_5/lstm_cell_5/Sigmoid_1:y:0lstm_5/zeros_1:output:0*
T0*(
_output_shapes
:??????????2
lstm_5/lstm_cell_5/mul?
lstm_5/lstm_cell_5/LeakyRelu	LeakyRelu!lstm_5/lstm_cell_5/split:output:2*(
_output_shapes
:??????????2
lstm_5/lstm_cell_5/LeakyRelu?
lstm_5/lstm_cell_5/mul_1Mullstm_5/lstm_cell_5/Sigmoid:y:0*lstm_5/lstm_cell_5/LeakyRelu:activations:0*
T0*(
_output_shapes
:??????????2
lstm_5/lstm_cell_5/mul_1?
lstm_5/lstm_cell_5/add_1AddV2lstm_5/lstm_cell_5/mul:z:0lstm_5/lstm_cell_5/mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_5/lstm_cell_5/add_1?
lstm_5/lstm_cell_5/Sigmoid_2Sigmoid!lstm_5/lstm_cell_5/split:output:3*
T0*(
_output_shapes
:??????????2
lstm_5/lstm_cell_5/Sigmoid_2?
lstm_5/lstm_cell_5/LeakyRelu_1	LeakyRelulstm_5/lstm_cell_5/add_1:z:0*(
_output_shapes
:??????????2 
lstm_5/lstm_cell_5/LeakyRelu_1?
lstm_5/lstm_cell_5/mul_2Mul lstm_5/lstm_cell_5/Sigmoid_2:y:0,lstm_5/lstm_cell_5/LeakyRelu_1:activations:0*
T0*(
_output_shapes
:??????????2
lstm_5/lstm_cell_5/mul_2?
$lstm_5/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2&
$lstm_5/TensorArrayV2_1/element_shape?
lstm_5/TensorArrayV2_1TensorListReserve-lstm_5/TensorArrayV2_1/element_shape:output:0lstm_5/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_5/TensorArrayV2_1\
lstm_5/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_5/time?
lstm_5/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2!
lstm_5/while/maximum_iterationsx
lstm_5/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_5/while/loop_counter?
lstm_5/whileWhile"lstm_5/while/loop_counter:output:0(lstm_5/while/maximum_iterations:output:0lstm_5/time:output:0lstm_5/TensorArrayV2_1:handle:0lstm_5/zeros:output:0lstm_5/zeros_1:output:0lstm_5/strided_slice_1:output:0>lstm_5/TensorArrayUnstack/TensorListFromTensor:output_handle:01lstm_5_lstm_cell_5_matmul_readvariableop_resource3lstm_5_lstm_cell_5_matmul_1_readvariableop_resource2lstm_5_lstm_cell_5_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :??????????:??????????: : : : : *%
_read_only_resource_inputs
	
*$
bodyR
lstm_5_while_body_184353*$
condR
lstm_5_while_cond_184352*M
output_shapes<
:: : : : :??????????:??????????: : : : : *
parallel_iterations 2
lstm_5/while?
7lstm_5/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   29
7lstm_5/TensorArrayV2Stack/TensorListStack/element_shape?
)lstm_5/TensorArrayV2Stack/TensorListStackTensorListStacklstm_5/while:output:3@lstm_5/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????*
element_dtype02+
)lstm_5/TensorArrayV2Stack/TensorListStack?
lstm_5/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
lstm_5/strided_slice_3/stack?
lstm_5/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2 
lstm_5/strided_slice_3/stack_1?
lstm_5/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_5/strided_slice_3/stack_2?
lstm_5/strided_slice_3StridedSlice2lstm_5/TensorArrayV2Stack/TensorListStack:tensor:0%lstm_5/strided_slice_3/stack:output:0'lstm_5/strided_slice_3/stack_1:output:0'lstm_5/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
lstm_5/strided_slice_3?
lstm_5/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_5/transpose_1/perm?
lstm_5/transpose_1	Transpose2lstm_5/TensorArrayV2Stack/TensorListStack:tensor:0 lstm_5/transpose_1/perm:output:0*
T0*,
_output_shapes
:??????????2
lstm_5/transpose_1t
lstm_5/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_5/runtime?
dense_8/MatMul/ReadVariableOpReadVariableOp&dense_8_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
dense_8/MatMul/ReadVariableOp?
dense_8/MatMulMatMullstm_5/strided_slice_3:output:0%dense_8/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_8/MatMul?
dense_8/BiasAdd/ReadVariableOpReadVariableOp'dense_8_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02 
dense_8/BiasAdd/ReadVariableOp?
dense_8/BiasAddBiasAdddense_8/MatMul:product:0&dense_8/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_8/BiasAddw
dense_8/LeakyRelu	LeakyReludense_8/BiasAdd:output:0*(
_output_shapes
:??????????2
dense_8/LeakyRelu?
dense_9/MatMul/ReadVariableOpReadVariableOp&dense_9_matmul_readvariableop_resource*
_output_shapes
:	?d*
dtype02
dense_9/MatMul/ReadVariableOp?
dense_9/MatMulMatMuldense_8/LeakyRelu:activations:0%dense_9/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
dense_9/MatMul?
dense_9/BiasAdd/ReadVariableOpReadVariableOp'dense_9_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02 
dense_9/BiasAdd/ReadVariableOp?
dense_9/BiasAddBiasAdddense_9/MatMul:product:0&dense_9/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
dense_9/BiasAddv
dense_9/LeakyRelu	LeakyReludense_9/BiasAdd:output:0*'
_output_shapes
:?????????d2
dense_9/LeakyRelu?
dense_10/MatMul/ReadVariableOpReadVariableOp'dense_10_matmul_readvariableop_resource*
_output_shapes

:d2*
dtype02 
dense_10/MatMul/ReadVariableOp?
dense_10/MatMulMatMuldense_9/LeakyRelu:activations:0&dense_10/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????22
dense_10/MatMul?
dense_10/BiasAdd/ReadVariableOpReadVariableOp(dense_10_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype02!
dense_10/BiasAdd/ReadVariableOp?
dense_10/BiasAddBiasAdddense_10/MatMul:product:0'dense_10/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????22
dense_10/BiasAddy
dense_10/LeakyRelu	LeakyReludense_10/BiasAdd:output:0*'
_output_shapes
:?????????22
dense_10/LeakyRelu?
dense_11/MatMul/ReadVariableOpReadVariableOp'dense_11_matmul_readvariableop_resource*
_output_shapes

:2*
dtype02 
dense_11/MatMul/ReadVariableOp?
dense_11/MatMulMatMul dense_10/LeakyRelu:activations:0&dense_11/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_11/MatMul?
dense_11/BiasAdd/ReadVariableOpReadVariableOp(dense_11_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_11/BiasAdd/ReadVariableOp?
dense_11/BiasAddBiasAdddense_11/MatMul:product:0'dense_11/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_11/BiasAddy
dense_11/LeakyRelu	LeakyReludense_11/BiasAdd:output:0*'
_output_shapes
:?????????2
dense_11/LeakyRelu?
IdentityIdentity dense_11/LeakyRelu:activations:0 ^dense_10/BiasAdd/ReadVariableOp^dense_10/MatMul/ReadVariableOp ^dense_11/BiasAdd/ReadVariableOp^dense_11/MatMul/ReadVariableOp^dense_8/BiasAdd/ReadVariableOp^dense_8/MatMul/ReadVariableOp^dense_9/BiasAdd/ReadVariableOp^dense_9/MatMul/ReadVariableOp*^lstm_4/lstm_cell_4/BiasAdd/ReadVariableOp)^lstm_4/lstm_cell_4/MatMul/ReadVariableOp+^lstm_4/lstm_cell_4/MatMul_1/ReadVariableOp^lstm_4/while*^lstm_5/lstm_cell_5/BiasAdd/ReadVariableOp)^lstm_5/lstm_cell_5/MatMul/ReadVariableOp+^lstm_5/lstm_cell_5/MatMul_1/ReadVariableOp^lstm_5/while*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*b
_input_shapesQ
O:?????????::::::::::::::2B
dense_10/BiasAdd/ReadVariableOpdense_10/BiasAdd/ReadVariableOp2@
dense_10/MatMul/ReadVariableOpdense_10/MatMul/ReadVariableOp2B
dense_11/BiasAdd/ReadVariableOpdense_11/BiasAdd/ReadVariableOp2@
dense_11/MatMul/ReadVariableOpdense_11/MatMul/ReadVariableOp2@
dense_8/BiasAdd/ReadVariableOpdense_8/BiasAdd/ReadVariableOp2>
dense_8/MatMul/ReadVariableOpdense_8/MatMul/ReadVariableOp2@
dense_9/BiasAdd/ReadVariableOpdense_9/BiasAdd/ReadVariableOp2>
dense_9/MatMul/ReadVariableOpdense_9/MatMul/ReadVariableOp2V
)lstm_4/lstm_cell_4/BiasAdd/ReadVariableOp)lstm_4/lstm_cell_4/BiasAdd/ReadVariableOp2T
(lstm_4/lstm_cell_4/MatMul/ReadVariableOp(lstm_4/lstm_cell_4/MatMul/ReadVariableOp2X
*lstm_4/lstm_cell_4/MatMul_1/ReadVariableOp*lstm_4/lstm_cell_4/MatMul_1/ReadVariableOp2
lstm_4/whilelstm_4/while2V
)lstm_5/lstm_cell_5/BiasAdd/ReadVariableOp)lstm_5/lstm_cell_5/BiasAdd/ReadVariableOp2T
(lstm_5/lstm_cell_5/MatMul/ReadVariableOp(lstm_5/lstm_cell_5/MatMul/ReadVariableOp2X
*lstm_5/lstm_cell_5/MatMul_1/ReadVariableOp*lstm_5/lstm_cell_5/MatMul_1/ReadVariableOp2
lstm_5/whilelstm_5/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?M
?	
lstm_5_while_body_184353*
&lstm_5_while_lstm_5_while_loop_counter0
,lstm_5_while_lstm_5_while_maximum_iterations
lstm_5_while_placeholder
lstm_5_while_placeholder_1
lstm_5_while_placeholder_2
lstm_5_while_placeholder_3)
%lstm_5_while_lstm_5_strided_slice_1_0e
alstm_5_while_tensorarrayv2read_tensorlistgetitem_lstm_5_tensorarrayunstack_tensorlistfromtensor_0=
9lstm_5_while_lstm_cell_5_matmul_readvariableop_resource_0?
;lstm_5_while_lstm_cell_5_matmul_1_readvariableop_resource_0>
:lstm_5_while_lstm_cell_5_biasadd_readvariableop_resource_0
lstm_5_while_identity
lstm_5_while_identity_1
lstm_5_while_identity_2
lstm_5_while_identity_3
lstm_5_while_identity_4
lstm_5_while_identity_5'
#lstm_5_while_lstm_5_strided_slice_1c
_lstm_5_while_tensorarrayv2read_tensorlistgetitem_lstm_5_tensorarrayunstack_tensorlistfromtensor;
7lstm_5_while_lstm_cell_5_matmul_readvariableop_resource=
9lstm_5_while_lstm_cell_5_matmul_1_readvariableop_resource<
8lstm_5_while_lstm_cell_5_biasadd_readvariableop_resource??/lstm_5/while/lstm_cell_5/BiasAdd/ReadVariableOp?.lstm_5/while/lstm_cell_5/MatMul/ReadVariableOp?0lstm_5/while/lstm_cell_5/MatMul_1/ReadVariableOp?
>lstm_5/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2@
>lstm_5/while/TensorArrayV2Read/TensorListGetItem/element_shape?
0lstm_5/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemalstm_5_while_tensorarrayv2read_tensorlistgetitem_lstm_5_tensorarrayunstack_tensorlistfromtensor_0lstm_5_while_placeholderGlstm_5/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype022
0lstm_5/while/TensorArrayV2Read/TensorListGetItem?
.lstm_5/while/lstm_cell_5/MatMul/ReadVariableOpReadVariableOp9lstm_5_while_lstm_cell_5_matmul_readvariableop_resource_0* 
_output_shapes
:
??*
dtype020
.lstm_5/while/lstm_cell_5/MatMul/ReadVariableOp?
lstm_5/while/lstm_cell_5/MatMulMatMul7lstm_5/while/TensorArrayV2Read/TensorListGetItem:item:06lstm_5/while/lstm_cell_5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2!
lstm_5/while/lstm_cell_5/MatMul?
0lstm_5/while/lstm_cell_5/MatMul_1/ReadVariableOpReadVariableOp;lstm_5_while_lstm_cell_5_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype022
0lstm_5/while/lstm_cell_5/MatMul_1/ReadVariableOp?
!lstm_5/while/lstm_cell_5/MatMul_1MatMullstm_5_while_placeholder_28lstm_5/while/lstm_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2#
!lstm_5/while/lstm_cell_5/MatMul_1?
lstm_5/while/lstm_cell_5/addAddV2)lstm_5/while/lstm_cell_5/MatMul:product:0+lstm_5/while/lstm_cell_5/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_5/while/lstm_cell_5/add?
/lstm_5/while/lstm_cell_5/BiasAdd/ReadVariableOpReadVariableOp:lstm_5_while_lstm_cell_5_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype021
/lstm_5/while/lstm_cell_5/BiasAdd/ReadVariableOp?
 lstm_5/while/lstm_cell_5/BiasAddBiasAdd lstm_5/while/lstm_cell_5/add:z:07lstm_5/while/lstm_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2"
 lstm_5/while/lstm_cell_5/BiasAdd?
lstm_5/while/lstm_cell_5/ConstConst*
_output_shapes
: *
dtype0*
value	B :2 
lstm_5/while/lstm_cell_5/Const?
(lstm_5/while/lstm_cell_5/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2*
(lstm_5/while/lstm_cell_5/split/split_dim?
lstm_5/while/lstm_cell_5/splitSplit1lstm_5/while/lstm_cell_5/split/split_dim:output:0)lstm_5/while/lstm_cell_5/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2 
lstm_5/while/lstm_cell_5/split?
 lstm_5/while/lstm_cell_5/SigmoidSigmoid'lstm_5/while/lstm_cell_5/split:output:0*
T0*(
_output_shapes
:??????????2"
 lstm_5/while/lstm_cell_5/Sigmoid?
"lstm_5/while/lstm_cell_5/Sigmoid_1Sigmoid'lstm_5/while/lstm_cell_5/split:output:1*
T0*(
_output_shapes
:??????????2$
"lstm_5/while/lstm_cell_5/Sigmoid_1?
lstm_5/while/lstm_cell_5/mulMul&lstm_5/while/lstm_cell_5/Sigmoid_1:y:0lstm_5_while_placeholder_3*
T0*(
_output_shapes
:??????????2
lstm_5/while/lstm_cell_5/mul?
"lstm_5/while/lstm_cell_5/LeakyRelu	LeakyRelu'lstm_5/while/lstm_cell_5/split:output:2*(
_output_shapes
:??????????2$
"lstm_5/while/lstm_cell_5/LeakyRelu?
lstm_5/while/lstm_cell_5/mul_1Mul$lstm_5/while/lstm_cell_5/Sigmoid:y:00lstm_5/while/lstm_cell_5/LeakyRelu:activations:0*
T0*(
_output_shapes
:??????????2 
lstm_5/while/lstm_cell_5/mul_1?
lstm_5/while/lstm_cell_5/add_1AddV2 lstm_5/while/lstm_cell_5/mul:z:0"lstm_5/while/lstm_cell_5/mul_1:z:0*
T0*(
_output_shapes
:??????????2 
lstm_5/while/lstm_cell_5/add_1?
"lstm_5/while/lstm_cell_5/Sigmoid_2Sigmoid'lstm_5/while/lstm_cell_5/split:output:3*
T0*(
_output_shapes
:??????????2$
"lstm_5/while/lstm_cell_5/Sigmoid_2?
$lstm_5/while/lstm_cell_5/LeakyRelu_1	LeakyRelu"lstm_5/while/lstm_cell_5/add_1:z:0*(
_output_shapes
:??????????2&
$lstm_5/while/lstm_cell_5/LeakyRelu_1?
lstm_5/while/lstm_cell_5/mul_2Mul&lstm_5/while/lstm_cell_5/Sigmoid_2:y:02lstm_5/while/lstm_cell_5/LeakyRelu_1:activations:0*
T0*(
_output_shapes
:??????????2 
lstm_5/while/lstm_cell_5/mul_2?
1lstm_5/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_5_while_placeholder_1lstm_5_while_placeholder"lstm_5/while/lstm_cell_5/mul_2:z:0*
_output_shapes
: *
element_dtype023
1lstm_5/while/TensorArrayV2Write/TensorListSetItemj
lstm_5/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_5/while/add/y?
lstm_5/while/addAddV2lstm_5_while_placeholderlstm_5/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_5/while/addn
lstm_5/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_5/while/add_1/y?
lstm_5/while/add_1AddV2&lstm_5_while_lstm_5_while_loop_counterlstm_5/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_5/while/add_1?
lstm_5/while/IdentityIdentitylstm_5/while/add_1:z:00^lstm_5/while/lstm_cell_5/BiasAdd/ReadVariableOp/^lstm_5/while/lstm_cell_5/MatMul/ReadVariableOp1^lstm_5/while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_5/while/Identity?
lstm_5/while/Identity_1Identity,lstm_5_while_lstm_5_while_maximum_iterations0^lstm_5/while/lstm_cell_5/BiasAdd/ReadVariableOp/^lstm_5/while/lstm_cell_5/MatMul/ReadVariableOp1^lstm_5/while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_5/while/Identity_1?
lstm_5/while/Identity_2Identitylstm_5/while/add:z:00^lstm_5/while/lstm_cell_5/BiasAdd/ReadVariableOp/^lstm_5/while/lstm_cell_5/MatMul/ReadVariableOp1^lstm_5/while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_5/while/Identity_2?
lstm_5/while/Identity_3IdentityAlstm_5/while/TensorArrayV2Write/TensorListSetItem:output_handle:00^lstm_5/while/lstm_cell_5/BiasAdd/ReadVariableOp/^lstm_5/while/lstm_cell_5/MatMul/ReadVariableOp1^lstm_5/while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_5/while/Identity_3?
lstm_5/while/Identity_4Identity"lstm_5/while/lstm_cell_5/mul_2:z:00^lstm_5/while/lstm_cell_5/BiasAdd/ReadVariableOp/^lstm_5/while/lstm_cell_5/MatMul/ReadVariableOp1^lstm_5/while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2
lstm_5/while/Identity_4?
lstm_5/while/Identity_5Identity"lstm_5/while/lstm_cell_5/add_1:z:00^lstm_5/while/lstm_cell_5/BiasAdd/ReadVariableOp/^lstm_5/while/lstm_cell_5/MatMul/ReadVariableOp1^lstm_5/while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2
lstm_5/while/Identity_5"7
lstm_5_while_identitylstm_5/while/Identity:output:0";
lstm_5_while_identity_1 lstm_5/while/Identity_1:output:0";
lstm_5_while_identity_2 lstm_5/while/Identity_2:output:0";
lstm_5_while_identity_3 lstm_5/while/Identity_3:output:0";
lstm_5_while_identity_4 lstm_5/while/Identity_4:output:0";
lstm_5_while_identity_5 lstm_5/while/Identity_5:output:0"L
#lstm_5_while_lstm_5_strided_slice_1%lstm_5_while_lstm_5_strided_slice_1_0"v
8lstm_5_while_lstm_cell_5_biasadd_readvariableop_resource:lstm_5_while_lstm_cell_5_biasadd_readvariableop_resource_0"x
9lstm_5_while_lstm_cell_5_matmul_1_readvariableop_resource;lstm_5_while_lstm_cell_5_matmul_1_readvariableop_resource_0"t
7lstm_5_while_lstm_cell_5_matmul_readvariableop_resource9lstm_5_while_lstm_cell_5_matmul_readvariableop_resource_0"?
_lstm_5_while_tensorarrayv2read_tensorlistgetitem_lstm_5_tensorarrayunstack_tensorlistfromtensoralstm_5_while_tensorarrayv2read_tensorlistgetitem_lstm_5_tensorarrayunstack_tensorlistfromtensor_0*S
_input_shapesB
@: : : : :??????????:??????????: : :::2b
/lstm_5/while/lstm_cell_5/BiasAdd/ReadVariableOp/lstm_5/while/lstm_cell_5/BiasAdd/ReadVariableOp2`
.lstm_5/while/lstm_cell_5/MatMul/ReadVariableOp.lstm_5/while/lstm_cell_5/MatMul/ReadVariableOp2d
0lstm_5/while/lstm_cell_5/MatMul_1/ReadVariableOp0lstm_5/while/lstm_cell_5/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?B
?
while_body_183688
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_06
2while_lstm_cell_5_matmul_readvariableop_resource_08
4while_lstm_cell_5_matmul_1_readvariableop_resource_07
3while_lstm_cell_5_biasadd_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor4
0while_lstm_cell_5_matmul_readvariableop_resource6
2while_lstm_cell_5_matmul_1_readvariableop_resource5
1while_lstm_cell_5_biasadd_readvariableop_resource??(while/lstm_cell_5/BiasAdd/ReadVariableOp?'while/lstm_cell_5/MatMul/ReadVariableOp?)while/lstm_cell_5/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
'while/lstm_cell_5/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_5_matmul_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02)
'while/lstm_cell_5/MatMul/ReadVariableOp?
while/lstm_cell_5/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_5/MatMul?
)while/lstm_cell_5/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_5_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02+
)while/lstm_cell_5/MatMul_1/ReadVariableOp?
while/lstm_cell_5/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_5/MatMul_1?
while/lstm_cell_5/addAddV2"while/lstm_cell_5/MatMul:product:0$while/lstm_cell_5/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_5/add?
(while/lstm_cell_5/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_5_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02*
(while/lstm_cell_5/BiasAdd/ReadVariableOp?
while/lstm_cell_5/BiasAddBiasAddwhile/lstm_cell_5/add:z:00while/lstm_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_5/BiasAddt
while/lstm_cell_5/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_5/Const?
!while/lstm_cell_5/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!while/lstm_cell_5/split/split_dim?
while/lstm_cell_5/splitSplit*while/lstm_cell_5/split/split_dim:output:0"while/lstm_cell_5/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
while/lstm_cell_5/split?
while/lstm_cell_5/SigmoidSigmoid while/lstm_cell_5/split:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_5/Sigmoid?
while/lstm_cell_5/Sigmoid_1Sigmoid while/lstm_cell_5/split:output:1*
T0*(
_output_shapes
:??????????2
while/lstm_cell_5/Sigmoid_1?
while/lstm_cell_5/mulMulwhile/lstm_cell_5/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:??????????2
while/lstm_cell_5/mul?
while/lstm_cell_5/LeakyRelu	LeakyRelu while/lstm_cell_5/split:output:2*(
_output_shapes
:??????????2
while/lstm_cell_5/LeakyRelu?
while/lstm_cell_5/mul_1Mulwhile/lstm_cell_5/Sigmoid:y:0)while/lstm_cell_5/LeakyRelu:activations:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_5/mul_1?
while/lstm_cell_5/add_1AddV2while/lstm_cell_5/mul:z:0while/lstm_cell_5/mul_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_5/add_1?
while/lstm_cell_5/Sigmoid_2Sigmoid while/lstm_cell_5/split:output:3*
T0*(
_output_shapes
:??????????2
while/lstm_cell_5/Sigmoid_2?
while/lstm_cell_5/LeakyRelu_1	LeakyReluwhile/lstm_cell_5/add_1:z:0*(
_output_shapes
:??????????2
while/lstm_cell_5/LeakyRelu_1?
while/lstm_cell_5/mul_2Mulwhile/lstm_cell_5/Sigmoid_2:y:0+while/lstm_cell_5/LeakyRelu_1:activations:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_5/mul_2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_5/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1?
while/IdentityIdentitywhile/add_1:z:0)^while/lstm_cell_5/BiasAdd/ReadVariableOp(^while/lstm_cell_5/MatMul/ReadVariableOp*^while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations)^while/lstm_cell_5/BiasAdd/ReadVariableOp(^while/lstm_cell_5/MatMul/ReadVariableOp*^while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0)^while/lstm_cell_5/BiasAdd/ReadVariableOp(^while/lstm_cell_5/MatMul/ReadVariableOp*^while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0)^while/lstm_cell_5/BiasAdd/ReadVariableOp(^while/lstm_cell_5/MatMul/ReadVariableOp*^while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_5/mul_2:z:0)^while/lstm_cell_5/BiasAdd/ReadVariableOp(^while/lstm_cell_5/MatMul/ReadVariableOp*^while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_5/add_1:z:0)^while/lstm_cell_5/BiasAdd/ReadVariableOp(^while/lstm_cell_5/MatMul/ReadVariableOp*^while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_5_biasadd_readvariableop_resource3while_lstm_cell_5_biasadd_readvariableop_resource_0"j
2while_lstm_cell_5_matmul_1_readvariableop_resource4while_lstm_cell_5_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_5_matmul_readvariableop_resource2while_lstm_cell_5_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*S
_input_shapesB
@: : : : :??????????:??????????: : :::2T
(while/lstm_cell_5/BiasAdd/ReadVariableOp(while/lstm_cell_5/BiasAdd/ReadVariableOp2R
'while/lstm_cell_5/MatMul/ReadVariableOp'while/lstm_cell_5/MatMul/ReadVariableOp2V
)while/lstm_cell_5/MatMul_1/ReadVariableOp)while/lstm_cell_5/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
??
?

H__inference_sequential_2_layer_call_and_return_conditional_losses_184796

inputs5
1lstm_4_lstm_cell_4_matmul_readvariableop_resource7
3lstm_4_lstm_cell_4_matmul_1_readvariableop_resource6
2lstm_4_lstm_cell_4_biasadd_readvariableop_resource5
1lstm_5_lstm_cell_5_matmul_readvariableop_resource7
3lstm_5_lstm_cell_5_matmul_1_readvariableop_resource6
2lstm_5_lstm_cell_5_biasadd_readvariableop_resource*
&dense_8_matmul_readvariableop_resource+
'dense_8_biasadd_readvariableop_resource*
&dense_9_matmul_readvariableop_resource+
'dense_9_biasadd_readvariableop_resource+
'dense_10_matmul_readvariableop_resource,
(dense_10_biasadd_readvariableop_resource+
'dense_11_matmul_readvariableop_resource,
(dense_11_biasadd_readvariableop_resource
identity??dense_10/BiasAdd/ReadVariableOp?dense_10/MatMul/ReadVariableOp?dense_11/BiasAdd/ReadVariableOp?dense_11/MatMul/ReadVariableOp?dense_8/BiasAdd/ReadVariableOp?dense_8/MatMul/ReadVariableOp?dense_9/BiasAdd/ReadVariableOp?dense_9/MatMul/ReadVariableOp?)lstm_4/lstm_cell_4/BiasAdd/ReadVariableOp?(lstm_4/lstm_cell_4/MatMul/ReadVariableOp?*lstm_4/lstm_cell_4/MatMul_1/ReadVariableOp?lstm_4/while?)lstm_5/lstm_cell_5/BiasAdd/ReadVariableOp?(lstm_5/lstm_cell_5/MatMul/ReadVariableOp?*lstm_5/lstm_cell_5/MatMul_1/ReadVariableOp?lstm_5/whileR
lstm_4/ShapeShapeinputs*
T0*
_output_shapes
:2
lstm_4/Shape?
lstm_4/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_4/strided_slice/stack?
lstm_4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_4/strided_slice/stack_1?
lstm_4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_4/strided_slice/stack_2?
lstm_4/strided_sliceStridedSlicelstm_4/Shape:output:0#lstm_4/strided_slice/stack:output:0%lstm_4/strided_slice/stack_1:output:0%lstm_4/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_4/strided_slicek
lstm_4/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm_4/zeros/mul/y?
lstm_4/zeros/mulMullstm_4/strided_slice:output:0lstm_4/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_4/zeros/mulm
lstm_4/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm_4/zeros/Less/y?
lstm_4/zeros/LessLesslstm_4/zeros/mul:z:0lstm_4/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_4/zeros/Lessq
lstm_4/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
lstm_4/zeros/packed/1?
lstm_4/zeros/packedPacklstm_4/strided_slice:output:0lstm_4/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_4/zeros/packedm
lstm_4/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_4/zeros/Const?
lstm_4/zerosFilllstm_4/zeros/packed:output:0lstm_4/zeros/Const:output:0*
T0*(
_output_shapes
:??????????2
lstm_4/zeroso
lstm_4/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm_4/zeros_1/mul/y?
lstm_4/zeros_1/mulMullstm_4/strided_slice:output:0lstm_4/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_4/zeros_1/mulq
lstm_4/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm_4/zeros_1/Less/y?
lstm_4/zeros_1/LessLesslstm_4/zeros_1/mul:z:0lstm_4/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_4/zeros_1/Lessu
lstm_4/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
lstm_4/zeros_1/packed/1?
lstm_4/zeros_1/packedPacklstm_4/strided_slice:output:0 lstm_4/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_4/zeros_1/packedq
lstm_4/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_4/zeros_1/Const?
lstm_4/zeros_1Filllstm_4/zeros_1/packed:output:0lstm_4/zeros_1/Const:output:0*
T0*(
_output_shapes
:??????????2
lstm_4/zeros_1?
lstm_4/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_4/transpose/perm?
lstm_4/transpose	Transposeinputslstm_4/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2
lstm_4/transposed
lstm_4/Shape_1Shapelstm_4/transpose:y:0*
T0*
_output_shapes
:2
lstm_4/Shape_1?
lstm_4/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_4/strided_slice_1/stack?
lstm_4/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_4/strided_slice_1/stack_1?
lstm_4/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_4/strided_slice_1/stack_2?
lstm_4/strided_slice_1StridedSlicelstm_4/Shape_1:output:0%lstm_4/strided_slice_1/stack:output:0'lstm_4/strided_slice_1/stack_1:output:0'lstm_4/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_4/strided_slice_1?
"lstm_4/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2$
"lstm_4/TensorArrayV2/element_shape?
lstm_4/TensorArrayV2TensorListReserve+lstm_4/TensorArrayV2/element_shape:output:0lstm_4/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_4/TensorArrayV2?
<lstm_4/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2>
<lstm_4/TensorArrayUnstack/TensorListFromTensor/element_shape?
.lstm_4/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_4/transpose:y:0Elstm_4/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type020
.lstm_4/TensorArrayUnstack/TensorListFromTensor?
lstm_4/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_4/strided_slice_2/stack?
lstm_4/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_4/strided_slice_2/stack_1?
lstm_4/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_4/strided_slice_2/stack_2?
lstm_4/strided_slice_2StridedSlicelstm_4/transpose:y:0%lstm_4/strided_slice_2/stack:output:0'lstm_4/strided_slice_2/stack_1:output:0'lstm_4/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
lstm_4/strided_slice_2?
(lstm_4/lstm_cell_4/MatMul/ReadVariableOpReadVariableOp1lstm_4_lstm_cell_4_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02*
(lstm_4/lstm_cell_4/MatMul/ReadVariableOp?
lstm_4/lstm_cell_4/MatMulMatMullstm_4/strided_slice_2:output:00lstm_4/lstm_cell_4/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_4/lstm_cell_4/MatMul?
*lstm_4/lstm_cell_4/MatMul_1/ReadVariableOpReadVariableOp3lstm_4_lstm_cell_4_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02,
*lstm_4/lstm_cell_4/MatMul_1/ReadVariableOp?
lstm_4/lstm_cell_4/MatMul_1MatMullstm_4/zeros:output:02lstm_4/lstm_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_4/lstm_cell_4/MatMul_1?
lstm_4/lstm_cell_4/addAddV2#lstm_4/lstm_cell_4/MatMul:product:0%lstm_4/lstm_cell_4/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_4/lstm_cell_4/add?
)lstm_4/lstm_cell_4/BiasAdd/ReadVariableOpReadVariableOp2lstm_4_lstm_cell_4_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02+
)lstm_4/lstm_cell_4/BiasAdd/ReadVariableOp?
lstm_4/lstm_cell_4/BiasAddBiasAddlstm_4/lstm_cell_4/add:z:01lstm_4/lstm_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_4/lstm_cell_4/BiasAddv
lstm_4/lstm_cell_4/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_4/lstm_cell_4/Const?
"lstm_4/lstm_cell_4/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"lstm_4/lstm_cell_4/split/split_dim?
lstm_4/lstm_cell_4/splitSplit+lstm_4/lstm_cell_4/split/split_dim:output:0#lstm_4/lstm_cell_4/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
lstm_4/lstm_cell_4/split?
lstm_4/lstm_cell_4/SigmoidSigmoid!lstm_4/lstm_cell_4/split:output:0*
T0*(
_output_shapes
:??????????2
lstm_4/lstm_cell_4/Sigmoid?
lstm_4/lstm_cell_4/Sigmoid_1Sigmoid!lstm_4/lstm_cell_4/split:output:1*
T0*(
_output_shapes
:??????????2
lstm_4/lstm_cell_4/Sigmoid_1?
lstm_4/lstm_cell_4/mulMul lstm_4/lstm_cell_4/Sigmoid_1:y:0lstm_4/zeros_1:output:0*
T0*(
_output_shapes
:??????????2
lstm_4/lstm_cell_4/mul?
lstm_4/lstm_cell_4/LeakyRelu	LeakyRelu!lstm_4/lstm_cell_4/split:output:2*(
_output_shapes
:??????????2
lstm_4/lstm_cell_4/LeakyRelu?
lstm_4/lstm_cell_4/mul_1Mullstm_4/lstm_cell_4/Sigmoid:y:0*lstm_4/lstm_cell_4/LeakyRelu:activations:0*
T0*(
_output_shapes
:??????????2
lstm_4/lstm_cell_4/mul_1?
lstm_4/lstm_cell_4/add_1AddV2lstm_4/lstm_cell_4/mul:z:0lstm_4/lstm_cell_4/mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_4/lstm_cell_4/add_1?
lstm_4/lstm_cell_4/Sigmoid_2Sigmoid!lstm_4/lstm_cell_4/split:output:3*
T0*(
_output_shapes
:??????????2
lstm_4/lstm_cell_4/Sigmoid_2?
lstm_4/lstm_cell_4/LeakyRelu_1	LeakyRelulstm_4/lstm_cell_4/add_1:z:0*(
_output_shapes
:??????????2 
lstm_4/lstm_cell_4/LeakyRelu_1?
lstm_4/lstm_cell_4/mul_2Mul lstm_4/lstm_cell_4/Sigmoid_2:y:0,lstm_4/lstm_cell_4/LeakyRelu_1:activations:0*
T0*(
_output_shapes
:??????????2
lstm_4/lstm_cell_4/mul_2?
$lstm_4/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2&
$lstm_4/TensorArrayV2_1/element_shape?
lstm_4/TensorArrayV2_1TensorListReserve-lstm_4/TensorArrayV2_1/element_shape:output:0lstm_4/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_4/TensorArrayV2_1\
lstm_4/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_4/time?
lstm_4/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2!
lstm_4/while/maximum_iterationsx
lstm_4/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_4/while/loop_counter?
lstm_4/whileWhile"lstm_4/while/loop_counter:output:0(lstm_4/while/maximum_iterations:output:0lstm_4/time:output:0lstm_4/TensorArrayV2_1:handle:0lstm_4/zeros:output:0lstm_4/zeros_1:output:0lstm_4/strided_slice_1:output:0>lstm_4/TensorArrayUnstack/TensorListFromTensor:output_handle:01lstm_4_lstm_cell_4_matmul_readvariableop_resource3lstm_4_lstm_cell_4_matmul_1_readvariableop_resource2lstm_4_lstm_cell_4_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :??????????:??????????: : : : : *%
_read_only_resource_inputs
	
*$
bodyR
lstm_4_while_body_184534*$
condR
lstm_4_while_cond_184533*M
output_shapes<
:: : : : :??????????:??????????: : : : : *
parallel_iterations 2
lstm_4/while?
7lstm_4/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   29
7lstm_4/TensorArrayV2Stack/TensorListStack/element_shape?
)lstm_4/TensorArrayV2Stack/TensorListStackTensorListStacklstm_4/while:output:3@lstm_4/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????*
element_dtype02+
)lstm_4/TensorArrayV2Stack/TensorListStack?
lstm_4/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
lstm_4/strided_slice_3/stack?
lstm_4/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2 
lstm_4/strided_slice_3/stack_1?
lstm_4/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_4/strided_slice_3/stack_2?
lstm_4/strided_slice_3StridedSlice2lstm_4/TensorArrayV2Stack/TensorListStack:tensor:0%lstm_4/strided_slice_3/stack:output:0'lstm_4/strided_slice_3/stack_1:output:0'lstm_4/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
lstm_4/strided_slice_3?
lstm_4/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_4/transpose_1/perm?
lstm_4/transpose_1	Transpose2lstm_4/TensorArrayV2Stack/TensorListStack:tensor:0 lstm_4/transpose_1/perm:output:0*
T0*,
_output_shapes
:??????????2
lstm_4/transpose_1t
lstm_4/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_4/runtimeb
lstm_5/ShapeShapelstm_4/transpose_1:y:0*
T0*
_output_shapes
:2
lstm_5/Shape?
lstm_5/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_5/strided_slice/stack?
lstm_5/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_5/strided_slice/stack_1?
lstm_5/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_5/strided_slice/stack_2?
lstm_5/strided_sliceStridedSlicelstm_5/Shape:output:0#lstm_5/strided_slice/stack:output:0%lstm_5/strided_slice/stack_1:output:0%lstm_5/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_5/strided_slicek
lstm_5/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm_5/zeros/mul/y?
lstm_5/zeros/mulMullstm_5/strided_slice:output:0lstm_5/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_5/zeros/mulm
lstm_5/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm_5/zeros/Less/y?
lstm_5/zeros/LessLesslstm_5/zeros/mul:z:0lstm_5/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_5/zeros/Lessq
lstm_5/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
lstm_5/zeros/packed/1?
lstm_5/zeros/packedPacklstm_5/strided_slice:output:0lstm_5/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_5/zeros/packedm
lstm_5/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_5/zeros/Const?
lstm_5/zerosFilllstm_5/zeros/packed:output:0lstm_5/zeros/Const:output:0*
T0*(
_output_shapes
:??????????2
lstm_5/zeroso
lstm_5/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm_5/zeros_1/mul/y?
lstm_5/zeros_1/mulMullstm_5/strided_slice:output:0lstm_5/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_5/zeros_1/mulq
lstm_5/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm_5/zeros_1/Less/y?
lstm_5/zeros_1/LessLesslstm_5/zeros_1/mul:z:0lstm_5/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_5/zeros_1/Lessu
lstm_5/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
lstm_5/zeros_1/packed/1?
lstm_5/zeros_1/packedPacklstm_5/strided_slice:output:0 lstm_5/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_5/zeros_1/packedq
lstm_5/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_5/zeros_1/Const?
lstm_5/zeros_1Filllstm_5/zeros_1/packed:output:0lstm_5/zeros_1/Const:output:0*
T0*(
_output_shapes
:??????????2
lstm_5/zeros_1?
lstm_5/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_5/transpose/perm?
lstm_5/transpose	Transposelstm_4/transpose_1:y:0lstm_5/transpose/perm:output:0*
T0*,
_output_shapes
:??????????2
lstm_5/transposed
lstm_5/Shape_1Shapelstm_5/transpose:y:0*
T0*
_output_shapes
:2
lstm_5/Shape_1?
lstm_5/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_5/strided_slice_1/stack?
lstm_5/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_5/strided_slice_1/stack_1?
lstm_5/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_5/strided_slice_1/stack_2?
lstm_5/strided_slice_1StridedSlicelstm_5/Shape_1:output:0%lstm_5/strided_slice_1/stack:output:0'lstm_5/strided_slice_1/stack_1:output:0'lstm_5/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_5/strided_slice_1?
"lstm_5/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2$
"lstm_5/TensorArrayV2/element_shape?
lstm_5/TensorArrayV2TensorListReserve+lstm_5/TensorArrayV2/element_shape:output:0lstm_5/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_5/TensorArrayV2?
<lstm_5/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2>
<lstm_5/TensorArrayUnstack/TensorListFromTensor/element_shape?
.lstm_5/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_5/transpose:y:0Elstm_5/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type020
.lstm_5/TensorArrayUnstack/TensorListFromTensor?
lstm_5/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_5/strided_slice_2/stack?
lstm_5/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_5/strided_slice_2/stack_1?
lstm_5/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_5/strided_slice_2/stack_2?
lstm_5/strided_slice_2StridedSlicelstm_5/transpose:y:0%lstm_5/strided_slice_2/stack:output:0'lstm_5/strided_slice_2/stack_1:output:0'lstm_5/strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
lstm_5/strided_slice_2?
(lstm_5/lstm_cell_5/MatMul/ReadVariableOpReadVariableOp1lstm_5_lstm_cell_5_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02*
(lstm_5/lstm_cell_5/MatMul/ReadVariableOp?
lstm_5/lstm_cell_5/MatMulMatMullstm_5/strided_slice_2:output:00lstm_5/lstm_cell_5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_5/lstm_cell_5/MatMul?
*lstm_5/lstm_cell_5/MatMul_1/ReadVariableOpReadVariableOp3lstm_5_lstm_cell_5_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02,
*lstm_5/lstm_cell_5/MatMul_1/ReadVariableOp?
lstm_5/lstm_cell_5/MatMul_1MatMullstm_5/zeros:output:02lstm_5/lstm_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_5/lstm_cell_5/MatMul_1?
lstm_5/lstm_cell_5/addAddV2#lstm_5/lstm_cell_5/MatMul:product:0%lstm_5/lstm_cell_5/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_5/lstm_cell_5/add?
)lstm_5/lstm_cell_5/BiasAdd/ReadVariableOpReadVariableOp2lstm_5_lstm_cell_5_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02+
)lstm_5/lstm_cell_5/BiasAdd/ReadVariableOp?
lstm_5/lstm_cell_5/BiasAddBiasAddlstm_5/lstm_cell_5/add:z:01lstm_5/lstm_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_5/lstm_cell_5/BiasAddv
lstm_5/lstm_cell_5/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_5/lstm_cell_5/Const?
"lstm_5/lstm_cell_5/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"lstm_5/lstm_cell_5/split/split_dim?
lstm_5/lstm_cell_5/splitSplit+lstm_5/lstm_cell_5/split/split_dim:output:0#lstm_5/lstm_cell_5/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
lstm_5/lstm_cell_5/split?
lstm_5/lstm_cell_5/SigmoidSigmoid!lstm_5/lstm_cell_5/split:output:0*
T0*(
_output_shapes
:??????????2
lstm_5/lstm_cell_5/Sigmoid?
lstm_5/lstm_cell_5/Sigmoid_1Sigmoid!lstm_5/lstm_cell_5/split:output:1*
T0*(
_output_shapes
:??????????2
lstm_5/lstm_cell_5/Sigmoid_1?
lstm_5/lstm_cell_5/mulMul lstm_5/lstm_cell_5/Sigmoid_1:y:0lstm_5/zeros_1:output:0*
T0*(
_output_shapes
:??????????2
lstm_5/lstm_cell_5/mul?
lstm_5/lstm_cell_5/LeakyRelu	LeakyRelu!lstm_5/lstm_cell_5/split:output:2*(
_output_shapes
:??????????2
lstm_5/lstm_cell_5/LeakyRelu?
lstm_5/lstm_cell_5/mul_1Mullstm_5/lstm_cell_5/Sigmoid:y:0*lstm_5/lstm_cell_5/LeakyRelu:activations:0*
T0*(
_output_shapes
:??????????2
lstm_5/lstm_cell_5/mul_1?
lstm_5/lstm_cell_5/add_1AddV2lstm_5/lstm_cell_5/mul:z:0lstm_5/lstm_cell_5/mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_5/lstm_cell_5/add_1?
lstm_5/lstm_cell_5/Sigmoid_2Sigmoid!lstm_5/lstm_cell_5/split:output:3*
T0*(
_output_shapes
:??????????2
lstm_5/lstm_cell_5/Sigmoid_2?
lstm_5/lstm_cell_5/LeakyRelu_1	LeakyRelulstm_5/lstm_cell_5/add_1:z:0*(
_output_shapes
:??????????2 
lstm_5/lstm_cell_5/LeakyRelu_1?
lstm_5/lstm_cell_5/mul_2Mul lstm_5/lstm_cell_5/Sigmoid_2:y:0,lstm_5/lstm_cell_5/LeakyRelu_1:activations:0*
T0*(
_output_shapes
:??????????2
lstm_5/lstm_cell_5/mul_2?
$lstm_5/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2&
$lstm_5/TensorArrayV2_1/element_shape?
lstm_5/TensorArrayV2_1TensorListReserve-lstm_5/TensorArrayV2_1/element_shape:output:0lstm_5/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_5/TensorArrayV2_1\
lstm_5/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_5/time?
lstm_5/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2!
lstm_5/while/maximum_iterationsx
lstm_5/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_5/while/loop_counter?
lstm_5/whileWhile"lstm_5/while/loop_counter:output:0(lstm_5/while/maximum_iterations:output:0lstm_5/time:output:0lstm_5/TensorArrayV2_1:handle:0lstm_5/zeros:output:0lstm_5/zeros_1:output:0lstm_5/strided_slice_1:output:0>lstm_5/TensorArrayUnstack/TensorListFromTensor:output_handle:01lstm_5_lstm_cell_5_matmul_readvariableop_resource3lstm_5_lstm_cell_5_matmul_1_readvariableop_resource2lstm_5_lstm_cell_5_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :??????????:??????????: : : : : *%
_read_only_resource_inputs
	
*$
bodyR
lstm_5_while_body_184683*$
condR
lstm_5_while_cond_184682*M
output_shapes<
:: : : : :??????????:??????????: : : : : *
parallel_iterations 2
lstm_5/while?
7lstm_5/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   29
7lstm_5/TensorArrayV2Stack/TensorListStack/element_shape?
)lstm_5/TensorArrayV2Stack/TensorListStackTensorListStacklstm_5/while:output:3@lstm_5/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????*
element_dtype02+
)lstm_5/TensorArrayV2Stack/TensorListStack?
lstm_5/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
lstm_5/strided_slice_3/stack?
lstm_5/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2 
lstm_5/strided_slice_3/stack_1?
lstm_5/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_5/strided_slice_3/stack_2?
lstm_5/strided_slice_3StridedSlice2lstm_5/TensorArrayV2Stack/TensorListStack:tensor:0%lstm_5/strided_slice_3/stack:output:0'lstm_5/strided_slice_3/stack_1:output:0'lstm_5/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
lstm_5/strided_slice_3?
lstm_5/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_5/transpose_1/perm?
lstm_5/transpose_1	Transpose2lstm_5/TensorArrayV2Stack/TensorListStack:tensor:0 lstm_5/transpose_1/perm:output:0*
T0*,
_output_shapes
:??????????2
lstm_5/transpose_1t
lstm_5/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_5/runtime?
dense_8/MatMul/ReadVariableOpReadVariableOp&dense_8_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
dense_8/MatMul/ReadVariableOp?
dense_8/MatMulMatMullstm_5/strided_slice_3:output:0%dense_8/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_8/MatMul?
dense_8/BiasAdd/ReadVariableOpReadVariableOp'dense_8_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02 
dense_8/BiasAdd/ReadVariableOp?
dense_8/BiasAddBiasAdddense_8/MatMul:product:0&dense_8/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_8/BiasAddw
dense_8/LeakyRelu	LeakyReludense_8/BiasAdd:output:0*(
_output_shapes
:??????????2
dense_8/LeakyRelu?
dense_9/MatMul/ReadVariableOpReadVariableOp&dense_9_matmul_readvariableop_resource*
_output_shapes
:	?d*
dtype02
dense_9/MatMul/ReadVariableOp?
dense_9/MatMulMatMuldense_8/LeakyRelu:activations:0%dense_9/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
dense_9/MatMul?
dense_9/BiasAdd/ReadVariableOpReadVariableOp'dense_9_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02 
dense_9/BiasAdd/ReadVariableOp?
dense_9/BiasAddBiasAdddense_9/MatMul:product:0&dense_9/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
dense_9/BiasAddv
dense_9/LeakyRelu	LeakyReludense_9/BiasAdd:output:0*'
_output_shapes
:?????????d2
dense_9/LeakyRelu?
dense_10/MatMul/ReadVariableOpReadVariableOp'dense_10_matmul_readvariableop_resource*
_output_shapes

:d2*
dtype02 
dense_10/MatMul/ReadVariableOp?
dense_10/MatMulMatMuldense_9/LeakyRelu:activations:0&dense_10/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????22
dense_10/MatMul?
dense_10/BiasAdd/ReadVariableOpReadVariableOp(dense_10_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype02!
dense_10/BiasAdd/ReadVariableOp?
dense_10/BiasAddBiasAdddense_10/MatMul:product:0'dense_10/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????22
dense_10/BiasAddy
dense_10/LeakyRelu	LeakyReludense_10/BiasAdd:output:0*'
_output_shapes
:?????????22
dense_10/LeakyRelu?
dense_11/MatMul/ReadVariableOpReadVariableOp'dense_11_matmul_readvariableop_resource*
_output_shapes

:2*
dtype02 
dense_11/MatMul/ReadVariableOp?
dense_11/MatMulMatMul dense_10/LeakyRelu:activations:0&dense_11/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_11/MatMul?
dense_11/BiasAdd/ReadVariableOpReadVariableOp(dense_11_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_11/BiasAdd/ReadVariableOp?
dense_11/BiasAddBiasAdddense_11/MatMul:product:0'dense_11/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_11/BiasAddy
dense_11/LeakyRelu	LeakyReludense_11/BiasAdd:output:0*'
_output_shapes
:?????????2
dense_11/LeakyRelu?
IdentityIdentity dense_11/LeakyRelu:activations:0 ^dense_10/BiasAdd/ReadVariableOp^dense_10/MatMul/ReadVariableOp ^dense_11/BiasAdd/ReadVariableOp^dense_11/MatMul/ReadVariableOp^dense_8/BiasAdd/ReadVariableOp^dense_8/MatMul/ReadVariableOp^dense_9/BiasAdd/ReadVariableOp^dense_9/MatMul/ReadVariableOp*^lstm_4/lstm_cell_4/BiasAdd/ReadVariableOp)^lstm_4/lstm_cell_4/MatMul/ReadVariableOp+^lstm_4/lstm_cell_4/MatMul_1/ReadVariableOp^lstm_4/while*^lstm_5/lstm_cell_5/BiasAdd/ReadVariableOp)^lstm_5/lstm_cell_5/MatMul/ReadVariableOp+^lstm_5/lstm_cell_5/MatMul_1/ReadVariableOp^lstm_5/while*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*b
_input_shapesQ
O:?????????::::::::::::::2B
dense_10/BiasAdd/ReadVariableOpdense_10/BiasAdd/ReadVariableOp2@
dense_10/MatMul/ReadVariableOpdense_10/MatMul/ReadVariableOp2B
dense_11/BiasAdd/ReadVariableOpdense_11/BiasAdd/ReadVariableOp2@
dense_11/MatMul/ReadVariableOpdense_11/MatMul/ReadVariableOp2@
dense_8/BiasAdd/ReadVariableOpdense_8/BiasAdd/ReadVariableOp2>
dense_8/MatMul/ReadVariableOpdense_8/MatMul/ReadVariableOp2@
dense_9/BiasAdd/ReadVariableOpdense_9/BiasAdd/ReadVariableOp2>
dense_9/MatMul/ReadVariableOpdense_9/MatMul/ReadVariableOp2V
)lstm_4/lstm_cell_4/BiasAdd/ReadVariableOp)lstm_4/lstm_cell_4/BiasAdd/ReadVariableOp2T
(lstm_4/lstm_cell_4/MatMul/ReadVariableOp(lstm_4/lstm_cell_4/MatMul/ReadVariableOp2X
*lstm_4/lstm_cell_4/MatMul_1/ReadVariableOp*lstm_4/lstm_cell_4/MatMul_1/ReadVariableOp2
lstm_4/whilelstm_4/while2V
)lstm_5/lstm_cell_5/BiasAdd/ReadVariableOp)lstm_5/lstm_cell_5/BiasAdd/ReadVariableOp2T
(lstm_5/lstm_cell_5/MatMul/ReadVariableOp(lstm_5/lstm_cell_5/MatMul/ReadVariableOp2X
*lstm_5/lstm_cell_5/MatMul_1/ReadVariableOp*lstm_5/lstm_cell_5/MatMul_1/ReadVariableOp2
lstm_5/whilelstm_5/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
,__inference_lstm_cell_4_layer_call_fn_186354

inputs
states_0
states_1
unknown
	unknown_0
	unknown_1
identity

identity_1

identity_2??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:??????????:??????????:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_lstm_cell_4_layer_call_and_return_conditional_losses_1820152
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity?

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity_1?

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*Z
_input_shapesI
G:?????????:??????????:??????????:::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:RN
(
_output_shapes
:??????????
"
_user_specified_name
states/0:RN
(
_output_shapes
:??????????
"
_user_specified_name
states/1
?Z
?
B__inference_lstm_5_layer_call_and_return_conditional_losses_183773

inputs.
*lstm_cell_5_matmul_readvariableop_resource0
,lstm_cell_5_matmul_1_readvariableop_resource/
+lstm_cell_5_biasadd_readvariableop_resource
identity??"lstm_cell_5/BiasAdd/ReadVariableOp?!lstm_cell_5/MatMul/ReadVariableOp?#lstm_cell_5/MatMul_1/ReadVariableOp?whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:??????????2
zerosa
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessg
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const~
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:??????????2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm{
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:??????????2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_2?
!lstm_cell_5/MatMul/ReadVariableOpReadVariableOp*lstm_cell_5_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02#
!lstm_cell_5/MatMul/ReadVariableOp?
lstm_cell_5/MatMulMatMulstrided_slice_2:output:0)lstm_cell_5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_5/MatMul?
#lstm_cell_5/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_5_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02%
#lstm_cell_5/MatMul_1/ReadVariableOp?
lstm_cell_5/MatMul_1MatMulzeros:output:0+lstm_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_5/MatMul_1?
lstm_cell_5/addAddV2lstm_cell_5/MatMul:product:0lstm_cell_5/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell_5/add?
"lstm_cell_5/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_5_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02$
"lstm_cell_5/BiasAdd/ReadVariableOp?
lstm_cell_5/BiasAddBiasAddlstm_cell_5/add:z:0*lstm_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_5/BiasAddh
lstm_cell_5/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_5/Const|
lstm_cell_5/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_5/split/split_dim?
lstm_cell_5/splitSplit$lstm_cell_5/split/split_dim:output:0lstm_cell_5/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
lstm_cell_5/split?
lstm_cell_5/SigmoidSigmoidlstm_cell_5/split:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_5/Sigmoid?
lstm_cell_5/Sigmoid_1Sigmoidlstm_cell_5/split:output:1*
T0*(
_output_shapes
:??????????2
lstm_cell_5/Sigmoid_1?
lstm_cell_5/mulMullstm_cell_5/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_5/mul?
lstm_cell_5/LeakyRelu	LeakyRelulstm_cell_5/split:output:2*(
_output_shapes
:??????????2
lstm_cell_5/LeakyRelu?
lstm_cell_5/mul_1Mullstm_cell_5/Sigmoid:y:0#lstm_cell_5/LeakyRelu:activations:0*
T0*(
_output_shapes
:??????????2
lstm_cell_5/mul_1?
lstm_cell_5/add_1AddV2lstm_cell_5/mul:z:0lstm_cell_5/mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_5/add_1?
lstm_cell_5/Sigmoid_2Sigmoidlstm_cell_5/split:output:3*
T0*(
_output_shapes
:??????????2
lstm_cell_5/Sigmoid_2?
lstm_cell_5/LeakyRelu_1	LeakyRelulstm_cell_5/add_1:z:0*(
_output_shapes
:??????????2
lstm_cell_5/LeakyRelu_1?
lstm_cell_5/mul_2Mullstm_cell_5/Sigmoid_2:y:0%lstm_cell_5/LeakyRelu_1:activations:0*
T0*(
_output_shapes
:??????????2
lstm_cell_5/mul_2?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_5_matmul_readvariableop_resource,lstm_cell_5_matmul_1_readvariableop_resource+lstm_cell_5_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :??????????:??????????: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_183688*
condR
while_cond_183687*M
output_shapes<
:: : : : :??????????:??????????: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:??????????2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime?
IdentityIdentitystrided_slice_3:output:0#^lstm_cell_5/BiasAdd/ReadVariableOp"^lstm_cell_5/MatMul/ReadVariableOp$^lstm_cell_5/MatMul_1/ReadVariableOp^while*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:??????????:::2H
"lstm_cell_5/BiasAdd/ReadVariableOp"lstm_cell_5/BiasAdd/ReadVariableOp2F
!lstm_cell_5/MatMul/ReadVariableOp!lstm_cell_5/MatMul/ReadVariableOp2J
#lstm_cell_5/MatMul_1/ReadVariableOp#lstm_cell_5/MatMul_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
I
lstm_4_input9
serving_default_lstm_4_input:0?????????<
dense_110
StatefulPartitionedCall:0?????????tensorflow/serving/predict:??
?E
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer_with_weights-3
layer-3
layer_with_weights-4
layer-4
layer_with_weights-5
layer-5
	optimizer
	variables
	trainable_variables

regularization_losses
	keras_api

signatures
?__call__
+?&call_and_return_all_conditional_losses
?_default_save_signature"?B
_tf_keras_sequential?A{"class_name": "Sequential", "name": "sequential_2", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "sequential_2", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 5, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "lstm_4_input"}}, {"class_name": "LSTM", "config": {"name": "lstm_4", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 5, 1]}, "dtype": "float32", "return_sequences": true, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 200, "activation": "leaky_relu", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}}, {"class_name": "LSTM", "config": {"name": "lstm_5", "trainable": true, "dtype": "float32", "return_sequences": false, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 200, "activation": "leaky_relu", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}}, {"class_name": "Dense", "config": {"name": "dense_8", "trainable": true, "dtype": "float32", "units": 200, "activation": "leaky_relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_9", "trainable": true, "dtype": "float32", "units": 100, "activation": "leaky_relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_10", "trainable": true, "dtype": "float32", "units": 50, "activation": "leaky_relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_11", "trainable": true, "dtype": "float32", "units": 5, "activation": "leaky_relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null, 1]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 5, 1]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_2", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 5, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "lstm_4_input"}}, {"class_name": "LSTM", "config": {"name": "lstm_4", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 5, 1]}, "dtype": "float32", "return_sequences": true, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 200, "activation": "leaky_relu", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}}, {"class_name": "LSTM", "config": {"name": "lstm_5", "trainable": true, "dtype": "float32", "return_sequences": false, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 200, "activation": "leaky_relu", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}}, {"class_name": "Dense", "config": {"name": "dense_8", "trainable": true, "dtype": "float32", "units": 200, "activation": "leaky_relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_9", "trainable": true, "dtype": "float32", "units": 100, "activation": "leaky_relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_10", "trainable": true, "dtype": "float32", "units": 50, "activation": "leaky_relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_11", "trainable": true, "dtype": "float32", "units": 5, "activation": "leaky_relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}}, "training_config": {"loss": "mse", "metrics": [[{"class_name": "RootMeanSquaredError", "config": {"name": "root_mean_squared_error", "dtype": "float32"}}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 6.126263997430215e-06, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
?
cell

state_spec
	variables
trainable_variables
regularization_losses
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_rnn_layer?
{"class_name": "LSTM", "name": "lstm_4", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 5, 1]}, "stateful": false, "must_restore_from_config": false, "config": {"name": "lstm_4", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 5, 1]}, "dtype": "float32", "return_sequences": true, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 200, "activation": "leaky_relu", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null, 1]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 5, 1]}}
?
cell

state_spec
	variables
trainable_variables
regularization_losses
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?

_tf_keras_rnn_layer?	{"class_name": "LSTM", "name": "lstm_5", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "lstm_5", "trainable": true, "dtype": "float32", "return_sequences": false, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 200, "activation": "leaky_relu", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null, 200]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 5, 200]}}
?

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dense", "name": "dense_8", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_8", "trainable": true, "dtype": "float32", "units": 200, "activation": "leaky_relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 200}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 200]}}
?

kernel
 bias
!	variables
"trainable_variables
#regularization_losses
$	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dense", "name": "dense_9", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_9", "trainable": true, "dtype": "float32", "units": 100, "activation": "leaky_relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 200}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 200]}}
?

%kernel
&bias
'	variables
(trainable_variables
)regularization_losses
*	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dense", "name": "dense_10", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_10", "trainable": true, "dtype": "float32", "units": 50, "activation": "leaky_relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 100}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 100]}}
?

+kernel
,bias
-	variables
.trainable_variables
/regularization_losses
0	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dense", "name": "dense_11", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_11", "trainable": true, "dtype": "float32", "units": 5, "activation": "leaky_relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 50}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 50]}}
?

1beta_1

2beta_2
	3decay
4learning_rate
5iterm}m~m m?%m?&m?+m?,m?6m?7m?8m?9m?:m?;m?v?v?v? v?%v?&v?+v?,v?6v?7v?8v?9v?:v?;v?"
	optimizer
?
60
71
82
93
:4
;5
6
7
8
 9
%10
&11
+12
,13"
trackable_list_wrapper
?
60
71
82
93
:4
;5
6
7
8
 9
%10
&11
+12
,13"
trackable_list_wrapper
 "
trackable_list_wrapper
?

<layers
=layer_regularization_losses
>metrics
	variables
	trainable_variables

regularization_losses
?non_trainable_variables
@layer_metrics
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
-
?serving_default"
signature_map
?

6kernel
7recurrent_kernel
8bias
A	variables
Btrainable_variables
Cregularization_losses
D	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "LSTMCell", "name": "lstm_cell_4", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "lstm_cell_4", "trainable": true, "dtype": "float32", "units": 200, "activation": "leaky_relu", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}}
 "
trackable_list_wrapper
5
60
71
82"
trackable_list_wrapper
5
60
71
82"
trackable_list_wrapper
 "
trackable_list_wrapper
?

Elayers
Flayer_regularization_losses
Gmetrics
	variables
trainable_variables
regularization_losses

Hstates
Inon_trainable_variables
Jlayer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?

9kernel
:recurrent_kernel
;bias
K	variables
Ltrainable_variables
Mregularization_losses
N	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "LSTMCell", "name": "lstm_cell_5", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "lstm_cell_5", "trainable": true, "dtype": "float32", "units": 200, "activation": "leaky_relu", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}}
 "
trackable_list_wrapper
5
90
:1
;2"
trackable_list_wrapper
5
90
:1
;2"
trackable_list_wrapper
 "
trackable_list_wrapper
?

Olayers
Player_regularization_losses
Qmetrics
	variables
trainable_variables
regularization_losses

Rstates
Snon_trainable_variables
Tlayer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
": 
??2dense_8/kernel
:?2dense_8/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
?

Ulayers
Vlayer_regularization_losses
Wmetrics
	variables
trainable_variables
regularization_losses
Xnon_trainable_variables
Ylayer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
!:	?d2dense_9/kernel
:d2dense_9/bias
.
0
 1"
trackable_list_wrapper
.
0
 1"
trackable_list_wrapper
 "
trackable_list_wrapper
?

Zlayers
[layer_regularization_losses
\metrics
!	variables
"trainable_variables
#regularization_losses
]non_trainable_variables
^layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
!:d22dense_10/kernel
:22dense_10/bias
.
%0
&1"
trackable_list_wrapper
.
%0
&1"
trackable_list_wrapper
 "
trackable_list_wrapper
?

_layers
`layer_regularization_losses
ametrics
'	variables
(trainable_variables
)regularization_losses
bnon_trainable_variables
clayer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
!:22dense_11/kernel
:2dense_11/bias
.
+0
,1"
trackable_list_wrapper
.
+0
,1"
trackable_list_wrapper
 "
trackable_list_wrapper
?

dlayers
elayer_regularization_losses
fmetrics
-	variables
.trainable_variables
/regularization_losses
gnon_trainable_variables
hlayer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
: (2beta_1
: (2beta_2
: (2decay
: (2learning_rate
:	 (2	Adam/iter
,:*	?2lstm_4/lstm_cell_4/kernel
7:5
??2#lstm_4/lstm_cell_4/recurrent_kernel
&:$?2lstm_4/lstm_cell_4/bias
-:+
??2lstm_5/lstm_cell_5/kernel
7:5
??2#lstm_5/lstm_cell_5/recurrent_kernel
&:$?2lstm_5/lstm_cell_5/bias
J
0
1
2
3
4
5"
trackable_list_wrapper
 "
trackable_list_wrapper
.
i0
j1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
5
60
71
82"
trackable_list_wrapper
5
60
71
82"
trackable_list_wrapper
 "
trackable_list_wrapper
?

klayers
llayer_regularization_losses
mmetrics
A	variables
Btrainable_variables
Cregularization_losses
nnon_trainable_variables
olayer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
'
0"
trackable_list_wrapper
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
5
90
:1
;2"
trackable_list_wrapper
5
90
:1
;2"
trackable_list_wrapper
 "
trackable_list_wrapper
?

players
qlayer_regularization_losses
rmetrics
K	variables
Ltrainable_variables
Mregularization_losses
snon_trainable_variables
tlayer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
'
0"
trackable_list_wrapper
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
?
	utotal
	vcount
w	variables
x	keras_api"?
_tf_keras_metricj{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}}
?
	ytotal
	zcount
{	variables
|	keras_api"?
_tf_keras_metric?{"class_name": "RootMeanSquaredError", "name": "root_mean_squared_error", "dtype": "float32", "config": {"name": "root_mean_squared_error", "dtype": "float32"}}
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
:  (2total
:  (2count
.
u0
v1"
trackable_list_wrapper
-
w	variables"
_generic_user_object
:  (2total
:  (2count
.
y0
z1"
trackable_list_wrapper
-
{	variables"
_generic_user_object
':%
??2Adam/dense_8/kernel/m
 :?2Adam/dense_8/bias/m
&:$	?d2Adam/dense_9/kernel/m
:d2Adam/dense_9/bias/m
&:$d22Adam/dense_10/kernel/m
 :22Adam/dense_10/bias/m
&:$22Adam/dense_11/kernel/m
 :2Adam/dense_11/bias/m
1:/	?2 Adam/lstm_4/lstm_cell_4/kernel/m
<::
??2*Adam/lstm_4/lstm_cell_4/recurrent_kernel/m
+:)?2Adam/lstm_4/lstm_cell_4/bias/m
2:0
??2 Adam/lstm_5/lstm_cell_5/kernel/m
<::
??2*Adam/lstm_5/lstm_cell_5/recurrent_kernel/m
+:)?2Adam/lstm_5/lstm_cell_5/bias/m
':%
??2Adam/dense_8/kernel/v
 :?2Adam/dense_8/bias/v
&:$	?d2Adam/dense_9/kernel/v
:d2Adam/dense_9/bias/v
&:$d22Adam/dense_10/kernel/v
 :22Adam/dense_10/bias/v
&:$22Adam/dense_11/kernel/v
 :2Adam/dense_11/bias/v
1:/	?2 Adam/lstm_4/lstm_cell_4/kernel/v
<::
??2*Adam/lstm_4/lstm_cell_4/recurrent_kernel/v
+:)?2Adam/lstm_4/lstm_cell_4/bias/v
2:0
??2 Adam/lstm_5/lstm_cell_5/kernel/v
<::
??2*Adam/lstm_5/lstm_cell_5/recurrent_kernel/v
+:)?2Adam/lstm_5/lstm_cell_5/bias/v
?2?
-__inference_sequential_2_layer_call_fn_184093
-__inference_sequential_2_layer_call_fn_184022
-__inference_sequential_2_layer_call_fn_184829
-__inference_sequential_2_layer_call_fn_184862?
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
H__inference_sequential_2_layer_call_and_return_conditional_losses_184796
H__inference_sequential_2_layer_call_and_return_conditional_losses_184466
H__inference_sequential_2_layer_call_and_return_conditional_losses_183950
H__inference_sequential_2_layer_call_and_return_conditional_losses_183912?
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
?2?
!__inference__wrapped_model_181909?
???
FullArgSpec
args? 
varargsjargs
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? */?,
*?'
lstm_4_input?????????
?2?
'__inference_lstm_4_layer_call_fn_185507
'__inference_lstm_4_layer_call_fn_185190
'__inference_lstm_4_layer_call_fn_185518
'__inference_lstm_4_layer_call_fn_185179?
???
FullArgSpecB
args:?7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults?

 
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
B__inference_lstm_4_layer_call_and_return_conditional_losses_185015
B__inference_lstm_4_layer_call_and_return_conditional_losses_185343
B__inference_lstm_4_layer_call_and_return_conditional_losses_185168
B__inference_lstm_4_layer_call_and_return_conditional_losses_185496?
???
FullArgSpecB
args:?7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults?

 
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
'__inference_lstm_5_layer_call_fn_185835
'__inference_lstm_5_layer_call_fn_186163
'__inference_lstm_5_layer_call_fn_185846
'__inference_lstm_5_layer_call_fn_186174?
???
FullArgSpecB
args:?7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults?

 
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
B__inference_lstm_5_layer_call_and_return_conditional_losses_185671
B__inference_lstm_5_layer_call_and_return_conditional_losses_186152
B__inference_lstm_5_layer_call_and_return_conditional_losses_185824
B__inference_lstm_5_layer_call_and_return_conditional_losses_185999?
???
FullArgSpecB
args:?7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults?

 
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
(__inference_dense_8_layer_call_fn_186194?
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
C__inference_dense_8_layer_call_and_return_conditional_losses_186185?
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
(__inference_dense_9_layer_call_fn_186214?
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
C__inference_dense_9_layer_call_and_return_conditional_losses_186205?
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
)__inference_dense_10_layer_call_fn_186234?
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
D__inference_dense_10_layer_call_and_return_conditional_losses_186225?
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
)__inference_dense_11_layer_call_fn_186254?
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
D__inference_dense_11_layer_call_and_return_conditional_losses_186245?
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
?B?
$__inference_signature_wrapper_184136lstm_4_input"?
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
?2?
,__inference_lstm_cell_4_layer_call_fn_186354
,__inference_lstm_cell_4_layer_call_fn_186337?
???
FullArgSpec3
args+?(
jself
jinputs
jstates

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
G__inference_lstm_cell_4_layer_call_and_return_conditional_losses_186287
G__inference_lstm_cell_4_layer_call_and_return_conditional_losses_186320?
???
FullArgSpec3
args+?(
jself
jinputs
jstates

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
,__inference_lstm_cell_5_layer_call_fn_186437
,__inference_lstm_cell_5_layer_call_fn_186454?
???
FullArgSpec3
args+?(
jself
jinputs
jstates

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
G__inference_lstm_cell_5_layer_call_and_return_conditional_losses_186420
G__inference_lstm_cell_5_layer_call_and_return_conditional_losses_186387?
???
FullArgSpec3
args+?(
jself
jinputs
jstates

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
 ?
!__inference__wrapped_model_181909?6789:; %&+,9?6
/?,
*?'
lstm_4_input?????????
? "3?0
.
dense_11"?
dense_11??????????
D__inference_dense_10_layer_call_and_return_conditional_losses_186225\%&/?,
%?"
 ?
inputs?????????d
? "%?"
?
0?????????2
? |
)__inference_dense_10_layer_call_fn_186234O%&/?,
%?"
 ?
inputs?????????d
? "??????????2?
D__inference_dense_11_layer_call_and_return_conditional_losses_186245\+,/?,
%?"
 ?
inputs?????????2
? "%?"
?
0?????????
? |
)__inference_dense_11_layer_call_fn_186254O+,/?,
%?"
 ?
inputs?????????2
? "???????????
C__inference_dense_8_layer_call_and_return_conditional_losses_186185^0?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? }
(__inference_dense_8_layer_call_fn_186194Q0?-
&?#
!?
inputs??????????
? "????????????
C__inference_dense_9_layer_call_and_return_conditional_losses_186205] 0?-
&?#
!?
inputs??????????
? "%?"
?
0?????????d
? |
(__inference_dense_9_layer_call_fn_186214P 0?-
&?#
!?
inputs??????????
? "??????????d?
B__inference_lstm_4_layer_call_and_return_conditional_losses_185015?678O?L
E?B
4?1
/?,
inputs/0??????????????????

 
p

 
? "3?0
)?&
0???????????????????
? ?
B__inference_lstm_4_layer_call_and_return_conditional_losses_185168?678O?L
E?B
4?1
/?,
inputs/0??????????????????

 
p 

 
? "3?0
)?&
0???????????????????
? ?
B__inference_lstm_4_layer_call_and_return_conditional_losses_185343r678??<
5?2
$?!
inputs?????????

 
p

 
? "*?'
 ?
0??????????
? ?
B__inference_lstm_4_layer_call_and_return_conditional_losses_185496r678??<
5?2
$?!
inputs?????????

 
p 

 
? "*?'
 ?
0??????????
? ?
'__inference_lstm_4_layer_call_fn_185179~678O?L
E?B
4?1
/?,
inputs/0??????????????????

 
p

 
? "&?#????????????????????
'__inference_lstm_4_layer_call_fn_185190~678O?L
E?B
4?1
/?,
inputs/0??????????????????

 
p 

 
? "&?#????????????????????
'__inference_lstm_4_layer_call_fn_185507e678??<
5?2
$?!
inputs?????????

 
p

 
? "????????????
'__inference_lstm_4_layer_call_fn_185518e678??<
5?2
$?!
inputs?????????

 
p 

 
? "????????????
B__inference_lstm_5_layer_call_and_return_conditional_losses_185671o9:;@?=
6?3
%?"
inputs??????????

 
p

 
? "&?#
?
0??????????
? ?
B__inference_lstm_5_layer_call_and_return_conditional_losses_185824o9:;@?=
6?3
%?"
inputs??????????

 
p 

 
? "&?#
?
0??????????
? ?
B__inference_lstm_5_layer_call_and_return_conditional_losses_1859999:;P?M
F?C
5?2
0?-
inputs/0???????????????????

 
p

 
? "&?#
?
0??????????
? ?
B__inference_lstm_5_layer_call_and_return_conditional_losses_1861529:;P?M
F?C
5?2
0?-
inputs/0???????????????????

 
p 

 
? "&?#
?
0??????????
? ?
'__inference_lstm_5_layer_call_fn_185835b9:;@?=
6?3
%?"
inputs??????????

 
p

 
? "????????????
'__inference_lstm_5_layer_call_fn_185846b9:;@?=
6?3
%?"
inputs??????????

 
p 

 
? "????????????
'__inference_lstm_5_layer_call_fn_186163r9:;P?M
F?C
5?2
0?-
inputs/0???????????????????

 
p

 
? "????????????
'__inference_lstm_5_layer_call_fn_186174r9:;P?M
F?C
5?2
0?-
inputs/0???????????????????

 
p 

 
? "????????????
G__inference_lstm_cell_4_layer_call_and_return_conditional_losses_186287?678??
x?u
 ?
inputs?????????
M?J
#? 
states/0??????????
#? 
states/1??????????
p
? "v?s
l?i
?
0/0??????????
G?D
 ?
0/1/0??????????
 ?
0/1/1??????????
? ?
G__inference_lstm_cell_4_layer_call_and_return_conditional_losses_186320?678??
x?u
 ?
inputs?????????
M?J
#? 
states/0??????????
#? 
states/1??????????
p 
? "v?s
l?i
?
0/0??????????
G?D
 ?
0/1/0??????????
 ?
0/1/1??????????
? ?
,__inference_lstm_cell_4_layer_call_fn_186337?678??
x?u
 ?
inputs?????????
M?J
#? 
states/0??????????
#? 
states/1??????????
p
? "f?c
?
0??????????
C?@
?
1/0??????????
?
1/1???????????
,__inference_lstm_cell_4_layer_call_fn_186354?678??
x?u
 ?
inputs?????????
M?J
#? 
states/0??????????
#? 
states/1??????????
p 
? "f?c
?
0??????????
C?@
?
1/0??????????
?
1/1???????????
G__inference_lstm_cell_5_layer_call_and_return_conditional_losses_186387?9:;???
y?v
!?
inputs??????????
M?J
#? 
states/0??????????
#? 
states/1??????????
p
? "v?s
l?i
?
0/0??????????
G?D
 ?
0/1/0??????????
 ?
0/1/1??????????
? ?
G__inference_lstm_cell_5_layer_call_and_return_conditional_losses_186420?9:;???
y?v
!?
inputs??????????
M?J
#? 
states/0??????????
#? 
states/1??????????
p 
? "v?s
l?i
?
0/0??????????
G?D
 ?
0/1/0??????????
 ?
0/1/1??????????
? ?
,__inference_lstm_cell_5_layer_call_fn_186437?9:;???
y?v
!?
inputs??????????
M?J
#? 
states/0??????????
#? 
states/1??????????
p
? "f?c
?
0??????????
C?@
?
1/0??????????
?
1/1???????????
,__inference_lstm_cell_5_layer_call_fn_186454?9:;???
y?v
!?
inputs??????????
M?J
#? 
states/0??????????
#? 
states/1??????????
p 
? "f?c
?
0??????????
C?@
?
1/0??????????
?
1/1???????????
H__inference_sequential_2_layer_call_and_return_conditional_losses_183912z6789:; %&+,A?>
7?4
*?'
lstm_4_input?????????
p

 
? "%?"
?
0?????????
? ?
H__inference_sequential_2_layer_call_and_return_conditional_losses_183950z6789:; %&+,A?>
7?4
*?'
lstm_4_input?????????
p 

 
? "%?"
?
0?????????
? ?
H__inference_sequential_2_layer_call_and_return_conditional_losses_184466t6789:; %&+,;?8
1?.
$?!
inputs?????????
p

 
? "%?"
?
0?????????
? ?
H__inference_sequential_2_layer_call_and_return_conditional_losses_184796t6789:; %&+,;?8
1?.
$?!
inputs?????????
p 

 
? "%?"
?
0?????????
? ?
-__inference_sequential_2_layer_call_fn_184022m6789:; %&+,A?>
7?4
*?'
lstm_4_input?????????
p

 
? "???????????
-__inference_sequential_2_layer_call_fn_184093m6789:; %&+,A?>
7?4
*?'
lstm_4_input?????????
p 

 
? "???????????
-__inference_sequential_2_layer_call_fn_184829g6789:; %&+,;?8
1?.
$?!
inputs?????????
p

 
? "???????????
-__inference_sequential_2_layer_call_fn_184862g6789:; %&+,;?8
1?.
$?!
inputs?????????
p 

 
? "???????????
$__inference_signature_wrapper_184136?6789:; %&+,I?F
? 
??<
:
lstm_4_input*?'
lstm_4_input?????????"3?0
.
dense_11"?
dense_11?????????