       £K"	   U9ÖAbrain.Event:2JŖŹCl±     AÓ÷	xģ%U9ÖA"ßā
b
D_pre/PlaceholderPlaceholder*
dtype0*
shape
:*
_output_shapes

:
d
D_pre/Placeholder_1Placeholder*
dtype0*
shape
:*
_output_shapes

:

*D_pre/d0/w/Initializer/random_normal/shapeConst*
dtype0*
valueB"      *
_output_shapes
:*
_class
loc:@D_pre/d0/w

)D_pre/d0/w/Initializer/random_normal/meanConst*
dtype0*
valueB
 *    *
_output_shapes
: *
_class
loc:@D_pre/d0/w

+D_pre/d0/w/Initializer/random_normal/stddevConst*
dtype0*
valueB
 *  ?*
_output_shapes
: *
_class
loc:@D_pre/d0/w
ė
9D_pre/d0/w/Initializer/random_normal/RandomStandardNormalRandomStandardNormal*D_pre/d0/w/Initializer/random_normal/shape*
T0*
_output_shapes

:*
dtype0*
seed2 *

seed *
_class
loc:@D_pre/d0/w
ß
(D_pre/d0/w/Initializer/random_normal/mulMul9D_pre/d0/w/Initializer/random_normal/RandomStandardNormal+D_pre/d0/w/Initializer/random_normal/stddev*
_output_shapes

:*
T0*
_class
loc:@D_pre/d0/w
Č
$D_pre/d0/w/Initializer/random_normalAdd(D_pre/d0/w/Initializer/random_normal/mul)D_pre/d0/w/Initializer/random_normal/mean*
_output_shapes

:*
T0*
_class
loc:@D_pre/d0/w


D_pre/d0/w
VariableV2*
	container *
_output_shapes

:*
dtype0*
shape
:*
_class
loc:@D_pre/d0/w*
shared_name 
¾
D_pre/d0/w/AssignAssign
D_pre/d0/w$D_pre/d0/w/Initializer/random_normal*
_output_shapes

:*
validate_shape(*
use_locking(*
T0*
_class
loc:@D_pre/d0/w
o
D_pre/d0/w/readIdentity
D_pre/d0/w*
_output_shapes

:*
T0*
_class
loc:@D_pre/d0/w

D_pre/d0/b/Initializer/ConstConst*
dtype0*
valueB*    *
_output_shapes
:*
_class
loc:@D_pre/d0/b


D_pre/d0/b
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*
_class
loc:@D_pre/d0/b*
shared_name 
²
D_pre/d0/b/AssignAssign
D_pre/d0/bD_pre/d0/b/Initializer/Const*
_output_shapes
:*
validate_shape(*
use_locking(*
T0*
_class
loc:@D_pre/d0/b
k
D_pre/d0/b/readIdentity
D_pre/d0/b*
_output_shapes
:*
T0*
_class
loc:@D_pre/d0/b

D_pre/d0/MatMulMatMulD_pre/PlaceholderD_pre/d0/w/read*
_output_shapes

:*
transpose_a( *
transpose_b( *
T0
^
D_pre/d0/addAddD_pre/d0/MatMulD_pre/d0/b/read*
T0*
_output_shapes

:
I

D_pre/TanhTanhD_pre/d0/add*
T0*
_output_shapes

:

*D_pre/d1/w/Initializer/random_normal/shapeConst*
dtype0*
valueB"      *
_output_shapes
:*
_class
loc:@D_pre/d1/w

)D_pre/d1/w/Initializer/random_normal/meanConst*
dtype0*
valueB
 *    *
_output_shapes
: *
_class
loc:@D_pre/d1/w

+D_pre/d1/w/Initializer/random_normal/stddevConst*
dtype0*
valueB
 *  ?*
_output_shapes
: *
_class
loc:@D_pre/d1/w
ė
9D_pre/d1/w/Initializer/random_normal/RandomStandardNormalRandomStandardNormal*D_pre/d1/w/Initializer/random_normal/shape*
T0*
_output_shapes

:*
dtype0*
seed2 *

seed *
_class
loc:@D_pre/d1/w
ß
(D_pre/d1/w/Initializer/random_normal/mulMul9D_pre/d1/w/Initializer/random_normal/RandomStandardNormal+D_pre/d1/w/Initializer/random_normal/stddev*
_output_shapes

:*
T0*
_class
loc:@D_pre/d1/w
Č
$D_pre/d1/w/Initializer/random_normalAdd(D_pre/d1/w/Initializer/random_normal/mul)D_pre/d1/w/Initializer/random_normal/mean*
_output_shapes

:*
T0*
_class
loc:@D_pre/d1/w


D_pre/d1/w
VariableV2*
	container *
_output_shapes

:*
dtype0*
shape
:*
_class
loc:@D_pre/d1/w*
shared_name 
¾
D_pre/d1/w/AssignAssign
D_pre/d1/w$D_pre/d1/w/Initializer/random_normal*
_output_shapes

:*
validate_shape(*
use_locking(*
T0*
_class
loc:@D_pre/d1/w
o
D_pre/d1/w/readIdentity
D_pre/d1/w*
_output_shapes

:*
T0*
_class
loc:@D_pre/d1/w

D_pre/d1/b/Initializer/ConstConst*
dtype0*
valueB*    *
_output_shapes
:*
_class
loc:@D_pre/d1/b


D_pre/d1/b
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*
_class
loc:@D_pre/d1/b*
shared_name 
²
D_pre/d1/b/AssignAssign
D_pre/d1/bD_pre/d1/b/Initializer/Const*
_output_shapes
:*
validate_shape(*
use_locking(*
T0*
_class
loc:@D_pre/d1/b
k
D_pre/d1/b/readIdentity
D_pre/d1/b*
_output_shapes
:*
T0*
_class
loc:@D_pre/d1/b

D_pre/d1/MatMulMatMul
D_pre/TanhD_pre/d1/w/read*
_output_shapes

:*
transpose_a( *
transpose_b( *
T0
^
D_pre/d1/addAddD_pre/d1/MatMulD_pre/d1/b/read*
T0*
_output_shapes

:
K
D_pre/Tanh_1TanhD_pre/d1/add*
T0*
_output_shapes

:

*D_pre/d2/w/Initializer/random_normal/shapeConst*
dtype0*
valueB"      *
_output_shapes
:*
_class
loc:@D_pre/d2/w

)D_pre/d2/w/Initializer/random_normal/meanConst*
dtype0*
valueB
 *    *
_output_shapes
: *
_class
loc:@D_pre/d2/w

+D_pre/d2/w/Initializer/random_normal/stddevConst*
dtype0*
valueB
 *  ?*
_output_shapes
: *
_class
loc:@D_pre/d2/w
ė
9D_pre/d2/w/Initializer/random_normal/RandomStandardNormalRandomStandardNormal*D_pre/d2/w/Initializer/random_normal/shape*
T0*
_output_shapes

:*
dtype0*
seed2 *

seed *
_class
loc:@D_pre/d2/w
ß
(D_pre/d2/w/Initializer/random_normal/mulMul9D_pre/d2/w/Initializer/random_normal/RandomStandardNormal+D_pre/d2/w/Initializer/random_normal/stddev*
_output_shapes

:*
T0*
_class
loc:@D_pre/d2/w
Č
$D_pre/d2/w/Initializer/random_normalAdd(D_pre/d2/w/Initializer/random_normal/mul)D_pre/d2/w/Initializer/random_normal/mean*
_output_shapes

:*
T0*
_class
loc:@D_pre/d2/w


D_pre/d2/w
VariableV2*
	container *
_output_shapes

:*
dtype0*
shape
:*
_class
loc:@D_pre/d2/w*
shared_name 
¾
D_pre/d2/w/AssignAssign
D_pre/d2/w$D_pre/d2/w/Initializer/random_normal*
_output_shapes

:*
validate_shape(*
use_locking(*
T0*
_class
loc:@D_pre/d2/w
o
D_pre/d2/w/readIdentity
D_pre/d2/w*
_output_shapes

:*
T0*
_class
loc:@D_pre/d2/w

D_pre/d2/b/Initializer/ConstConst*
dtype0*
valueB*    *
_output_shapes
:*
_class
loc:@D_pre/d2/b


D_pre/d2/b
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*
_class
loc:@D_pre/d2/b*
shared_name 
²
D_pre/d2/b/AssignAssign
D_pre/d2/bD_pre/d2/b/Initializer/Const*
_output_shapes
:*
validate_shape(*
use_locking(*
T0*
_class
loc:@D_pre/d2/b
k
D_pre/d2/b/readIdentity
D_pre/d2/b*
_output_shapes
:*
T0*
_class
loc:@D_pre/d2/b

D_pre/d2/MatMulMatMulD_pre/Tanh_1D_pre/d2/w/read*
_output_shapes

:*
transpose_a( *
transpose_b( *
T0
^
D_pre/d2/addAddD_pre/d2/MatMulD_pre/d2/b/read*
T0*
_output_shapes

:
K
D_pre/Tanh_2TanhD_pre/d2/add*
T0*
_output_shapes

:

*D_pre/d3/w/Initializer/random_normal/shapeConst*
dtype0*
valueB"      *
_output_shapes
:*
_class
loc:@D_pre/d3/w

)D_pre/d3/w/Initializer/random_normal/meanConst*
dtype0*
valueB
 *    *
_output_shapes
: *
_class
loc:@D_pre/d3/w

+D_pre/d3/w/Initializer/random_normal/stddevConst*
dtype0*
valueB
 *  ?*
_output_shapes
: *
_class
loc:@D_pre/d3/w
ė
9D_pre/d3/w/Initializer/random_normal/RandomStandardNormalRandomStandardNormal*D_pre/d3/w/Initializer/random_normal/shape*
T0*
_output_shapes

:*
dtype0*
seed2 *

seed *
_class
loc:@D_pre/d3/w
ß
(D_pre/d3/w/Initializer/random_normal/mulMul9D_pre/d3/w/Initializer/random_normal/RandomStandardNormal+D_pre/d3/w/Initializer/random_normal/stddev*
_output_shapes

:*
T0*
_class
loc:@D_pre/d3/w
Č
$D_pre/d3/w/Initializer/random_normalAdd(D_pre/d3/w/Initializer/random_normal/mul)D_pre/d3/w/Initializer/random_normal/mean*
_output_shapes

:*
T0*
_class
loc:@D_pre/d3/w


D_pre/d3/w
VariableV2*
	container *
_output_shapes

:*
dtype0*
shape
:*
_class
loc:@D_pre/d3/w*
shared_name 
¾
D_pre/d3/w/AssignAssign
D_pre/d3/w$D_pre/d3/w/Initializer/random_normal*
_output_shapes

:*
validate_shape(*
use_locking(*
T0*
_class
loc:@D_pre/d3/w
o
D_pre/d3/w/readIdentity
D_pre/d3/w*
_output_shapes

:*
T0*
_class
loc:@D_pre/d3/w

D_pre/d3/b/Initializer/ConstConst*
dtype0*
valueB*    *
_output_shapes
:*
_class
loc:@D_pre/d3/b


D_pre/d3/b
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*
_class
loc:@D_pre/d3/b*
shared_name 
²
D_pre/d3/b/AssignAssign
D_pre/d3/bD_pre/d3/b/Initializer/Const*
_output_shapes
:*
validate_shape(*
use_locking(*
T0*
_class
loc:@D_pre/d3/b
k
D_pre/d3/b/readIdentity
D_pre/d3/b*
_output_shapes
:*
T0*
_class
loc:@D_pre/d3/b

D_pre/d3/MatMulMatMulD_pre/Tanh_2D_pre/d3/w/read*
_output_shapes

:*
transpose_a( *
transpose_b( *
T0
^
D_pre/d3/addAddD_pre/d3/MatMulD_pre/d3/b/read*
T0*
_output_shapes

:
O
D_pre/SigmoidSigmoidD_pre/d3/add*
T0*
_output_shapes

:
]
	D_pre/subSubD_pre/SigmoidD_pre/Placeholder_1*
T0*
_output_shapes

:
J
D_pre/SquareSquare	D_pre/sub*
T0*
_output_shapes

:
\
D_pre/ConstConst*
dtype0*
valueB"       *
_output_shapes
:
k

D_pre/MeanMeanD_pre/SquareD_pre/Const*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
^
D_pre/Variable/initial_valueConst*
dtype0*
value	B : *
_output_shapes
: 
r
D_pre/Variable
VariableV2*
dtype0*
	container *
shape: *
_output_shapes
: *
shared_name 
ŗ
D_pre/Variable/AssignAssignD_pre/VariableD_pre/Variable/initial_value*
_output_shapes
: *
validate_shape(*
use_locking(*
T0*!
_class
loc:@D_pre/Variable
s
D_pre/Variable/readIdentityD_pre/Variable*
_output_shapes
: *
T0*!
_class
loc:@D_pre/Variable
i
$D_pre/ExponentialDecay/learning_rateConst*
dtype0*
valueB
 *Āõ<*
_output_shapes
: 
h
D_pre/ExponentialDecay/CastCastD_pre/Variable/read*

SrcT0*

DstT0*
_output_shapes
: 
b
D_pre/ExponentialDecay/Cast_1/xConst*
dtype0*
value
B :*
_output_shapes
: 
v
D_pre/ExponentialDecay/Cast_1CastD_pre/ExponentialDecay/Cast_1/x*

SrcT0*

DstT0*
_output_shapes
: 
d
D_pre/ExponentialDecay/Cast_2/xConst*
dtype0*
valueB
 *33s?*
_output_shapes
: 

D_pre/ExponentialDecay/truedivRealDivD_pre/ExponentialDecay/CastD_pre/ExponentialDecay/Cast_1*
T0*
_output_shapes
: 
f
D_pre/ExponentialDecay/FloorFloorD_pre/ExponentialDecay/truediv*
T0*
_output_shapes
: 

D_pre/ExponentialDecay/PowPowD_pre/ExponentialDecay/Cast_2/xD_pre/ExponentialDecay/Floor*
T0*
_output_shapes
: 

D_pre/ExponentialDecayMul$D_pre/ExponentialDecay/learning_rateD_pre/ExponentialDecay/Pow*
T0*
_output_shapes
: 
X
D_pre/gradients/ShapeConst*
dtype0*
valueB *
_output_shapes
: 
Z
D_pre/gradients/ConstConst*
dtype0*
valueB
 *  ?*
_output_shapes
: 
k
D_pre/gradients/FillFillD_pre/gradients/ShapeD_pre/gradients/Const*
T0*
_output_shapes
: 
~
-D_pre/gradients/D_pre/Mean_grad/Reshape/shapeConst*
dtype0*
valueB"      *
_output_shapes
:
®
'D_pre/gradients/D_pre/Mean_grad/ReshapeReshapeD_pre/gradients/Fill-D_pre/gradients/D_pre/Mean_grad/Reshape/shape*
Tshape0*
T0*
_output_shapes

:

.D_pre/gradients/D_pre/Mean_grad/Tile/multiplesConst*
dtype0*
valueB"      *
_output_shapes
:
Ą
$D_pre/gradients/D_pre/Mean_grad/TileTile'D_pre/gradients/D_pre/Mean_grad/Reshape.D_pre/gradients/D_pre/Mean_grad/Tile/multiples*
T0*
_output_shapes

:*

Tmultiples0
v
%D_pre/gradients/D_pre/Mean_grad/ShapeConst*
dtype0*
valueB"      *
_output_shapes
:
j
'D_pre/gradients/D_pre/Mean_grad/Shape_1Const*
dtype0*
valueB *
_output_shapes
: 
o
%D_pre/gradients/D_pre/Mean_grad/ConstConst*
dtype0*
valueB: *
_output_shapes
:
ø
$D_pre/gradients/D_pre/Mean_grad/ProdProd%D_pre/gradients/D_pre/Mean_grad/Shape%D_pre/gradients/D_pre/Mean_grad/Const*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
q
'D_pre/gradients/D_pre/Mean_grad/Const_1Const*
dtype0*
valueB: *
_output_shapes
:
¾
&D_pre/gradients/D_pre/Mean_grad/Prod_1Prod'D_pre/gradients/D_pre/Mean_grad/Shape_1'D_pre/gradients/D_pre/Mean_grad/Const_1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
k
)D_pre/gradients/D_pre/Mean_grad/Maximum/yConst*
dtype0*
value	B :*
_output_shapes
: 
¦
'D_pre/gradients/D_pre/Mean_grad/MaximumMaximum&D_pre/gradients/D_pre/Mean_grad/Prod_1)D_pre/gradients/D_pre/Mean_grad/Maximum/y*
T0*
_output_shapes
: 
¤
(D_pre/gradients/D_pre/Mean_grad/floordivFloorDiv$D_pre/gradients/D_pre/Mean_grad/Prod'D_pre/gradients/D_pre/Mean_grad/Maximum*
T0*
_output_shapes
: 

$D_pre/gradients/D_pre/Mean_grad/CastCast(D_pre/gradients/D_pre/Mean_grad/floordiv*

SrcT0*

DstT0*
_output_shapes
: 
§
'D_pre/gradients/D_pre/Mean_grad/truedivRealDiv$D_pre/gradients/D_pre/Mean_grad/Tile$D_pre/gradients/D_pre/Mean_grad/Cast*
T0*
_output_shapes

:

'D_pre/gradients/D_pre/Square_grad/mul/xConst(^D_pre/gradients/D_pre/Mean_grad/truediv*
dtype0*
valueB
 *   @*
_output_shapes
: 

%D_pre/gradients/D_pre/Square_grad/mulMul'D_pre/gradients/D_pre/Square_grad/mul/x	D_pre/sub*
T0*
_output_shapes

:
§
'D_pre/gradients/D_pre/Square_grad/mul_1Mul'D_pre/gradients/D_pre/Mean_grad/truediv%D_pre/gradients/D_pre/Square_grad/mul*
T0*
_output_shapes

:
u
$D_pre/gradients/D_pre/sub_grad/ShapeConst*
dtype0*
valueB"      *
_output_shapes
:
w
&D_pre/gradients/D_pre/sub_grad/Shape_1Const*
dtype0*
valueB"      *
_output_shapes
:
Ų
4D_pre/gradients/D_pre/sub_grad/BroadcastGradientArgsBroadcastGradientArgs$D_pre/gradients/D_pre/sub_grad/Shape&D_pre/gradients/D_pre/sub_grad/Shape_1*
T0*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’
Č
"D_pre/gradients/D_pre/sub_grad/SumSum'D_pre/gradients/D_pre/Square_grad/mul_14D_pre/gradients/D_pre/sub_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
²
&D_pre/gradients/D_pre/sub_grad/ReshapeReshape"D_pre/gradients/D_pre/sub_grad/Sum$D_pre/gradients/D_pre/sub_grad/Shape*
Tshape0*
T0*
_output_shapes

:
Ģ
$D_pre/gradients/D_pre/sub_grad/Sum_1Sum'D_pre/gradients/D_pre/Square_grad/mul_16D_pre/gradients/D_pre/sub_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
r
"D_pre/gradients/D_pre/sub_grad/NegNeg$D_pre/gradients/D_pre/sub_grad/Sum_1*
T0*
_output_shapes
:
¶
(D_pre/gradients/D_pre/sub_grad/Reshape_1Reshape"D_pre/gradients/D_pre/sub_grad/Neg&D_pre/gradients/D_pre/sub_grad/Shape_1*
Tshape0*
T0*
_output_shapes

:

/D_pre/gradients/D_pre/sub_grad/tuple/group_depsNoOp'^D_pre/gradients/D_pre/sub_grad/Reshape)^D_pre/gradients/D_pre/sub_grad/Reshape_1

7D_pre/gradients/D_pre/sub_grad/tuple/control_dependencyIdentity&D_pre/gradients/D_pre/sub_grad/Reshape0^D_pre/gradients/D_pre/sub_grad/tuple/group_deps*
_output_shapes

:*
T0*9
_class/
-+loc:@D_pre/gradients/D_pre/sub_grad/Reshape

9D_pre/gradients/D_pre/sub_grad/tuple/control_dependency_1Identity(D_pre/gradients/D_pre/sub_grad/Reshape_10^D_pre/gradients/D_pre/sub_grad/tuple/group_deps*
_output_shapes

:*
T0*;
_class1
/-loc:@D_pre/gradients/D_pre/sub_grad/Reshape_1
®
.D_pre/gradients/D_pre/Sigmoid_grad/SigmoidGradSigmoidGradD_pre/Sigmoid7D_pre/gradients/D_pre/sub_grad/tuple/control_dependency*
T0*
_output_shapes

:
x
'D_pre/gradients/D_pre/d3/add_grad/ShapeConst*
dtype0*
valueB"      *
_output_shapes
:
s
)D_pre/gradients/D_pre/d3/add_grad/Shape_1Const*
dtype0*
valueB:*
_output_shapes
:
į
7D_pre/gradients/D_pre/d3/add_grad/BroadcastGradientArgsBroadcastGradientArgs'D_pre/gradients/D_pre/d3/add_grad/Shape)D_pre/gradients/D_pre/d3/add_grad/Shape_1*
T0*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’
Õ
%D_pre/gradients/D_pre/d3/add_grad/SumSum.D_pre/gradients/D_pre/Sigmoid_grad/SigmoidGrad7D_pre/gradients/D_pre/d3/add_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
»
)D_pre/gradients/D_pre/d3/add_grad/ReshapeReshape%D_pre/gradients/D_pre/d3/add_grad/Sum'D_pre/gradients/D_pre/d3/add_grad/Shape*
Tshape0*
T0*
_output_shapes

:
Ł
'D_pre/gradients/D_pre/d3/add_grad/Sum_1Sum.D_pre/gradients/D_pre/Sigmoid_grad/SigmoidGrad9D_pre/gradients/D_pre/d3/add_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
½
+D_pre/gradients/D_pre/d3/add_grad/Reshape_1Reshape'D_pre/gradients/D_pre/d3/add_grad/Sum_1)D_pre/gradients/D_pre/d3/add_grad/Shape_1*
Tshape0*
T0*
_output_shapes
:

2D_pre/gradients/D_pre/d3/add_grad/tuple/group_depsNoOp*^D_pre/gradients/D_pre/d3/add_grad/Reshape,^D_pre/gradients/D_pre/d3/add_grad/Reshape_1

:D_pre/gradients/D_pre/d3/add_grad/tuple/control_dependencyIdentity)D_pre/gradients/D_pre/d3/add_grad/Reshape3^D_pre/gradients/D_pre/d3/add_grad/tuple/group_deps*
_output_shapes

:*
T0*<
_class2
0.loc:@D_pre/gradients/D_pre/d3/add_grad/Reshape

<D_pre/gradients/D_pre/d3/add_grad/tuple/control_dependency_1Identity+D_pre/gradients/D_pre/d3/add_grad/Reshape_13^D_pre/gradients/D_pre/d3/add_grad/tuple/group_deps*
_output_shapes
:*
T0*>
_class4
20loc:@D_pre/gradients/D_pre/d3/add_grad/Reshape_1
Ń
+D_pre/gradients/D_pre/d3/MatMul_grad/MatMulMatMul:D_pre/gradients/D_pre/d3/add_grad/tuple/control_dependencyD_pre/d3/w/read*
_output_shapes

:*
transpose_a( *
transpose_b(*
T0
Š
-D_pre/gradients/D_pre/d3/MatMul_grad/MatMul_1MatMulD_pre/Tanh_2:D_pre/gradients/D_pre/d3/add_grad/tuple/control_dependency*
_output_shapes

:*
transpose_a(*
transpose_b( *
T0

5D_pre/gradients/D_pre/d3/MatMul_grad/tuple/group_depsNoOp,^D_pre/gradients/D_pre/d3/MatMul_grad/MatMul.^D_pre/gradients/D_pre/d3/MatMul_grad/MatMul_1

=D_pre/gradients/D_pre/d3/MatMul_grad/tuple/control_dependencyIdentity+D_pre/gradients/D_pre/d3/MatMul_grad/MatMul6^D_pre/gradients/D_pre/d3/MatMul_grad/tuple/group_deps*
_output_shapes

:*
T0*>
_class4
20loc:@D_pre/gradients/D_pre/d3/MatMul_grad/MatMul

?D_pre/gradients/D_pre/d3/MatMul_grad/tuple/control_dependency_1Identity-D_pre/gradients/D_pre/d3/MatMul_grad/MatMul_16^D_pre/gradients/D_pre/d3/MatMul_grad/tuple/group_deps*
_output_shapes

:*
T0*@
_class6
42loc:@D_pre/gradients/D_pre/d3/MatMul_grad/MatMul_1
¬
*D_pre/gradients/D_pre/Tanh_2_grad/TanhGradTanhGradD_pre/Tanh_2=D_pre/gradients/D_pre/d3/MatMul_grad/tuple/control_dependency*
T0*
_output_shapes

:
x
'D_pre/gradients/D_pre/d2/add_grad/ShapeConst*
dtype0*
valueB"      *
_output_shapes
:
s
)D_pre/gradients/D_pre/d2/add_grad/Shape_1Const*
dtype0*
valueB:*
_output_shapes
:
į
7D_pre/gradients/D_pre/d2/add_grad/BroadcastGradientArgsBroadcastGradientArgs'D_pre/gradients/D_pre/d2/add_grad/Shape)D_pre/gradients/D_pre/d2/add_grad/Shape_1*
T0*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’
Ń
%D_pre/gradients/D_pre/d2/add_grad/SumSum*D_pre/gradients/D_pre/Tanh_2_grad/TanhGrad7D_pre/gradients/D_pre/d2/add_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
»
)D_pre/gradients/D_pre/d2/add_grad/ReshapeReshape%D_pre/gradients/D_pre/d2/add_grad/Sum'D_pre/gradients/D_pre/d2/add_grad/Shape*
Tshape0*
T0*
_output_shapes

:
Õ
'D_pre/gradients/D_pre/d2/add_grad/Sum_1Sum*D_pre/gradients/D_pre/Tanh_2_grad/TanhGrad9D_pre/gradients/D_pre/d2/add_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
½
+D_pre/gradients/D_pre/d2/add_grad/Reshape_1Reshape'D_pre/gradients/D_pre/d2/add_grad/Sum_1)D_pre/gradients/D_pre/d2/add_grad/Shape_1*
Tshape0*
T0*
_output_shapes
:

2D_pre/gradients/D_pre/d2/add_grad/tuple/group_depsNoOp*^D_pre/gradients/D_pre/d2/add_grad/Reshape,^D_pre/gradients/D_pre/d2/add_grad/Reshape_1

:D_pre/gradients/D_pre/d2/add_grad/tuple/control_dependencyIdentity)D_pre/gradients/D_pre/d2/add_grad/Reshape3^D_pre/gradients/D_pre/d2/add_grad/tuple/group_deps*
_output_shapes

:*
T0*<
_class2
0.loc:@D_pre/gradients/D_pre/d2/add_grad/Reshape

<D_pre/gradients/D_pre/d2/add_grad/tuple/control_dependency_1Identity+D_pre/gradients/D_pre/d2/add_grad/Reshape_13^D_pre/gradients/D_pre/d2/add_grad/tuple/group_deps*
_output_shapes
:*
T0*>
_class4
20loc:@D_pre/gradients/D_pre/d2/add_grad/Reshape_1
Ń
+D_pre/gradients/D_pre/d2/MatMul_grad/MatMulMatMul:D_pre/gradients/D_pre/d2/add_grad/tuple/control_dependencyD_pre/d2/w/read*
_output_shapes

:*
transpose_a( *
transpose_b(*
T0
Š
-D_pre/gradients/D_pre/d2/MatMul_grad/MatMul_1MatMulD_pre/Tanh_1:D_pre/gradients/D_pre/d2/add_grad/tuple/control_dependency*
_output_shapes

:*
transpose_a(*
transpose_b( *
T0

5D_pre/gradients/D_pre/d2/MatMul_grad/tuple/group_depsNoOp,^D_pre/gradients/D_pre/d2/MatMul_grad/MatMul.^D_pre/gradients/D_pre/d2/MatMul_grad/MatMul_1

=D_pre/gradients/D_pre/d2/MatMul_grad/tuple/control_dependencyIdentity+D_pre/gradients/D_pre/d2/MatMul_grad/MatMul6^D_pre/gradients/D_pre/d2/MatMul_grad/tuple/group_deps*
_output_shapes

:*
T0*>
_class4
20loc:@D_pre/gradients/D_pre/d2/MatMul_grad/MatMul

?D_pre/gradients/D_pre/d2/MatMul_grad/tuple/control_dependency_1Identity-D_pre/gradients/D_pre/d2/MatMul_grad/MatMul_16^D_pre/gradients/D_pre/d2/MatMul_grad/tuple/group_deps*
_output_shapes

:*
T0*@
_class6
42loc:@D_pre/gradients/D_pre/d2/MatMul_grad/MatMul_1
¬
*D_pre/gradients/D_pre/Tanh_1_grad/TanhGradTanhGradD_pre/Tanh_1=D_pre/gradients/D_pre/d2/MatMul_grad/tuple/control_dependency*
T0*
_output_shapes

:
x
'D_pre/gradients/D_pre/d1/add_grad/ShapeConst*
dtype0*
valueB"      *
_output_shapes
:
s
)D_pre/gradients/D_pre/d1/add_grad/Shape_1Const*
dtype0*
valueB:*
_output_shapes
:
į
7D_pre/gradients/D_pre/d1/add_grad/BroadcastGradientArgsBroadcastGradientArgs'D_pre/gradients/D_pre/d1/add_grad/Shape)D_pre/gradients/D_pre/d1/add_grad/Shape_1*
T0*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’
Ń
%D_pre/gradients/D_pre/d1/add_grad/SumSum*D_pre/gradients/D_pre/Tanh_1_grad/TanhGrad7D_pre/gradients/D_pre/d1/add_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
»
)D_pre/gradients/D_pre/d1/add_grad/ReshapeReshape%D_pre/gradients/D_pre/d1/add_grad/Sum'D_pre/gradients/D_pre/d1/add_grad/Shape*
Tshape0*
T0*
_output_shapes

:
Õ
'D_pre/gradients/D_pre/d1/add_grad/Sum_1Sum*D_pre/gradients/D_pre/Tanh_1_grad/TanhGrad9D_pre/gradients/D_pre/d1/add_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
½
+D_pre/gradients/D_pre/d1/add_grad/Reshape_1Reshape'D_pre/gradients/D_pre/d1/add_grad/Sum_1)D_pre/gradients/D_pre/d1/add_grad/Shape_1*
Tshape0*
T0*
_output_shapes
:

2D_pre/gradients/D_pre/d1/add_grad/tuple/group_depsNoOp*^D_pre/gradients/D_pre/d1/add_grad/Reshape,^D_pre/gradients/D_pre/d1/add_grad/Reshape_1

:D_pre/gradients/D_pre/d1/add_grad/tuple/control_dependencyIdentity)D_pre/gradients/D_pre/d1/add_grad/Reshape3^D_pre/gradients/D_pre/d1/add_grad/tuple/group_deps*
_output_shapes

:*
T0*<
_class2
0.loc:@D_pre/gradients/D_pre/d1/add_grad/Reshape

<D_pre/gradients/D_pre/d1/add_grad/tuple/control_dependency_1Identity+D_pre/gradients/D_pre/d1/add_grad/Reshape_13^D_pre/gradients/D_pre/d1/add_grad/tuple/group_deps*
_output_shapes
:*
T0*>
_class4
20loc:@D_pre/gradients/D_pre/d1/add_grad/Reshape_1
Ń
+D_pre/gradients/D_pre/d1/MatMul_grad/MatMulMatMul:D_pre/gradients/D_pre/d1/add_grad/tuple/control_dependencyD_pre/d1/w/read*
_output_shapes

:*
transpose_a( *
transpose_b(*
T0
Ī
-D_pre/gradients/D_pre/d1/MatMul_grad/MatMul_1MatMul
D_pre/Tanh:D_pre/gradients/D_pre/d1/add_grad/tuple/control_dependency*
_output_shapes

:*
transpose_a(*
transpose_b( *
T0

5D_pre/gradients/D_pre/d1/MatMul_grad/tuple/group_depsNoOp,^D_pre/gradients/D_pre/d1/MatMul_grad/MatMul.^D_pre/gradients/D_pre/d1/MatMul_grad/MatMul_1

=D_pre/gradients/D_pre/d1/MatMul_grad/tuple/control_dependencyIdentity+D_pre/gradients/D_pre/d1/MatMul_grad/MatMul6^D_pre/gradients/D_pre/d1/MatMul_grad/tuple/group_deps*
_output_shapes

:*
T0*>
_class4
20loc:@D_pre/gradients/D_pre/d1/MatMul_grad/MatMul

?D_pre/gradients/D_pre/d1/MatMul_grad/tuple/control_dependency_1Identity-D_pre/gradients/D_pre/d1/MatMul_grad/MatMul_16^D_pre/gradients/D_pre/d1/MatMul_grad/tuple/group_deps*
_output_shapes

:*
T0*@
_class6
42loc:@D_pre/gradients/D_pre/d1/MatMul_grad/MatMul_1
Ø
(D_pre/gradients/D_pre/Tanh_grad/TanhGradTanhGrad
D_pre/Tanh=D_pre/gradients/D_pre/d1/MatMul_grad/tuple/control_dependency*
T0*
_output_shapes

:
x
'D_pre/gradients/D_pre/d0/add_grad/ShapeConst*
dtype0*
valueB"      *
_output_shapes
:
s
)D_pre/gradients/D_pre/d0/add_grad/Shape_1Const*
dtype0*
valueB:*
_output_shapes
:
į
7D_pre/gradients/D_pre/d0/add_grad/BroadcastGradientArgsBroadcastGradientArgs'D_pre/gradients/D_pre/d0/add_grad/Shape)D_pre/gradients/D_pre/d0/add_grad/Shape_1*
T0*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’
Ļ
%D_pre/gradients/D_pre/d0/add_grad/SumSum(D_pre/gradients/D_pre/Tanh_grad/TanhGrad7D_pre/gradients/D_pre/d0/add_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
»
)D_pre/gradients/D_pre/d0/add_grad/ReshapeReshape%D_pre/gradients/D_pre/d0/add_grad/Sum'D_pre/gradients/D_pre/d0/add_grad/Shape*
Tshape0*
T0*
_output_shapes

:
Ó
'D_pre/gradients/D_pre/d0/add_grad/Sum_1Sum(D_pre/gradients/D_pre/Tanh_grad/TanhGrad9D_pre/gradients/D_pre/d0/add_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
½
+D_pre/gradients/D_pre/d0/add_grad/Reshape_1Reshape'D_pre/gradients/D_pre/d0/add_grad/Sum_1)D_pre/gradients/D_pre/d0/add_grad/Shape_1*
Tshape0*
T0*
_output_shapes
:

2D_pre/gradients/D_pre/d0/add_grad/tuple/group_depsNoOp*^D_pre/gradients/D_pre/d0/add_grad/Reshape,^D_pre/gradients/D_pre/d0/add_grad/Reshape_1

:D_pre/gradients/D_pre/d0/add_grad/tuple/control_dependencyIdentity)D_pre/gradients/D_pre/d0/add_grad/Reshape3^D_pre/gradients/D_pre/d0/add_grad/tuple/group_deps*
_output_shapes

:*
T0*<
_class2
0.loc:@D_pre/gradients/D_pre/d0/add_grad/Reshape

<D_pre/gradients/D_pre/d0/add_grad/tuple/control_dependency_1Identity+D_pre/gradients/D_pre/d0/add_grad/Reshape_13^D_pre/gradients/D_pre/d0/add_grad/tuple/group_deps*
_output_shapes
:*
T0*>
_class4
20loc:@D_pre/gradients/D_pre/d0/add_grad/Reshape_1
Ń
+D_pre/gradients/D_pre/d0/MatMul_grad/MatMulMatMul:D_pre/gradients/D_pre/d0/add_grad/tuple/control_dependencyD_pre/d0/w/read*
_output_shapes

:*
transpose_a( *
transpose_b(*
T0
Õ
-D_pre/gradients/D_pre/d0/MatMul_grad/MatMul_1MatMulD_pre/Placeholder:D_pre/gradients/D_pre/d0/add_grad/tuple/control_dependency*
_output_shapes

:*
transpose_a(*
transpose_b( *
T0

5D_pre/gradients/D_pre/d0/MatMul_grad/tuple/group_depsNoOp,^D_pre/gradients/D_pre/d0/MatMul_grad/MatMul.^D_pre/gradients/D_pre/d0/MatMul_grad/MatMul_1

=D_pre/gradients/D_pre/d0/MatMul_grad/tuple/control_dependencyIdentity+D_pre/gradients/D_pre/d0/MatMul_grad/MatMul6^D_pre/gradients/D_pre/d0/MatMul_grad/tuple/group_deps*
_output_shapes

:*
T0*>
_class4
20loc:@D_pre/gradients/D_pre/d0/MatMul_grad/MatMul

?D_pre/gradients/D_pre/d0/MatMul_grad/tuple/control_dependency_1Identity-D_pre/gradients/D_pre/d0/MatMul_grad/MatMul_16^D_pre/gradients/D_pre/d0/MatMul_grad/tuple/group_deps*
_output_shapes

:*
T0*@
_class6
42loc:@D_pre/gradients/D_pre/d0/MatMul_grad/MatMul_1

<D_pre/GradientDescent/update_D_pre/d0/w/ApplyGradientDescentApplyGradientDescent
D_pre/d0/wD_pre/ExponentialDecay?D_pre/gradients/D_pre/d0/MatMul_grad/tuple/control_dependency_1*
_output_shapes

:*
use_locking( *
T0*
_class
loc:@D_pre/d0/w

<D_pre/GradientDescent/update_D_pre/d0/b/ApplyGradientDescentApplyGradientDescent
D_pre/d0/bD_pre/ExponentialDecay<D_pre/gradients/D_pre/d0/add_grad/tuple/control_dependency_1*
_output_shapes
:*
use_locking( *
T0*
_class
loc:@D_pre/d0/b

<D_pre/GradientDescent/update_D_pre/d1/w/ApplyGradientDescentApplyGradientDescent
D_pre/d1/wD_pre/ExponentialDecay?D_pre/gradients/D_pre/d1/MatMul_grad/tuple/control_dependency_1*
_output_shapes

:*
use_locking( *
T0*
_class
loc:@D_pre/d1/w

<D_pre/GradientDescent/update_D_pre/d1/b/ApplyGradientDescentApplyGradientDescent
D_pre/d1/bD_pre/ExponentialDecay<D_pre/gradients/D_pre/d1/add_grad/tuple/control_dependency_1*
_output_shapes
:*
use_locking( *
T0*
_class
loc:@D_pre/d1/b

<D_pre/GradientDescent/update_D_pre/d2/w/ApplyGradientDescentApplyGradientDescent
D_pre/d2/wD_pre/ExponentialDecay?D_pre/gradients/D_pre/d2/MatMul_grad/tuple/control_dependency_1*
_output_shapes

:*
use_locking( *
T0*
_class
loc:@D_pre/d2/w

<D_pre/GradientDescent/update_D_pre/d2/b/ApplyGradientDescentApplyGradientDescent
D_pre/d2/bD_pre/ExponentialDecay<D_pre/gradients/D_pre/d2/add_grad/tuple/control_dependency_1*
_output_shapes
:*
use_locking( *
T0*
_class
loc:@D_pre/d2/b

<D_pre/GradientDescent/update_D_pre/d3/w/ApplyGradientDescentApplyGradientDescent
D_pre/d3/wD_pre/ExponentialDecay?D_pre/gradients/D_pre/d3/MatMul_grad/tuple/control_dependency_1*
_output_shapes

:*
use_locking( *
T0*
_class
loc:@D_pre/d3/w

<D_pre/GradientDescent/update_D_pre/d3/b/ApplyGradientDescentApplyGradientDescent
D_pre/d3/bD_pre/ExponentialDecay<D_pre/gradients/D_pre/d3/add_grad/tuple/control_dependency_1*
_output_shapes
:*
use_locking( *
T0*
_class
loc:@D_pre/d3/b

D_pre/GradientDescent/updateNoOp=^D_pre/GradientDescent/update_D_pre/d0/w/ApplyGradientDescent=^D_pre/GradientDescent/update_D_pre/d0/b/ApplyGradientDescent=^D_pre/GradientDescent/update_D_pre/d1/w/ApplyGradientDescent=^D_pre/GradientDescent/update_D_pre/d1/b/ApplyGradientDescent=^D_pre/GradientDescent/update_D_pre/d2/w/ApplyGradientDescent=^D_pre/GradientDescent/update_D_pre/d2/b/ApplyGradientDescent=^D_pre/GradientDescent/update_D_pre/d3/w/ApplyGradientDescent=^D_pre/GradientDescent/update_D_pre/d3/b/ApplyGradientDescent

D_pre/GradientDescent/valueConst^D_pre/GradientDescent/update*
dtype0*
value	B :*
_output_shapes
: *!
_class
loc:@D_pre/Variable
¦
D_pre/GradientDescent	AssignAddD_pre/VariableD_pre/GradientDescent/value*
_output_shapes
: *
use_locking( *
T0*!
_class
loc:@D_pre/Variable
`
Gen/PlaceholderPlaceholder*
dtype0*
shape
:*
_output_shapes

:

(Gen/g0/w/Initializer/random_normal/shapeConst*
dtype0*
valueB"      *
_output_shapes
:*
_class
loc:@Gen/g0/w

'Gen/g0/w/Initializer/random_normal/meanConst*
dtype0*
valueB
 *    *
_output_shapes
: *
_class
loc:@Gen/g0/w

)Gen/g0/w/Initializer/random_normal/stddevConst*
dtype0*
valueB
 *  ?*
_output_shapes
: *
_class
loc:@Gen/g0/w
å
7Gen/g0/w/Initializer/random_normal/RandomStandardNormalRandomStandardNormal(Gen/g0/w/Initializer/random_normal/shape*
T0*
_output_shapes

:*
dtype0*
seed2 *

seed *
_class
loc:@Gen/g0/w
×
&Gen/g0/w/Initializer/random_normal/mulMul7Gen/g0/w/Initializer/random_normal/RandomStandardNormal)Gen/g0/w/Initializer/random_normal/stddev*
_output_shapes

:*
T0*
_class
loc:@Gen/g0/w
Ą
"Gen/g0/w/Initializer/random_normalAdd&Gen/g0/w/Initializer/random_normal/mul'Gen/g0/w/Initializer/random_normal/mean*
_output_shapes

:*
T0*
_class
loc:@Gen/g0/w

Gen/g0/w
VariableV2*
	container *
_output_shapes

:*
dtype0*
shape
:*
_class
loc:@Gen/g0/w*
shared_name 
¶
Gen/g0/w/AssignAssignGen/g0/w"Gen/g0/w/Initializer/random_normal*
_output_shapes

:*
validate_shape(*
use_locking(*
T0*
_class
loc:@Gen/g0/w
i
Gen/g0/w/readIdentityGen/g0/w*
_output_shapes

:*
T0*
_class
loc:@Gen/g0/w

Gen/g0/b/Initializer/ConstConst*
dtype0*
valueB*    *
_output_shapes
:*
_class
loc:@Gen/g0/b

Gen/g0/b
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*
_class
loc:@Gen/g0/b*
shared_name 
Ŗ
Gen/g0/b/AssignAssignGen/g0/bGen/g0/b/Initializer/Const*
_output_shapes
:*
validate_shape(*
use_locking(*
T0*
_class
loc:@Gen/g0/b
e
Gen/g0/b/readIdentityGen/g0/b*
_output_shapes
:*
T0*
_class
loc:@Gen/g0/b

Gen/g0/MatMulMatMulGen/PlaceholderGen/g0/w/read*
_output_shapes

:*
transpose_a( *
transpose_b( *
T0
X

Gen/g0/addAddGen/g0/MatMulGen/g0/b/read*
T0*
_output_shapes

:
M
Gen/SoftplusSoftplus
Gen/g0/add*
T0*
_output_shapes

:

(Gen/g1/w/Initializer/random_normal/shapeConst*
dtype0*
valueB"      *
_output_shapes
:*
_class
loc:@Gen/g1/w

'Gen/g1/w/Initializer/random_normal/meanConst*
dtype0*
valueB
 *    *
_output_shapes
: *
_class
loc:@Gen/g1/w

)Gen/g1/w/Initializer/random_normal/stddevConst*
dtype0*
valueB
 *  ?*
_output_shapes
: *
_class
loc:@Gen/g1/w
å
7Gen/g1/w/Initializer/random_normal/RandomStandardNormalRandomStandardNormal(Gen/g1/w/Initializer/random_normal/shape*
T0*
_output_shapes

:*
dtype0*
seed2 *

seed *
_class
loc:@Gen/g1/w
×
&Gen/g1/w/Initializer/random_normal/mulMul7Gen/g1/w/Initializer/random_normal/RandomStandardNormal)Gen/g1/w/Initializer/random_normal/stddev*
_output_shapes

:*
T0*
_class
loc:@Gen/g1/w
Ą
"Gen/g1/w/Initializer/random_normalAdd&Gen/g1/w/Initializer/random_normal/mul'Gen/g1/w/Initializer/random_normal/mean*
_output_shapes

:*
T0*
_class
loc:@Gen/g1/w

Gen/g1/w
VariableV2*
	container *
_output_shapes

:*
dtype0*
shape
:*
_class
loc:@Gen/g1/w*
shared_name 
¶
Gen/g1/w/AssignAssignGen/g1/w"Gen/g1/w/Initializer/random_normal*
_output_shapes

:*
validate_shape(*
use_locking(*
T0*
_class
loc:@Gen/g1/w
i
Gen/g1/w/readIdentityGen/g1/w*
_output_shapes

:*
T0*
_class
loc:@Gen/g1/w

Gen/g1/b/Initializer/ConstConst*
dtype0*
valueB*    *
_output_shapes
:*
_class
loc:@Gen/g1/b

Gen/g1/b
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*
_class
loc:@Gen/g1/b*
shared_name 
Ŗ
Gen/g1/b/AssignAssignGen/g1/bGen/g1/b/Initializer/Const*
_output_shapes
:*
validate_shape(*
use_locking(*
T0*
_class
loc:@Gen/g1/b
e
Gen/g1/b/readIdentityGen/g1/b*
_output_shapes
:*
T0*
_class
loc:@Gen/g1/b

Gen/g1/MatMulMatMulGen/SoftplusGen/g1/w/read*
_output_shapes

:*
transpose_a( *
transpose_b( *
T0
X

Gen/g1/addAddGen/g1/MatMulGen/g1/b/read*
T0*
_output_shapes

:
a
Disc/PlaceholderPlaceholder*
dtype0*
shape
:*
_output_shapes

:

)Disc/d0/w/Initializer/random_normal/shapeConst*
dtype0*
valueB"      *
_output_shapes
:*
_class
loc:@Disc/d0/w

(Disc/d0/w/Initializer/random_normal/meanConst*
dtype0*
valueB
 *    *
_output_shapes
: *
_class
loc:@Disc/d0/w

*Disc/d0/w/Initializer/random_normal/stddevConst*
dtype0*
valueB
 *  ?*
_output_shapes
: *
_class
loc:@Disc/d0/w
č
8Disc/d0/w/Initializer/random_normal/RandomStandardNormalRandomStandardNormal)Disc/d0/w/Initializer/random_normal/shape*
T0*
_output_shapes

:*
dtype0*
seed2 *

seed *
_class
loc:@Disc/d0/w
Ū
'Disc/d0/w/Initializer/random_normal/mulMul8Disc/d0/w/Initializer/random_normal/RandomStandardNormal*Disc/d0/w/Initializer/random_normal/stddev*
_output_shapes

:*
T0*
_class
loc:@Disc/d0/w
Ä
#Disc/d0/w/Initializer/random_normalAdd'Disc/d0/w/Initializer/random_normal/mul(Disc/d0/w/Initializer/random_normal/mean*
_output_shapes

:*
T0*
_class
loc:@Disc/d0/w

	Disc/d0/w
VariableV2*
	container *
_output_shapes

:*
dtype0*
shape
:*
_class
loc:@Disc/d0/w*
shared_name 
ŗ
Disc/d0/w/AssignAssign	Disc/d0/w#Disc/d0/w/Initializer/random_normal*
_output_shapes

:*
validate_shape(*
use_locking(*
T0*
_class
loc:@Disc/d0/w
l
Disc/d0/w/readIdentity	Disc/d0/w*
_output_shapes

:*
T0*
_class
loc:@Disc/d0/w

Disc/d0/b/Initializer/ConstConst*
dtype0*
valueB*    *
_output_shapes
:*
_class
loc:@Disc/d0/b

	Disc/d0/b
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*
_class
loc:@Disc/d0/b*
shared_name 
®
Disc/d0/b/AssignAssign	Disc/d0/bDisc/d0/b/Initializer/Const*
_output_shapes
:*
validate_shape(*
use_locking(*
T0*
_class
loc:@Disc/d0/b
h
Disc/d0/b/readIdentity	Disc/d0/b*
_output_shapes
:*
T0*
_class
loc:@Disc/d0/b

Disc/d0/MatMulMatMulDisc/PlaceholderDisc/d0/w/read*
_output_shapes

:*
transpose_a( *
transpose_b( *
T0
[
Disc/d0/addAddDisc/d0/MatMulDisc/d0/b/read*
T0*
_output_shapes

:
G
	Disc/TanhTanhDisc/d0/add*
T0*
_output_shapes

:

)Disc/d1/w/Initializer/random_normal/shapeConst*
dtype0*
valueB"      *
_output_shapes
:*
_class
loc:@Disc/d1/w

(Disc/d1/w/Initializer/random_normal/meanConst*
dtype0*
valueB
 *    *
_output_shapes
: *
_class
loc:@Disc/d1/w

*Disc/d1/w/Initializer/random_normal/stddevConst*
dtype0*
valueB
 *  ?*
_output_shapes
: *
_class
loc:@Disc/d1/w
č
8Disc/d1/w/Initializer/random_normal/RandomStandardNormalRandomStandardNormal)Disc/d1/w/Initializer/random_normal/shape*
T0*
_output_shapes

:*
dtype0*
seed2 *

seed *
_class
loc:@Disc/d1/w
Ū
'Disc/d1/w/Initializer/random_normal/mulMul8Disc/d1/w/Initializer/random_normal/RandomStandardNormal*Disc/d1/w/Initializer/random_normal/stddev*
_output_shapes

:*
T0*
_class
loc:@Disc/d1/w
Ä
#Disc/d1/w/Initializer/random_normalAdd'Disc/d1/w/Initializer/random_normal/mul(Disc/d1/w/Initializer/random_normal/mean*
_output_shapes

:*
T0*
_class
loc:@Disc/d1/w

	Disc/d1/w
VariableV2*
	container *
_output_shapes

:*
dtype0*
shape
:*
_class
loc:@Disc/d1/w*
shared_name 
ŗ
Disc/d1/w/AssignAssign	Disc/d1/w#Disc/d1/w/Initializer/random_normal*
_output_shapes

:*
validate_shape(*
use_locking(*
T0*
_class
loc:@Disc/d1/w
l
Disc/d1/w/readIdentity	Disc/d1/w*
_output_shapes

:*
T0*
_class
loc:@Disc/d1/w

Disc/d1/b/Initializer/ConstConst*
dtype0*
valueB*    *
_output_shapes
:*
_class
loc:@Disc/d1/b

	Disc/d1/b
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*
_class
loc:@Disc/d1/b*
shared_name 
®
Disc/d1/b/AssignAssign	Disc/d1/bDisc/d1/b/Initializer/Const*
_output_shapes
:*
validate_shape(*
use_locking(*
T0*
_class
loc:@Disc/d1/b
h
Disc/d1/b/readIdentity	Disc/d1/b*
_output_shapes
:*
T0*
_class
loc:@Disc/d1/b

Disc/d1/MatMulMatMul	Disc/TanhDisc/d1/w/read*
_output_shapes

:*
transpose_a( *
transpose_b( *
T0
[
Disc/d1/addAddDisc/d1/MatMulDisc/d1/b/read*
T0*
_output_shapes

:
I
Disc/Tanh_1TanhDisc/d1/add*
T0*
_output_shapes

:

)Disc/d2/w/Initializer/random_normal/shapeConst*
dtype0*
valueB"      *
_output_shapes
:*
_class
loc:@Disc/d2/w

(Disc/d2/w/Initializer/random_normal/meanConst*
dtype0*
valueB
 *    *
_output_shapes
: *
_class
loc:@Disc/d2/w

*Disc/d2/w/Initializer/random_normal/stddevConst*
dtype0*
valueB
 *  ?*
_output_shapes
: *
_class
loc:@Disc/d2/w
č
8Disc/d2/w/Initializer/random_normal/RandomStandardNormalRandomStandardNormal)Disc/d2/w/Initializer/random_normal/shape*
T0*
_output_shapes

:*
dtype0*
seed2 *

seed *
_class
loc:@Disc/d2/w
Ū
'Disc/d2/w/Initializer/random_normal/mulMul8Disc/d2/w/Initializer/random_normal/RandomStandardNormal*Disc/d2/w/Initializer/random_normal/stddev*
_output_shapes

:*
T0*
_class
loc:@Disc/d2/w
Ä
#Disc/d2/w/Initializer/random_normalAdd'Disc/d2/w/Initializer/random_normal/mul(Disc/d2/w/Initializer/random_normal/mean*
_output_shapes

:*
T0*
_class
loc:@Disc/d2/w

	Disc/d2/w
VariableV2*
	container *
_output_shapes

:*
dtype0*
shape
:*
_class
loc:@Disc/d2/w*
shared_name 
ŗ
Disc/d2/w/AssignAssign	Disc/d2/w#Disc/d2/w/Initializer/random_normal*
_output_shapes

:*
validate_shape(*
use_locking(*
T0*
_class
loc:@Disc/d2/w
l
Disc/d2/w/readIdentity	Disc/d2/w*
_output_shapes

:*
T0*
_class
loc:@Disc/d2/w

Disc/d2/b/Initializer/ConstConst*
dtype0*
valueB*    *
_output_shapes
:*
_class
loc:@Disc/d2/b

	Disc/d2/b
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*
_class
loc:@Disc/d2/b*
shared_name 
®
Disc/d2/b/AssignAssign	Disc/d2/bDisc/d2/b/Initializer/Const*
_output_shapes
:*
validate_shape(*
use_locking(*
T0*
_class
loc:@Disc/d2/b
h
Disc/d2/b/readIdentity	Disc/d2/b*
_output_shapes
:*
T0*
_class
loc:@Disc/d2/b

Disc/d2/MatMulMatMulDisc/Tanh_1Disc/d2/w/read*
_output_shapes

:*
transpose_a( *
transpose_b( *
T0
[
Disc/d2/addAddDisc/d2/MatMulDisc/d2/b/read*
T0*
_output_shapes

:
I
Disc/Tanh_2TanhDisc/d2/add*
T0*
_output_shapes

:

)Disc/d3/w/Initializer/random_normal/shapeConst*
dtype0*
valueB"      *
_output_shapes
:*
_class
loc:@Disc/d3/w

(Disc/d3/w/Initializer/random_normal/meanConst*
dtype0*
valueB
 *    *
_output_shapes
: *
_class
loc:@Disc/d3/w

*Disc/d3/w/Initializer/random_normal/stddevConst*
dtype0*
valueB
 *  ?*
_output_shapes
: *
_class
loc:@Disc/d3/w
č
8Disc/d3/w/Initializer/random_normal/RandomStandardNormalRandomStandardNormal)Disc/d3/w/Initializer/random_normal/shape*
T0*
_output_shapes

:*
dtype0*
seed2 *

seed *
_class
loc:@Disc/d3/w
Ū
'Disc/d3/w/Initializer/random_normal/mulMul8Disc/d3/w/Initializer/random_normal/RandomStandardNormal*Disc/d3/w/Initializer/random_normal/stddev*
_output_shapes

:*
T0*
_class
loc:@Disc/d3/w
Ä
#Disc/d3/w/Initializer/random_normalAdd'Disc/d3/w/Initializer/random_normal/mul(Disc/d3/w/Initializer/random_normal/mean*
_output_shapes

:*
T0*
_class
loc:@Disc/d3/w

	Disc/d3/w
VariableV2*
	container *
_output_shapes

:*
dtype0*
shape
:*
_class
loc:@Disc/d3/w*
shared_name 
ŗ
Disc/d3/w/AssignAssign	Disc/d3/w#Disc/d3/w/Initializer/random_normal*
_output_shapes

:*
validate_shape(*
use_locking(*
T0*
_class
loc:@Disc/d3/w
l
Disc/d3/w/readIdentity	Disc/d3/w*
_output_shapes

:*
T0*
_class
loc:@Disc/d3/w

Disc/d3/b/Initializer/ConstConst*
dtype0*
valueB*    *
_output_shapes
:*
_class
loc:@Disc/d3/b

	Disc/d3/b
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*
_class
loc:@Disc/d3/b*
shared_name 
®
Disc/d3/b/AssignAssign	Disc/d3/bDisc/d3/b/Initializer/Const*
_output_shapes
:*
validate_shape(*
use_locking(*
T0*
_class
loc:@Disc/d3/b
h
Disc/d3/b/readIdentity	Disc/d3/b*
_output_shapes
:*
T0*
_class
loc:@Disc/d3/b

Disc/d3/MatMulMatMulDisc/Tanh_2Disc/d3/w/read*
_output_shapes

:*
transpose_a( *
transpose_b( *
T0
[
Disc/d3/addAddDisc/d3/MatMulDisc/d3/b/read*
T0*
_output_shapes

:
M
Disc/SigmoidSigmoidDisc/d3/add*
T0*
_output_shapes

:

Disc/d0_1/MatMulMatMul
Gen/g1/addDisc/d0/w/read*
_output_shapes

:*
transpose_a( *
transpose_b( *
T0
_
Disc/d0_1/addAddDisc/d0_1/MatMulDisc/d0/b/read*
T0*
_output_shapes

:
K
Disc/Tanh_3TanhDisc/d0_1/add*
T0*
_output_shapes

:

Disc/d1_1/MatMulMatMulDisc/Tanh_3Disc/d1/w/read*
_output_shapes

:*
transpose_a( *
transpose_b( *
T0
_
Disc/d1_1/addAddDisc/d1_1/MatMulDisc/d1/b/read*
T0*
_output_shapes

:
K
Disc/Tanh_4TanhDisc/d1_1/add*
T0*
_output_shapes

:

Disc/d2_1/MatMulMatMulDisc/Tanh_4Disc/d2/w/read*
_output_shapes

:*
transpose_a( *
transpose_b( *
T0
_
Disc/d2_1/addAddDisc/d2_1/MatMulDisc/d2/b/read*
T0*
_output_shapes

:
K
Disc/Tanh_5TanhDisc/d2_1/add*
T0*
_output_shapes

:

Disc/d3_1/MatMulMatMulDisc/Tanh_5Disc/d3/w/read*
_output_shapes

:*
transpose_a( *
transpose_b( *
T0
_
Disc/d3_1/addAddDisc/d3_1/MatMulDisc/d3/b/read*
T0*
_output_shapes

:
Q
Disc/Sigmoid_1SigmoidDisc/d3_1/add*
T0*
_output_shapes

:
A
LogLogDisc/Sigmoid*
T0*
_output_shapes

:
8
NegNegLog*
T0*
_output_shapes

:
J
sub/xConst*
dtype0*
valueB
 *  ?*
_output_shapes
: 
J
subSubsub/xDisc/Sigmoid_1*
T0*
_output_shapes

:
:
Log_1Logsub*
T0*
_output_shapes

:
A
sub_1SubNegLog_1*
T0*
_output_shapes

:
V
ConstConst*
dtype0*
valueB"       *
_output_shapes
:
X
MeanMeansub_1Const*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
E
Log_2LogDisc/Sigmoid_1*
T0*
_output_shapes

:
<
Neg_1NegLog_2*
T0*
_output_shapes

:
X
Const_1Const*
dtype0*
valueB"       *
_output_shapes
:
\
Mean_1MeanNeg_1Const_1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
X
Variable/initial_valueConst*
dtype0*
value	B : *
_output_shapes
: 
l
Variable
VariableV2*
dtype0*
	container *
shape: *
_output_shapes
: *
shared_name 
¢
Variable/AssignAssignVariableVariable/initial_value*
_output_shapes
: *
validate_shape(*
use_locking(*
T0*
_class
loc:@Variable
a
Variable/readIdentityVariable*
_output_shapes
: *
T0*
_class
loc:@Variable
c
ExponentialDecay/learning_rateConst*
dtype0*
valueB
 *Āõ<*
_output_shapes
: 
\
ExponentialDecay/CastCastVariable/read*

SrcT0*

DstT0*
_output_shapes
: 
\
ExponentialDecay/Cast_1/xConst*
dtype0*
value
B :*
_output_shapes
: 
j
ExponentialDecay/Cast_1CastExponentialDecay/Cast_1/x*

SrcT0*

DstT0*
_output_shapes
: 
^
ExponentialDecay/Cast_2/xConst*
dtype0*
valueB
 *33s?*
_output_shapes
: 
t
ExponentialDecay/truedivRealDivExponentialDecay/CastExponentialDecay/Cast_1*
T0*
_output_shapes
: 
Z
ExponentialDecay/FloorFloorExponentialDecay/truediv*
T0*
_output_shapes
: 
o
ExponentialDecay/PowPowExponentialDecay/Cast_2/xExponentialDecay/Floor*
T0*
_output_shapes
: 
n
ExponentialDecayMulExponentialDecay/learning_rateExponentialDecay/Pow*
T0*
_output_shapes
: 
R
gradients/ShapeConst*
dtype0*
valueB *
_output_shapes
: 
T
gradients/ConstConst*
dtype0*
valueB
 *  ?*
_output_shapes
: 
Y
gradients/FillFillgradients/Shapegradients/Const*
T0*
_output_shapes
: 
r
!gradients/Mean_grad/Reshape/shapeConst*
dtype0*
valueB"      *
_output_shapes
:

gradients/Mean_grad/ReshapeReshapegradients/Fill!gradients/Mean_grad/Reshape/shape*
Tshape0*
T0*
_output_shapes

:
s
"gradients/Mean_grad/Tile/multiplesConst*
dtype0*
valueB"      *
_output_shapes
:

gradients/Mean_grad/TileTilegradients/Mean_grad/Reshape"gradients/Mean_grad/Tile/multiples*
T0*
_output_shapes

:*

Tmultiples0
j
gradients/Mean_grad/ShapeConst*
dtype0*
valueB"      *
_output_shapes
:
^
gradients/Mean_grad/Shape_1Const*
dtype0*
valueB *
_output_shapes
: 
c
gradients/Mean_grad/ConstConst*
dtype0*
valueB: *
_output_shapes
:

gradients/Mean_grad/ProdProdgradients/Mean_grad/Shapegradients/Mean_grad/Const*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
e
gradients/Mean_grad/Const_1Const*
dtype0*
valueB: *
_output_shapes
:

gradients/Mean_grad/Prod_1Prodgradients/Mean_grad/Shape_1gradients/Mean_grad/Const_1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
_
gradients/Mean_grad/Maximum/yConst*
dtype0*
value	B :*
_output_shapes
: 

gradients/Mean_grad/MaximumMaximumgradients/Mean_grad/Prod_1gradients/Mean_grad/Maximum/y*
T0*
_output_shapes
: 

gradients/Mean_grad/floordivFloorDivgradients/Mean_grad/Prodgradients/Mean_grad/Maximum*
T0*
_output_shapes
: 
n
gradients/Mean_grad/CastCastgradients/Mean_grad/floordiv*

SrcT0*

DstT0*
_output_shapes
: 

gradients/Mean_grad/truedivRealDivgradients/Mean_grad/Tilegradients/Mean_grad/Cast*
T0*
_output_shapes

:
k
gradients/sub_1_grad/ShapeConst*
dtype0*
valueB"      *
_output_shapes
:
m
gradients/sub_1_grad/Shape_1Const*
dtype0*
valueB"      *
_output_shapes
:
ŗ
*gradients/sub_1_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/sub_1_grad/Shapegradients/sub_1_grad/Shape_1*
T0*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’
Ø
gradients/sub_1_grad/SumSumgradients/Mean_grad/truediv*gradients/sub_1_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:

gradients/sub_1_grad/ReshapeReshapegradients/sub_1_grad/Sumgradients/sub_1_grad/Shape*
Tshape0*
T0*
_output_shapes

:
¬
gradients/sub_1_grad/Sum_1Sumgradients/Mean_grad/truediv,gradients/sub_1_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
^
gradients/sub_1_grad/NegNeggradients/sub_1_grad/Sum_1*
T0*
_output_shapes
:

gradients/sub_1_grad/Reshape_1Reshapegradients/sub_1_grad/Neggradients/sub_1_grad/Shape_1*
Tshape0*
T0*
_output_shapes

:
m
%gradients/sub_1_grad/tuple/group_depsNoOp^gradients/sub_1_grad/Reshape^gradients/sub_1_grad/Reshape_1
Ł
-gradients/sub_1_grad/tuple/control_dependencyIdentitygradients/sub_1_grad/Reshape&^gradients/sub_1_grad/tuple/group_deps*
_output_shapes

:*
T0*/
_class%
#!loc:@gradients/sub_1_grad/Reshape
ß
/gradients/sub_1_grad/tuple/control_dependency_1Identitygradients/sub_1_grad/Reshape_1&^gradients/sub_1_grad/tuple/group_deps*
_output_shapes

:*
T0*1
_class'
%#loc:@gradients/sub_1_grad/Reshape_1
u
gradients/Neg_grad/NegNeg-gradients/sub_1_grad/tuple/control_dependency*
T0*
_output_shapes

:

gradients/Log_1_grad/Reciprocal
Reciprocalsub0^gradients/sub_1_grad/tuple/control_dependency_1*
T0*
_output_shapes

:

gradients/Log_1_grad/mulMul/gradients/sub_1_grad/tuple/control_dependency_1gradients/Log_1_grad/Reciprocal*
T0*
_output_shapes

:
{
gradients/Log_grad/Reciprocal
ReciprocalDisc/Sigmoid^gradients/Neg_grad/Neg*
T0*
_output_shapes

:
}
gradients/Log_grad/mulMulgradients/Neg_grad/Neggradients/Log_grad/Reciprocal*
T0*
_output_shapes

:
[
gradients/sub_grad/ShapeConst*
dtype0*
valueB *
_output_shapes
: 
k
gradients/sub_grad/Shape_1Const*
dtype0*
valueB"      *
_output_shapes
:
“
(gradients/sub_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/sub_grad/Shapegradients/sub_grad/Shape_1*
T0*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’
”
gradients/sub_grad/SumSumgradients/Log_1_grad/mul(gradients/sub_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:

gradients/sub_grad/ReshapeReshapegradients/sub_grad/Sumgradients/sub_grad/Shape*
Tshape0*
T0*
_output_shapes
: 
„
gradients/sub_grad/Sum_1Sumgradients/Log_1_grad/mul*gradients/sub_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
Z
gradients/sub_grad/NegNeggradients/sub_grad/Sum_1*
T0*
_output_shapes
:

gradients/sub_grad/Reshape_1Reshapegradients/sub_grad/Neggradients/sub_grad/Shape_1*
Tshape0*
T0*
_output_shapes

:
g
#gradients/sub_grad/tuple/group_depsNoOp^gradients/sub_grad/Reshape^gradients/sub_grad/Reshape_1
É
+gradients/sub_grad/tuple/control_dependencyIdentitygradients/sub_grad/Reshape$^gradients/sub_grad/tuple/group_deps*
_output_shapes
: *
T0*-
_class#
!loc:@gradients/sub_grad/Reshape
×
-gradients/sub_grad/tuple/control_dependency_1Identitygradients/sub_grad/Reshape_1$^gradients/sub_grad/tuple/group_deps*
_output_shapes

:*
T0*/
_class%
#!loc:@gradients/sub_grad/Reshape_1

'gradients/Disc/Sigmoid_grad/SigmoidGradSigmoidGradDisc/Sigmoidgradients/Log_grad/mul*
T0*
_output_shapes

:
 
)gradients/Disc/Sigmoid_1_grad/SigmoidGradSigmoidGradDisc/Sigmoid_1-gradients/sub_grad/tuple/control_dependency_1*
T0*
_output_shapes

:
q
 gradients/Disc/d3/add_grad/ShapeConst*
dtype0*
valueB"      *
_output_shapes
:
l
"gradients/Disc/d3/add_grad/Shape_1Const*
dtype0*
valueB:*
_output_shapes
:
Ģ
0gradients/Disc/d3/add_grad/BroadcastGradientArgsBroadcastGradientArgs gradients/Disc/d3/add_grad/Shape"gradients/Disc/d3/add_grad/Shape_1*
T0*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’
Ą
gradients/Disc/d3/add_grad/SumSum'gradients/Disc/Sigmoid_grad/SigmoidGrad0gradients/Disc/d3/add_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
¦
"gradients/Disc/d3/add_grad/ReshapeReshapegradients/Disc/d3/add_grad/Sum gradients/Disc/d3/add_grad/Shape*
Tshape0*
T0*
_output_shapes

:
Ä
 gradients/Disc/d3/add_grad/Sum_1Sum'gradients/Disc/Sigmoid_grad/SigmoidGrad2gradients/Disc/d3/add_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
Ø
$gradients/Disc/d3/add_grad/Reshape_1Reshape gradients/Disc/d3/add_grad/Sum_1"gradients/Disc/d3/add_grad/Shape_1*
Tshape0*
T0*
_output_shapes
:

+gradients/Disc/d3/add_grad/tuple/group_depsNoOp#^gradients/Disc/d3/add_grad/Reshape%^gradients/Disc/d3/add_grad/Reshape_1
ń
3gradients/Disc/d3/add_grad/tuple/control_dependencyIdentity"gradients/Disc/d3/add_grad/Reshape,^gradients/Disc/d3/add_grad/tuple/group_deps*
_output_shapes

:*
T0*5
_class+
)'loc:@gradients/Disc/d3/add_grad/Reshape
ó
5gradients/Disc/d3/add_grad/tuple/control_dependency_1Identity$gradients/Disc/d3/add_grad/Reshape_1,^gradients/Disc/d3/add_grad/tuple/group_deps*
_output_shapes
:*
T0*7
_class-
+)loc:@gradients/Disc/d3/add_grad/Reshape_1
s
"gradients/Disc/d3_1/add_grad/ShapeConst*
dtype0*
valueB"      *
_output_shapes
:
n
$gradients/Disc/d3_1/add_grad/Shape_1Const*
dtype0*
valueB:*
_output_shapes
:
Ņ
2gradients/Disc/d3_1/add_grad/BroadcastGradientArgsBroadcastGradientArgs"gradients/Disc/d3_1/add_grad/Shape$gradients/Disc/d3_1/add_grad/Shape_1*
T0*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’
Ę
 gradients/Disc/d3_1/add_grad/SumSum)gradients/Disc/Sigmoid_1_grad/SigmoidGrad2gradients/Disc/d3_1/add_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
¬
$gradients/Disc/d3_1/add_grad/ReshapeReshape gradients/Disc/d3_1/add_grad/Sum"gradients/Disc/d3_1/add_grad/Shape*
Tshape0*
T0*
_output_shapes

:
Ź
"gradients/Disc/d3_1/add_grad/Sum_1Sum)gradients/Disc/Sigmoid_1_grad/SigmoidGrad4gradients/Disc/d3_1/add_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
®
&gradients/Disc/d3_1/add_grad/Reshape_1Reshape"gradients/Disc/d3_1/add_grad/Sum_1$gradients/Disc/d3_1/add_grad/Shape_1*
Tshape0*
T0*
_output_shapes
:

-gradients/Disc/d3_1/add_grad/tuple/group_depsNoOp%^gradients/Disc/d3_1/add_grad/Reshape'^gradients/Disc/d3_1/add_grad/Reshape_1
ł
5gradients/Disc/d3_1/add_grad/tuple/control_dependencyIdentity$gradients/Disc/d3_1/add_grad/Reshape.^gradients/Disc/d3_1/add_grad/tuple/group_deps*
_output_shapes

:*
T0*7
_class-
+)loc:@gradients/Disc/d3_1/add_grad/Reshape
ū
7gradients/Disc/d3_1/add_grad/tuple/control_dependency_1Identity&gradients/Disc/d3_1/add_grad/Reshape_1.^gradients/Disc/d3_1/add_grad/tuple/group_deps*
_output_shapes
:*
T0*9
_class/
-+loc:@gradients/Disc/d3_1/add_grad/Reshape_1
Ā
$gradients/Disc/d3/MatMul_grad/MatMulMatMul3gradients/Disc/d3/add_grad/tuple/control_dependencyDisc/d3/w/read*
_output_shapes

:*
transpose_a( *
transpose_b(*
T0
Į
&gradients/Disc/d3/MatMul_grad/MatMul_1MatMulDisc/Tanh_23gradients/Disc/d3/add_grad/tuple/control_dependency*
_output_shapes

:*
transpose_a(*
transpose_b( *
T0

.gradients/Disc/d3/MatMul_grad/tuple/group_depsNoOp%^gradients/Disc/d3/MatMul_grad/MatMul'^gradients/Disc/d3/MatMul_grad/MatMul_1
ū
6gradients/Disc/d3/MatMul_grad/tuple/control_dependencyIdentity$gradients/Disc/d3/MatMul_grad/MatMul/^gradients/Disc/d3/MatMul_grad/tuple/group_deps*
_output_shapes

:*
T0*7
_class-
+)loc:@gradients/Disc/d3/MatMul_grad/MatMul

8gradients/Disc/d3/MatMul_grad/tuple/control_dependency_1Identity&gradients/Disc/d3/MatMul_grad/MatMul_1/^gradients/Disc/d3/MatMul_grad/tuple/group_deps*
_output_shapes

:*
T0*9
_class/
-+loc:@gradients/Disc/d3/MatMul_grad/MatMul_1
Ę
&gradients/Disc/d3_1/MatMul_grad/MatMulMatMul5gradients/Disc/d3_1/add_grad/tuple/control_dependencyDisc/d3/w/read*
_output_shapes

:*
transpose_a( *
transpose_b(*
T0
Å
(gradients/Disc/d3_1/MatMul_grad/MatMul_1MatMulDisc/Tanh_55gradients/Disc/d3_1/add_grad/tuple/control_dependency*
_output_shapes

:*
transpose_a(*
transpose_b( *
T0

0gradients/Disc/d3_1/MatMul_grad/tuple/group_depsNoOp'^gradients/Disc/d3_1/MatMul_grad/MatMul)^gradients/Disc/d3_1/MatMul_grad/MatMul_1

8gradients/Disc/d3_1/MatMul_grad/tuple/control_dependencyIdentity&gradients/Disc/d3_1/MatMul_grad/MatMul1^gradients/Disc/d3_1/MatMul_grad/tuple/group_deps*
_output_shapes

:*
T0*9
_class/
-+loc:@gradients/Disc/d3_1/MatMul_grad/MatMul

:gradients/Disc/d3_1/MatMul_grad/tuple/control_dependency_1Identity(gradients/Disc/d3_1/MatMul_grad/MatMul_11^gradients/Disc/d3_1/MatMul_grad/tuple/group_deps*
_output_shapes

:*
T0*;
_class1
/-loc:@gradients/Disc/d3_1/MatMul_grad/MatMul_1
ķ
gradients/AddNAddN5gradients/Disc/d3/add_grad/tuple/control_dependency_17gradients/Disc/d3_1/add_grad/tuple/control_dependency_1*
N*
_output_shapes
:*
T0*7
_class-
+)loc:@gradients/Disc/d3/add_grad/Reshape_1

#gradients/Disc/Tanh_2_grad/TanhGradTanhGradDisc/Tanh_26gradients/Disc/d3/MatMul_grad/tuple/control_dependency*
T0*
_output_shapes

:

#gradients/Disc/Tanh_5_grad/TanhGradTanhGradDisc/Tanh_58gradients/Disc/d3_1/MatMul_grad/tuple/control_dependency*
T0*
_output_shapes

:
ū
gradients/AddN_1AddN8gradients/Disc/d3/MatMul_grad/tuple/control_dependency_1:gradients/Disc/d3_1/MatMul_grad/tuple/control_dependency_1*
N*
_output_shapes

:*
T0*9
_class/
-+loc:@gradients/Disc/d3/MatMul_grad/MatMul_1
q
 gradients/Disc/d2/add_grad/ShapeConst*
dtype0*
valueB"      *
_output_shapes
:
l
"gradients/Disc/d2/add_grad/Shape_1Const*
dtype0*
valueB:*
_output_shapes
:
Ģ
0gradients/Disc/d2/add_grad/BroadcastGradientArgsBroadcastGradientArgs gradients/Disc/d2/add_grad/Shape"gradients/Disc/d2/add_grad/Shape_1*
T0*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’
¼
gradients/Disc/d2/add_grad/SumSum#gradients/Disc/Tanh_2_grad/TanhGrad0gradients/Disc/d2/add_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
¦
"gradients/Disc/d2/add_grad/ReshapeReshapegradients/Disc/d2/add_grad/Sum gradients/Disc/d2/add_grad/Shape*
Tshape0*
T0*
_output_shapes

:
Ą
 gradients/Disc/d2/add_grad/Sum_1Sum#gradients/Disc/Tanh_2_grad/TanhGrad2gradients/Disc/d2/add_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
Ø
$gradients/Disc/d2/add_grad/Reshape_1Reshape gradients/Disc/d2/add_grad/Sum_1"gradients/Disc/d2/add_grad/Shape_1*
Tshape0*
T0*
_output_shapes
:

+gradients/Disc/d2/add_grad/tuple/group_depsNoOp#^gradients/Disc/d2/add_grad/Reshape%^gradients/Disc/d2/add_grad/Reshape_1
ń
3gradients/Disc/d2/add_grad/tuple/control_dependencyIdentity"gradients/Disc/d2/add_grad/Reshape,^gradients/Disc/d2/add_grad/tuple/group_deps*
_output_shapes

:*
T0*5
_class+
)'loc:@gradients/Disc/d2/add_grad/Reshape
ó
5gradients/Disc/d2/add_grad/tuple/control_dependency_1Identity$gradients/Disc/d2/add_grad/Reshape_1,^gradients/Disc/d2/add_grad/tuple/group_deps*
_output_shapes
:*
T0*7
_class-
+)loc:@gradients/Disc/d2/add_grad/Reshape_1
s
"gradients/Disc/d2_1/add_grad/ShapeConst*
dtype0*
valueB"      *
_output_shapes
:
n
$gradients/Disc/d2_1/add_grad/Shape_1Const*
dtype0*
valueB:*
_output_shapes
:
Ņ
2gradients/Disc/d2_1/add_grad/BroadcastGradientArgsBroadcastGradientArgs"gradients/Disc/d2_1/add_grad/Shape$gradients/Disc/d2_1/add_grad/Shape_1*
T0*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’
Ą
 gradients/Disc/d2_1/add_grad/SumSum#gradients/Disc/Tanh_5_grad/TanhGrad2gradients/Disc/d2_1/add_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
¬
$gradients/Disc/d2_1/add_grad/ReshapeReshape gradients/Disc/d2_1/add_grad/Sum"gradients/Disc/d2_1/add_grad/Shape*
Tshape0*
T0*
_output_shapes

:
Ä
"gradients/Disc/d2_1/add_grad/Sum_1Sum#gradients/Disc/Tanh_5_grad/TanhGrad4gradients/Disc/d2_1/add_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
®
&gradients/Disc/d2_1/add_grad/Reshape_1Reshape"gradients/Disc/d2_1/add_grad/Sum_1$gradients/Disc/d2_1/add_grad/Shape_1*
Tshape0*
T0*
_output_shapes
:

-gradients/Disc/d2_1/add_grad/tuple/group_depsNoOp%^gradients/Disc/d2_1/add_grad/Reshape'^gradients/Disc/d2_1/add_grad/Reshape_1
ł
5gradients/Disc/d2_1/add_grad/tuple/control_dependencyIdentity$gradients/Disc/d2_1/add_grad/Reshape.^gradients/Disc/d2_1/add_grad/tuple/group_deps*
_output_shapes

:*
T0*7
_class-
+)loc:@gradients/Disc/d2_1/add_grad/Reshape
ū
7gradients/Disc/d2_1/add_grad/tuple/control_dependency_1Identity&gradients/Disc/d2_1/add_grad/Reshape_1.^gradients/Disc/d2_1/add_grad/tuple/group_deps*
_output_shapes
:*
T0*9
_class/
-+loc:@gradients/Disc/d2_1/add_grad/Reshape_1
Ā
$gradients/Disc/d2/MatMul_grad/MatMulMatMul3gradients/Disc/d2/add_grad/tuple/control_dependencyDisc/d2/w/read*
_output_shapes

:*
transpose_a( *
transpose_b(*
T0
Į
&gradients/Disc/d2/MatMul_grad/MatMul_1MatMulDisc/Tanh_13gradients/Disc/d2/add_grad/tuple/control_dependency*
_output_shapes

:*
transpose_a(*
transpose_b( *
T0

.gradients/Disc/d2/MatMul_grad/tuple/group_depsNoOp%^gradients/Disc/d2/MatMul_grad/MatMul'^gradients/Disc/d2/MatMul_grad/MatMul_1
ū
6gradients/Disc/d2/MatMul_grad/tuple/control_dependencyIdentity$gradients/Disc/d2/MatMul_grad/MatMul/^gradients/Disc/d2/MatMul_grad/tuple/group_deps*
_output_shapes

:*
T0*7
_class-
+)loc:@gradients/Disc/d2/MatMul_grad/MatMul

8gradients/Disc/d2/MatMul_grad/tuple/control_dependency_1Identity&gradients/Disc/d2/MatMul_grad/MatMul_1/^gradients/Disc/d2/MatMul_grad/tuple/group_deps*
_output_shapes

:*
T0*9
_class/
-+loc:@gradients/Disc/d2/MatMul_grad/MatMul_1
Ę
&gradients/Disc/d2_1/MatMul_grad/MatMulMatMul5gradients/Disc/d2_1/add_grad/tuple/control_dependencyDisc/d2/w/read*
_output_shapes

:*
transpose_a( *
transpose_b(*
T0
Å
(gradients/Disc/d2_1/MatMul_grad/MatMul_1MatMulDisc/Tanh_45gradients/Disc/d2_1/add_grad/tuple/control_dependency*
_output_shapes

:*
transpose_a(*
transpose_b( *
T0

0gradients/Disc/d2_1/MatMul_grad/tuple/group_depsNoOp'^gradients/Disc/d2_1/MatMul_grad/MatMul)^gradients/Disc/d2_1/MatMul_grad/MatMul_1

8gradients/Disc/d2_1/MatMul_grad/tuple/control_dependencyIdentity&gradients/Disc/d2_1/MatMul_grad/MatMul1^gradients/Disc/d2_1/MatMul_grad/tuple/group_deps*
_output_shapes

:*
T0*9
_class/
-+loc:@gradients/Disc/d2_1/MatMul_grad/MatMul

:gradients/Disc/d2_1/MatMul_grad/tuple/control_dependency_1Identity(gradients/Disc/d2_1/MatMul_grad/MatMul_11^gradients/Disc/d2_1/MatMul_grad/tuple/group_deps*
_output_shapes

:*
T0*;
_class1
/-loc:@gradients/Disc/d2_1/MatMul_grad/MatMul_1
ļ
gradients/AddN_2AddN5gradients/Disc/d2/add_grad/tuple/control_dependency_17gradients/Disc/d2_1/add_grad/tuple/control_dependency_1*
N*
_output_shapes
:*
T0*7
_class-
+)loc:@gradients/Disc/d2/add_grad/Reshape_1

#gradients/Disc/Tanh_1_grad/TanhGradTanhGradDisc/Tanh_16gradients/Disc/d2/MatMul_grad/tuple/control_dependency*
T0*
_output_shapes

:

#gradients/Disc/Tanh_4_grad/TanhGradTanhGradDisc/Tanh_48gradients/Disc/d2_1/MatMul_grad/tuple/control_dependency*
T0*
_output_shapes

:
ū
gradients/AddN_3AddN8gradients/Disc/d2/MatMul_grad/tuple/control_dependency_1:gradients/Disc/d2_1/MatMul_grad/tuple/control_dependency_1*
N*
_output_shapes

:*
T0*9
_class/
-+loc:@gradients/Disc/d2/MatMul_grad/MatMul_1
q
 gradients/Disc/d1/add_grad/ShapeConst*
dtype0*
valueB"      *
_output_shapes
:
l
"gradients/Disc/d1/add_grad/Shape_1Const*
dtype0*
valueB:*
_output_shapes
:
Ģ
0gradients/Disc/d1/add_grad/BroadcastGradientArgsBroadcastGradientArgs gradients/Disc/d1/add_grad/Shape"gradients/Disc/d1/add_grad/Shape_1*
T0*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’
¼
gradients/Disc/d1/add_grad/SumSum#gradients/Disc/Tanh_1_grad/TanhGrad0gradients/Disc/d1/add_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
¦
"gradients/Disc/d1/add_grad/ReshapeReshapegradients/Disc/d1/add_grad/Sum gradients/Disc/d1/add_grad/Shape*
Tshape0*
T0*
_output_shapes

:
Ą
 gradients/Disc/d1/add_grad/Sum_1Sum#gradients/Disc/Tanh_1_grad/TanhGrad2gradients/Disc/d1/add_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
Ø
$gradients/Disc/d1/add_grad/Reshape_1Reshape gradients/Disc/d1/add_grad/Sum_1"gradients/Disc/d1/add_grad/Shape_1*
Tshape0*
T0*
_output_shapes
:

+gradients/Disc/d1/add_grad/tuple/group_depsNoOp#^gradients/Disc/d1/add_grad/Reshape%^gradients/Disc/d1/add_grad/Reshape_1
ń
3gradients/Disc/d1/add_grad/tuple/control_dependencyIdentity"gradients/Disc/d1/add_grad/Reshape,^gradients/Disc/d1/add_grad/tuple/group_deps*
_output_shapes

:*
T0*5
_class+
)'loc:@gradients/Disc/d1/add_grad/Reshape
ó
5gradients/Disc/d1/add_grad/tuple/control_dependency_1Identity$gradients/Disc/d1/add_grad/Reshape_1,^gradients/Disc/d1/add_grad/tuple/group_deps*
_output_shapes
:*
T0*7
_class-
+)loc:@gradients/Disc/d1/add_grad/Reshape_1
s
"gradients/Disc/d1_1/add_grad/ShapeConst*
dtype0*
valueB"      *
_output_shapes
:
n
$gradients/Disc/d1_1/add_grad/Shape_1Const*
dtype0*
valueB:*
_output_shapes
:
Ņ
2gradients/Disc/d1_1/add_grad/BroadcastGradientArgsBroadcastGradientArgs"gradients/Disc/d1_1/add_grad/Shape$gradients/Disc/d1_1/add_grad/Shape_1*
T0*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’
Ą
 gradients/Disc/d1_1/add_grad/SumSum#gradients/Disc/Tanh_4_grad/TanhGrad2gradients/Disc/d1_1/add_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
¬
$gradients/Disc/d1_1/add_grad/ReshapeReshape gradients/Disc/d1_1/add_grad/Sum"gradients/Disc/d1_1/add_grad/Shape*
Tshape0*
T0*
_output_shapes

:
Ä
"gradients/Disc/d1_1/add_grad/Sum_1Sum#gradients/Disc/Tanh_4_grad/TanhGrad4gradients/Disc/d1_1/add_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
®
&gradients/Disc/d1_1/add_grad/Reshape_1Reshape"gradients/Disc/d1_1/add_grad/Sum_1$gradients/Disc/d1_1/add_grad/Shape_1*
Tshape0*
T0*
_output_shapes
:

-gradients/Disc/d1_1/add_grad/tuple/group_depsNoOp%^gradients/Disc/d1_1/add_grad/Reshape'^gradients/Disc/d1_1/add_grad/Reshape_1
ł
5gradients/Disc/d1_1/add_grad/tuple/control_dependencyIdentity$gradients/Disc/d1_1/add_grad/Reshape.^gradients/Disc/d1_1/add_grad/tuple/group_deps*
_output_shapes

:*
T0*7
_class-
+)loc:@gradients/Disc/d1_1/add_grad/Reshape
ū
7gradients/Disc/d1_1/add_grad/tuple/control_dependency_1Identity&gradients/Disc/d1_1/add_grad/Reshape_1.^gradients/Disc/d1_1/add_grad/tuple/group_deps*
_output_shapes
:*
T0*9
_class/
-+loc:@gradients/Disc/d1_1/add_grad/Reshape_1
Ā
$gradients/Disc/d1/MatMul_grad/MatMulMatMul3gradients/Disc/d1/add_grad/tuple/control_dependencyDisc/d1/w/read*
_output_shapes

:*
transpose_a( *
transpose_b(*
T0
æ
&gradients/Disc/d1/MatMul_grad/MatMul_1MatMul	Disc/Tanh3gradients/Disc/d1/add_grad/tuple/control_dependency*
_output_shapes

:*
transpose_a(*
transpose_b( *
T0

.gradients/Disc/d1/MatMul_grad/tuple/group_depsNoOp%^gradients/Disc/d1/MatMul_grad/MatMul'^gradients/Disc/d1/MatMul_grad/MatMul_1
ū
6gradients/Disc/d1/MatMul_grad/tuple/control_dependencyIdentity$gradients/Disc/d1/MatMul_grad/MatMul/^gradients/Disc/d1/MatMul_grad/tuple/group_deps*
_output_shapes

:*
T0*7
_class-
+)loc:@gradients/Disc/d1/MatMul_grad/MatMul

8gradients/Disc/d1/MatMul_grad/tuple/control_dependency_1Identity&gradients/Disc/d1/MatMul_grad/MatMul_1/^gradients/Disc/d1/MatMul_grad/tuple/group_deps*
_output_shapes

:*
T0*9
_class/
-+loc:@gradients/Disc/d1/MatMul_grad/MatMul_1
Ę
&gradients/Disc/d1_1/MatMul_grad/MatMulMatMul5gradients/Disc/d1_1/add_grad/tuple/control_dependencyDisc/d1/w/read*
_output_shapes

:*
transpose_a( *
transpose_b(*
T0
Å
(gradients/Disc/d1_1/MatMul_grad/MatMul_1MatMulDisc/Tanh_35gradients/Disc/d1_1/add_grad/tuple/control_dependency*
_output_shapes

:*
transpose_a(*
transpose_b( *
T0

0gradients/Disc/d1_1/MatMul_grad/tuple/group_depsNoOp'^gradients/Disc/d1_1/MatMul_grad/MatMul)^gradients/Disc/d1_1/MatMul_grad/MatMul_1

8gradients/Disc/d1_1/MatMul_grad/tuple/control_dependencyIdentity&gradients/Disc/d1_1/MatMul_grad/MatMul1^gradients/Disc/d1_1/MatMul_grad/tuple/group_deps*
_output_shapes

:*
T0*9
_class/
-+loc:@gradients/Disc/d1_1/MatMul_grad/MatMul

:gradients/Disc/d1_1/MatMul_grad/tuple/control_dependency_1Identity(gradients/Disc/d1_1/MatMul_grad/MatMul_11^gradients/Disc/d1_1/MatMul_grad/tuple/group_deps*
_output_shapes

:*
T0*;
_class1
/-loc:@gradients/Disc/d1_1/MatMul_grad/MatMul_1
ļ
gradients/AddN_4AddN5gradients/Disc/d1/add_grad/tuple/control_dependency_17gradients/Disc/d1_1/add_grad/tuple/control_dependency_1*
N*
_output_shapes
:*
T0*7
_class-
+)loc:@gradients/Disc/d1/add_grad/Reshape_1

!gradients/Disc/Tanh_grad/TanhGradTanhGrad	Disc/Tanh6gradients/Disc/d1/MatMul_grad/tuple/control_dependency*
T0*
_output_shapes

:

#gradients/Disc/Tanh_3_grad/TanhGradTanhGradDisc/Tanh_38gradients/Disc/d1_1/MatMul_grad/tuple/control_dependency*
T0*
_output_shapes

:
ū
gradients/AddN_5AddN8gradients/Disc/d1/MatMul_grad/tuple/control_dependency_1:gradients/Disc/d1_1/MatMul_grad/tuple/control_dependency_1*
N*
_output_shapes

:*
T0*9
_class/
-+loc:@gradients/Disc/d1/MatMul_grad/MatMul_1
q
 gradients/Disc/d0/add_grad/ShapeConst*
dtype0*
valueB"      *
_output_shapes
:
l
"gradients/Disc/d0/add_grad/Shape_1Const*
dtype0*
valueB:*
_output_shapes
:
Ģ
0gradients/Disc/d0/add_grad/BroadcastGradientArgsBroadcastGradientArgs gradients/Disc/d0/add_grad/Shape"gradients/Disc/d0/add_grad/Shape_1*
T0*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’
ŗ
gradients/Disc/d0/add_grad/SumSum!gradients/Disc/Tanh_grad/TanhGrad0gradients/Disc/d0/add_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
¦
"gradients/Disc/d0/add_grad/ReshapeReshapegradients/Disc/d0/add_grad/Sum gradients/Disc/d0/add_grad/Shape*
Tshape0*
T0*
_output_shapes

:
¾
 gradients/Disc/d0/add_grad/Sum_1Sum!gradients/Disc/Tanh_grad/TanhGrad2gradients/Disc/d0/add_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
Ø
$gradients/Disc/d0/add_grad/Reshape_1Reshape gradients/Disc/d0/add_grad/Sum_1"gradients/Disc/d0/add_grad/Shape_1*
Tshape0*
T0*
_output_shapes
:

+gradients/Disc/d0/add_grad/tuple/group_depsNoOp#^gradients/Disc/d0/add_grad/Reshape%^gradients/Disc/d0/add_grad/Reshape_1
ń
3gradients/Disc/d0/add_grad/tuple/control_dependencyIdentity"gradients/Disc/d0/add_grad/Reshape,^gradients/Disc/d0/add_grad/tuple/group_deps*
_output_shapes

:*
T0*5
_class+
)'loc:@gradients/Disc/d0/add_grad/Reshape
ó
5gradients/Disc/d0/add_grad/tuple/control_dependency_1Identity$gradients/Disc/d0/add_grad/Reshape_1,^gradients/Disc/d0/add_grad/tuple/group_deps*
_output_shapes
:*
T0*7
_class-
+)loc:@gradients/Disc/d0/add_grad/Reshape_1
s
"gradients/Disc/d0_1/add_grad/ShapeConst*
dtype0*
valueB"      *
_output_shapes
:
n
$gradients/Disc/d0_1/add_grad/Shape_1Const*
dtype0*
valueB:*
_output_shapes
:
Ņ
2gradients/Disc/d0_1/add_grad/BroadcastGradientArgsBroadcastGradientArgs"gradients/Disc/d0_1/add_grad/Shape$gradients/Disc/d0_1/add_grad/Shape_1*
T0*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’
Ą
 gradients/Disc/d0_1/add_grad/SumSum#gradients/Disc/Tanh_3_grad/TanhGrad2gradients/Disc/d0_1/add_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
¬
$gradients/Disc/d0_1/add_grad/ReshapeReshape gradients/Disc/d0_1/add_grad/Sum"gradients/Disc/d0_1/add_grad/Shape*
Tshape0*
T0*
_output_shapes

:
Ä
"gradients/Disc/d0_1/add_grad/Sum_1Sum#gradients/Disc/Tanh_3_grad/TanhGrad4gradients/Disc/d0_1/add_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
®
&gradients/Disc/d0_1/add_grad/Reshape_1Reshape"gradients/Disc/d0_1/add_grad/Sum_1$gradients/Disc/d0_1/add_grad/Shape_1*
Tshape0*
T0*
_output_shapes
:

-gradients/Disc/d0_1/add_grad/tuple/group_depsNoOp%^gradients/Disc/d0_1/add_grad/Reshape'^gradients/Disc/d0_1/add_grad/Reshape_1
ł
5gradients/Disc/d0_1/add_grad/tuple/control_dependencyIdentity$gradients/Disc/d0_1/add_grad/Reshape.^gradients/Disc/d0_1/add_grad/tuple/group_deps*
_output_shapes

:*
T0*7
_class-
+)loc:@gradients/Disc/d0_1/add_grad/Reshape
ū
7gradients/Disc/d0_1/add_grad/tuple/control_dependency_1Identity&gradients/Disc/d0_1/add_grad/Reshape_1.^gradients/Disc/d0_1/add_grad/tuple/group_deps*
_output_shapes
:*
T0*9
_class/
-+loc:@gradients/Disc/d0_1/add_grad/Reshape_1
Ā
$gradients/Disc/d0/MatMul_grad/MatMulMatMul3gradients/Disc/d0/add_grad/tuple/control_dependencyDisc/d0/w/read*
_output_shapes

:*
transpose_a( *
transpose_b(*
T0
Ę
&gradients/Disc/d0/MatMul_grad/MatMul_1MatMulDisc/Placeholder3gradients/Disc/d0/add_grad/tuple/control_dependency*
_output_shapes

:*
transpose_a(*
transpose_b( *
T0

.gradients/Disc/d0/MatMul_grad/tuple/group_depsNoOp%^gradients/Disc/d0/MatMul_grad/MatMul'^gradients/Disc/d0/MatMul_grad/MatMul_1
ū
6gradients/Disc/d0/MatMul_grad/tuple/control_dependencyIdentity$gradients/Disc/d0/MatMul_grad/MatMul/^gradients/Disc/d0/MatMul_grad/tuple/group_deps*
_output_shapes

:*
T0*7
_class-
+)loc:@gradients/Disc/d0/MatMul_grad/MatMul

8gradients/Disc/d0/MatMul_grad/tuple/control_dependency_1Identity&gradients/Disc/d0/MatMul_grad/MatMul_1/^gradients/Disc/d0/MatMul_grad/tuple/group_deps*
_output_shapes

:*
T0*9
_class/
-+loc:@gradients/Disc/d0/MatMul_grad/MatMul_1
Ę
&gradients/Disc/d0_1/MatMul_grad/MatMulMatMul5gradients/Disc/d0_1/add_grad/tuple/control_dependencyDisc/d0/w/read*
_output_shapes

:*
transpose_a( *
transpose_b(*
T0
Ä
(gradients/Disc/d0_1/MatMul_grad/MatMul_1MatMul
Gen/g1/add5gradients/Disc/d0_1/add_grad/tuple/control_dependency*
_output_shapes

:*
transpose_a(*
transpose_b( *
T0

0gradients/Disc/d0_1/MatMul_grad/tuple/group_depsNoOp'^gradients/Disc/d0_1/MatMul_grad/MatMul)^gradients/Disc/d0_1/MatMul_grad/MatMul_1

8gradients/Disc/d0_1/MatMul_grad/tuple/control_dependencyIdentity&gradients/Disc/d0_1/MatMul_grad/MatMul1^gradients/Disc/d0_1/MatMul_grad/tuple/group_deps*
_output_shapes

:*
T0*9
_class/
-+loc:@gradients/Disc/d0_1/MatMul_grad/MatMul

:gradients/Disc/d0_1/MatMul_grad/tuple/control_dependency_1Identity(gradients/Disc/d0_1/MatMul_grad/MatMul_11^gradients/Disc/d0_1/MatMul_grad/tuple/group_deps*
_output_shapes

:*
T0*;
_class1
/-loc:@gradients/Disc/d0_1/MatMul_grad/MatMul_1
ļ
gradients/AddN_6AddN5gradients/Disc/d0/add_grad/tuple/control_dependency_17gradients/Disc/d0_1/add_grad/tuple/control_dependency_1*
N*
_output_shapes
:*
T0*7
_class-
+)loc:@gradients/Disc/d0/add_grad/Reshape_1
ū
gradients/AddN_7AddN8gradients/Disc/d0/MatMul_grad/tuple/control_dependency_1:gradients/Disc/d0_1/MatMul_grad/tuple/control_dependency_1*
N*
_output_shapes

:*
T0*9
_class/
-+loc:@gradients/Disc/d0/MatMul_grad/MatMul_1
Ö
5GradientDescent/update_Disc/d0/w/ApplyGradientDescentApplyGradientDescent	Disc/d0/wExponentialDecaygradients/AddN_7*
_output_shapes

:*
use_locking( *
T0*
_class
loc:@Disc/d0/w
Ņ
5GradientDescent/update_Disc/d0/b/ApplyGradientDescentApplyGradientDescent	Disc/d0/bExponentialDecaygradients/AddN_6*
_output_shapes
:*
use_locking( *
T0*
_class
loc:@Disc/d0/b
Ö
5GradientDescent/update_Disc/d1/w/ApplyGradientDescentApplyGradientDescent	Disc/d1/wExponentialDecaygradients/AddN_5*
_output_shapes

:*
use_locking( *
T0*
_class
loc:@Disc/d1/w
Ņ
5GradientDescent/update_Disc/d1/b/ApplyGradientDescentApplyGradientDescent	Disc/d1/bExponentialDecaygradients/AddN_4*
_output_shapes
:*
use_locking( *
T0*
_class
loc:@Disc/d1/b
Ö
5GradientDescent/update_Disc/d2/w/ApplyGradientDescentApplyGradientDescent	Disc/d2/wExponentialDecaygradients/AddN_3*
_output_shapes

:*
use_locking( *
T0*
_class
loc:@Disc/d2/w
Ņ
5GradientDescent/update_Disc/d2/b/ApplyGradientDescentApplyGradientDescent	Disc/d2/bExponentialDecaygradients/AddN_2*
_output_shapes
:*
use_locking( *
T0*
_class
loc:@Disc/d2/b
Ö
5GradientDescent/update_Disc/d3/w/ApplyGradientDescentApplyGradientDescent	Disc/d3/wExponentialDecaygradients/AddN_1*
_output_shapes

:*
use_locking( *
T0*
_class
loc:@Disc/d3/w
Š
5GradientDescent/update_Disc/d3/b/ApplyGradientDescentApplyGradientDescent	Disc/d3/bExponentialDecaygradients/AddN*
_output_shapes
:*
use_locking( *
T0*
_class
loc:@Disc/d3/b
Ž
GradientDescent/updateNoOp6^GradientDescent/update_Disc/d0/w/ApplyGradientDescent6^GradientDescent/update_Disc/d0/b/ApplyGradientDescent6^GradientDescent/update_Disc/d1/w/ApplyGradientDescent6^GradientDescent/update_Disc/d1/b/ApplyGradientDescent6^GradientDescent/update_Disc/d2/w/ApplyGradientDescent6^GradientDescent/update_Disc/d2/b/ApplyGradientDescent6^GradientDescent/update_Disc/d3/w/ApplyGradientDescent6^GradientDescent/update_Disc/d3/b/ApplyGradientDescent

GradientDescent/valueConst^GradientDescent/update*
dtype0*
value	B :*
_output_shapes
: *
_class
loc:@Variable

GradientDescent	AssignAddVariableGradientDescent/value*
_output_shapes
: *
use_locking( *
T0*
_class
loc:@Variable
Z
Variable_1/initial_valueConst*
dtype0*
value	B : *
_output_shapes
: 
n

Variable_1
VariableV2*
dtype0*
	container *
shape: *
_output_shapes
: *
shared_name 
Ŗ
Variable_1/AssignAssign
Variable_1Variable_1/initial_value*
_output_shapes
: *
validate_shape(*
use_locking(*
T0*
_class
loc:@Variable_1
g
Variable_1/readIdentity
Variable_1*
_output_shapes
: *
T0*
_class
loc:@Variable_1
e
 ExponentialDecay_1/learning_rateConst*
dtype0*
valueB
 *Āõ<*
_output_shapes
: 
`
ExponentialDecay_1/CastCastVariable_1/read*

SrcT0*

DstT0*
_output_shapes
: 
^
ExponentialDecay_1/Cast_1/xConst*
dtype0*
value
B :*
_output_shapes
: 
n
ExponentialDecay_1/Cast_1CastExponentialDecay_1/Cast_1/x*

SrcT0*

DstT0*
_output_shapes
: 
`
ExponentialDecay_1/Cast_2/xConst*
dtype0*
valueB
 *33s?*
_output_shapes
: 
z
ExponentialDecay_1/truedivRealDivExponentialDecay_1/CastExponentialDecay_1/Cast_1*
T0*
_output_shapes
: 
^
ExponentialDecay_1/FloorFloorExponentialDecay_1/truediv*
T0*
_output_shapes
: 
u
ExponentialDecay_1/PowPowExponentialDecay_1/Cast_2/xExponentialDecay_1/Floor*
T0*
_output_shapes
: 
t
ExponentialDecay_1Mul ExponentialDecay_1/learning_rateExponentialDecay_1/Pow*
T0*
_output_shapes
: 
T
gradients_1/ShapeConst*
dtype0*
valueB *
_output_shapes
: 
V
gradients_1/ConstConst*
dtype0*
valueB
 *  ?*
_output_shapes
: 
_
gradients_1/FillFillgradients_1/Shapegradients_1/Const*
T0*
_output_shapes
: 
v
%gradients_1/Mean_1_grad/Reshape/shapeConst*
dtype0*
valueB"      *
_output_shapes
:

gradients_1/Mean_1_grad/ReshapeReshapegradients_1/Fill%gradients_1/Mean_1_grad/Reshape/shape*
Tshape0*
T0*
_output_shapes

:
w
&gradients_1/Mean_1_grad/Tile/multiplesConst*
dtype0*
valueB"      *
_output_shapes
:
Ø
gradients_1/Mean_1_grad/TileTilegradients_1/Mean_1_grad/Reshape&gradients_1/Mean_1_grad/Tile/multiples*
T0*
_output_shapes

:*

Tmultiples0
n
gradients_1/Mean_1_grad/ShapeConst*
dtype0*
valueB"      *
_output_shapes
:
b
gradients_1/Mean_1_grad/Shape_1Const*
dtype0*
valueB *
_output_shapes
: 
g
gradients_1/Mean_1_grad/ConstConst*
dtype0*
valueB: *
_output_shapes
:
 
gradients_1/Mean_1_grad/ProdProdgradients_1/Mean_1_grad/Shapegradients_1/Mean_1_grad/Const*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
i
gradients_1/Mean_1_grad/Const_1Const*
dtype0*
valueB: *
_output_shapes
:
¦
gradients_1/Mean_1_grad/Prod_1Prodgradients_1/Mean_1_grad/Shape_1gradients_1/Mean_1_grad/Const_1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
c
!gradients_1/Mean_1_grad/Maximum/yConst*
dtype0*
value	B :*
_output_shapes
: 

gradients_1/Mean_1_grad/MaximumMaximumgradients_1/Mean_1_grad/Prod_1!gradients_1/Mean_1_grad/Maximum/y*
T0*
_output_shapes
: 

 gradients_1/Mean_1_grad/floordivFloorDivgradients_1/Mean_1_grad/Prodgradients_1/Mean_1_grad/Maximum*
T0*
_output_shapes
: 
v
gradients_1/Mean_1_grad/CastCast gradients_1/Mean_1_grad/floordiv*

SrcT0*

DstT0*
_output_shapes
: 

gradients_1/Mean_1_grad/truedivRealDivgradients_1/Mean_1_grad/Tilegradients_1/Mean_1_grad/Cast*
T0*
_output_shapes

:
k
gradients_1/Neg_1_grad/NegNeggradients_1/Mean_1_grad/truediv*
T0*
_output_shapes

:

!gradients_1/Log_2_grad/Reciprocal
ReciprocalDisc/Sigmoid_1^gradients_1/Neg_1_grad/Neg*
T0*
_output_shapes

:

gradients_1/Log_2_grad/mulMulgradients_1/Neg_1_grad/Neg!gradients_1/Log_2_grad/Reciprocal*
T0*
_output_shapes

:

+gradients_1/Disc/Sigmoid_1_grad/SigmoidGradSigmoidGradDisc/Sigmoid_1gradients_1/Log_2_grad/mul*
T0*
_output_shapes

:
u
$gradients_1/Disc/d3_1/add_grad/ShapeConst*
dtype0*
valueB"      *
_output_shapes
:
p
&gradients_1/Disc/d3_1/add_grad/Shape_1Const*
dtype0*
valueB:*
_output_shapes
:
Ų
4gradients_1/Disc/d3_1/add_grad/BroadcastGradientArgsBroadcastGradientArgs$gradients_1/Disc/d3_1/add_grad/Shape&gradients_1/Disc/d3_1/add_grad/Shape_1*
T0*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’
Ģ
"gradients_1/Disc/d3_1/add_grad/SumSum+gradients_1/Disc/Sigmoid_1_grad/SigmoidGrad4gradients_1/Disc/d3_1/add_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
²
&gradients_1/Disc/d3_1/add_grad/ReshapeReshape"gradients_1/Disc/d3_1/add_grad/Sum$gradients_1/Disc/d3_1/add_grad/Shape*
Tshape0*
T0*
_output_shapes

:
Š
$gradients_1/Disc/d3_1/add_grad/Sum_1Sum+gradients_1/Disc/Sigmoid_1_grad/SigmoidGrad6gradients_1/Disc/d3_1/add_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
“
(gradients_1/Disc/d3_1/add_grad/Reshape_1Reshape$gradients_1/Disc/d3_1/add_grad/Sum_1&gradients_1/Disc/d3_1/add_grad/Shape_1*
Tshape0*
T0*
_output_shapes
:

/gradients_1/Disc/d3_1/add_grad/tuple/group_depsNoOp'^gradients_1/Disc/d3_1/add_grad/Reshape)^gradients_1/Disc/d3_1/add_grad/Reshape_1

7gradients_1/Disc/d3_1/add_grad/tuple/control_dependencyIdentity&gradients_1/Disc/d3_1/add_grad/Reshape0^gradients_1/Disc/d3_1/add_grad/tuple/group_deps*
_output_shapes

:*
T0*9
_class/
-+loc:@gradients_1/Disc/d3_1/add_grad/Reshape

9gradients_1/Disc/d3_1/add_grad/tuple/control_dependency_1Identity(gradients_1/Disc/d3_1/add_grad/Reshape_10^gradients_1/Disc/d3_1/add_grad/tuple/group_deps*
_output_shapes
:*
T0*;
_class1
/-loc:@gradients_1/Disc/d3_1/add_grad/Reshape_1
Ź
(gradients_1/Disc/d3_1/MatMul_grad/MatMulMatMul7gradients_1/Disc/d3_1/add_grad/tuple/control_dependencyDisc/d3/w/read*
_output_shapes

:*
transpose_a( *
transpose_b(*
T0
É
*gradients_1/Disc/d3_1/MatMul_grad/MatMul_1MatMulDisc/Tanh_57gradients_1/Disc/d3_1/add_grad/tuple/control_dependency*
_output_shapes

:*
transpose_a(*
transpose_b( *
T0

2gradients_1/Disc/d3_1/MatMul_grad/tuple/group_depsNoOp)^gradients_1/Disc/d3_1/MatMul_grad/MatMul+^gradients_1/Disc/d3_1/MatMul_grad/MatMul_1

:gradients_1/Disc/d3_1/MatMul_grad/tuple/control_dependencyIdentity(gradients_1/Disc/d3_1/MatMul_grad/MatMul3^gradients_1/Disc/d3_1/MatMul_grad/tuple/group_deps*
_output_shapes

:*
T0*;
_class1
/-loc:@gradients_1/Disc/d3_1/MatMul_grad/MatMul

<gradients_1/Disc/d3_1/MatMul_grad/tuple/control_dependency_1Identity*gradients_1/Disc/d3_1/MatMul_grad/MatMul_13^gradients_1/Disc/d3_1/MatMul_grad/tuple/group_deps*
_output_shapes

:*
T0*=
_class3
1/loc:@gradients_1/Disc/d3_1/MatMul_grad/MatMul_1
£
%gradients_1/Disc/Tanh_5_grad/TanhGradTanhGradDisc/Tanh_5:gradients_1/Disc/d3_1/MatMul_grad/tuple/control_dependency*
T0*
_output_shapes

:
u
$gradients_1/Disc/d2_1/add_grad/ShapeConst*
dtype0*
valueB"      *
_output_shapes
:
p
&gradients_1/Disc/d2_1/add_grad/Shape_1Const*
dtype0*
valueB:*
_output_shapes
:
Ų
4gradients_1/Disc/d2_1/add_grad/BroadcastGradientArgsBroadcastGradientArgs$gradients_1/Disc/d2_1/add_grad/Shape&gradients_1/Disc/d2_1/add_grad/Shape_1*
T0*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’
Ę
"gradients_1/Disc/d2_1/add_grad/SumSum%gradients_1/Disc/Tanh_5_grad/TanhGrad4gradients_1/Disc/d2_1/add_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
²
&gradients_1/Disc/d2_1/add_grad/ReshapeReshape"gradients_1/Disc/d2_1/add_grad/Sum$gradients_1/Disc/d2_1/add_grad/Shape*
Tshape0*
T0*
_output_shapes

:
Ź
$gradients_1/Disc/d2_1/add_grad/Sum_1Sum%gradients_1/Disc/Tanh_5_grad/TanhGrad6gradients_1/Disc/d2_1/add_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
“
(gradients_1/Disc/d2_1/add_grad/Reshape_1Reshape$gradients_1/Disc/d2_1/add_grad/Sum_1&gradients_1/Disc/d2_1/add_grad/Shape_1*
Tshape0*
T0*
_output_shapes
:

/gradients_1/Disc/d2_1/add_grad/tuple/group_depsNoOp'^gradients_1/Disc/d2_1/add_grad/Reshape)^gradients_1/Disc/d2_1/add_grad/Reshape_1

7gradients_1/Disc/d2_1/add_grad/tuple/control_dependencyIdentity&gradients_1/Disc/d2_1/add_grad/Reshape0^gradients_1/Disc/d2_1/add_grad/tuple/group_deps*
_output_shapes

:*
T0*9
_class/
-+loc:@gradients_1/Disc/d2_1/add_grad/Reshape

9gradients_1/Disc/d2_1/add_grad/tuple/control_dependency_1Identity(gradients_1/Disc/d2_1/add_grad/Reshape_10^gradients_1/Disc/d2_1/add_grad/tuple/group_deps*
_output_shapes
:*
T0*;
_class1
/-loc:@gradients_1/Disc/d2_1/add_grad/Reshape_1
Ź
(gradients_1/Disc/d2_1/MatMul_grad/MatMulMatMul7gradients_1/Disc/d2_1/add_grad/tuple/control_dependencyDisc/d2/w/read*
_output_shapes

:*
transpose_a( *
transpose_b(*
T0
É
*gradients_1/Disc/d2_1/MatMul_grad/MatMul_1MatMulDisc/Tanh_47gradients_1/Disc/d2_1/add_grad/tuple/control_dependency*
_output_shapes

:*
transpose_a(*
transpose_b( *
T0

2gradients_1/Disc/d2_1/MatMul_grad/tuple/group_depsNoOp)^gradients_1/Disc/d2_1/MatMul_grad/MatMul+^gradients_1/Disc/d2_1/MatMul_grad/MatMul_1

:gradients_1/Disc/d2_1/MatMul_grad/tuple/control_dependencyIdentity(gradients_1/Disc/d2_1/MatMul_grad/MatMul3^gradients_1/Disc/d2_1/MatMul_grad/tuple/group_deps*
_output_shapes

:*
T0*;
_class1
/-loc:@gradients_1/Disc/d2_1/MatMul_grad/MatMul

<gradients_1/Disc/d2_1/MatMul_grad/tuple/control_dependency_1Identity*gradients_1/Disc/d2_1/MatMul_grad/MatMul_13^gradients_1/Disc/d2_1/MatMul_grad/tuple/group_deps*
_output_shapes

:*
T0*=
_class3
1/loc:@gradients_1/Disc/d2_1/MatMul_grad/MatMul_1
£
%gradients_1/Disc/Tanh_4_grad/TanhGradTanhGradDisc/Tanh_4:gradients_1/Disc/d2_1/MatMul_grad/tuple/control_dependency*
T0*
_output_shapes

:
u
$gradients_1/Disc/d1_1/add_grad/ShapeConst*
dtype0*
valueB"      *
_output_shapes
:
p
&gradients_1/Disc/d1_1/add_grad/Shape_1Const*
dtype0*
valueB:*
_output_shapes
:
Ų
4gradients_1/Disc/d1_1/add_grad/BroadcastGradientArgsBroadcastGradientArgs$gradients_1/Disc/d1_1/add_grad/Shape&gradients_1/Disc/d1_1/add_grad/Shape_1*
T0*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’
Ę
"gradients_1/Disc/d1_1/add_grad/SumSum%gradients_1/Disc/Tanh_4_grad/TanhGrad4gradients_1/Disc/d1_1/add_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
²
&gradients_1/Disc/d1_1/add_grad/ReshapeReshape"gradients_1/Disc/d1_1/add_grad/Sum$gradients_1/Disc/d1_1/add_grad/Shape*
Tshape0*
T0*
_output_shapes

:
Ź
$gradients_1/Disc/d1_1/add_grad/Sum_1Sum%gradients_1/Disc/Tanh_4_grad/TanhGrad6gradients_1/Disc/d1_1/add_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
“
(gradients_1/Disc/d1_1/add_grad/Reshape_1Reshape$gradients_1/Disc/d1_1/add_grad/Sum_1&gradients_1/Disc/d1_1/add_grad/Shape_1*
Tshape0*
T0*
_output_shapes
:

/gradients_1/Disc/d1_1/add_grad/tuple/group_depsNoOp'^gradients_1/Disc/d1_1/add_grad/Reshape)^gradients_1/Disc/d1_1/add_grad/Reshape_1

7gradients_1/Disc/d1_1/add_grad/tuple/control_dependencyIdentity&gradients_1/Disc/d1_1/add_grad/Reshape0^gradients_1/Disc/d1_1/add_grad/tuple/group_deps*
_output_shapes

:*
T0*9
_class/
-+loc:@gradients_1/Disc/d1_1/add_grad/Reshape

9gradients_1/Disc/d1_1/add_grad/tuple/control_dependency_1Identity(gradients_1/Disc/d1_1/add_grad/Reshape_10^gradients_1/Disc/d1_1/add_grad/tuple/group_deps*
_output_shapes
:*
T0*;
_class1
/-loc:@gradients_1/Disc/d1_1/add_grad/Reshape_1
Ź
(gradients_1/Disc/d1_1/MatMul_grad/MatMulMatMul7gradients_1/Disc/d1_1/add_grad/tuple/control_dependencyDisc/d1/w/read*
_output_shapes

:*
transpose_a( *
transpose_b(*
T0
É
*gradients_1/Disc/d1_1/MatMul_grad/MatMul_1MatMulDisc/Tanh_37gradients_1/Disc/d1_1/add_grad/tuple/control_dependency*
_output_shapes

:*
transpose_a(*
transpose_b( *
T0

2gradients_1/Disc/d1_1/MatMul_grad/tuple/group_depsNoOp)^gradients_1/Disc/d1_1/MatMul_grad/MatMul+^gradients_1/Disc/d1_1/MatMul_grad/MatMul_1

:gradients_1/Disc/d1_1/MatMul_grad/tuple/control_dependencyIdentity(gradients_1/Disc/d1_1/MatMul_grad/MatMul3^gradients_1/Disc/d1_1/MatMul_grad/tuple/group_deps*
_output_shapes

:*
T0*;
_class1
/-loc:@gradients_1/Disc/d1_1/MatMul_grad/MatMul

<gradients_1/Disc/d1_1/MatMul_grad/tuple/control_dependency_1Identity*gradients_1/Disc/d1_1/MatMul_grad/MatMul_13^gradients_1/Disc/d1_1/MatMul_grad/tuple/group_deps*
_output_shapes

:*
T0*=
_class3
1/loc:@gradients_1/Disc/d1_1/MatMul_grad/MatMul_1
£
%gradients_1/Disc/Tanh_3_grad/TanhGradTanhGradDisc/Tanh_3:gradients_1/Disc/d1_1/MatMul_grad/tuple/control_dependency*
T0*
_output_shapes

:
u
$gradients_1/Disc/d0_1/add_grad/ShapeConst*
dtype0*
valueB"      *
_output_shapes
:
p
&gradients_1/Disc/d0_1/add_grad/Shape_1Const*
dtype0*
valueB:*
_output_shapes
:
Ų
4gradients_1/Disc/d0_1/add_grad/BroadcastGradientArgsBroadcastGradientArgs$gradients_1/Disc/d0_1/add_grad/Shape&gradients_1/Disc/d0_1/add_grad/Shape_1*
T0*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’
Ę
"gradients_1/Disc/d0_1/add_grad/SumSum%gradients_1/Disc/Tanh_3_grad/TanhGrad4gradients_1/Disc/d0_1/add_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
²
&gradients_1/Disc/d0_1/add_grad/ReshapeReshape"gradients_1/Disc/d0_1/add_grad/Sum$gradients_1/Disc/d0_1/add_grad/Shape*
Tshape0*
T0*
_output_shapes

:
Ź
$gradients_1/Disc/d0_1/add_grad/Sum_1Sum%gradients_1/Disc/Tanh_3_grad/TanhGrad6gradients_1/Disc/d0_1/add_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
“
(gradients_1/Disc/d0_1/add_grad/Reshape_1Reshape$gradients_1/Disc/d0_1/add_grad/Sum_1&gradients_1/Disc/d0_1/add_grad/Shape_1*
Tshape0*
T0*
_output_shapes
:

/gradients_1/Disc/d0_1/add_grad/tuple/group_depsNoOp'^gradients_1/Disc/d0_1/add_grad/Reshape)^gradients_1/Disc/d0_1/add_grad/Reshape_1

7gradients_1/Disc/d0_1/add_grad/tuple/control_dependencyIdentity&gradients_1/Disc/d0_1/add_grad/Reshape0^gradients_1/Disc/d0_1/add_grad/tuple/group_deps*
_output_shapes

:*
T0*9
_class/
-+loc:@gradients_1/Disc/d0_1/add_grad/Reshape

9gradients_1/Disc/d0_1/add_grad/tuple/control_dependency_1Identity(gradients_1/Disc/d0_1/add_grad/Reshape_10^gradients_1/Disc/d0_1/add_grad/tuple/group_deps*
_output_shapes
:*
T0*;
_class1
/-loc:@gradients_1/Disc/d0_1/add_grad/Reshape_1
Ź
(gradients_1/Disc/d0_1/MatMul_grad/MatMulMatMul7gradients_1/Disc/d0_1/add_grad/tuple/control_dependencyDisc/d0/w/read*
_output_shapes

:*
transpose_a( *
transpose_b(*
T0
Č
*gradients_1/Disc/d0_1/MatMul_grad/MatMul_1MatMul
Gen/g1/add7gradients_1/Disc/d0_1/add_grad/tuple/control_dependency*
_output_shapes

:*
transpose_a(*
transpose_b( *
T0

2gradients_1/Disc/d0_1/MatMul_grad/tuple/group_depsNoOp)^gradients_1/Disc/d0_1/MatMul_grad/MatMul+^gradients_1/Disc/d0_1/MatMul_grad/MatMul_1

:gradients_1/Disc/d0_1/MatMul_grad/tuple/control_dependencyIdentity(gradients_1/Disc/d0_1/MatMul_grad/MatMul3^gradients_1/Disc/d0_1/MatMul_grad/tuple/group_deps*
_output_shapes

:*
T0*;
_class1
/-loc:@gradients_1/Disc/d0_1/MatMul_grad/MatMul

<gradients_1/Disc/d0_1/MatMul_grad/tuple/control_dependency_1Identity*gradients_1/Disc/d0_1/MatMul_grad/MatMul_13^gradients_1/Disc/d0_1/MatMul_grad/tuple/group_deps*
_output_shapes

:*
T0*=
_class3
1/loc:@gradients_1/Disc/d0_1/MatMul_grad/MatMul_1
r
!gradients_1/Gen/g1/add_grad/ShapeConst*
dtype0*
valueB"      *
_output_shapes
:
m
#gradients_1/Gen/g1/add_grad/Shape_1Const*
dtype0*
valueB:*
_output_shapes
:
Ļ
1gradients_1/Gen/g1/add_grad/BroadcastGradientArgsBroadcastGradientArgs!gradients_1/Gen/g1/add_grad/Shape#gradients_1/Gen/g1/add_grad/Shape_1*
T0*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’
Õ
gradients_1/Gen/g1/add_grad/SumSum:gradients_1/Disc/d0_1/MatMul_grad/tuple/control_dependency1gradients_1/Gen/g1/add_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
©
#gradients_1/Gen/g1/add_grad/ReshapeReshapegradients_1/Gen/g1/add_grad/Sum!gradients_1/Gen/g1/add_grad/Shape*
Tshape0*
T0*
_output_shapes

:
Ł
!gradients_1/Gen/g1/add_grad/Sum_1Sum:gradients_1/Disc/d0_1/MatMul_grad/tuple/control_dependency3gradients_1/Gen/g1/add_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
«
%gradients_1/Gen/g1/add_grad/Reshape_1Reshape!gradients_1/Gen/g1/add_grad/Sum_1#gradients_1/Gen/g1/add_grad/Shape_1*
Tshape0*
T0*
_output_shapes
:

,gradients_1/Gen/g1/add_grad/tuple/group_depsNoOp$^gradients_1/Gen/g1/add_grad/Reshape&^gradients_1/Gen/g1/add_grad/Reshape_1
õ
4gradients_1/Gen/g1/add_grad/tuple/control_dependencyIdentity#gradients_1/Gen/g1/add_grad/Reshape-^gradients_1/Gen/g1/add_grad/tuple/group_deps*
_output_shapes

:*
T0*6
_class,
*(loc:@gradients_1/Gen/g1/add_grad/Reshape
÷
6gradients_1/Gen/g1/add_grad/tuple/control_dependency_1Identity%gradients_1/Gen/g1/add_grad/Reshape_1-^gradients_1/Gen/g1/add_grad/tuple/group_deps*
_output_shapes
:*
T0*8
_class.
,*loc:@gradients_1/Gen/g1/add_grad/Reshape_1
Ć
%gradients_1/Gen/g1/MatMul_grad/MatMulMatMul4gradients_1/Gen/g1/add_grad/tuple/control_dependencyGen/g1/w/read*
_output_shapes

:*
transpose_a( *
transpose_b(*
T0
Ä
'gradients_1/Gen/g1/MatMul_grad/MatMul_1MatMulGen/Softplus4gradients_1/Gen/g1/add_grad/tuple/control_dependency*
_output_shapes

:*
transpose_a(*
transpose_b( *
T0

/gradients_1/Gen/g1/MatMul_grad/tuple/group_depsNoOp&^gradients_1/Gen/g1/MatMul_grad/MatMul(^gradients_1/Gen/g1/MatMul_grad/MatMul_1
’
7gradients_1/Gen/g1/MatMul_grad/tuple/control_dependencyIdentity%gradients_1/Gen/g1/MatMul_grad/MatMul0^gradients_1/Gen/g1/MatMul_grad/tuple/group_deps*
_output_shapes

:*
T0*8
_class.
,*loc:@gradients_1/Gen/g1/MatMul_grad/MatMul

9gradients_1/Gen/g1/MatMul_grad/tuple/control_dependency_1Identity'gradients_1/Gen/g1/MatMul_grad/MatMul_10^gradients_1/Gen/g1/MatMul_grad/tuple/group_deps*
_output_shapes

:*
T0*:
_class0
.,loc:@gradients_1/Gen/g1/MatMul_grad/MatMul_1
Ø
*gradients_1/Gen/Softplus_grad/SoftplusGradSoftplusGrad7gradients_1/Gen/g1/MatMul_grad/tuple/control_dependency
Gen/g0/add*
T0*
_output_shapes

:
r
!gradients_1/Gen/g0/add_grad/ShapeConst*
dtype0*
valueB"      *
_output_shapes
:
m
#gradients_1/Gen/g0/add_grad/Shape_1Const*
dtype0*
valueB:*
_output_shapes
:
Ļ
1gradients_1/Gen/g0/add_grad/BroadcastGradientArgsBroadcastGradientArgs!gradients_1/Gen/g0/add_grad/Shape#gradients_1/Gen/g0/add_grad/Shape_1*
T0*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’
Å
gradients_1/Gen/g0/add_grad/SumSum*gradients_1/Gen/Softplus_grad/SoftplusGrad1gradients_1/Gen/g0/add_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
©
#gradients_1/Gen/g0/add_grad/ReshapeReshapegradients_1/Gen/g0/add_grad/Sum!gradients_1/Gen/g0/add_grad/Shape*
Tshape0*
T0*
_output_shapes

:
É
!gradients_1/Gen/g0/add_grad/Sum_1Sum*gradients_1/Gen/Softplus_grad/SoftplusGrad3gradients_1/Gen/g0/add_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
«
%gradients_1/Gen/g0/add_grad/Reshape_1Reshape!gradients_1/Gen/g0/add_grad/Sum_1#gradients_1/Gen/g0/add_grad/Shape_1*
Tshape0*
T0*
_output_shapes
:

,gradients_1/Gen/g0/add_grad/tuple/group_depsNoOp$^gradients_1/Gen/g0/add_grad/Reshape&^gradients_1/Gen/g0/add_grad/Reshape_1
õ
4gradients_1/Gen/g0/add_grad/tuple/control_dependencyIdentity#gradients_1/Gen/g0/add_grad/Reshape-^gradients_1/Gen/g0/add_grad/tuple/group_deps*
_output_shapes

:*
T0*6
_class,
*(loc:@gradients_1/Gen/g0/add_grad/Reshape
÷
6gradients_1/Gen/g0/add_grad/tuple/control_dependency_1Identity%gradients_1/Gen/g0/add_grad/Reshape_1-^gradients_1/Gen/g0/add_grad/tuple/group_deps*
_output_shapes
:*
T0*8
_class.
,*loc:@gradients_1/Gen/g0/add_grad/Reshape_1
Ć
%gradients_1/Gen/g0/MatMul_grad/MatMulMatMul4gradients_1/Gen/g0/add_grad/tuple/control_dependencyGen/g0/w/read*
_output_shapes

:*
transpose_a( *
transpose_b(*
T0
Ē
'gradients_1/Gen/g0/MatMul_grad/MatMul_1MatMulGen/Placeholder4gradients_1/Gen/g0/add_grad/tuple/control_dependency*
_output_shapes

:*
transpose_a(*
transpose_b( *
T0

/gradients_1/Gen/g0/MatMul_grad/tuple/group_depsNoOp&^gradients_1/Gen/g0/MatMul_grad/MatMul(^gradients_1/Gen/g0/MatMul_grad/MatMul_1
’
7gradients_1/Gen/g0/MatMul_grad/tuple/control_dependencyIdentity%gradients_1/Gen/g0/MatMul_grad/MatMul0^gradients_1/Gen/g0/MatMul_grad/tuple/group_deps*
_output_shapes

:*
T0*8
_class.
,*loc:@gradients_1/Gen/g0/MatMul_grad/MatMul

9gradients_1/Gen/g0/MatMul_grad/tuple/control_dependency_1Identity'gradients_1/Gen/g0/MatMul_grad/MatMul_10^gradients_1/Gen/g0/MatMul_grad/tuple/group_deps*
_output_shapes

:*
T0*:
_class0
.,loc:@gradients_1/Gen/g0/MatMul_grad/MatMul_1

6GradientDescent_1/update_Gen/g0/w/ApplyGradientDescentApplyGradientDescentGen/g0/wExponentialDecay_19gradients_1/Gen/g0/MatMul_grad/tuple/control_dependency_1*
_output_shapes

:*
use_locking( *
T0*
_class
loc:@Gen/g0/w
ł
6GradientDescent_1/update_Gen/g0/b/ApplyGradientDescentApplyGradientDescentGen/g0/bExponentialDecay_16gradients_1/Gen/g0/add_grad/tuple/control_dependency_1*
_output_shapes
:*
use_locking( *
T0*
_class
loc:@Gen/g0/b

6GradientDescent_1/update_Gen/g1/w/ApplyGradientDescentApplyGradientDescentGen/g1/wExponentialDecay_19gradients_1/Gen/g1/MatMul_grad/tuple/control_dependency_1*
_output_shapes

:*
use_locking( *
T0*
_class
loc:@Gen/g1/w
ł
6GradientDescent_1/update_Gen/g1/b/ApplyGradientDescentApplyGradientDescentGen/g1/bExponentialDecay_16gradients_1/Gen/g1/add_grad/tuple/control_dependency_1*
_output_shapes
:*
use_locking( *
T0*
_class
loc:@Gen/g1/b

GradientDescent_1/updateNoOp7^GradientDescent_1/update_Gen/g0/w/ApplyGradientDescent7^GradientDescent_1/update_Gen/g0/b/ApplyGradientDescent7^GradientDescent_1/update_Gen/g1/w/ApplyGradientDescent7^GradientDescent_1/update_Gen/g1/b/ApplyGradientDescent

GradientDescent_1/valueConst^GradientDescent_1/update*
dtype0*
value	B :*
_output_shapes
: *
_class
loc:@Variable_1

GradientDescent_1	AssignAdd
Variable_1GradientDescent_1/value*
_output_shapes
: *
use_locking( *
T0*
_class
loc:@Variable_1
Ź
initNoOp^D_pre/d0/w/Assign^D_pre/d0/b/Assign^D_pre/d1/w/Assign^D_pre/d1/b/Assign^D_pre/d2/w/Assign^D_pre/d2/b/Assign^D_pre/d3/w/Assign^D_pre/d3/b/Assign^D_pre/Variable/Assign^Gen/g0/w/Assign^Gen/g0/b/Assign^Gen/g1/w/Assign^Gen/g1/b/Assign^Disc/d0/w/Assign^Disc/d0/b/Assign^Disc/d1/w/Assign^Disc/d1/b/Assign^Disc/d2/w/Assign^Disc/d2/b/Assign^Disc/d3/w/Assign^Disc/d3/b/Assign^Variable/Assign^Variable_1/Assign"«Ō­Ę     aOZ	ü?U9ÖAJ
æ
9
Add
x"T
y"T
z"T"
Ttype:
2	
S
AddN
inputs"T*N
sum"T"
Nint(0"
Ttype:
2	

ApplyGradientDescent
var"T

alpha"T

delta"T
out"T"
Ttype:
2	"
use_lockingbool( 
x
Assign
ref"T

value"T

output_ref"T"	
Ttype"
validate_shapebool("
use_lockingbool(
p
	AssignAdd
ref"T

value"T

output_ref"T"
Ttype:
2	"
use_lockingbool( 
R
BroadcastGradientArgs
s0"T
s1"T
r0"T
r1"T"
Ttype0:
2	
8
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype
8
Const
output"dtype"
valuetensor"
dtypetype
4
Fill
dims

value"T
output"T"	
Ttype
+
Floor
x"T
y"T"
Ttype:
2
>
FloorDiv
x"T
y"T
z"T"
Ttype:
2	
.
Identity

input"T
output"T"	
Ttype
+
Log
x"T
y"T"
Ttype:	
2
o
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2
:
Maximum
x"T
y"T
z"T"
Ttype:	
2	

Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( "
Ttype:
2	"
Tidxtype0:
2	
<
Mul
x"T
y"T
z"T"
Ttype:
2	
-
Neg
x"T
y"T"
Ttype:
	2	

NoOp
A
Placeholder
output"dtype"
dtypetype"
shapeshape: 
5
Pow
x"T
y"T
z"T"
Ttype:
	2	

Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( "
Ttype:
2	"
Tidxtype0:
2	

RandomStandardNormal

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	
=
RealDiv
x"T
y"T
z"T"
Ttype:
2	
4

Reciprocal
x"T
y"T"
Ttype:
	2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
/
Sigmoid
x"T
y"T"
Ttype:	
2
;
SigmoidGrad
x"T
y"T
z"T"
Ttype:	
2
E
Softplus
features"T
activations"T"
Ttype:
2		
W
SoftplusGrad
	gradients"T
features"T
	backprops"T"
Ttype:
2		
0
Square
x"T
y"T"
Ttype:
	2	
5
Sub
x"T
y"T
z"T"
Ttype:
	2	

Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( "
Ttype:
2	"
Tidxtype0:
2	
,
Tanh
x"T
y"T"
Ttype:	
2
8
TanhGrad
x"T
y"T
z"T"
Ttype:	
2
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
s

VariableV2
ref"dtype"
shapeshape"
dtypetype"
	containerstring "
shared_namestring *1.0.12v1.0.0-65-g4763edf-dirtyßā
b
D_pre/PlaceholderPlaceholder*
dtype0*
shape
:*
_output_shapes

:
d
D_pre/Placeholder_1Placeholder*
dtype0*
shape
:*
_output_shapes

:

*D_pre/d0/w/Initializer/random_normal/shapeConst*
dtype0*
valueB"      *
_class
loc:@D_pre/d0/w*
_output_shapes
:

)D_pre/d0/w/Initializer/random_normal/meanConst*
dtype0*
valueB
 *    *
_class
loc:@D_pre/d0/w*
_output_shapes
: 

+D_pre/d0/w/Initializer/random_normal/stddevConst*
dtype0*
valueB
 *  ?*
_class
loc:@D_pre/d0/w*
_output_shapes
: 
ė
9D_pre/d0/w/Initializer/random_normal/RandomStandardNormalRandomStandardNormal*D_pre/d0/w/Initializer/random_normal/shape*
T0*
_output_shapes

:*
dtype0*
seed2 *

seed *
_class
loc:@D_pre/d0/w
ß
(D_pre/d0/w/Initializer/random_normal/mulMul9D_pre/d0/w/Initializer/random_normal/RandomStandardNormal+D_pre/d0/w/Initializer/random_normal/stddev*
_class
loc:@D_pre/d0/w*
T0*
_output_shapes

:
Č
$D_pre/d0/w/Initializer/random_normalAdd(D_pre/d0/w/Initializer/random_normal/mul)D_pre/d0/w/Initializer/random_normal/mean*
_class
loc:@D_pre/d0/w*
T0*
_output_shapes

:


D_pre/d0/w
VariableV2*
	container *
_output_shapes

:*
dtype0*
shape
:*
_class
loc:@D_pre/d0/w*
shared_name 
¾
D_pre/d0/w/AssignAssign
D_pre/d0/w$D_pre/d0/w/Initializer/random_normal*
_class
loc:@D_pre/d0/w*
use_locking(*
validate_shape(*
_output_shapes

:*
T0
o
D_pre/d0/w/readIdentity
D_pre/d0/w*
_class
loc:@D_pre/d0/w*
T0*
_output_shapes

:

D_pre/d0/b/Initializer/ConstConst*
dtype0*
valueB*    *
_class
loc:@D_pre/d0/b*
_output_shapes
:


D_pre/d0/b
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*
_class
loc:@D_pre/d0/b*
shared_name 
²
D_pre/d0/b/AssignAssign
D_pre/d0/bD_pre/d0/b/Initializer/Const*
_class
loc:@D_pre/d0/b*
use_locking(*
validate_shape(*
_output_shapes
:*
T0
k
D_pre/d0/b/readIdentity
D_pre/d0/b*
_class
loc:@D_pre/d0/b*
T0*
_output_shapes
:

D_pre/d0/MatMulMatMulD_pre/PlaceholderD_pre/d0/w/read*
T0*
transpose_a( *
_output_shapes

:*
transpose_b( 
^
D_pre/d0/addAddD_pre/d0/MatMulD_pre/d0/b/read*
T0*
_output_shapes

:
I

D_pre/TanhTanhD_pre/d0/add*
T0*
_output_shapes

:

*D_pre/d1/w/Initializer/random_normal/shapeConst*
dtype0*
valueB"      *
_class
loc:@D_pre/d1/w*
_output_shapes
:

)D_pre/d1/w/Initializer/random_normal/meanConst*
dtype0*
valueB
 *    *
_class
loc:@D_pre/d1/w*
_output_shapes
: 

+D_pre/d1/w/Initializer/random_normal/stddevConst*
dtype0*
valueB
 *  ?*
_class
loc:@D_pre/d1/w*
_output_shapes
: 
ė
9D_pre/d1/w/Initializer/random_normal/RandomStandardNormalRandomStandardNormal*D_pre/d1/w/Initializer/random_normal/shape*
T0*
_output_shapes

:*
dtype0*
seed2 *

seed *
_class
loc:@D_pre/d1/w
ß
(D_pre/d1/w/Initializer/random_normal/mulMul9D_pre/d1/w/Initializer/random_normal/RandomStandardNormal+D_pre/d1/w/Initializer/random_normal/stddev*
_class
loc:@D_pre/d1/w*
T0*
_output_shapes

:
Č
$D_pre/d1/w/Initializer/random_normalAdd(D_pre/d1/w/Initializer/random_normal/mul)D_pre/d1/w/Initializer/random_normal/mean*
_class
loc:@D_pre/d1/w*
T0*
_output_shapes

:


D_pre/d1/w
VariableV2*
	container *
_output_shapes

:*
dtype0*
shape
:*
_class
loc:@D_pre/d1/w*
shared_name 
¾
D_pre/d1/w/AssignAssign
D_pre/d1/w$D_pre/d1/w/Initializer/random_normal*
_class
loc:@D_pre/d1/w*
use_locking(*
validate_shape(*
_output_shapes

:*
T0
o
D_pre/d1/w/readIdentity
D_pre/d1/w*
_class
loc:@D_pre/d1/w*
T0*
_output_shapes

:

D_pre/d1/b/Initializer/ConstConst*
dtype0*
valueB*    *
_class
loc:@D_pre/d1/b*
_output_shapes
:


D_pre/d1/b
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*
_class
loc:@D_pre/d1/b*
shared_name 
²
D_pre/d1/b/AssignAssign
D_pre/d1/bD_pre/d1/b/Initializer/Const*
_class
loc:@D_pre/d1/b*
use_locking(*
validate_shape(*
_output_shapes
:*
T0
k
D_pre/d1/b/readIdentity
D_pre/d1/b*
_class
loc:@D_pre/d1/b*
T0*
_output_shapes
:

D_pre/d1/MatMulMatMul
D_pre/TanhD_pre/d1/w/read*
T0*
transpose_a( *
_output_shapes

:*
transpose_b( 
^
D_pre/d1/addAddD_pre/d1/MatMulD_pre/d1/b/read*
T0*
_output_shapes

:
K
D_pre/Tanh_1TanhD_pre/d1/add*
T0*
_output_shapes

:

*D_pre/d2/w/Initializer/random_normal/shapeConst*
dtype0*
valueB"      *
_class
loc:@D_pre/d2/w*
_output_shapes
:

)D_pre/d2/w/Initializer/random_normal/meanConst*
dtype0*
valueB
 *    *
_class
loc:@D_pre/d2/w*
_output_shapes
: 

+D_pre/d2/w/Initializer/random_normal/stddevConst*
dtype0*
valueB
 *  ?*
_class
loc:@D_pre/d2/w*
_output_shapes
: 
ė
9D_pre/d2/w/Initializer/random_normal/RandomStandardNormalRandomStandardNormal*D_pre/d2/w/Initializer/random_normal/shape*
T0*
_output_shapes

:*
dtype0*
seed2 *

seed *
_class
loc:@D_pre/d2/w
ß
(D_pre/d2/w/Initializer/random_normal/mulMul9D_pre/d2/w/Initializer/random_normal/RandomStandardNormal+D_pre/d2/w/Initializer/random_normal/stddev*
_class
loc:@D_pre/d2/w*
T0*
_output_shapes

:
Č
$D_pre/d2/w/Initializer/random_normalAdd(D_pre/d2/w/Initializer/random_normal/mul)D_pre/d2/w/Initializer/random_normal/mean*
_class
loc:@D_pre/d2/w*
T0*
_output_shapes

:


D_pre/d2/w
VariableV2*
	container *
_output_shapes

:*
dtype0*
shape
:*
_class
loc:@D_pre/d2/w*
shared_name 
¾
D_pre/d2/w/AssignAssign
D_pre/d2/w$D_pre/d2/w/Initializer/random_normal*
_class
loc:@D_pre/d2/w*
use_locking(*
validate_shape(*
_output_shapes

:*
T0
o
D_pre/d2/w/readIdentity
D_pre/d2/w*
_class
loc:@D_pre/d2/w*
T0*
_output_shapes

:

D_pre/d2/b/Initializer/ConstConst*
dtype0*
valueB*    *
_class
loc:@D_pre/d2/b*
_output_shapes
:


D_pre/d2/b
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*
_class
loc:@D_pre/d2/b*
shared_name 
²
D_pre/d2/b/AssignAssign
D_pre/d2/bD_pre/d2/b/Initializer/Const*
_class
loc:@D_pre/d2/b*
use_locking(*
validate_shape(*
_output_shapes
:*
T0
k
D_pre/d2/b/readIdentity
D_pre/d2/b*
_class
loc:@D_pre/d2/b*
T0*
_output_shapes
:

D_pre/d2/MatMulMatMulD_pre/Tanh_1D_pre/d2/w/read*
T0*
transpose_a( *
_output_shapes

:*
transpose_b( 
^
D_pre/d2/addAddD_pre/d2/MatMulD_pre/d2/b/read*
T0*
_output_shapes

:
K
D_pre/Tanh_2TanhD_pre/d2/add*
T0*
_output_shapes

:

*D_pre/d3/w/Initializer/random_normal/shapeConst*
dtype0*
valueB"      *
_class
loc:@D_pre/d3/w*
_output_shapes
:

)D_pre/d3/w/Initializer/random_normal/meanConst*
dtype0*
valueB
 *    *
_class
loc:@D_pre/d3/w*
_output_shapes
: 

+D_pre/d3/w/Initializer/random_normal/stddevConst*
dtype0*
valueB
 *  ?*
_class
loc:@D_pre/d3/w*
_output_shapes
: 
ė
9D_pre/d3/w/Initializer/random_normal/RandomStandardNormalRandomStandardNormal*D_pre/d3/w/Initializer/random_normal/shape*
T0*
_output_shapes

:*
dtype0*
seed2 *

seed *
_class
loc:@D_pre/d3/w
ß
(D_pre/d3/w/Initializer/random_normal/mulMul9D_pre/d3/w/Initializer/random_normal/RandomStandardNormal+D_pre/d3/w/Initializer/random_normal/stddev*
_class
loc:@D_pre/d3/w*
T0*
_output_shapes

:
Č
$D_pre/d3/w/Initializer/random_normalAdd(D_pre/d3/w/Initializer/random_normal/mul)D_pre/d3/w/Initializer/random_normal/mean*
_class
loc:@D_pre/d3/w*
T0*
_output_shapes

:


D_pre/d3/w
VariableV2*
	container *
_output_shapes

:*
dtype0*
shape
:*
_class
loc:@D_pre/d3/w*
shared_name 
¾
D_pre/d3/w/AssignAssign
D_pre/d3/w$D_pre/d3/w/Initializer/random_normal*
_class
loc:@D_pre/d3/w*
use_locking(*
validate_shape(*
_output_shapes

:*
T0
o
D_pre/d3/w/readIdentity
D_pre/d3/w*
_class
loc:@D_pre/d3/w*
T0*
_output_shapes

:

D_pre/d3/b/Initializer/ConstConst*
dtype0*
valueB*    *
_class
loc:@D_pre/d3/b*
_output_shapes
:


D_pre/d3/b
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*
_class
loc:@D_pre/d3/b*
shared_name 
²
D_pre/d3/b/AssignAssign
D_pre/d3/bD_pre/d3/b/Initializer/Const*
_class
loc:@D_pre/d3/b*
use_locking(*
validate_shape(*
_output_shapes
:*
T0
k
D_pre/d3/b/readIdentity
D_pre/d3/b*
_class
loc:@D_pre/d3/b*
T0*
_output_shapes
:

D_pre/d3/MatMulMatMulD_pre/Tanh_2D_pre/d3/w/read*
T0*
transpose_a( *
_output_shapes

:*
transpose_b( 
^
D_pre/d3/addAddD_pre/d3/MatMulD_pre/d3/b/read*
T0*
_output_shapes

:
O
D_pre/SigmoidSigmoidD_pre/d3/add*
T0*
_output_shapes

:
]
	D_pre/subSubD_pre/SigmoidD_pre/Placeholder_1*
T0*
_output_shapes

:
J
D_pre/SquareSquare	D_pre/sub*
T0*
_output_shapes

:
\
D_pre/ConstConst*
dtype0*
valueB"       *
_output_shapes
:
k

D_pre/MeanMeanD_pre/SquareD_pre/Const*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
^
D_pre/Variable/initial_valueConst*
dtype0*
value	B : *
_output_shapes
: 
r
D_pre/Variable
VariableV2*
dtype0*
	container *
shape: *
_output_shapes
: *
shared_name 
ŗ
D_pre/Variable/AssignAssignD_pre/VariableD_pre/Variable/initial_value*!
_class
loc:@D_pre/Variable*
use_locking(*
validate_shape(*
_output_shapes
: *
T0
s
D_pre/Variable/readIdentityD_pre/Variable*!
_class
loc:@D_pre/Variable*
T0*
_output_shapes
: 
i
$D_pre/ExponentialDecay/learning_rateConst*
dtype0*
valueB
 *Āõ<*
_output_shapes
: 
h
D_pre/ExponentialDecay/CastCastD_pre/Variable/read*

SrcT0*

DstT0*
_output_shapes
: 
b
D_pre/ExponentialDecay/Cast_1/xConst*
dtype0*
value
B :*
_output_shapes
: 
v
D_pre/ExponentialDecay/Cast_1CastD_pre/ExponentialDecay/Cast_1/x*

SrcT0*

DstT0*
_output_shapes
: 
d
D_pre/ExponentialDecay/Cast_2/xConst*
dtype0*
valueB
 *33s?*
_output_shapes
: 

D_pre/ExponentialDecay/truedivRealDivD_pre/ExponentialDecay/CastD_pre/ExponentialDecay/Cast_1*
T0*
_output_shapes
: 
f
D_pre/ExponentialDecay/FloorFloorD_pre/ExponentialDecay/truediv*
T0*
_output_shapes
: 

D_pre/ExponentialDecay/PowPowD_pre/ExponentialDecay/Cast_2/xD_pre/ExponentialDecay/Floor*
T0*
_output_shapes
: 

D_pre/ExponentialDecayMul$D_pre/ExponentialDecay/learning_rateD_pre/ExponentialDecay/Pow*
T0*
_output_shapes
: 
X
D_pre/gradients/ShapeConst*
dtype0*
valueB *
_output_shapes
: 
Z
D_pre/gradients/ConstConst*
dtype0*
valueB
 *  ?*
_output_shapes
: 
k
D_pre/gradients/FillFillD_pre/gradients/ShapeD_pre/gradients/Const*
T0*
_output_shapes
: 
~
-D_pre/gradients/D_pre/Mean_grad/Reshape/shapeConst*
dtype0*
valueB"      *
_output_shapes
:
®
'D_pre/gradients/D_pre/Mean_grad/ReshapeReshapeD_pre/gradients/Fill-D_pre/gradients/D_pre/Mean_grad/Reshape/shape*
Tshape0*
T0*
_output_shapes

:

.D_pre/gradients/D_pre/Mean_grad/Tile/multiplesConst*
dtype0*
valueB"      *
_output_shapes
:
Ą
$D_pre/gradients/D_pre/Mean_grad/TileTile'D_pre/gradients/D_pre/Mean_grad/Reshape.D_pre/gradients/D_pre/Mean_grad/Tile/multiples*
T0*
_output_shapes

:*

Tmultiples0
v
%D_pre/gradients/D_pre/Mean_grad/ShapeConst*
dtype0*
valueB"      *
_output_shapes
:
j
'D_pre/gradients/D_pre/Mean_grad/Shape_1Const*
dtype0*
valueB *
_output_shapes
: 
o
%D_pre/gradients/D_pre/Mean_grad/ConstConst*
dtype0*
valueB: *
_output_shapes
:
ø
$D_pre/gradients/D_pre/Mean_grad/ProdProd%D_pre/gradients/D_pre/Mean_grad/Shape%D_pre/gradients/D_pre/Mean_grad/Const*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
q
'D_pre/gradients/D_pre/Mean_grad/Const_1Const*
dtype0*
valueB: *
_output_shapes
:
¾
&D_pre/gradients/D_pre/Mean_grad/Prod_1Prod'D_pre/gradients/D_pre/Mean_grad/Shape_1'D_pre/gradients/D_pre/Mean_grad/Const_1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
k
)D_pre/gradients/D_pre/Mean_grad/Maximum/yConst*
dtype0*
value	B :*
_output_shapes
: 
¦
'D_pre/gradients/D_pre/Mean_grad/MaximumMaximum&D_pre/gradients/D_pre/Mean_grad/Prod_1)D_pre/gradients/D_pre/Mean_grad/Maximum/y*
T0*
_output_shapes
: 
¤
(D_pre/gradients/D_pre/Mean_grad/floordivFloorDiv$D_pre/gradients/D_pre/Mean_grad/Prod'D_pre/gradients/D_pre/Mean_grad/Maximum*
T0*
_output_shapes
: 

$D_pre/gradients/D_pre/Mean_grad/CastCast(D_pre/gradients/D_pre/Mean_grad/floordiv*

SrcT0*

DstT0*
_output_shapes
: 
§
'D_pre/gradients/D_pre/Mean_grad/truedivRealDiv$D_pre/gradients/D_pre/Mean_grad/Tile$D_pre/gradients/D_pre/Mean_grad/Cast*
T0*
_output_shapes

:

'D_pre/gradients/D_pre/Square_grad/mul/xConst(^D_pre/gradients/D_pre/Mean_grad/truediv*
dtype0*
valueB
 *   @*
_output_shapes
: 

%D_pre/gradients/D_pre/Square_grad/mulMul'D_pre/gradients/D_pre/Square_grad/mul/x	D_pre/sub*
T0*
_output_shapes

:
§
'D_pre/gradients/D_pre/Square_grad/mul_1Mul'D_pre/gradients/D_pre/Mean_grad/truediv%D_pre/gradients/D_pre/Square_grad/mul*
T0*
_output_shapes

:
u
$D_pre/gradients/D_pre/sub_grad/ShapeConst*
dtype0*
valueB"      *
_output_shapes
:
w
&D_pre/gradients/D_pre/sub_grad/Shape_1Const*
dtype0*
valueB"      *
_output_shapes
:
Ų
4D_pre/gradients/D_pre/sub_grad/BroadcastGradientArgsBroadcastGradientArgs$D_pre/gradients/D_pre/sub_grad/Shape&D_pre/gradients/D_pre/sub_grad/Shape_1*
T0*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’
Č
"D_pre/gradients/D_pre/sub_grad/SumSum'D_pre/gradients/D_pre/Square_grad/mul_14D_pre/gradients/D_pre/sub_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
²
&D_pre/gradients/D_pre/sub_grad/ReshapeReshape"D_pre/gradients/D_pre/sub_grad/Sum$D_pre/gradients/D_pre/sub_grad/Shape*
Tshape0*
T0*
_output_shapes

:
Ģ
$D_pre/gradients/D_pre/sub_grad/Sum_1Sum'D_pre/gradients/D_pre/Square_grad/mul_16D_pre/gradients/D_pre/sub_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
r
"D_pre/gradients/D_pre/sub_grad/NegNeg$D_pre/gradients/D_pre/sub_grad/Sum_1*
T0*
_output_shapes
:
¶
(D_pre/gradients/D_pre/sub_grad/Reshape_1Reshape"D_pre/gradients/D_pre/sub_grad/Neg&D_pre/gradients/D_pre/sub_grad/Shape_1*
Tshape0*
T0*
_output_shapes

:

/D_pre/gradients/D_pre/sub_grad/tuple/group_depsNoOp'^D_pre/gradients/D_pre/sub_grad/Reshape)^D_pre/gradients/D_pre/sub_grad/Reshape_1

7D_pre/gradients/D_pre/sub_grad/tuple/control_dependencyIdentity&D_pre/gradients/D_pre/sub_grad/Reshape0^D_pre/gradients/D_pre/sub_grad/tuple/group_deps*9
_class/
-+loc:@D_pre/gradients/D_pre/sub_grad/Reshape*
T0*
_output_shapes

:

9D_pre/gradients/D_pre/sub_grad/tuple/control_dependency_1Identity(D_pre/gradients/D_pre/sub_grad/Reshape_10^D_pre/gradients/D_pre/sub_grad/tuple/group_deps*;
_class1
/-loc:@D_pre/gradients/D_pre/sub_grad/Reshape_1*
T0*
_output_shapes

:
®
.D_pre/gradients/D_pre/Sigmoid_grad/SigmoidGradSigmoidGradD_pre/Sigmoid7D_pre/gradients/D_pre/sub_grad/tuple/control_dependency*
T0*
_output_shapes

:
x
'D_pre/gradients/D_pre/d3/add_grad/ShapeConst*
dtype0*
valueB"      *
_output_shapes
:
s
)D_pre/gradients/D_pre/d3/add_grad/Shape_1Const*
dtype0*
valueB:*
_output_shapes
:
į
7D_pre/gradients/D_pre/d3/add_grad/BroadcastGradientArgsBroadcastGradientArgs'D_pre/gradients/D_pre/d3/add_grad/Shape)D_pre/gradients/D_pre/d3/add_grad/Shape_1*
T0*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’
Õ
%D_pre/gradients/D_pre/d3/add_grad/SumSum.D_pre/gradients/D_pre/Sigmoid_grad/SigmoidGrad7D_pre/gradients/D_pre/d3/add_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
»
)D_pre/gradients/D_pre/d3/add_grad/ReshapeReshape%D_pre/gradients/D_pre/d3/add_grad/Sum'D_pre/gradients/D_pre/d3/add_grad/Shape*
Tshape0*
T0*
_output_shapes

:
Ł
'D_pre/gradients/D_pre/d3/add_grad/Sum_1Sum.D_pre/gradients/D_pre/Sigmoid_grad/SigmoidGrad9D_pre/gradients/D_pre/d3/add_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
½
+D_pre/gradients/D_pre/d3/add_grad/Reshape_1Reshape'D_pre/gradients/D_pre/d3/add_grad/Sum_1)D_pre/gradients/D_pre/d3/add_grad/Shape_1*
Tshape0*
T0*
_output_shapes
:

2D_pre/gradients/D_pre/d3/add_grad/tuple/group_depsNoOp*^D_pre/gradients/D_pre/d3/add_grad/Reshape,^D_pre/gradients/D_pre/d3/add_grad/Reshape_1

:D_pre/gradients/D_pre/d3/add_grad/tuple/control_dependencyIdentity)D_pre/gradients/D_pre/d3/add_grad/Reshape3^D_pre/gradients/D_pre/d3/add_grad/tuple/group_deps*<
_class2
0.loc:@D_pre/gradients/D_pre/d3/add_grad/Reshape*
T0*
_output_shapes

:

<D_pre/gradients/D_pre/d3/add_grad/tuple/control_dependency_1Identity+D_pre/gradients/D_pre/d3/add_grad/Reshape_13^D_pre/gradients/D_pre/d3/add_grad/tuple/group_deps*>
_class4
20loc:@D_pre/gradients/D_pre/d3/add_grad/Reshape_1*
T0*
_output_shapes
:
Ń
+D_pre/gradients/D_pre/d3/MatMul_grad/MatMulMatMul:D_pre/gradients/D_pre/d3/add_grad/tuple/control_dependencyD_pre/d3/w/read*
T0*
transpose_a( *
_output_shapes

:*
transpose_b(
Š
-D_pre/gradients/D_pre/d3/MatMul_grad/MatMul_1MatMulD_pre/Tanh_2:D_pre/gradients/D_pre/d3/add_grad/tuple/control_dependency*
T0*
transpose_a(*
_output_shapes

:*
transpose_b( 

5D_pre/gradients/D_pre/d3/MatMul_grad/tuple/group_depsNoOp,^D_pre/gradients/D_pre/d3/MatMul_grad/MatMul.^D_pre/gradients/D_pre/d3/MatMul_grad/MatMul_1

=D_pre/gradients/D_pre/d3/MatMul_grad/tuple/control_dependencyIdentity+D_pre/gradients/D_pre/d3/MatMul_grad/MatMul6^D_pre/gradients/D_pre/d3/MatMul_grad/tuple/group_deps*>
_class4
20loc:@D_pre/gradients/D_pre/d3/MatMul_grad/MatMul*
T0*
_output_shapes

:

?D_pre/gradients/D_pre/d3/MatMul_grad/tuple/control_dependency_1Identity-D_pre/gradients/D_pre/d3/MatMul_grad/MatMul_16^D_pre/gradients/D_pre/d3/MatMul_grad/tuple/group_deps*@
_class6
42loc:@D_pre/gradients/D_pre/d3/MatMul_grad/MatMul_1*
T0*
_output_shapes

:
¬
*D_pre/gradients/D_pre/Tanh_2_grad/TanhGradTanhGradD_pre/Tanh_2=D_pre/gradients/D_pre/d3/MatMul_grad/tuple/control_dependency*
T0*
_output_shapes

:
x
'D_pre/gradients/D_pre/d2/add_grad/ShapeConst*
dtype0*
valueB"      *
_output_shapes
:
s
)D_pre/gradients/D_pre/d2/add_grad/Shape_1Const*
dtype0*
valueB:*
_output_shapes
:
į
7D_pre/gradients/D_pre/d2/add_grad/BroadcastGradientArgsBroadcastGradientArgs'D_pre/gradients/D_pre/d2/add_grad/Shape)D_pre/gradients/D_pre/d2/add_grad/Shape_1*
T0*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’
Ń
%D_pre/gradients/D_pre/d2/add_grad/SumSum*D_pre/gradients/D_pre/Tanh_2_grad/TanhGrad7D_pre/gradients/D_pre/d2/add_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
»
)D_pre/gradients/D_pre/d2/add_grad/ReshapeReshape%D_pre/gradients/D_pre/d2/add_grad/Sum'D_pre/gradients/D_pre/d2/add_grad/Shape*
Tshape0*
T0*
_output_shapes

:
Õ
'D_pre/gradients/D_pre/d2/add_grad/Sum_1Sum*D_pre/gradients/D_pre/Tanh_2_grad/TanhGrad9D_pre/gradients/D_pre/d2/add_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
½
+D_pre/gradients/D_pre/d2/add_grad/Reshape_1Reshape'D_pre/gradients/D_pre/d2/add_grad/Sum_1)D_pre/gradients/D_pre/d2/add_grad/Shape_1*
Tshape0*
T0*
_output_shapes
:

2D_pre/gradients/D_pre/d2/add_grad/tuple/group_depsNoOp*^D_pre/gradients/D_pre/d2/add_grad/Reshape,^D_pre/gradients/D_pre/d2/add_grad/Reshape_1

:D_pre/gradients/D_pre/d2/add_grad/tuple/control_dependencyIdentity)D_pre/gradients/D_pre/d2/add_grad/Reshape3^D_pre/gradients/D_pre/d2/add_grad/tuple/group_deps*<
_class2
0.loc:@D_pre/gradients/D_pre/d2/add_grad/Reshape*
T0*
_output_shapes

:

<D_pre/gradients/D_pre/d2/add_grad/tuple/control_dependency_1Identity+D_pre/gradients/D_pre/d2/add_grad/Reshape_13^D_pre/gradients/D_pre/d2/add_grad/tuple/group_deps*>
_class4
20loc:@D_pre/gradients/D_pre/d2/add_grad/Reshape_1*
T0*
_output_shapes
:
Ń
+D_pre/gradients/D_pre/d2/MatMul_grad/MatMulMatMul:D_pre/gradients/D_pre/d2/add_grad/tuple/control_dependencyD_pre/d2/w/read*
T0*
transpose_a( *
_output_shapes

:*
transpose_b(
Š
-D_pre/gradients/D_pre/d2/MatMul_grad/MatMul_1MatMulD_pre/Tanh_1:D_pre/gradients/D_pre/d2/add_grad/tuple/control_dependency*
T0*
transpose_a(*
_output_shapes

:*
transpose_b( 

5D_pre/gradients/D_pre/d2/MatMul_grad/tuple/group_depsNoOp,^D_pre/gradients/D_pre/d2/MatMul_grad/MatMul.^D_pre/gradients/D_pre/d2/MatMul_grad/MatMul_1

=D_pre/gradients/D_pre/d2/MatMul_grad/tuple/control_dependencyIdentity+D_pre/gradients/D_pre/d2/MatMul_grad/MatMul6^D_pre/gradients/D_pre/d2/MatMul_grad/tuple/group_deps*>
_class4
20loc:@D_pre/gradients/D_pre/d2/MatMul_grad/MatMul*
T0*
_output_shapes

:

?D_pre/gradients/D_pre/d2/MatMul_grad/tuple/control_dependency_1Identity-D_pre/gradients/D_pre/d2/MatMul_grad/MatMul_16^D_pre/gradients/D_pre/d2/MatMul_grad/tuple/group_deps*@
_class6
42loc:@D_pre/gradients/D_pre/d2/MatMul_grad/MatMul_1*
T0*
_output_shapes

:
¬
*D_pre/gradients/D_pre/Tanh_1_grad/TanhGradTanhGradD_pre/Tanh_1=D_pre/gradients/D_pre/d2/MatMul_grad/tuple/control_dependency*
T0*
_output_shapes

:
x
'D_pre/gradients/D_pre/d1/add_grad/ShapeConst*
dtype0*
valueB"      *
_output_shapes
:
s
)D_pre/gradients/D_pre/d1/add_grad/Shape_1Const*
dtype0*
valueB:*
_output_shapes
:
į
7D_pre/gradients/D_pre/d1/add_grad/BroadcastGradientArgsBroadcastGradientArgs'D_pre/gradients/D_pre/d1/add_grad/Shape)D_pre/gradients/D_pre/d1/add_grad/Shape_1*
T0*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’
Ń
%D_pre/gradients/D_pre/d1/add_grad/SumSum*D_pre/gradients/D_pre/Tanh_1_grad/TanhGrad7D_pre/gradients/D_pre/d1/add_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
»
)D_pre/gradients/D_pre/d1/add_grad/ReshapeReshape%D_pre/gradients/D_pre/d1/add_grad/Sum'D_pre/gradients/D_pre/d1/add_grad/Shape*
Tshape0*
T0*
_output_shapes

:
Õ
'D_pre/gradients/D_pre/d1/add_grad/Sum_1Sum*D_pre/gradients/D_pre/Tanh_1_grad/TanhGrad9D_pre/gradients/D_pre/d1/add_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
½
+D_pre/gradients/D_pre/d1/add_grad/Reshape_1Reshape'D_pre/gradients/D_pre/d1/add_grad/Sum_1)D_pre/gradients/D_pre/d1/add_grad/Shape_1*
Tshape0*
T0*
_output_shapes
:

2D_pre/gradients/D_pre/d1/add_grad/tuple/group_depsNoOp*^D_pre/gradients/D_pre/d1/add_grad/Reshape,^D_pre/gradients/D_pre/d1/add_grad/Reshape_1

:D_pre/gradients/D_pre/d1/add_grad/tuple/control_dependencyIdentity)D_pre/gradients/D_pre/d1/add_grad/Reshape3^D_pre/gradients/D_pre/d1/add_grad/tuple/group_deps*<
_class2
0.loc:@D_pre/gradients/D_pre/d1/add_grad/Reshape*
T0*
_output_shapes

:

<D_pre/gradients/D_pre/d1/add_grad/tuple/control_dependency_1Identity+D_pre/gradients/D_pre/d1/add_grad/Reshape_13^D_pre/gradients/D_pre/d1/add_grad/tuple/group_deps*>
_class4
20loc:@D_pre/gradients/D_pre/d1/add_grad/Reshape_1*
T0*
_output_shapes
:
Ń
+D_pre/gradients/D_pre/d1/MatMul_grad/MatMulMatMul:D_pre/gradients/D_pre/d1/add_grad/tuple/control_dependencyD_pre/d1/w/read*
T0*
transpose_a( *
_output_shapes

:*
transpose_b(
Ī
-D_pre/gradients/D_pre/d1/MatMul_grad/MatMul_1MatMul
D_pre/Tanh:D_pre/gradients/D_pre/d1/add_grad/tuple/control_dependency*
T0*
transpose_a(*
_output_shapes

:*
transpose_b( 

5D_pre/gradients/D_pre/d1/MatMul_grad/tuple/group_depsNoOp,^D_pre/gradients/D_pre/d1/MatMul_grad/MatMul.^D_pre/gradients/D_pre/d1/MatMul_grad/MatMul_1

=D_pre/gradients/D_pre/d1/MatMul_grad/tuple/control_dependencyIdentity+D_pre/gradients/D_pre/d1/MatMul_grad/MatMul6^D_pre/gradients/D_pre/d1/MatMul_grad/tuple/group_deps*>
_class4
20loc:@D_pre/gradients/D_pre/d1/MatMul_grad/MatMul*
T0*
_output_shapes

:

?D_pre/gradients/D_pre/d1/MatMul_grad/tuple/control_dependency_1Identity-D_pre/gradients/D_pre/d1/MatMul_grad/MatMul_16^D_pre/gradients/D_pre/d1/MatMul_grad/tuple/group_deps*@
_class6
42loc:@D_pre/gradients/D_pre/d1/MatMul_grad/MatMul_1*
T0*
_output_shapes

:
Ø
(D_pre/gradients/D_pre/Tanh_grad/TanhGradTanhGrad
D_pre/Tanh=D_pre/gradients/D_pre/d1/MatMul_grad/tuple/control_dependency*
T0*
_output_shapes

:
x
'D_pre/gradients/D_pre/d0/add_grad/ShapeConst*
dtype0*
valueB"      *
_output_shapes
:
s
)D_pre/gradients/D_pre/d0/add_grad/Shape_1Const*
dtype0*
valueB:*
_output_shapes
:
į
7D_pre/gradients/D_pre/d0/add_grad/BroadcastGradientArgsBroadcastGradientArgs'D_pre/gradients/D_pre/d0/add_grad/Shape)D_pre/gradients/D_pre/d0/add_grad/Shape_1*
T0*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’
Ļ
%D_pre/gradients/D_pre/d0/add_grad/SumSum(D_pre/gradients/D_pre/Tanh_grad/TanhGrad7D_pre/gradients/D_pre/d0/add_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
»
)D_pre/gradients/D_pre/d0/add_grad/ReshapeReshape%D_pre/gradients/D_pre/d0/add_grad/Sum'D_pre/gradients/D_pre/d0/add_grad/Shape*
Tshape0*
T0*
_output_shapes

:
Ó
'D_pre/gradients/D_pre/d0/add_grad/Sum_1Sum(D_pre/gradients/D_pre/Tanh_grad/TanhGrad9D_pre/gradients/D_pre/d0/add_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
½
+D_pre/gradients/D_pre/d0/add_grad/Reshape_1Reshape'D_pre/gradients/D_pre/d0/add_grad/Sum_1)D_pre/gradients/D_pre/d0/add_grad/Shape_1*
Tshape0*
T0*
_output_shapes
:

2D_pre/gradients/D_pre/d0/add_grad/tuple/group_depsNoOp*^D_pre/gradients/D_pre/d0/add_grad/Reshape,^D_pre/gradients/D_pre/d0/add_grad/Reshape_1

:D_pre/gradients/D_pre/d0/add_grad/tuple/control_dependencyIdentity)D_pre/gradients/D_pre/d0/add_grad/Reshape3^D_pre/gradients/D_pre/d0/add_grad/tuple/group_deps*<
_class2
0.loc:@D_pre/gradients/D_pre/d0/add_grad/Reshape*
T0*
_output_shapes

:

<D_pre/gradients/D_pre/d0/add_grad/tuple/control_dependency_1Identity+D_pre/gradients/D_pre/d0/add_grad/Reshape_13^D_pre/gradients/D_pre/d0/add_grad/tuple/group_deps*>
_class4
20loc:@D_pre/gradients/D_pre/d0/add_grad/Reshape_1*
T0*
_output_shapes
:
Ń
+D_pre/gradients/D_pre/d0/MatMul_grad/MatMulMatMul:D_pre/gradients/D_pre/d0/add_grad/tuple/control_dependencyD_pre/d0/w/read*
T0*
transpose_a( *
_output_shapes

:*
transpose_b(
Õ
-D_pre/gradients/D_pre/d0/MatMul_grad/MatMul_1MatMulD_pre/Placeholder:D_pre/gradients/D_pre/d0/add_grad/tuple/control_dependency*
T0*
transpose_a(*
_output_shapes

:*
transpose_b( 

5D_pre/gradients/D_pre/d0/MatMul_grad/tuple/group_depsNoOp,^D_pre/gradients/D_pre/d0/MatMul_grad/MatMul.^D_pre/gradients/D_pre/d0/MatMul_grad/MatMul_1

=D_pre/gradients/D_pre/d0/MatMul_grad/tuple/control_dependencyIdentity+D_pre/gradients/D_pre/d0/MatMul_grad/MatMul6^D_pre/gradients/D_pre/d0/MatMul_grad/tuple/group_deps*>
_class4
20loc:@D_pre/gradients/D_pre/d0/MatMul_grad/MatMul*
T0*
_output_shapes

:

?D_pre/gradients/D_pre/d0/MatMul_grad/tuple/control_dependency_1Identity-D_pre/gradients/D_pre/d0/MatMul_grad/MatMul_16^D_pre/gradients/D_pre/d0/MatMul_grad/tuple/group_deps*@
_class6
42loc:@D_pre/gradients/D_pre/d0/MatMul_grad/MatMul_1*
T0*
_output_shapes

:

<D_pre/GradientDescent/update_D_pre/d0/w/ApplyGradientDescentApplyGradientDescent
D_pre/d0/wD_pre/ExponentialDecay?D_pre/gradients/D_pre/d0/MatMul_grad/tuple/control_dependency_1*
_class
loc:@D_pre/d0/w*
use_locking( *
T0*
_output_shapes

:

<D_pre/GradientDescent/update_D_pre/d0/b/ApplyGradientDescentApplyGradientDescent
D_pre/d0/bD_pre/ExponentialDecay<D_pre/gradients/D_pre/d0/add_grad/tuple/control_dependency_1*
_class
loc:@D_pre/d0/b*
use_locking( *
T0*
_output_shapes
:

<D_pre/GradientDescent/update_D_pre/d1/w/ApplyGradientDescentApplyGradientDescent
D_pre/d1/wD_pre/ExponentialDecay?D_pre/gradients/D_pre/d1/MatMul_grad/tuple/control_dependency_1*
_class
loc:@D_pre/d1/w*
use_locking( *
T0*
_output_shapes

:

<D_pre/GradientDescent/update_D_pre/d1/b/ApplyGradientDescentApplyGradientDescent
D_pre/d1/bD_pre/ExponentialDecay<D_pre/gradients/D_pre/d1/add_grad/tuple/control_dependency_1*
_class
loc:@D_pre/d1/b*
use_locking( *
T0*
_output_shapes
:

<D_pre/GradientDescent/update_D_pre/d2/w/ApplyGradientDescentApplyGradientDescent
D_pre/d2/wD_pre/ExponentialDecay?D_pre/gradients/D_pre/d2/MatMul_grad/tuple/control_dependency_1*
_class
loc:@D_pre/d2/w*
use_locking( *
T0*
_output_shapes

:

<D_pre/GradientDescent/update_D_pre/d2/b/ApplyGradientDescentApplyGradientDescent
D_pre/d2/bD_pre/ExponentialDecay<D_pre/gradients/D_pre/d2/add_grad/tuple/control_dependency_1*
_class
loc:@D_pre/d2/b*
use_locking( *
T0*
_output_shapes
:

<D_pre/GradientDescent/update_D_pre/d3/w/ApplyGradientDescentApplyGradientDescent
D_pre/d3/wD_pre/ExponentialDecay?D_pre/gradients/D_pre/d3/MatMul_grad/tuple/control_dependency_1*
_class
loc:@D_pre/d3/w*
use_locking( *
T0*
_output_shapes

:

<D_pre/GradientDescent/update_D_pre/d3/b/ApplyGradientDescentApplyGradientDescent
D_pre/d3/bD_pre/ExponentialDecay<D_pre/gradients/D_pre/d3/add_grad/tuple/control_dependency_1*
_class
loc:@D_pre/d3/b*
use_locking( *
T0*
_output_shapes
:

D_pre/GradientDescent/updateNoOp=^D_pre/GradientDescent/update_D_pre/d0/w/ApplyGradientDescent=^D_pre/GradientDescent/update_D_pre/d0/b/ApplyGradientDescent=^D_pre/GradientDescent/update_D_pre/d1/w/ApplyGradientDescent=^D_pre/GradientDescent/update_D_pre/d1/b/ApplyGradientDescent=^D_pre/GradientDescent/update_D_pre/d2/w/ApplyGradientDescent=^D_pre/GradientDescent/update_D_pre/d2/b/ApplyGradientDescent=^D_pre/GradientDescent/update_D_pre/d3/w/ApplyGradientDescent=^D_pre/GradientDescent/update_D_pre/d3/b/ApplyGradientDescent

D_pre/GradientDescent/valueConst^D_pre/GradientDescent/update*
dtype0*
value	B :*!
_class
loc:@D_pre/Variable*
_output_shapes
: 
¦
D_pre/GradientDescent	AssignAddD_pre/VariableD_pre/GradientDescent/value*!
_class
loc:@D_pre/Variable*
use_locking( *
T0*
_output_shapes
: 
`
Gen/PlaceholderPlaceholder*
dtype0*
shape
:*
_output_shapes

:

(Gen/g0/w/Initializer/random_normal/shapeConst*
dtype0*
valueB"      *
_class
loc:@Gen/g0/w*
_output_shapes
:

'Gen/g0/w/Initializer/random_normal/meanConst*
dtype0*
valueB
 *    *
_class
loc:@Gen/g0/w*
_output_shapes
: 

)Gen/g0/w/Initializer/random_normal/stddevConst*
dtype0*
valueB
 *  ?*
_class
loc:@Gen/g0/w*
_output_shapes
: 
å
7Gen/g0/w/Initializer/random_normal/RandomStandardNormalRandomStandardNormal(Gen/g0/w/Initializer/random_normal/shape*
T0*
_output_shapes

:*
dtype0*
seed2 *

seed *
_class
loc:@Gen/g0/w
×
&Gen/g0/w/Initializer/random_normal/mulMul7Gen/g0/w/Initializer/random_normal/RandomStandardNormal)Gen/g0/w/Initializer/random_normal/stddev*
_class
loc:@Gen/g0/w*
T0*
_output_shapes

:
Ą
"Gen/g0/w/Initializer/random_normalAdd&Gen/g0/w/Initializer/random_normal/mul'Gen/g0/w/Initializer/random_normal/mean*
_class
loc:@Gen/g0/w*
T0*
_output_shapes

:

Gen/g0/w
VariableV2*
	container *
_output_shapes

:*
dtype0*
shape
:*
_class
loc:@Gen/g0/w*
shared_name 
¶
Gen/g0/w/AssignAssignGen/g0/w"Gen/g0/w/Initializer/random_normal*
_class
loc:@Gen/g0/w*
use_locking(*
validate_shape(*
_output_shapes

:*
T0
i
Gen/g0/w/readIdentityGen/g0/w*
_class
loc:@Gen/g0/w*
T0*
_output_shapes

:

Gen/g0/b/Initializer/ConstConst*
dtype0*
valueB*    *
_class
loc:@Gen/g0/b*
_output_shapes
:

Gen/g0/b
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*
_class
loc:@Gen/g0/b*
shared_name 
Ŗ
Gen/g0/b/AssignAssignGen/g0/bGen/g0/b/Initializer/Const*
_class
loc:@Gen/g0/b*
use_locking(*
validate_shape(*
_output_shapes
:*
T0
e
Gen/g0/b/readIdentityGen/g0/b*
_class
loc:@Gen/g0/b*
T0*
_output_shapes
:

Gen/g0/MatMulMatMulGen/PlaceholderGen/g0/w/read*
T0*
transpose_a( *
_output_shapes

:*
transpose_b( 
X

Gen/g0/addAddGen/g0/MatMulGen/g0/b/read*
T0*
_output_shapes

:
M
Gen/SoftplusSoftplus
Gen/g0/add*
T0*
_output_shapes

:

(Gen/g1/w/Initializer/random_normal/shapeConst*
dtype0*
valueB"      *
_class
loc:@Gen/g1/w*
_output_shapes
:

'Gen/g1/w/Initializer/random_normal/meanConst*
dtype0*
valueB
 *    *
_class
loc:@Gen/g1/w*
_output_shapes
: 

)Gen/g1/w/Initializer/random_normal/stddevConst*
dtype0*
valueB
 *  ?*
_class
loc:@Gen/g1/w*
_output_shapes
: 
å
7Gen/g1/w/Initializer/random_normal/RandomStandardNormalRandomStandardNormal(Gen/g1/w/Initializer/random_normal/shape*
T0*
_output_shapes

:*
dtype0*
seed2 *

seed *
_class
loc:@Gen/g1/w
×
&Gen/g1/w/Initializer/random_normal/mulMul7Gen/g1/w/Initializer/random_normal/RandomStandardNormal)Gen/g1/w/Initializer/random_normal/stddev*
_class
loc:@Gen/g1/w*
T0*
_output_shapes

:
Ą
"Gen/g1/w/Initializer/random_normalAdd&Gen/g1/w/Initializer/random_normal/mul'Gen/g1/w/Initializer/random_normal/mean*
_class
loc:@Gen/g1/w*
T0*
_output_shapes

:

Gen/g1/w
VariableV2*
	container *
_output_shapes

:*
dtype0*
shape
:*
_class
loc:@Gen/g1/w*
shared_name 
¶
Gen/g1/w/AssignAssignGen/g1/w"Gen/g1/w/Initializer/random_normal*
_class
loc:@Gen/g1/w*
use_locking(*
validate_shape(*
_output_shapes

:*
T0
i
Gen/g1/w/readIdentityGen/g1/w*
_class
loc:@Gen/g1/w*
T0*
_output_shapes

:

Gen/g1/b/Initializer/ConstConst*
dtype0*
valueB*    *
_class
loc:@Gen/g1/b*
_output_shapes
:

Gen/g1/b
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*
_class
loc:@Gen/g1/b*
shared_name 
Ŗ
Gen/g1/b/AssignAssignGen/g1/bGen/g1/b/Initializer/Const*
_class
loc:@Gen/g1/b*
use_locking(*
validate_shape(*
_output_shapes
:*
T0
e
Gen/g1/b/readIdentityGen/g1/b*
_class
loc:@Gen/g1/b*
T0*
_output_shapes
:

Gen/g1/MatMulMatMulGen/SoftplusGen/g1/w/read*
T0*
transpose_a( *
_output_shapes

:*
transpose_b( 
X

Gen/g1/addAddGen/g1/MatMulGen/g1/b/read*
T0*
_output_shapes

:
a
Disc/PlaceholderPlaceholder*
dtype0*
shape
:*
_output_shapes

:

)Disc/d0/w/Initializer/random_normal/shapeConst*
dtype0*
valueB"      *
_class
loc:@Disc/d0/w*
_output_shapes
:

(Disc/d0/w/Initializer/random_normal/meanConst*
dtype0*
valueB
 *    *
_class
loc:@Disc/d0/w*
_output_shapes
: 

*Disc/d0/w/Initializer/random_normal/stddevConst*
dtype0*
valueB
 *  ?*
_class
loc:@Disc/d0/w*
_output_shapes
: 
č
8Disc/d0/w/Initializer/random_normal/RandomStandardNormalRandomStandardNormal)Disc/d0/w/Initializer/random_normal/shape*
T0*
_output_shapes

:*
dtype0*
seed2 *

seed *
_class
loc:@Disc/d0/w
Ū
'Disc/d0/w/Initializer/random_normal/mulMul8Disc/d0/w/Initializer/random_normal/RandomStandardNormal*Disc/d0/w/Initializer/random_normal/stddev*
_class
loc:@Disc/d0/w*
T0*
_output_shapes

:
Ä
#Disc/d0/w/Initializer/random_normalAdd'Disc/d0/w/Initializer/random_normal/mul(Disc/d0/w/Initializer/random_normal/mean*
_class
loc:@Disc/d0/w*
T0*
_output_shapes

:

	Disc/d0/w
VariableV2*
	container *
_output_shapes

:*
dtype0*
shape
:*
_class
loc:@Disc/d0/w*
shared_name 
ŗ
Disc/d0/w/AssignAssign	Disc/d0/w#Disc/d0/w/Initializer/random_normal*
_class
loc:@Disc/d0/w*
use_locking(*
validate_shape(*
_output_shapes

:*
T0
l
Disc/d0/w/readIdentity	Disc/d0/w*
_class
loc:@Disc/d0/w*
T0*
_output_shapes

:

Disc/d0/b/Initializer/ConstConst*
dtype0*
valueB*    *
_class
loc:@Disc/d0/b*
_output_shapes
:

	Disc/d0/b
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*
_class
loc:@Disc/d0/b*
shared_name 
®
Disc/d0/b/AssignAssign	Disc/d0/bDisc/d0/b/Initializer/Const*
_class
loc:@Disc/d0/b*
use_locking(*
validate_shape(*
_output_shapes
:*
T0
h
Disc/d0/b/readIdentity	Disc/d0/b*
_class
loc:@Disc/d0/b*
T0*
_output_shapes
:

Disc/d0/MatMulMatMulDisc/PlaceholderDisc/d0/w/read*
T0*
transpose_a( *
_output_shapes

:*
transpose_b( 
[
Disc/d0/addAddDisc/d0/MatMulDisc/d0/b/read*
T0*
_output_shapes

:
G
	Disc/TanhTanhDisc/d0/add*
T0*
_output_shapes

:

)Disc/d1/w/Initializer/random_normal/shapeConst*
dtype0*
valueB"      *
_class
loc:@Disc/d1/w*
_output_shapes
:

(Disc/d1/w/Initializer/random_normal/meanConst*
dtype0*
valueB
 *    *
_class
loc:@Disc/d1/w*
_output_shapes
: 

*Disc/d1/w/Initializer/random_normal/stddevConst*
dtype0*
valueB
 *  ?*
_class
loc:@Disc/d1/w*
_output_shapes
: 
č
8Disc/d1/w/Initializer/random_normal/RandomStandardNormalRandomStandardNormal)Disc/d1/w/Initializer/random_normal/shape*
T0*
_output_shapes

:*
dtype0*
seed2 *

seed *
_class
loc:@Disc/d1/w
Ū
'Disc/d1/w/Initializer/random_normal/mulMul8Disc/d1/w/Initializer/random_normal/RandomStandardNormal*Disc/d1/w/Initializer/random_normal/stddev*
_class
loc:@Disc/d1/w*
T0*
_output_shapes

:
Ä
#Disc/d1/w/Initializer/random_normalAdd'Disc/d1/w/Initializer/random_normal/mul(Disc/d1/w/Initializer/random_normal/mean*
_class
loc:@Disc/d1/w*
T0*
_output_shapes

:

	Disc/d1/w
VariableV2*
	container *
_output_shapes

:*
dtype0*
shape
:*
_class
loc:@Disc/d1/w*
shared_name 
ŗ
Disc/d1/w/AssignAssign	Disc/d1/w#Disc/d1/w/Initializer/random_normal*
_class
loc:@Disc/d1/w*
use_locking(*
validate_shape(*
_output_shapes

:*
T0
l
Disc/d1/w/readIdentity	Disc/d1/w*
_class
loc:@Disc/d1/w*
T0*
_output_shapes

:

Disc/d1/b/Initializer/ConstConst*
dtype0*
valueB*    *
_class
loc:@Disc/d1/b*
_output_shapes
:

	Disc/d1/b
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*
_class
loc:@Disc/d1/b*
shared_name 
®
Disc/d1/b/AssignAssign	Disc/d1/bDisc/d1/b/Initializer/Const*
_class
loc:@Disc/d1/b*
use_locking(*
validate_shape(*
_output_shapes
:*
T0
h
Disc/d1/b/readIdentity	Disc/d1/b*
_class
loc:@Disc/d1/b*
T0*
_output_shapes
:

Disc/d1/MatMulMatMul	Disc/TanhDisc/d1/w/read*
T0*
transpose_a( *
_output_shapes

:*
transpose_b( 
[
Disc/d1/addAddDisc/d1/MatMulDisc/d1/b/read*
T0*
_output_shapes

:
I
Disc/Tanh_1TanhDisc/d1/add*
T0*
_output_shapes

:

)Disc/d2/w/Initializer/random_normal/shapeConst*
dtype0*
valueB"      *
_class
loc:@Disc/d2/w*
_output_shapes
:

(Disc/d2/w/Initializer/random_normal/meanConst*
dtype0*
valueB
 *    *
_class
loc:@Disc/d2/w*
_output_shapes
: 

*Disc/d2/w/Initializer/random_normal/stddevConst*
dtype0*
valueB
 *  ?*
_class
loc:@Disc/d2/w*
_output_shapes
: 
č
8Disc/d2/w/Initializer/random_normal/RandomStandardNormalRandomStandardNormal)Disc/d2/w/Initializer/random_normal/shape*
T0*
_output_shapes

:*
dtype0*
seed2 *

seed *
_class
loc:@Disc/d2/w
Ū
'Disc/d2/w/Initializer/random_normal/mulMul8Disc/d2/w/Initializer/random_normal/RandomStandardNormal*Disc/d2/w/Initializer/random_normal/stddev*
_class
loc:@Disc/d2/w*
T0*
_output_shapes

:
Ä
#Disc/d2/w/Initializer/random_normalAdd'Disc/d2/w/Initializer/random_normal/mul(Disc/d2/w/Initializer/random_normal/mean*
_class
loc:@Disc/d2/w*
T0*
_output_shapes

:

	Disc/d2/w
VariableV2*
	container *
_output_shapes

:*
dtype0*
shape
:*
_class
loc:@Disc/d2/w*
shared_name 
ŗ
Disc/d2/w/AssignAssign	Disc/d2/w#Disc/d2/w/Initializer/random_normal*
_class
loc:@Disc/d2/w*
use_locking(*
validate_shape(*
_output_shapes

:*
T0
l
Disc/d2/w/readIdentity	Disc/d2/w*
_class
loc:@Disc/d2/w*
T0*
_output_shapes

:

Disc/d2/b/Initializer/ConstConst*
dtype0*
valueB*    *
_class
loc:@Disc/d2/b*
_output_shapes
:

	Disc/d2/b
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*
_class
loc:@Disc/d2/b*
shared_name 
®
Disc/d2/b/AssignAssign	Disc/d2/bDisc/d2/b/Initializer/Const*
_class
loc:@Disc/d2/b*
use_locking(*
validate_shape(*
_output_shapes
:*
T0
h
Disc/d2/b/readIdentity	Disc/d2/b*
_class
loc:@Disc/d2/b*
T0*
_output_shapes
:

Disc/d2/MatMulMatMulDisc/Tanh_1Disc/d2/w/read*
T0*
transpose_a( *
_output_shapes

:*
transpose_b( 
[
Disc/d2/addAddDisc/d2/MatMulDisc/d2/b/read*
T0*
_output_shapes

:
I
Disc/Tanh_2TanhDisc/d2/add*
T0*
_output_shapes

:

)Disc/d3/w/Initializer/random_normal/shapeConst*
dtype0*
valueB"      *
_class
loc:@Disc/d3/w*
_output_shapes
:

(Disc/d3/w/Initializer/random_normal/meanConst*
dtype0*
valueB
 *    *
_class
loc:@Disc/d3/w*
_output_shapes
: 

*Disc/d3/w/Initializer/random_normal/stddevConst*
dtype0*
valueB
 *  ?*
_class
loc:@Disc/d3/w*
_output_shapes
: 
č
8Disc/d3/w/Initializer/random_normal/RandomStandardNormalRandomStandardNormal)Disc/d3/w/Initializer/random_normal/shape*
T0*
_output_shapes

:*
dtype0*
seed2 *

seed *
_class
loc:@Disc/d3/w
Ū
'Disc/d3/w/Initializer/random_normal/mulMul8Disc/d3/w/Initializer/random_normal/RandomStandardNormal*Disc/d3/w/Initializer/random_normal/stddev*
_class
loc:@Disc/d3/w*
T0*
_output_shapes

:
Ä
#Disc/d3/w/Initializer/random_normalAdd'Disc/d3/w/Initializer/random_normal/mul(Disc/d3/w/Initializer/random_normal/mean*
_class
loc:@Disc/d3/w*
T0*
_output_shapes

:

	Disc/d3/w
VariableV2*
	container *
_output_shapes

:*
dtype0*
shape
:*
_class
loc:@Disc/d3/w*
shared_name 
ŗ
Disc/d3/w/AssignAssign	Disc/d3/w#Disc/d3/w/Initializer/random_normal*
_class
loc:@Disc/d3/w*
use_locking(*
validate_shape(*
_output_shapes

:*
T0
l
Disc/d3/w/readIdentity	Disc/d3/w*
_class
loc:@Disc/d3/w*
T0*
_output_shapes

:

Disc/d3/b/Initializer/ConstConst*
dtype0*
valueB*    *
_class
loc:@Disc/d3/b*
_output_shapes
:

	Disc/d3/b
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*
_class
loc:@Disc/d3/b*
shared_name 
®
Disc/d3/b/AssignAssign	Disc/d3/bDisc/d3/b/Initializer/Const*
_class
loc:@Disc/d3/b*
use_locking(*
validate_shape(*
_output_shapes
:*
T0
h
Disc/d3/b/readIdentity	Disc/d3/b*
_class
loc:@Disc/d3/b*
T0*
_output_shapes
:

Disc/d3/MatMulMatMulDisc/Tanh_2Disc/d3/w/read*
T0*
transpose_a( *
_output_shapes

:*
transpose_b( 
[
Disc/d3/addAddDisc/d3/MatMulDisc/d3/b/read*
T0*
_output_shapes

:
M
Disc/SigmoidSigmoidDisc/d3/add*
T0*
_output_shapes

:

Disc/d0_1/MatMulMatMul
Gen/g1/addDisc/d0/w/read*
T0*
transpose_a( *
_output_shapes

:*
transpose_b( 
_
Disc/d0_1/addAddDisc/d0_1/MatMulDisc/d0/b/read*
T0*
_output_shapes

:
K
Disc/Tanh_3TanhDisc/d0_1/add*
T0*
_output_shapes

:

Disc/d1_1/MatMulMatMulDisc/Tanh_3Disc/d1/w/read*
T0*
transpose_a( *
_output_shapes

:*
transpose_b( 
_
Disc/d1_1/addAddDisc/d1_1/MatMulDisc/d1/b/read*
T0*
_output_shapes

:
K
Disc/Tanh_4TanhDisc/d1_1/add*
T0*
_output_shapes

:

Disc/d2_1/MatMulMatMulDisc/Tanh_4Disc/d2/w/read*
T0*
transpose_a( *
_output_shapes

:*
transpose_b( 
_
Disc/d2_1/addAddDisc/d2_1/MatMulDisc/d2/b/read*
T0*
_output_shapes

:
K
Disc/Tanh_5TanhDisc/d2_1/add*
T0*
_output_shapes

:

Disc/d3_1/MatMulMatMulDisc/Tanh_5Disc/d3/w/read*
T0*
transpose_a( *
_output_shapes

:*
transpose_b( 
_
Disc/d3_1/addAddDisc/d3_1/MatMulDisc/d3/b/read*
T0*
_output_shapes

:
Q
Disc/Sigmoid_1SigmoidDisc/d3_1/add*
T0*
_output_shapes

:
A
LogLogDisc/Sigmoid*
T0*
_output_shapes

:
8
NegNegLog*
T0*
_output_shapes

:
J
sub/xConst*
dtype0*
valueB
 *  ?*
_output_shapes
: 
J
subSubsub/xDisc/Sigmoid_1*
T0*
_output_shapes

:
:
Log_1Logsub*
T0*
_output_shapes

:
A
sub_1SubNegLog_1*
T0*
_output_shapes

:
V
ConstConst*
dtype0*
valueB"       *
_output_shapes
:
X
MeanMeansub_1Const*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
E
Log_2LogDisc/Sigmoid_1*
T0*
_output_shapes

:
<
Neg_1NegLog_2*
T0*
_output_shapes

:
X
Const_1Const*
dtype0*
valueB"       *
_output_shapes
:
\
Mean_1MeanNeg_1Const_1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
X
Variable/initial_valueConst*
dtype0*
value	B : *
_output_shapes
: 
l
Variable
VariableV2*
dtype0*
	container *
shape: *
_output_shapes
: *
shared_name 
¢
Variable/AssignAssignVariableVariable/initial_value*
_class
loc:@Variable*
use_locking(*
validate_shape(*
_output_shapes
: *
T0
a
Variable/readIdentityVariable*
_class
loc:@Variable*
T0*
_output_shapes
: 
c
ExponentialDecay/learning_rateConst*
dtype0*
valueB
 *Āõ<*
_output_shapes
: 
\
ExponentialDecay/CastCastVariable/read*

SrcT0*

DstT0*
_output_shapes
: 
\
ExponentialDecay/Cast_1/xConst*
dtype0*
value
B :*
_output_shapes
: 
j
ExponentialDecay/Cast_1CastExponentialDecay/Cast_1/x*

SrcT0*

DstT0*
_output_shapes
: 
^
ExponentialDecay/Cast_2/xConst*
dtype0*
valueB
 *33s?*
_output_shapes
: 
t
ExponentialDecay/truedivRealDivExponentialDecay/CastExponentialDecay/Cast_1*
T0*
_output_shapes
: 
Z
ExponentialDecay/FloorFloorExponentialDecay/truediv*
T0*
_output_shapes
: 
o
ExponentialDecay/PowPowExponentialDecay/Cast_2/xExponentialDecay/Floor*
T0*
_output_shapes
: 
n
ExponentialDecayMulExponentialDecay/learning_rateExponentialDecay/Pow*
T0*
_output_shapes
: 
R
gradients/ShapeConst*
dtype0*
valueB *
_output_shapes
: 
T
gradients/ConstConst*
dtype0*
valueB
 *  ?*
_output_shapes
: 
Y
gradients/FillFillgradients/Shapegradients/Const*
T0*
_output_shapes
: 
r
!gradients/Mean_grad/Reshape/shapeConst*
dtype0*
valueB"      *
_output_shapes
:

gradients/Mean_grad/ReshapeReshapegradients/Fill!gradients/Mean_grad/Reshape/shape*
Tshape0*
T0*
_output_shapes

:
s
"gradients/Mean_grad/Tile/multiplesConst*
dtype0*
valueB"      *
_output_shapes
:

gradients/Mean_grad/TileTilegradients/Mean_grad/Reshape"gradients/Mean_grad/Tile/multiples*
T0*
_output_shapes

:*

Tmultiples0
j
gradients/Mean_grad/ShapeConst*
dtype0*
valueB"      *
_output_shapes
:
^
gradients/Mean_grad/Shape_1Const*
dtype0*
valueB *
_output_shapes
: 
c
gradients/Mean_grad/ConstConst*
dtype0*
valueB: *
_output_shapes
:

gradients/Mean_grad/ProdProdgradients/Mean_grad/Shapegradients/Mean_grad/Const*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
e
gradients/Mean_grad/Const_1Const*
dtype0*
valueB: *
_output_shapes
:

gradients/Mean_grad/Prod_1Prodgradients/Mean_grad/Shape_1gradients/Mean_grad/Const_1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
_
gradients/Mean_grad/Maximum/yConst*
dtype0*
value	B :*
_output_shapes
: 

gradients/Mean_grad/MaximumMaximumgradients/Mean_grad/Prod_1gradients/Mean_grad/Maximum/y*
T0*
_output_shapes
: 

gradients/Mean_grad/floordivFloorDivgradients/Mean_grad/Prodgradients/Mean_grad/Maximum*
T0*
_output_shapes
: 
n
gradients/Mean_grad/CastCastgradients/Mean_grad/floordiv*

SrcT0*

DstT0*
_output_shapes
: 

gradients/Mean_grad/truedivRealDivgradients/Mean_grad/Tilegradients/Mean_grad/Cast*
T0*
_output_shapes

:
k
gradients/sub_1_grad/ShapeConst*
dtype0*
valueB"      *
_output_shapes
:
m
gradients/sub_1_grad/Shape_1Const*
dtype0*
valueB"      *
_output_shapes
:
ŗ
*gradients/sub_1_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/sub_1_grad/Shapegradients/sub_1_grad/Shape_1*
T0*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’
Ø
gradients/sub_1_grad/SumSumgradients/Mean_grad/truediv*gradients/sub_1_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:

gradients/sub_1_grad/ReshapeReshapegradients/sub_1_grad/Sumgradients/sub_1_grad/Shape*
Tshape0*
T0*
_output_shapes

:
¬
gradients/sub_1_grad/Sum_1Sumgradients/Mean_grad/truediv,gradients/sub_1_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
^
gradients/sub_1_grad/NegNeggradients/sub_1_grad/Sum_1*
T0*
_output_shapes
:

gradients/sub_1_grad/Reshape_1Reshapegradients/sub_1_grad/Neggradients/sub_1_grad/Shape_1*
Tshape0*
T0*
_output_shapes

:
m
%gradients/sub_1_grad/tuple/group_depsNoOp^gradients/sub_1_grad/Reshape^gradients/sub_1_grad/Reshape_1
Ł
-gradients/sub_1_grad/tuple/control_dependencyIdentitygradients/sub_1_grad/Reshape&^gradients/sub_1_grad/tuple/group_deps*/
_class%
#!loc:@gradients/sub_1_grad/Reshape*
T0*
_output_shapes

:
ß
/gradients/sub_1_grad/tuple/control_dependency_1Identitygradients/sub_1_grad/Reshape_1&^gradients/sub_1_grad/tuple/group_deps*1
_class'
%#loc:@gradients/sub_1_grad/Reshape_1*
T0*
_output_shapes

:
u
gradients/Neg_grad/NegNeg-gradients/sub_1_grad/tuple/control_dependency*
T0*
_output_shapes

:

gradients/Log_1_grad/Reciprocal
Reciprocalsub0^gradients/sub_1_grad/tuple/control_dependency_1*
T0*
_output_shapes

:

gradients/Log_1_grad/mulMul/gradients/sub_1_grad/tuple/control_dependency_1gradients/Log_1_grad/Reciprocal*
T0*
_output_shapes

:
{
gradients/Log_grad/Reciprocal
ReciprocalDisc/Sigmoid^gradients/Neg_grad/Neg*
T0*
_output_shapes

:
}
gradients/Log_grad/mulMulgradients/Neg_grad/Neggradients/Log_grad/Reciprocal*
T0*
_output_shapes

:
[
gradients/sub_grad/ShapeConst*
dtype0*
valueB *
_output_shapes
: 
k
gradients/sub_grad/Shape_1Const*
dtype0*
valueB"      *
_output_shapes
:
“
(gradients/sub_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/sub_grad/Shapegradients/sub_grad/Shape_1*
T0*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’
”
gradients/sub_grad/SumSumgradients/Log_1_grad/mul(gradients/sub_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:

gradients/sub_grad/ReshapeReshapegradients/sub_grad/Sumgradients/sub_grad/Shape*
Tshape0*
T0*
_output_shapes
: 
„
gradients/sub_grad/Sum_1Sumgradients/Log_1_grad/mul*gradients/sub_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
Z
gradients/sub_grad/NegNeggradients/sub_grad/Sum_1*
T0*
_output_shapes
:

gradients/sub_grad/Reshape_1Reshapegradients/sub_grad/Neggradients/sub_grad/Shape_1*
Tshape0*
T0*
_output_shapes

:
g
#gradients/sub_grad/tuple/group_depsNoOp^gradients/sub_grad/Reshape^gradients/sub_grad/Reshape_1
É
+gradients/sub_grad/tuple/control_dependencyIdentitygradients/sub_grad/Reshape$^gradients/sub_grad/tuple/group_deps*-
_class#
!loc:@gradients/sub_grad/Reshape*
T0*
_output_shapes
: 
×
-gradients/sub_grad/tuple/control_dependency_1Identitygradients/sub_grad/Reshape_1$^gradients/sub_grad/tuple/group_deps*/
_class%
#!loc:@gradients/sub_grad/Reshape_1*
T0*
_output_shapes

:

'gradients/Disc/Sigmoid_grad/SigmoidGradSigmoidGradDisc/Sigmoidgradients/Log_grad/mul*
T0*
_output_shapes

:
 
)gradients/Disc/Sigmoid_1_grad/SigmoidGradSigmoidGradDisc/Sigmoid_1-gradients/sub_grad/tuple/control_dependency_1*
T0*
_output_shapes

:
q
 gradients/Disc/d3/add_grad/ShapeConst*
dtype0*
valueB"      *
_output_shapes
:
l
"gradients/Disc/d3/add_grad/Shape_1Const*
dtype0*
valueB:*
_output_shapes
:
Ģ
0gradients/Disc/d3/add_grad/BroadcastGradientArgsBroadcastGradientArgs gradients/Disc/d3/add_grad/Shape"gradients/Disc/d3/add_grad/Shape_1*
T0*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’
Ą
gradients/Disc/d3/add_grad/SumSum'gradients/Disc/Sigmoid_grad/SigmoidGrad0gradients/Disc/d3/add_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
¦
"gradients/Disc/d3/add_grad/ReshapeReshapegradients/Disc/d3/add_grad/Sum gradients/Disc/d3/add_grad/Shape*
Tshape0*
T0*
_output_shapes

:
Ä
 gradients/Disc/d3/add_grad/Sum_1Sum'gradients/Disc/Sigmoid_grad/SigmoidGrad2gradients/Disc/d3/add_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
Ø
$gradients/Disc/d3/add_grad/Reshape_1Reshape gradients/Disc/d3/add_grad/Sum_1"gradients/Disc/d3/add_grad/Shape_1*
Tshape0*
T0*
_output_shapes
:

+gradients/Disc/d3/add_grad/tuple/group_depsNoOp#^gradients/Disc/d3/add_grad/Reshape%^gradients/Disc/d3/add_grad/Reshape_1
ń
3gradients/Disc/d3/add_grad/tuple/control_dependencyIdentity"gradients/Disc/d3/add_grad/Reshape,^gradients/Disc/d3/add_grad/tuple/group_deps*5
_class+
)'loc:@gradients/Disc/d3/add_grad/Reshape*
T0*
_output_shapes

:
ó
5gradients/Disc/d3/add_grad/tuple/control_dependency_1Identity$gradients/Disc/d3/add_grad/Reshape_1,^gradients/Disc/d3/add_grad/tuple/group_deps*7
_class-
+)loc:@gradients/Disc/d3/add_grad/Reshape_1*
T0*
_output_shapes
:
s
"gradients/Disc/d3_1/add_grad/ShapeConst*
dtype0*
valueB"      *
_output_shapes
:
n
$gradients/Disc/d3_1/add_grad/Shape_1Const*
dtype0*
valueB:*
_output_shapes
:
Ņ
2gradients/Disc/d3_1/add_grad/BroadcastGradientArgsBroadcastGradientArgs"gradients/Disc/d3_1/add_grad/Shape$gradients/Disc/d3_1/add_grad/Shape_1*
T0*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’
Ę
 gradients/Disc/d3_1/add_grad/SumSum)gradients/Disc/Sigmoid_1_grad/SigmoidGrad2gradients/Disc/d3_1/add_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
¬
$gradients/Disc/d3_1/add_grad/ReshapeReshape gradients/Disc/d3_1/add_grad/Sum"gradients/Disc/d3_1/add_grad/Shape*
Tshape0*
T0*
_output_shapes

:
Ź
"gradients/Disc/d3_1/add_grad/Sum_1Sum)gradients/Disc/Sigmoid_1_grad/SigmoidGrad4gradients/Disc/d3_1/add_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
®
&gradients/Disc/d3_1/add_grad/Reshape_1Reshape"gradients/Disc/d3_1/add_grad/Sum_1$gradients/Disc/d3_1/add_grad/Shape_1*
Tshape0*
T0*
_output_shapes
:

-gradients/Disc/d3_1/add_grad/tuple/group_depsNoOp%^gradients/Disc/d3_1/add_grad/Reshape'^gradients/Disc/d3_1/add_grad/Reshape_1
ł
5gradients/Disc/d3_1/add_grad/tuple/control_dependencyIdentity$gradients/Disc/d3_1/add_grad/Reshape.^gradients/Disc/d3_1/add_grad/tuple/group_deps*7
_class-
+)loc:@gradients/Disc/d3_1/add_grad/Reshape*
T0*
_output_shapes

:
ū
7gradients/Disc/d3_1/add_grad/tuple/control_dependency_1Identity&gradients/Disc/d3_1/add_grad/Reshape_1.^gradients/Disc/d3_1/add_grad/tuple/group_deps*9
_class/
-+loc:@gradients/Disc/d3_1/add_grad/Reshape_1*
T0*
_output_shapes
:
Ā
$gradients/Disc/d3/MatMul_grad/MatMulMatMul3gradients/Disc/d3/add_grad/tuple/control_dependencyDisc/d3/w/read*
T0*
transpose_a( *
_output_shapes

:*
transpose_b(
Į
&gradients/Disc/d3/MatMul_grad/MatMul_1MatMulDisc/Tanh_23gradients/Disc/d3/add_grad/tuple/control_dependency*
T0*
transpose_a(*
_output_shapes

:*
transpose_b( 

.gradients/Disc/d3/MatMul_grad/tuple/group_depsNoOp%^gradients/Disc/d3/MatMul_grad/MatMul'^gradients/Disc/d3/MatMul_grad/MatMul_1
ū
6gradients/Disc/d3/MatMul_grad/tuple/control_dependencyIdentity$gradients/Disc/d3/MatMul_grad/MatMul/^gradients/Disc/d3/MatMul_grad/tuple/group_deps*7
_class-
+)loc:@gradients/Disc/d3/MatMul_grad/MatMul*
T0*
_output_shapes

:

8gradients/Disc/d3/MatMul_grad/tuple/control_dependency_1Identity&gradients/Disc/d3/MatMul_grad/MatMul_1/^gradients/Disc/d3/MatMul_grad/tuple/group_deps*9
_class/
-+loc:@gradients/Disc/d3/MatMul_grad/MatMul_1*
T0*
_output_shapes

:
Ę
&gradients/Disc/d3_1/MatMul_grad/MatMulMatMul5gradients/Disc/d3_1/add_grad/tuple/control_dependencyDisc/d3/w/read*
T0*
transpose_a( *
_output_shapes

:*
transpose_b(
Å
(gradients/Disc/d3_1/MatMul_grad/MatMul_1MatMulDisc/Tanh_55gradients/Disc/d3_1/add_grad/tuple/control_dependency*
T0*
transpose_a(*
_output_shapes

:*
transpose_b( 

0gradients/Disc/d3_1/MatMul_grad/tuple/group_depsNoOp'^gradients/Disc/d3_1/MatMul_grad/MatMul)^gradients/Disc/d3_1/MatMul_grad/MatMul_1

8gradients/Disc/d3_1/MatMul_grad/tuple/control_dependencyIdentity&gradients/Disc/d3_1/MatMul_grad/MatMul1^gradients/Disc/d3_1/MatMul_grad/tuple/group_deps*9
_class/
-+loc:@gradients/Disc/d3_1/MatMul_grad/MatMul*
T0*
_output_shapes

:

:gradients/Disc/d3_1/MatMul_grad/tuple/control_dependency_1Identity(gradients/Disc/d3_1/MatMul_grad/MatMul_11^gradients/Disc/d3_1/MatMul_grad/tuple/group_deps*;
_class1
/-loc:@gradients/Disc/d3_1/MatMul_grad/MatMul_1*
T0*
_output_shapes

:
ķ
gradients/AddNAddN5gradients/Disc/d3/add_grad/tuple/control_dependency_17gradients/Disc/d3_1/add_grad/tuple/control_dependency_1*
N*7
_class-
+)loc:@gradients/Disc/d3/add_grad/Reshape_1*
T0*
_output_shapes
:

#gradients/Disc/Tanh_2_grad/TanhGradTanhGradDisc/Tanh_26gradients/Disc/d3/MatMul_grad/tuple/control_dependency*
T0*
_output_shapes

:

#gradients/Disc/Tanh_5_grad/TanhGradTanhGradDisc/Tanh_58gradients/Disc/d3_1/MatMul_grad/tuple/control_dependency*
T0*
_output_shapes

:
ū
gradients/AddN_1AddN8gradients/Disc/d3/MatMul_grad/tuple/control_dependency_1:gradients/Disc/d3_1/MatMul_grad/tuple/control_dependency_1*
N*9
_class/
-+loc:@gradients/Disc/d3/MatMul_grad/MatMul_1*
T0*
_output_shapes

:
q
 gradients/Disc/d2/add_grad/ShapeConst*
dtype0*
valueB"      *
_output_shapes
:
l
"gradients/Disc/d2/add_grad/Shape_1Const*
dtype0*
valueB:*
_output_shapes
:
Ģ
0gradients/Disc/d2/add_grad/BroadcastGradientArgsBroadcastGradientArgs gradients/Disc/d2/add_grad/Shape"gradients/Disc/d2/add_grad/Shape_1*
T0*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’
¼
gradients/Disc/d2/add_grad/SumSum#gradients/Disc/Tanh_2_grad/TanhGrad0gradients/Disc/d2/add_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
¦
"gradients/Disc/d2/add_grad/ReshapeReshapegradients/Disc/d2/add_grad/Sum gradients/Disc/d2/add_grad/Shape*
Tshape0*
T0*
_output_shapes

:
Ą
 gradients/Disc/d2/add_grad/Sum_1Sum#gradients/Disc/Tanh_2_grad/TanhGrad2gradients/Disc/d2/add_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
Ø
$gradients/Disc/d2/add_grad/Reshape_1Reshape gradients/Disc/d2/add_grad/Sum_1"gradients/Disc/d2/add_grad/Shape_1*
Tshape0*
T0*
_output_shapes
:

+gradients/Disc/d2/add_grad/tuple/group_depsNoOp#^gradients/Disc/d2/add_grad/Reshape%^gradients/Disc/d2/add_grad/Reshape_1
ń
3gradients/Disc/d2/add_grad/tuple/control_dependencyIdentity"gradients/Disc/d2/add_grad/Reshape,^gradients/Disc/d2/add_grad/tuple/group_deps*5
_class+
)'loc:@gradients/Disc/d2/add_grad/Reshape*
T0*
_output_shapes

:
ó
5gradients/Disc/d2/add_grad/tuple/control_dependency_1Identity$gradients/Disc/d2/add_grad/Reshape_1,^gradients/Disc/d2/add_grad/tuple/group_deps*7
_class-
+)loc:@gradients/Disc/d2/add_grad/Reshape_1*
T0*
_output_shapes
:
s
"gradients/Disc/d2_1/add_grad/ShapeConst*
dtype0*
valueB"      *
_output_shapes
:
n
$gradients/Disc/d2_1/add_grad/Shape_1Const*
dtype0*
valueB:*
_output_shapes
:
Ņ
2gradients/Disc/d2_1/add_grad/BroadcastGradientArgsBroadcastGradientArgs"gradients/Disc/d2_1/add_grad/Shape$gradients/Disc/d2_1/add_grad/Shape_1*
T0*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’
Ą
 gradients/Disc/d2_1/add_grad/SumSum#gradients/Disc/Tanh_5_grad/TanhGrad2gradients/Disc/d2_1/add_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
¬
$gradients/Disc/d2_1/add_grad/ReshapeReshape gradients/Disc/d2_1/add_grad/Sum"gradients/Disc/d2_1/add_grad/Shape*
Tshape0*
T0*
_output_shapes

:
Ä
"gradients/Disc/d2_1/add_grad/Sum_1Sum#gradients/Disc/Tanh_5_grad/TanhGrad4gradients/Disc/d2_1/add_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
®
&gradients/Disc/d2_1/add_grad/Reshape_1Reshape"gradients/Disc/d2_1/add_grad/Sum_1$gradients/Disc/d2_1/add_grad/Shape_1*
Tshape0*
T0*
_output_shapes
:

-gradients/Disc/d2_1/add_grad/tuple/group_depsNoOp%^gradients/Disc/d2_1/add_grad/Reshape'^gradients/Disc/d2_1/add_grad/Reshape_1
ł
5gradients/Disc/d2_1/add_grad/tuple/control_dependencyIdentity$gradients/Disc/d2_1/add_grad/Reshape.^gradients/Disc/d2_1/add_grad/tuple/group_deps*7
_class-
+)loc:@gradients/Disc/d2_1/add_grad/Reshape*
T0*
_output_shapes

:
ū
7gradients/Disc/d2_1/add_grad/tuple/control_dependency_1Identity&gradients/Disc/d2_1/add_grad/Reshape_1.^gradients/Disc/d2_1/add_grad/tuple/group_deps*9
_class/
-+loc:@gradients/Disc/d2_1/add_grad/Reshape_1*
T0*
_output_shapes
:
Ā
$gradients/Disc/d2/MatMul_grad/MatMulMatMul3gradients/Disc/d2/add_grad/tuple/control_dependencyDisc/d2/w/read*
T0*
transpose_a( *
_output_shapes

:*
transpose_b(
Į
&gradients/Disc/d2/MatMul_grad/MatMul_1MatMulDisc/Tanh_13gradients/Disc/d2/add_grad/tuple/control_dependency*
T0*
transpose_a(*
_output_shapes

:*
transpose_b( 

.gradients/Disc/d2/MatMul_grad/tuple/group_depsNoOp%^gradients/Disc/d2/MatMul_grad/MatMul'^gradients/Disc/d2/MatMul_grad/MatMul_1
ū
6gradients/Disc/d2/MatMul_grad/tuple/control_dependencyIdentity$gradients/Disc/d2/MatMul_grad/MatMul/^gradients/Disc/d2/MatMul_grad/tuple/group_deps*7
_class-
+)loc:@gradients/Disc/d2/MatMul_grad/MatMul*
T0*
_output_shapes

:

8gradients/Disc/d2/MatMul_grad/tuple/control_dependency_1Identity&gradients/Disc/d2/MatMul_grad/MatMul_1/^gradients/Disc/d2/MatMul_grad/tuple/group_deps*9
_class/
-+loc:@gradients/Disc/d2/MatMul_grad/MatMul_1*
T0*
_output_shapes

:
Ę
&gradients/Disc/d2_1/MatMul_grad/MatMulMatMul5gradients/Disc/d2_1/add_grad/tuple/control_dependencyDisc/d2/w/read*
T0*
transpose_a( *
_output_shapes

:*
transpose_b(
Å
(gradients/Disc/d2_1/MatMul_grad/MatMul_1MatMulDisc/Tanh_45gradients/Disc/d2_1/add_grad/tuple/control_dependency*
T0*
transpose_a(*
_output_shapes

:*
transpose_b( 

0gradients/Disc/d2_1/MatMul_grad/tuple/group_depsNoOp'^gradients/Disc/d2_1/MatMul_grad/MatMul)^gradients/Disc/d2_1/MatMul_grad/MatMul_1

8gradients/Disc/d2_1/MatMul_grad/tuple/control_dependencyIdentity&gradients/Disc/d2_1/MatMul_grad/MatMul1^gradients/Disc/d2_1/MatMul_grad/tuple/group_deps*9
_class/
-+loc:@gradients/Disc/d2_1/MatMul_grad/MatMul*
T0*
_output_shapes

:

:gradients/Disc/d2_1/MatMul_grad/tuple/control_dependency_1Identity(gradients/Disc/d2_1/MatMul_grad/MatMul_11^gradients/Disc/d2_1/MatMul_grad/tuple/group_deps*;
_class1
/-loc:@gradients/Disc/d2_1/MatMul_grad/MatMul_1*
T0*
_output_shapes

:
ļ
gradients/AddN_2AddN5gradients/Disc/d2/add_grad/tuple/control_dependency_17gradients/Disc/d2_1/add_grad/tuple/control_dependency_1*
N*7
_class-
+)loc:@gradients/Disc/d2/add_grad/Reshape_1*
T0*
_output_shapes
:

#gradients/Disc/Tanh_1_grad/TanhGradTanhGradDisc/Tanh_16gradients/Disc/d2/MatMul_grad/tuple/control_dependency*
T0*
_output_shapes

:

#gradients/Disc/Tanh_4_grad/TanhGradTanhGradDisc/Tanh_48gradients/Disc/d2_1/MatMul_grad/tuple/control_dependency*
T0*
_output_shapes

:
ū
gradients/AddN_3AddN8gradients/Disc/d2/MatMul_grad/tuple/control_dependency_1:gradients/Disc/d2_1/MatMul_grad/tuple/control_dependency_1*
N*9
_class/
-+loc:@gradients/Disc/d2/MatMul_grad/MatMul_1*
T0*
_output_shapes

:
q
 gradients/Disc/d1/add_grad/ShapeConst*
dtype0*
valueB"      *
_output_shapes
:
l
"gradients/Disc/d1/add_grad/Shape_1Const*
dtype0*
valueB:*
_output_shapes
:
Ģ
0gradients/Disc/d1/add_grad/BroadcastGradientArgsBroadcastGradientArgs gradients/Disc/d1/add_grad/Shape"gradients/Disc/d1/add_grad/Shape_1*
T0*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’
¼
gradients/Disc/d1/add_grad/SumSum#gradients/Disc/Tanh_1_grad/TanhGrad0gradients/Disc/d1/add_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
¦
"gradients/Disc/d1/add_grad/ReshapeReshapegradients/Disc/d1/add_grad/Sum gradients/Disc/d1/add_grad/Shape*
Tshape0*
T0*
_output_shapes

:
Ą
 gradients/Disc/d1/add_grad/Sum_1Sum#gradients/Disc/Tanh_1_grad/TanhGrad2gradients/Disc/d1/add_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
Ø
$gradients/Disc/d1/add_grad/Reshape_1Reshape gradients/Disc/d1/add_grad/Sum_1"gradients/Disc/d1/add_grad/Shape_1*
Tshape0*
T0*
_output_shapes
:

+gradients/Disc/d1/add_grad/tuple/group_depsNoOp#^gradients/Disc/d1/add_grad/Reshape%^gradients/Disc/d1/add_grad/Reshape_1
ń
3gradients/Disc/d1/add_grad/tuple/control_dependencyIdentity"gradients/Disc/d1/add_grad/Reshape,^gradients/Disc/d1/add_grad/tuple/group_deps*5
_class+
)'loc:@gradients/Disc/d1/add_grad/Reshape*
T0*
_output_shapes

:
ó
5gradients/Disc/d1/add_grad/tuple/control_dependency_1Identity$gradients/Disc/d1/add_grad/Reshape_1,^gradients/Disc/d1/add_grad/tuple/group_deps*7
_class-
+)loc:@gradients/Disc/d1/add_grad/Reshape_1*
T0*
_output_shapes
:
s
"gradients/Disc/d1_1/add_grad/ShapeConst*
dtype0*
valueB"      *
_output_shapes
:
n
$gradients/Disc/d1_1/add_grad/Shape_1Const*
dtype0*
valueB:*
_output_shapes
:
Ņ
2gradients/Disc/d1_1/add_grad/BroadcastGradientArgsBroadcastGradientArgs"gradients/Disc/d1_1/add_grad/Shape$gradients/Disc/d1_1/add_grad/Shape_1*
T0*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’
Ą
 gradients/Disc/d1_1/add_grad/SumSum#gradients/Disc/Tanh_4_grad/TanhGrad2gradients/Disc/d1_1/add_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
¬
$gradients/Disc/d1_1/add_grad/ReshapeReshape gradients/Disc/d1_1/add_grad/Sum"gradients/Disc/d1_1/add_grad/Shape*
Tshape0*
T0*
_output_shapes

:
Ä
"gradients/Disc/d1_1/add_grad/Sum_1Sum#gradients/Disc/Tanh_4_grad/TanhGrad4gradients/Disc/d1_1/add_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
®
&gradients/Disc/d1_1/add_grad/Reshape_1Reshape"gradients/Disc/d1_1/add_grad/Sum_1$gradients/Disc/d1_1/add_grad/Shape_1*
Tshape0*
T0*
_output_shapes
:

-gradients/Disc/d1_1/add_grad/tuple/group_depsNoOp%^gradients/Disc/d1_1/add_grad/Reshape'^gradients/Disc/d1_1/add_grad/Reshape_1
ł
5gradients/Disc/d1_1/add_grad/tuple/control_dependencyIdentity$gradients/Disc/d1_1/add_grad/Reshape.^gradients/Disc/d1_1/add_grad/tuple/group_deps*7
_class-
+)loc:@gradients/Disc/d1_1/add_grad/Reshape*
T0*
_output_shapes

:
ū
7gradients/Disc/d1_1/add_grad/tuple/control_dependency_1Identity&gradients/Disc/d1_1/add_grad/Reshape_1.^gradients/Disc/d1_1/add_grad/tuple/group_deps*9
_class/
-+loc:@gradients/Disc/d1_1/add_grad/Reshape_1*
T0*
_output_shapes
:
Ā
$gradients/Disc/d1/MatMul_grad/MatMulMatMul3gradients/Disc/d1/add_grad/tuple/control_dependencyDisc/d1/w/read*
T0*
transpose_a( *
_output_shapes

:*
transpose_b(
æ
&gradients/Disc/d1/MatMul_grad/MatMul_1MatMul	Disc/Tanh3gradients/Disc/d1/add_grad/tuple/control_dependency*
T0*
transpose_a(*
_output_shapes

:*
transpose_b( 

.gradients/Disc/d1/MatMul_grad/tuple/group_depsNoOp%^gradients/Disc/d1/MatMul_grad/MatMul'^gradients/Disc/d1/MatMul_grad/MatMul_1
ū
6gradients/Disc/d1/MatMul_grad/tuple/control_dependencyIdentity$gradients/Disc/d1/MatMul_grad/MatMul/^gradients/Disc/d1/MatMul_grad/tuple/group_deps*7
_class-
+)loc:@gradients/Disc/d1/MatMul_grad/MatMul*
T0*
_output_shapes

:

8gradients/Disc/d1/MatMul_grad/tuple/control_dependency_1Identity&gradients/Disc/d1/MatMul_grad/MatMul_1/^gradients/Disc/d1/MatMul_grad/tuple/group_deps*9
_class/
-+loc:@gradients/Disc/d1/MatMul_grad/MatMul_1*
T0*
_output_shapes

:
Ę
&gradients/Disc/d1_1/MatMul_grad/MatMulMatMul5gradients/Disc/d1_1/add_grad/tuple/control_dependencyDisc/d1/w/read*
T0*
transpose_a( *
_output_shapes

:*
transpose_b(
Å
(gradients/Disc/d1_1/MatMul_grad/MatMul_1MatMulDisc/Tanh_35gradients/Disc/d1_1/add_grad/tuple/control_dependency*
T0*
transpose_a(*
_output_shapes

:*
transpose_b( 

0gradients/Disc/d1_1/MatMul_grad/tuple/group_depsNoOp'^gradients/Disc/d1_1/MatMul_grad/MatMul)^gradients/Disc/d1_1/MatMul_grad/MatMul_1

8gradients/Disc/d1_1/MatMul_grad/tuple/control_dependencyIdentity&gradients/Disc/d1_1/MatMul_grad/MatMul1^gradients/Disc/d1_1/MatMul_grad/tuple/group_deps*9
_class/
-+loc:@gradients/Disc/d1_1/MatMul_grad/MatMul*
T0*
_output_shapes

:

:gradients/Disc/d1_1/MatMul_grad/tuple/control_dependency_1Identity(gradients/Disc/d1_1/MatMul_grad/MatMul_11^gradients/Disc/d1_1/MatMul_grad/tuple/group_deps*;
_class1
/-loc:@gradients/Disc/d1_1/MatMul_grad/MatMul_1*
T0*
_output_shapes

:
ļ
gradients/AddN_4AddN5gradients/Disc/d1/add_grad/tuple/control_dependency_17gradients/Disc/d1_1/add_grad/tuple/control_dependency_1*
N*7
_class-
+)loc:@gradients/Disc/d1/add_grad/Reshape_1*
T0*
_output_shapes
:

!gradients/Disc/Tanh_grad/TanhGradTanhGrad	Disc/Tanh6gradients/Disc/d1/MatMul_grad/tuple/control_dependency*
T0*
_output_shapes

:

#gradients/Disc/Tanh_3_grad/TanhGradTanhGradDisc/Tanh_38gradients/Disc/d1_1/MatMul_grad/tuple/control_dependency*
T0*
_output_shapes

:
ū
gradients/AddN_5AddN8gradients/Disc/d1/MatMul_grad/tuple/control_dependency_1:gradients/Disc/d1_1/MatMul_grad/tuple/control_dependency_1*
N*9
_class/
-+loc:@gradients/Disc/d1/MatMul_grad/MatMul_1*
T0*
_output_shapes

:
q
 gradients/Disc/d0/add_grad/ShapeConst*
dtype0*
valueB"      *
_output_shapes
:
l
"gradients/Disc/d0/add_grad/Shape_1Const*
dtype0*
valueB:*
_output_shapes
:
Ģ
0gradients/Disc/d0/add_grad/BroadcastGradientArgsBroadcastGradientArgs gradients/Disc/d0/add_grad/Shape"gradients/Disc/d0/add_grad/Shape_1*
T0*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’
ŗ
gradients/Disc/d0/add_grad/SumSum!gradients/Disc/Tanh_grad/TanhGrad0gradients/Disc/d0/add_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
¦
"gradients/Disc/d0/add_grad/ReshapeReshapegradients/Disc/d0/add_grad/Sum gradients/Disc/d0/add_grad/Shape*
Tshape0*
T0*
_output_shapes

:
¾
 gradients/Disc/d0/add_grad/Sum_1Sum!gradients/Disc/Tanh_grad/TanhGrad2gradients/Disc/d0/add_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
Ø
$gradients/Disc/d0/add_grad/Reshape_1Reshape gradients/Disc/d0/add_grad/Sum_1"gradients/Disc/d0/add_grad/Shape_1*
Tshape0*
T0*
_output_shapes
:

+gradients/Disc/d0/add_grad/tuple/group_depsNoOp#^gradients/Disc/d0/add_grad/Reshape%^gradients/Disc/d0/add_grad/Reshape_1
ń
3gradients/Disc/d0/add_grad/tuple/control_dependencyIdentity"gradients/Disc/d0/add_grad/Reshape,^gradients/Disc/d0/add_grad/tuple/group_deps*5
_class+
)'loc:@gradients/Disc/d0/add_grad/Reshape*
T0*
_output_shapes

:
ó
5gradients/Disc/d0/add_grad/tuple/control_dependency_1Identity$gradients/Disc/d0/add_grad/Reshape_1,^gradients/Disc/d0/add_grad/tuple/group_deps*7
_class-
+)loc:@gradients/Disc/d0/add_grad/Reshape_1*
T0*
_output_shapes
:
s
"gradients/Disc/d0_1/add_grad/ShapeConst*
dtype0*
valueB"      *
_output_shapes
:
n
$gradients/Disc/d0_1/add_grad/Shape_1Const*
dtype0*
valueB:*
_output_shapes
:
Ņ
2gradients/Disc/d0_1/add_grad/BroadcastGradientArgsBroadcastGradientArgs"gradients/Disc/d0_1/add_grad/Shape$gradients/Disc/d0_1/add_grad/Shape_1*
T0*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’
Ą
 gradients/Disc/d0_1/add_grad/SumSum#gradients/Disc/Tanh_3_grad/TanhGrad2gradients/Disc/d0_1/add_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
¬
$gradients/Disc/d0_1/add_grad/ReshapeReshape gradients/Disc/d0_1/add_grad/Sum"gradients/Disc/d0_1/add_grad/Shape*
Tshape0*
T0*
_output_shapes

:
Ä
"gradients/Disc/d0_1/add_grad/Sum_1Sum#gradients/Disc/Tanh_3_grad/TanhGrad4gradients/Disc/d0_1/add_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
®
&gradients/Disc/d0_1/add_grad/Reshape_1Reshape"gradients/Disc/d0_1/add_grad/Sum_1$gradients/Disc/d0_1/add_grad/Shape_1*
Tshape0*
T0*
_output_shapes
:

-gradients/Disc/d0_1/add_grad/tuple/group_depsNoOp%^gradients/Disc/d0_1/add_grad/Reshape'^gradients/Disc/d0_1/add_grad/Reshape_1
ł
5gradients/Disc/d0_1/add_grad/tuple/control_dependencyIdentity$gradients/Disc/d0_1/add_grad/Reshape.^gradients/Disc/d0_1/add_grad/tuple/group_deps*7
_class-
+)loc:@gradients/Disc/d0_1/add_grad/Reshape*
T0*
_output_shapes

:
ū
7gradients/Disc/d0_1/add_grad/tuple/control_dependency_1Identity&gradients/Disc/d0_1/add_grad/Reshape_1.^gradients/Disc/d0_1/add_grad/tuple/group_deps*9
_class/
-+loc:@gradients/Disc/d0_1/add_grad/Reshape_1*
T0*
_output_shapes
:
Ā
$gradients/Disc/d0/MatMul_grad/MatMulMatMul3gradients/Disc/d0/add_grad/tuple/control_dependencyDisc/d0/w/read*
T0*
transpose_a( *
_output_shapes

:*
transpose_b(
Ę
&gradients/Disc/d0/MatMul_grad/MatMul_1MatMulDisc/Placeholder3gradients/Disc/d0/add_grad/tuple/control_dependency*
T0*
transpose_a(*
_output_shapes

:*
transpose_b( 

.gradients/Disc/d0/MatMul_grad/tuple/group_depsNoOp%^gradients/Disc/d0/MatMul_grad/MatMul'^gradients/Disc/d0/MatMul_grad/MatMul_1
ū
6gradients/Disc/d0/MatMul_grad/tuple/control_dependencyIdentity$gradients/Disc/d0/MatMul_grad/MatMul/^gradients/Disc/d0/MatMul_grad/tuple/group_deps*7
_class-
+)loc:@gradients/Disc/d0/MatMul_grad/MatMul*
T0*
_output_shapes

:

8gradients/Disc/d0/MatMul_grad/tuple/control_dependency_1Identity&gradients/Disc/d0/MatMul_grad/MatMul_1/^gradients/Disc/d0/MatMul_grad/tuple/group_deps*9
_class/
-+loc:@gradients/Disc/d0/MatMul_grad/MatMul_1*
T0*
_output_shapes

:
Ę
&gradients/Disc/d0_1/MatMul_grad/MatMulMatMul5gradients/Disc/d0_1/add_grad/tuple/control_dependencyDisc/d0/w/read*
T0*
transpose_a( *
_output_shapes

:*
transpose_b(
Ä
(gradients/Disc/d0_1/MatMul_grad/MatMul_1MatMul
Gen/g1/add5gradients/Disc/d0_1/add_grad/tuple/control_dependency*
T0*
transpose_a(*
_output_shapes

:*
transpose_b( 

0gradients/Disc/d0_1/MatMul_grad/tuple/group_depsNoOp'^gradients/Disc/d0_1/MatMul_grad/MatMul)^gradients/Disc/d0_1/MatMul_grad/MatMul_1

8gradients/Disc/d0_1/MatMul_grad/tuple/control_dependencyIdentity&gradients/Disc/d0_1/MatMul_grad/MatMul1^gradients/Disc/d0_1/MatMul_grad/tuple/group_deps*9
_class/
-+loc:@gradients/Disc/d0_1/MatMul_grad/MatMul*
T0*
_output_shapes

:

:gradients/Disc/d0_1/MatMul_grad/tuple/control_dependency_1Identity(gradients/Disc/d0_1/MatMul_grad/MatMul_11^gradients/Disc/d0_1/MatMul_grad/tuple/group_deps*;
_class1
/-loc:@gradients/Disc/d0_1/MatMul_grad/MatMul_1*
T0*
_output_shapes

:
ļ
gradients/AddN_6AddN5gradients/Disc/d0/add_grad/tuple/control_dependency_17gradients/Disc/d0_1/add_grad/tuple/control_dependency_1*
N*7
_class-
+)loc:@gradients/Disc/d0/add_grad/Reshape_1*
T0*
_output_shapes
:
ū
gradients/AddN_7AddN8gradients/Disc/d0/MatMul_grad/tuple/control_dependency_1:gradients/Disc/d0_1/MatMul_grad/tuple/control_dependency_1*
N*9
_class/
-+loc:@gradients/Disc/d0/MatMul_grad/MatMul_1*
T0*
_output_shapes

:
Ö
5GradientDescent/update_Disc/d0/w/ApplyGradientDescentApplyGradientDescent	Disc/d0/wExponentialDecaygradients/AddN_7*
_class
loc:@Disc/d0/w*
use_locking( *
T0*
_output_shapes

:
Ņ
5GradientDescent/update_Disc/d0/b/ApplyGradientDescentApplyGradientDescent	Disc/d0/bExponentialDecaygradients/AddN_6*
_class
loc:@Disc/d0/b*
use_locking( *
T0*
_output_shapes
:
Ö
5GradientDescent/update_Disc/d1/w/ApplyGradientDescentApplyGradientDescent	Disc/d1/wExponentialDecaygradients/AddN_5*
_class
loc:@Disc/d1/w*
use_locking( *
T0*
_output_shapes

:
Ņ
5GradientDescent/update_Disc/d1/b/ApplyGradientDescentApplyGradientDescent	Disc/d1/bExponentialDecaygradients/AddN_4*
_class
loc:@Disc/d1/b*
use_locking( *
T0*
_output_shapes
:
Ö
5GradientDescent/update_Disc/d2/w/ApplyGradientDescentApplyGradientDescent	Disc/d2/wExponentialDecaygradients/AddN_3*
_class
loc:@Disc/d2/w*
use_locking( *
T0*
_output_shapes

:
Ņ
5GradientDescent/update_Disc/d2/b/ApplyGradientDescentApplyGradientDescent	Disc/d2/bExponentialDecaygradients/AddN_2*
_class
loc:@Disc/d2/b*
use_locking( *
T0*
_output_shapes
:
Ö
5GradientDescent/update_Disc/d3/w/ApplyGradientDescentApplyGradientDescent	Disc/d3/wExponentialDecaygradients/AddN_1*
_class
loc:@Disc/d3/w*
use_locking( *
T0*
_output_shapes

:
Š
5GradientDescent/update_Disc/d3/b/ApplyGradientDescentApplyGradientDescent	Disc/d3/bExponentialDecaygradients/AddN*
_class
loc:@Disc/d3/b*
use_locking( *
T0*
_output_shapes
:
Ž
GradientDescent/updateNoOp6^GradientDescent/update_Disc/d0/w/ApplyGradientDescent6^GradientDescent/update_Disc/d0/b/ApplyGradientDescent6^GradientDescent/update_Disc/d1/w/ApplyGradientDescent6^GradientDescent/update_Disc/d1/b/ApplyGradientDescent6^GradientDescent/update_Disc/d2/w/ApplyGradientDescent6^GradientDescent/update_Disc/d2/b/ApplyGradientDescent6^GradientDescent/update_Disc/d3/w/ApplyGradientDescent6^GradientDescent/update_Disc/d3/b/ApplyGradientDescent

GradientDescent/valueConst^GradientDescent/update*
dtype0*
value	B :*
_class
loc:@Variable*
_output_shapes
: 

GradientDescent	AssignAddVariableGradientDescent/value*
_class
loc:@Variable*
use_locking( *
T0*
_output_shapes
: 
Z
Variable_1/initial_valueConst*
dtype0*
value	B : *
_output_shapes
: 
n

Variable_1
VariableV2*
dtype0*
	container *
shape: *
_output_shapes
: *
shared_name 
Ŗ
Variable_1/AssignAssign
Variable_1Variable_1/initial_value*
_class
loc:@Variable_1*
use_locking(*
validate_shape(*
_output_shapes
: *
T0
g
Variable_1/readIdentity
Variable_1*
_class
loc:@Variable_1*
T0*
_output_shapes
: 
e
 ExponentialDecay_1/learning_rateConst*
dtype0*
valueB
 *Āõ<*
_output_shapes
: 
`
ExponentialDecay_1/CastCastVariable_1/read*

SrcT0*

DstT0*
_output_shapes
: 
^
ExponentialDecay_1/Cast_1/xConst*
dtype0*
value
B :*
_output_shapes
: 
n
ExponentialDecay_1/Cast_1CastExponentialDecay_1/Cast_1/x*

SrcT0*

DstT0*
_output_shapes
: 
`
ExponentialDecay_1/Cast_2/xConst*
dtype0*
valueB
 *33s?*
_output_shapes
: 
z
ExponentialDecay_1/truedivRealDivExponentialDecay_1/CastExponentialDecay_1/Cast_1*
T0*
_output_shapes
: 
^
ExponentialDecay_1/FloorFloorExponentialDecay_1/truediv*
T0*
_output_shapes
: 
u
ExponentialDecay_1/PowPowExponentialDecay_1/Cast_2/xExponentialDecay_1/Floor*
T0*
_output_shapes
: 
t
ExponentialDecay_1Mul ExponentialDecay_1/learning_rateExponentialDecay_1/Pow*
T0*
_output_shapes
: 
T
gradients_1/ShapeConst*
dtype0*
valueB *
_output_shapes
: 
V
gradients_1/ConstConst*
dtype0*
valueB
 *  ?*
_output_shapes
: 
_
gradients_1/FillFillgradients_1/Shapegradients_1/Const*
T0*
_output_shapes
: 
v
%gradients_1/Mean_1_grad/Reshape/shapeConst*
dtype0*
valueB"      *
_output_shapes
:

gradients_1/Mean_1_grad/ReshapeReshapegradients_1/Fill%gradients_1/Mean_1_grad/Reshape/shape*
Tshape0*
T0*
_output_shapes

:
w
&gradients_1/Mean_1_grad/Tile/multiplesConst*
dtype0*
valueB"      *
_output_shapes
:
Ø
gradients_1/Mean_1_grad/TileTilegradients_1/Mean_1_grad/Reshape&gradients_1/Mean_1_grad/Tile/multiples*
T0*
_output_shapes

:*

Tmultiples0
n
gradients_1/Mean_1_grad/ShapeConst*
dtype0*
valueB"      *
_output_shapes
:
b
gradients_1/Mean_1_grad/Shape_1Const*
dtype0*
valueB *
_output_shapes
: 
g
gradients_1/Mean_1_grad/ConstConst*
dtype0*
valueB: *
_output_shapes
:
 
gradients_1/Mean_1_grad/ProdProdgradients_1/Mean_1_grad/Shapegradients_1/Mean_1_grad/Const*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
i
gradients_1/Mean_1_grad/Const_1Const*
dtype0*
valueB: *
_output_shapes
:
¦
gradients_1/Mean_1_grad/Prod_1Prodgradients_1/Mean_1_grad/Shape_1gradients_1/Mean_1_grad/Const_1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
c
!gradients_1/Mean_1_grad/Maximum/yConst*
dtype0*
value	B :*
_output_shapes
: 

gradients_1/Mean_1_grad/MaximumMaximumgradients_1/Mean_1_grad/Prod_1!gradients_1/Mean_1_grad/Maximum/y*
T0*
_output_shapes
: 

 gradients_1/Mean_1_grad/floordivFloorDivgradients_1/Mean_1_grad/Prodgradients_1/Mean_1_grad/Maximum*
T0*
_output_shapes
: 
v
gradients_1/Mean_1_grad/CastCast gradients_1/Mean_1_grad/floordiv*

SrcT0*

DstT0*
_output_shapes
: 

gradients_1/Mean_1_grad/truedivRealDivgradients_1/Mean_1_grad/Tilegradients_1/Mean_1_grad/Cast*
T0*
_output_shapes

:
k
gradients_1/Neg_1_grad/NegNeggradients_1/Mean_1_grad/truediv*
T0*
_output_shapes

:

!gradients_1/Log_2_grad/Reciprocal
ReciprocalDisc/Sigmoid_1^gradients_1/Neg_1_grad/Neg*
T0*
_output_shapes

:

gradients_1/Log_2_grad/mulMulgradients_1/Neg_1_grad/Neg!gradients_1/Log_2_grad/Reciprocal*
T0*
_output_shapes

:

+gradients_1/Disc/Sigmoid_1_grad/SigmoidGradSigmoidGradDisc/Sigmoid_1gradients_1/Log_2_grad/mul*
T0*
_output_shapes

:
u
$gradients_1/Disc/d3_1/add_grad/ShapeConst*
dtype0*
valueB"      *
_output_shapes
:
p
&gradients_1/Disc/d3_1/add_grad/Shape_1Const*
dtype0*
valueB:*
_output_shapes
:
Ų
4gradients_1/Disc/d3_1/add_grad/BroadcastGradientArgsBroadcastGradientArgs$gradients_1/Disc/d3_1/add_grad/Shape&gradients_1/Disc/d3_1/add_grad/Shape_1*
T0*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’
Ģ
"gradients_1/Disc/d3_1/add_grad/SumSum+gradients_1/Disc/Sigmoid_1_grad/SigmoidGrad4gradients_1/Disc/d3_1/add_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
²
&gradients_1/Disc/d3_1/add_grad/ReshapeReshape"gradients_1/Disc/d3_1/add_grad/Sum$gradients_1/Disc/d3_1/add_grad/Shape*
Tshape0*
T0*
_output_shapes

:
Š
$gradients_1/Disc/d3_1/add_grad/Sum_1Sum+gradients_1/Disc/Sigmoid_1_grad/SigmoidGrad6gradients_1/Disc/d3_1/add_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
“
(gradients_1/Disc/d3_1/add_grad/Reshape_1Reshape$gradients_1/Disc/d3_1/add_grad/Sum_1&gradients_1/Disc/d3_1/add_grad/Shape_1*
Tshape0*
T0*
_output_shapes
:

/gradients_1/Disc/d3_1/add_grad/tuple/group_depsNoOp'^gradients_1/Disc/d3_1/add_grad/Reshape)^gradients_1/Disc/d3_1/add_grad/Reshape_1

7gradients_1/Disc/d3_1/add_grad/tuple/control_dependencyIdentity&gradients_1/Disc/d3_1/add_grad/Reshape0^gradients_1/Disc/d3_1/add_grad/tuple/group_deps*9
_class/
-+loc:@gradients_1/Disc/d3_1/add_grad/Reshape*
T0*
_output_shapes

:

9gradients_1/Disc/d3_1/add_grad/tuple/control_dependency_1Identity(gradients_1/Disc/d3_1/add_grad/Reshape_10^gradients_1/Disc/d3_1/add_grad/tuple/group_deps*;
_class1
/-loc:@gradients_1/Disc/d3_1/add_grad/Reshape_1*
T0*
_output_shapes
:
Ź
(gradients_1/Disc/d3_1/MatMul_grad/MatMulMatMul7gradients_1/Disc/d3_1/add_grad/tuple/control_dependencyDisc/d3/w/read*
T0*
transpose_a( *
_output_shapes

:*
transpose_b(
É
*gradients_1/Disc/d3_1/MatMul_grad/MatMul_1MatMulDisc/Tanh_57gradients_1/Disc/d3_1/add_grad/tuple/control_dependency*
T0*
transpose_a(*
_output_shapes

:*
transpose_b( 

2gradients_1/Disc/d3_1/MatMul_grad/tuple/group_depsNoOp)^gradients_1/Disc/d3_1/MatMul_grad/MatMul+^gradients_1/Disc/d3_1/MatMul_grad/MatMul_1

:gradients_1/Disc/d3_1/MatMul_grad/tuple/control_dependencyIdentity(gradients_1/Disc/d3_1/MatMul_grad/MatMul3^gradients_1/Disc/d3_1/MatMul_grad/tuple/group_deps*;
_class1
/-loc:@gradients_1/Disc/d3_1/MatMul_grad/MatMul*
T0*
_output_shapes

:

<gradients_1/Disc/d3_1/MatMul_grad/tuple/control_dependency_1Identity*gradients_1/Disc/d3_1/MatMul_grad/MatMul_13^gradients_1/Disc/d3_1/MatMul_grad/tuple/group_deps*=
_class3
1/loc:@gradients_1/Disc/d3_1/MatMul_grad/MatMul_1*
T0*
_output_shapes

:
£
%gradients_1/Disc/Tanh_5_grad/TanhGradTanhGradDisc/Tanh_5:gradients_1/Disc/d3_1/MatMul_grad/tuple/control_dependency*
T0*
_output_shapes

:
u
$gradients_1/Disc/d2_1/add_grad/ShapeConst*
dtype0*
valueB"      *
_output_shapes
:
p
&gradients_1/Disc/d2_1/add_grad/Shape_1Const*
dtype0*
valueB:*
_output_shapes
:
Ų
4gradients_1/Disc/d2_1/add_grad/BroadcastGradientArgsBroadcastGradientArgs$gradients_1/Disc/d2_1/add_grad/Shape&gradients_1/Disc/d2_1/add_grad/Shape_1*
T0*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’
Ę
"gradients_1/Disc/d2_1/add_grad/SumSum%gradients_1/Disc/Tanh_5_grad/TanhGrad4gradients_1/Disc/d2_1/add_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
²
&gradients_1/Disc/d2_1/add_grad/ReshapeReshape"gradients_1/Disc/d2_1/add_grad/Sum$gradients_1/Disc/d2_1/add_grad/Shape*
Tshape0*
T0*
_output_shapes

:
Ź
$gradients_1/Disc/d2_1/add_grad/Sum_1Sum%gradients_1/Disc/Tanh_5_grad/TanhGrad6gradients_1/Disc/d2_1/add_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
“
(gradients_1/Disc/d2_1/add_grad/Reshape_1Reshape$gradients_1/Disc/d2_1/add_grad/Sum_1&gradients_1/Disc/d2_1/add_grad/Shape_1*
Tshape0*
T0*
_output_shapes
:

/gradients_1/Disc/d2_1/add_grad/tuple/group_depsNoOp'^gradients_1/Disc/d2_1/add_grad/Reshape)^gradients_1/Disc/d2_1/add_grad/Reshape_1

7gradients_1/Disc/d2_1/add_grad/tuple/control_dependencyIdentity&gradients_1/Disc/d2_1/add_grad/Reshape0^gradients_1/Disc/d2_1/add_grad/tuple/group_deps*9
_class/
-+loc:@gradients_1/Disc/d2_1/add_grad/Reshape*
T0*
_output_shapes

:

9gradients_1/Disc/d2_1/add_grad/tuple/control_dependency_1Identity(gradients_1/Disc/d2_1/add_grad/Reshape_10^gradients_1/Disc/d2_1/add_grad/tuple/group_deps*;
_class1
/-loc:@gradients_1/Disc/d2_1/add_grad/Reshape_1*
T0*
_output_shapes
:
Ź
(gradients_1/Disc/d2_1/MatMul_grad/MatMulMatMul7gradients_1/Disc/d2_1/add_grad/tuple/control_dependencyDisc/d2/w/read*
T0*
transpose_a( *
_output_shapes

:*
transpose_b(
É
*gradients_1/Disc/d2_1/MatMul_grad/MatMul_1MatMulDisc/Tanh_47gradients_1/Disc/d2_1/add_grad/tuple/control_dependency*
T0*
transpose_a(*
_output_shapes

:*
transpose_b( 

2gradients_1/Disc/d2_1/MatMul_grad/tuple/group_depsNoOp)^gradients_1/Disc/d2_1/MatMul_grad/MatMul+^gradients_1/Disc/d2_1/MatMul_grad/MatMul_1

:gradients_1/Disc/d2_1/MatMul_grad/tuple/control_dependencyIdentity(gradients_1/Disc/d2_1/MatMul_grad/MatMul3^gradients_1/Disc/d2_1/MatMul_grad/tuple/group_deps*;
_class1
/-loc:@gradients_1/Disc/d2_1/MatMul_grad/MatMul*
T0*
_output_shapes

:

<gradients_1/Disc/d2_1/MatMul_grad/tuple/control_dependency_1Identity*gradients_1/Disc/d2_1/MatMul_grad/MatMul_13^gradients_1/Disc/d2_1/MatMul_grad/tuple/group_deps*=
_class3
1/loc:@gradients_1/Disc/d2_1/MatMul_grad/MatMul_1*
T0*
_output_shapes

:
£
%gradients_1/Disc/Tanh_4_grad/TanhGradTanhGradDisc/Tanh_4:gradients_1/Disc/d2_1/MatMul_grad/tuple/control_dependency*
T0*
_output_shapes

:
u
$gradients_1/Disc/d1_1/add_grad/ShapeConst*
dtype0*
valueB"      *
_output_shapes
:
p
&gradients_1/Disc/d1_1/add_grad/Shape_1Const*
dtype0*
valueB:*
_output_shapes
:
Ų
4gradients_1/Disc/d1_1/add_grad/BroadcastGradientArgsBroadcastGradientArgs$gradients_1/Disc/d1_1/add_grad/Shape&gradients_1/Disc/d1_1/add_grad/Shape_1*
T0*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’
Ę
"gradients_1/Disc/d1_1/add_grad/SumSum%gradients_1/Disc/Tanh_4_grad/TanhGrad4gradients_1/Disc/d1_1/add_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
²
&gradients_1/Disc/d1_1/add_grad/ReshapeReshape"gradients_1/Disc/d1_1/add_grad/Sum$gradients_1/Disc/d1_1/add_grad/Shape*
Tshape0*
T0*
_output_shapes

:
Ź
$gradients_1/Disc/d1_1/add_grad/Sum_1Sum%gradients_1/Disc/Tanh_4_grad/TanhGrad6gradients_1/Disc/d1_1/add_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
“
(gradients_1/Disc/d1_1/add_grad/Reshape_1Reshape$gradients_1/Disc/d1_1/add_grad/Sum_1&gradients_1/Disc/d1_1/add_grad/Shape_1*
Tshape0*
T0*
_output_shapes
:

/gradients_1/Disc/d1_1/add_grad/tuple/group_depsNoOp'^gradients_1/Disc/d1_1/add_grad/Reshape)^gradients_1/Disc/d1_1/add_grad/Reshape_1

7gradients_1/Disc/d1_1/add_grad/tuple/control_dependencyIdentity&gradients_1/Disc/d1_1/add_grad/Reshape0^gradients_1/Disc/d1_1/add_grad/tuple/group_deps*9
_class/
-+loc:@gradients_1/Disc/d1_1/add_grad/Reshape*
T0*
_output_shapes

:

9gradients_1/Disc/d1_1/add_grad/tuple/control_dependency_1Identity(gradients_1/Disc/d1_1/add_grad/Reshape_10^gradients_1/Disc/d1_1/add_grad/tuple/group_deps*;
_class1
/-loc:@gradients_1/Disc/d1_1/add_grad/Reshape_1*
T0*
_output_shapes
:
Ź
(gradients_1/Disc/d1_1/MatMul_grad/MatMulMatMul7gradients_1/Disc/d1_1/add_grad/tuple/control_dependencyDisc/d1/w/read*
T0*
transpose_a( *
_output_shapes

:*
transpose_b(
É
*gradients_1/Disc/d1_1/MatMul_grad/MatMul_1MatMulDisc/Tanh_37gradients_1/Disc/d1_1/add_grad/tuple/control_dependency*
T0*
transpose_a(*
_output_shapes

:*
transpose_b( 

2gradients_1/Disc/d1_1/MatMul_grad/tuple/group_depsNoOp)^gradients_1/Disc/d1_1/MatMul_grad/MatMul+^gradients_1/Disc/d1_1/MatMul_grad/MatMul_1

:gradients_1/Disc/d1_1/MatMul_grad/tuple/control_dependencyIdentity(gradients_1/Disc/d1_1/MatMul_grad/MatMul3^gradients_1/Disc/d1_1/MatMul_grad/tuple/group_deps*;
_class1
/-loc:@gradients_1/Disc/d1_1/MatMul_grad/MatMul*
T0*
_output_shapes

:

<gradients_1/Disc/d1_1/MatMul_grad/tuple/control_dependency_1Identity*gradients_1/Disc/d1_1/MatMul_grad/MatMul_13^gradients_1/Disc/d1_1/MatMul_grad/tuple/group_deps*=
_class3
1/loc:@gradients_1/Disc/d1_1/MatMul_grad/MatMul_1*
T0*
_output_shapes

:
£
%gradients_1/Disc/Tanh_3_grad/TanhGradTanhGradDisc/Tanh_3:gradients_1/Disc/d1_1/MatMul_grad/tuple/control_dependency*
T0*
_output_shapes

:
u
$gradients_1/Disc/d0_1/add_grad/ShapeConst*
dtype0*
valueB"      *
_output_shapes
:
p
&gradients_1/Disc/d0_1/add_grad/Shape_1Const*
dtype0*
valueB:*
_output_shapes
:
Ų
4gradients_1/Disc/d0_1/add_grad/BroadcastGradientArgsBroadcastGradientArgs$gradients_1/Disc/d0_1/add_grad/Shape&gradients_1/Disc/d0_1/add_grad/Shape_1*
T0*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’
Ę
"gradients_1/Disc/d0_1/add_grad/SumSum%gradients_1/Disc/Tanh_3_grad/TanhGrad4gradients_1/Disc/d0_1/add_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
²
&gradients_1/Disc/d0_1/add_grad/ReshapeReshape"gradients_1/Disc/d0_1/add_grad/Sum$gradients_1/Disc/d0_1/add_grad/Shape*
Tshape0*
T0*
_output_shapes

:
Ź
$gradients_1/Disc/d0_1/add_grad/Sum_1Sum%gradients_1/Disc/Tanh_3_grad/TanhGrad6gradients_1/Disc/d0_1/add_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
“
(gradients_1/Disc/d0_1/add_grad/Reshape_1Reshape$gradients_1/Disc/d0_1/add_grad/Sum_1&gradients_1/Disc/d0_1/add_grad/Shape_1*
Tshape0*
T0*
_output_shapes
:

/gradients_1/Disc/d0_1/add_grad/tuple/group_depsNoOp'^gradients_1/Disc/d0_1/add_grad/Reshape)^gradients_1/Disc/d0_1/add_grad/Reshape_1

7gradients_1/Disc/d0_1/add_grad/tuple/control_dependencyIdentity&gradients_1/Disc/d0_1/add_grad/Reshape0^gradients_1/Disc/d0_1/add_grad/tuple/group_deps*9
_class/
-+loc:@gradients_1/Disc/d0_1/add_grad/Reshape*
T0*
_output_shapes

:

9gradients_1/Disc/d0_1/add_grad/tuple/control_dependency_1Identity(gradients_1/Disc/d0_1/add_grad/Reshape_10^gradients_1/Disc/d0_1/add_grad/tuple/group_deps*;
_class1
/-loc:@gradients_1/Disc/d0_1/add_grad/Reshape_1*
T0*
_output_shapes
:
Ź
(gradients_1/Disc/d0_1/MatMul_grad/MatMulMatMul7gradients_1/Disc/d0_1/add_grad/tuple/control_dependencyDisc/d0/w/read*
T0*
transpose_a( *
_output_shapes

:*
transpose_b(
Č
*gradients_1/Disc/d0_1/MatMul_grad/MatMul_1MatMul
Gen/g1/add7gradients_1/Disc/d0_1/add_grad/tuple/control_dependency*
T0*
transpose_a(*
_output_shapes

:*
transpose_b( 

2gradients_1/Disc/d0_1/MatMul_grad/tuple/group_depsNoOp)^gradients_1/Disc/d0_1/MatMul_grad/MatMul+^gradients_1/Disc/d0_1/MatMul_grad/MatMul_1

:gradients_1/Disc/d0_1/MatMul_grad/tuple/control_dependencyIdentity(gradients_1/Disc/d0_1/MatMul_grad/MatMul3^gradients_1/Disc/d0_1/MatMul_grad/tuple/group_deps*;
_class1
/-loc:@gradients_1/Disc/d0_1/MatMul_grad/MatMul*
T0*
_output_shapes

:

<gradients_1/Disc/d0_1/MatMul_grad/tuple/control_dependency_1Identity*gradients_1/Disc/d0_1/MatMul_grad/MatMul_13^gradients_1/Disc/d0_1/MatMul_grad/tuple/group_deps*=
_class3
1/loc:@gradients_1/Disc/d0_1/MatMul_grad/MatMul_1*
T0*
_output_shapes

:
r
!gradients_1/Gen/g1/add_grad/ShapeConst*
dtype0*
valueB"      *
_output_shapes
:
m
#gradients_1/Gen/g1/add_grad/Shape_1Const*
dtype0*
valueB:*
_output_shapes
:
Ļ
1gradients_1/Gen/g1/add_grad/BroadcastGradientArgsBroadcastGradientArgs!gradients_1/Gen/g1/add_grad/Shape#gradients_1/Gen/g1/add_grad/Shape_1*
T0*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’
Õ
gradients_1/Gen/g1/add_grad/SumSum:gradients_1/Disc/d0_1/MatMul_grad/tuple/control_dependency1gradients_1/Gen/g1/add_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
©
#gradients_1/Gen/g1/add_grad/ReshapeReshapegradients_1/Gen/g1/add_grad/Sum!gradients_1/Gen/g1/add_grad/Shape*
Tshape0*
T0*
_output_shapes

:
Ł
!gradients_1/Gen/g1/add_grad/Sum_1Sum:gradients_1/Disc/d0_1/MatMul_grad/tuple/control_dependency3gradients_1/Gen/g1/add_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
«
%gradients_1/Gen/g1/add_grad/Reshape_1Reshape!gradients_1/Gen/g1/add_grad/Sum_1#gradients_1/Gen/g1/add_grad/Shape_1*
Tshape0*
T0*
_output_shapes
:

,gradients_1/Gen/g1/add_grad/tuple/group_depsNoOp$^gradients_1/Gen/g1/add_grad/Reshape&^gradients_1/Gen/g1/add_grad/Reshape_1
õ
4gradients_1/Gen/g1/add_grad/tuple/control_dependencyIdentity#gradients_1/Gen/g1/add_grad/Reshape-^gradients_1/Gen/g1/add_grad/tuple/group_deps*6
_class,
*(loc:@gradients_1/Gen/g1/add_grad/Reshape*
T0*
_output_shapes

:
÷
6gradients_1/Gen/g1/add_grad/tuple/control_dependency_1Identity%gradients_1/Gen/g1/add_grad/Reshape_1-^gradients_1/Gen/g1/add_grad/tuple/group_deps*8
_class.
,*loc:@gradients_1/Gen/g1/add_grad/Reshape_1*
T0*
_output_shapes
:
Ć
%gradients_1/Gen/g1/MatMul_grad/MatMulMatMul4gradients_1/Gen/g1/add_grad/tuple/control_dependencyGen/g1/w/read*
T0*
transpose_a( *
_output_shapes

:*
transpose_b(
Ä
'gradients_1/Gen/g1/MatMul_grad/MatMul_1MatMulGen/Softplus4gradients_1/Gen/g1/add_grad/tuple/control_dependency*
T0*
transpose_a(*
_output_shapes

:*
transpose_b( 

/gradients_1/Gen/g1/MatMul_grad/tuple/group_depsNoOp&^gradients_1/Gen/g1/MatMul_grad/MatMul(^gradients_1/Gen/g1/MatMul_grad/MatMul_1
’
7gradients_1/Gen/g1/MatMul_grad/tuple/control_dependencyIdentity%gradients_1/Gen/g1/MatMul_grad/MatMul0^gradients_1/Gen/g1/MatMul_grad/tuple/group_deps*8
_class.
,*loc:@gradients_1/Gen/g1/MatMul_grad/MatMul*
T0*
_output_shapes

:

9gradients_1/Gen/g1/MatMul_grad/tuple/control_dependency_1Identity'gradients_1/Gen/g1/MatMul_grad/MatMul_10^gradients_1/Gen/g1/MatMul_grad/tuple/group_deps*:
_class0
.,loc:@gradients_1/Gen/g1/MatMul_grad/MatMul_1*
T0*
_output_shapes

:
Ø
*gradients_1/Gen/Softplus_grad/SoftplusGradSoftplusGrad7gradients_1/Gen/g1/MatMul_grad/tuple/control_dependency
Gen/g0/add*
T0*
_output_shapes

:
r
!gradients_1/Gen/g0/add_grad/ShapeConst*
dtype0*
valueB"      *
_output_shapes
:
m
#gradients_1/Gen/g0/add_grad/Shape_1Const*
dtype0*
valueB:*
_output_shapes
:
Ļ
1gradients_1/Gen/g0/add_grad/BroadcastGradientArgsBroadcastGradientArgs!gradients_1/Gen/g0/add_grad/Shape#gradients_1/Gen/g0/add_grad/Shape_1*
T0*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’
Å
gradients_1/Gen/g0/add_grad/SumSum*gradients_1/Gen/Softplus_grad/SoftplusGrad1gradients_1/Gen/g0/add_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
©
#gradients_1/Gen/g0/add_grad/ReshapeReshapegradients_1/Gen/g0/add_grad/Sum!gradients_1/Gen/g0/add_grad/Shape*
Tshape0*
T0*
_output_shapes

:
É
!gradients_1/Gen/g0/add_grad/Sum_1Sum*gradients_1/Gen/Softplus_grad/SoftplusGrad3gradients_1/Gen/g0/add_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
«
%gradients_1/Gen/g0/add_grad/Reshape_1Reshape!gradients_1/Gen/g0/add_grad/Sum_1#gradients_1/Gen/g0/add_grad/Shape_1*
Tshape0*
T0*
_output_shapes
:

,gradients_1/Gen/g0/add_grad/tuple/group_depsNoOp$^gradients_1/Gen/g0/add_grad/Reshape&^gradients_1/Gen/g0/add_grad/Reshape_1
õ
4gradients_1/Gen/g0/add_grad/tuple/control_dependencyIdentity#gradients_1/Gen/g0/add_grad/Reshape-^gradients_1/Gen/g0/add_grad/tuple/group_deps*6
_class,
*(loc:@gradients_1/Gen/g0/add_grad/Reshape*
T0*
_output_shapes

:
÷
6gradients_1/Gen/g0/add_grad/tuple/control_dependency_1Identity%gradients_1/Gen/g0/add_grad/Reshape_1-^gradients_1/Gen/g0/add_grad/tuple/group_deps*8
_class.
,*loc:@gradients_1/Gen/g0/add_grad/Reshape_1*
T0*
_output_shapes
:
Ć
%gradients_1/Gen/g0/MatMul_grad/MatMulMatMul4gradients_1/Gen/g0/add_grad/tuple/control_dependencyGen/g0/w/read*
T0*
transpose_a( *
_output_shapes

:*
transpose_b(
Ē
'gradients_1/Gen/g0/MatMul_grad/MatMul_1MatMulGen/Placeholder4gradients_1/Gen/g0/add_grad/tuple/control_dependency*
T0*
transpose_a(*
_output_shapes

:*
transpose_b( 

/gradients_1/Gen/g0/MatMul_grad/tuple/group_depsNoOp&^gradients_1/Gen/g0/MatMul_grad/MatMul(^gradients_1/Gen/g0/MatMul_grad/MatMul_1
’
7gradients_1/Gen/g0/MatMul_grad/tuple/control_dependencyIdentity%gradients_1/Gen/g0/MatMul_grad/MatMul0^gradients_1/Gen/g0/MatMul_grad/tuple/group_deps*8
_class.
,*loc:@gradients_1/Gen/g0/MatMul_grad/MatMul*
T0*
_output_shapes

:

9gradients_1/Gen/g0/MatMul_grad/tuple/control_dependency_1Identity'gradients_1/Gen/g0/MatMul_grad/MatMul_10^gradients_1/Gen/g0/MatMul_grad/tuple/group_deps*:
_class0
.,loc:@gradients_1/Gen/g0/MatMul_grad/MatMul_1*
T0*
_output_shapes

:

6GradientDescent_1/update_Gen/g0/w/ApplyGradientDescentApplyGradientDescentGen/g0/wExponentialDecay_19gradients_1/Gen/g0/MatMul_grad/tuple/control_dependency_1*
_class
loc:@Gen/g0/w*
use_locking( *
T0*
_output_shapes

:
ł
6GradientDescent_1/update_Gen/g0/b/ApplyGradientDescentApplyGradientDescentGen/g0/bExponentialDecay_16gradients_1/Gen/g0/add_grad/tuple/control_dependency_1*
_class
loc:@Gen/g0/b*
use_locking( *
T0*
_output_shapes
:

6GradientDescent_1/update_Gen/g1/w/ApplyGradientDescentApplyGradientDescentGen/g1/wExponentialDecay_19gradients_1/Gen/g1/MatMul_grad/tuple/control_dependency_1*
_class
loc:@Gen/g1/w*
use_locking( *
T0*
_output_shapes

:
ł
6GradientDescent_1/update_Gen/g1/b/ApplyGradientDescentApplyGradientDescentGen/g1/bExponentialDecay_16gradients_1/Gen/g1/add_grad/tuple/control_dependency_1*
_class
loc:@Gen/g1/b*
use_locking( *
T0*
_output_shapes
:

GradientDescent_1/updateNoOp7^GradientDescent_1/update_Gen/g0/w/ApplyGradientDescent7^GradientDescent_1/update_Gen/g0/b/ApplyGradientDescent7^GradientDescent_1/update_Gen/g1/w/ApplyGradientDescent7^GradientDescent_1/update_Gen/g1/b/ApplyGradientDescent

GradientDescent_1/valueConst^GradientDescent_1/update*
dtype0*
value	B :*
_class
loc:@Variable_1*
_output_shapes
: 

GradientDescent_1	AssignAdd
Variable_1GradientDescent_1/value*
_class
loc:@Variable_1*
use_locking( *
T0*
_output_shapes
: 
Ź
initNoOp^D_pre/d0/w/Assign^D_pre/d0/b/Assign^D_pre/d1/w/Assign^D_pre/d1/b/Assign^D_pre/d2/w/Assign^D_pre/d2/b/Assign^D_pre/d3/w/Assign^D_pre/d3/b/Assign^D_pre/Variable/Assign^Gen/g0/w/Assign^Gen/g0/b/Assign^Gen/g1/w/Assign^Gen/g1/b/Assign^Disc/d0/w/Assign^Disc/d0/b/Assign^Disc/d1/w/Assign^Disc/d1/b/Assign^Disc/d2/w/Assign^Disc/d2/b/Assign^Disc/d3/w/Assign^Disc/d3/b/Assign^Variable/Assign^Variable_1/Assign""Į	
	variables³	°	
4
D_pre/d0/w:0D_pre/d0/w/AssignD_pre/d0/w/read:0
4
D_pre/d0/b:0D_pre/d0/b/AssignD_pre/d0/b/read:0
4
D_pre/d1/w:0D_pre/d1/w/AssignD_pre/d1/w/read:0
4
D_pre/d1/b:0D_pre/d1/b/AssignD_pre/d1/b/read:0
4
D_pre/d2/w:0D_pre/d2/w/AssignD_pre/d2/w/read:0
4
D_pre/d2/b:0D_pre/d2/b/AssignD_pre/d2/b/read:0
4
D_pre/d3/w:0D_pre/d3/w/AssignD_pre/d3/w/read:0
4
D_pre/d3/b:0D_pre/d3/b/AssignD_pre/d3/b/read:0
@
D_pre/Variable:0D_pre/Variable/AssignD_pre/Variable/read:0
.

Gen/g0/w:0Gen/g0/w/AssignGen/g0/w/read:0
.

Gen/g0/b:0Gen/g0/b/AssignGen/g0/b/read:0
.

Gen/g1/w:0Gen/g1/w/AssignGen/g1/w/read:0
.

Gen/g1/b:0Gen/g1/b/AssignGen/g1/b/read:0
1
Disc/d0/w:0Disc/d0/w/AssignDisc/d0/w/read:0
1
Disc/d0/b:0Disc/d0/b/AssignDisc/d0/b/read:0
1
Disc/d1/w:0Disc/d1/w/AssignDisc/d1/w/read:0
1
Disc/d1/b:0Disc/d1/b/AssignDisc/d1/b/read:0
1
Disc/d2/w:0Disc/d2/w/AssignDisc/d2/w/read:0
1
Disc/d2/b:0Disc/d2/b/AssignDisc/d2/b/read:0
1
Disc/d3/w:0Disc/d3/w/AssignDisc/d3/w/read:0
1
Disc/d3/b:0Disc/d3/b/AssignDisc/d3/b/read:0
.

Variable:0Variable/AssignVariable/read:0
4
Variable_1:0Variable_1/AssignVariable_1/read:0"Ė	
trainable_variables³	°	
4
D_pre/d0/w:0D_pre/d0/w/AssignD_pre/d0/w/read:0
4
D_pre/d0/b:0D_pre/d0/b/AssignD_pre/d0/b/read:0
4
D_pre/d1/w:0D_pre/d1/w/AssignD_pre/d1/w/read:0
4
D_pre/d1/b:0D_pre/d1/b/AssignD_pre/d1/b/read:0
4
D_pre/d2/w:0D_pre/d2/w/AssignD_pre/d2/w/read:0
4
D_pre/d2/b:0D_pre/d2/b/AssignD_pre/d2/b/read:0
4
D_pre/d3/w:0D_pre/d3/w/AssignD_pre/d3/w/read:0
4
D_pre/d3/b:0D_pre/d3/b/AssignD_pre/d3/b/read:0
@
D_pre/Variable:0D_pre/Variable/AssignD_pre/Variable/read:0
.

Gen/g0/w:0Gen/g0/w/AssignGen/g0/w/read:0
.

Gen/g0/b:0Gen/g0/b/AssignGen/g0/b/read:0
.

Gen/g1/w:0Gen/g1/w/AssignGen/g1/w/read:0
.

Gen/g1/b:0Gen/g1/b/AssignGen/g1/b/read:0
1
Disc/d0/w:0Disc/d0/w/AssignDisc/d0/w/read:0
1
Disc/d0/b:0Disc/d0/b/AssignDisc/d0/b/read:0
1
Disc/d1/w:0Disc/d1/w/AssignDisc/d1/w/read:0
1
Disc/d1/b:0Disc/d1/b/AssignDisc/d1/b/read:0
1
Disc/d2/w:0Disc/d2/w/AssignDisc/d2/w/read:0
1
Disc/d2/b:0Disc/d2/b/AssignDisc/d2/b/read:0
1
Disc/d3/w:0Disc/d3/w/AssignDisc/d3/w/read:0
1
Disc/d3/b:0Disc/d3/b/AssignDisc/d3/b/read:0
.

Variable:0Variable/AssignVariable/read:0
4
Variable_1:0Variable_1/AssignVariable_1/read:0"I
train_op=
;
D_pre/GradientDescent
GradientDescent
GradientDescent_1ŽÉĀ?