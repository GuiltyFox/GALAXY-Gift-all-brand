.class Landroid/support/transition/ChangeBoundsPort;
.super Landroid/support/transition/TransitionPort;
.source "ChangeBoundsPort.java"


# static fields
.field private static final w:[Ljava/lang/String;

.field private static x:Landroid/support/transition/RectEvaluator;


# instance fields
.field a:[I

.field b:Z

.field c:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 50
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "android:changeBounds:bounds"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "android:changeBounds:parent"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "android:changeBounds:windowX"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "android:changeBounds:windowY"

    aput-object v2, v0, v1

    sput-object v0, Landroid/support/transition/ChangeBoundsPort;->w:[Ljava/lang/String;

    .line 59
    new-instance v0, Landroid/support/transition/RectEvaluator;

    invoke-direct {v0}, Landroid/support/transition/RectEvaluator;-><init>()V

    sput-object v0, Landroid/support/transition/ChangeBoundsPort;->x:Landroid/support/transition/RectEvaluator;

    return-void
.end method

.method constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 40
    invoke-direct {p0}, Landroid/support/transition/TransitionPort;-><init>()V

    .line 61
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/support/transition/ChangeBoundsPort;->a:[I

    .line 63
    iput-boolean v1, p0, Landroid/support/transition/ChangeBoundsPort;->b:Z

    .line 65
    iput-boolean v1, p0, Landroid/support/transition/ChangeBoundsPort;->c:Z

    return-void
.end method

.method private c(Landroid/support/transition/TransitionValues;)V
    .registers 9

    .prologue
    .line 91
    iget-object v0, p1, Landroid/support/transition/TransitionValues;->b:Landroid/view/View;

    .line 92
    iget-object v1, p1, Landroid/support/transition/TransitionValues;->a:Ljava/util/Map;

    const-string/jumbo v2, "android:changeBounds:bounds"

    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v5

    .line 93
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v6

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-direct {v3, v4, v5, v6, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 92
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    iget-object v0, p1, Landroid/support/transition/TransitionValues;->a:Ljava/util/Map;

    const-string/jumbo v1, "android:changeBounds:parent"

    iget-object v2, p1, Landroid/support/transition/TransitionValues;->b:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    iget-object v0, p1, Landroid/support/transition/TransitionValues;->b:Landroid/view/View;

    iget-object v1, p0, Landroid/support/transition/ChangeBoundsPort;->a:[I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 96
    iget-object v0, p1, Landroid/support/transition/TransitionValues;->a:Ljava/util/Map;

    const-string/jumbo v1, "android:changeBounds:windowX"

    iget-object v2, p0, Landroid/support/transition/ChangeBoundsPort;->a:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    iget-object v0, p1, Landroid/support/transition/TransitionValues;->a:Ljava/util/Map;

    const-string/jumbo v1, "android:changeBounds:windowY"

    iget-object v2, p0, Landroid/support/transition/ChangeBoundsPort;->a:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)Landroid/animation/Animator;
    .registers 21

    .prologue
    .line 113
    if-eqz p2, :cond_4

    if-nez p3, :cond_6

    .line 114
    :cond_4
    const/4 v2, 0x0

    .line 346
    :goto_5
    return-object v2

    .line 116
    :cond_6
    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/support/transition/TransitionValues;->a:Ljava/util/Map;

    .line 117
    move-object/from16 v0, p3

    iget-object v3, v0, Landroid/support/transition/TransitionValues;->a:Ljava/util/Map;

    .line 118
    const-string/jumbo v4, "android:changeBounds:parent"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 119
    const-string/jumbo v4, "android:changeBounds:parent"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 120
    if-eqz v2, :cond_24

    if-nez v3, :cond_26

    .line 121
    :cond_24
    const/4 v2, 0x0

    goto :goto_5

    .line 123
    :cond_26
    move-object/from16 v0, p3

    iget-object v4, v0, Landroid/support/transition/TransitionValues;->b:Landroid/view/View;

    .line 124
    if-eq v2, v3, :cond_36

    .line 125
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getId()I

    move-result v2

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getId()I

    move-result v3

    if-ne v2, v3, :cond_121

    :cond_36
    const/4 v2, 0x1

    .line 130
    :goto_37
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/support/transition/ChangeBoundsPort;->c:Z

    if-eqz v3, :cond_3f

    if-eqz v2, :cond_1e7

    .line 131
    :cond_3f
    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/support/transition/TransitionValues;->a:Ljava/util/Map;

    const-string/jumbo v3, "android:changeBounds:bounds"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 132
    move-object/from16 v0, p3

    iget-object v3, v0, Landroid/support/transition/TransitionValues;->a:Ljava/util/Map;

    const-string/jumbo v5, "android:changeBounds:bounds"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    .line 133
    iget v5, v2, Landroid/graphics/Rect;->left:I

    .line 134
    iget v6, v3, Landroid/graphics/Rect;->left:I

    .line 135
    iget v7, v2, Landroid/graphics/Rect;->top:I

    .line 136
    iget v8, v3, Landroid/graphics/Rect;->top:I

    .line 137
    iget v9, v2, Landroid/graphics/Rect;->right:I

    .line 138
    iget v10, v3, Landroid/graphics/Rect;->right:I

    .line 139
    iget v11, v2, Landroid/graphics/Rect;->bottom:I

    .line 140
    iget v12, v3, Landroid/graphics/Rect;->bottom:I

    .line 141
    sub-int v13, v9, v5

    .line 142
    sub-int v14, v11, v7

    .line 143
    sub-int v15, v10, v6

    .line 144
    sub-int v16, v12, v8

    .line 145
    const/4 v2, 0x0

    .line 146
    if-eqz v13, :cond_89

    if-eqz v14, :cond_89

    if-eqz v15, :cond_89

    if-eqz v16, :cond_89

    .line 147
    if-eq v5, v6, :cond_7d

    .line 148
    const/4 v2, 0x1

    .line 150
    :cond_7d
    if-eq v7, v8, :cond_81

    .line 151
    add-int/lit8 v2, v2, 0x1

    .line 153
    :cond_81
    if-eq v9, v10, :cond_85

    .line 154
    add-int/lit8 v2, v2, 0x1

    .line 156
    :cond_85
    if-eq v11, v12, :cond_89

    .line 157
    add-int/lit8 v2, v2, 0x1

    .line 160
    :cond_89
    if-lez v2, :cond_2e0

    .line 161
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/support/transition/ChangeBoundsPort;->b:Z

    if-nez v3, :cond_124

    .line 162
    new-array v13, v2, [Landroid/animation/PropertyValuesHolder;

    .line 163
    const/4 v3, 0x0

    .line 164
    if-eq v5, v6, :cond_99

    .line 165
    invoke-virtual {v4, v5}, Landroid/view/View;->setLeft(I)V

    .line 167
    :cond_99
    if-eq v7, v8, :cond_9e

    .line 168
    invoke-virtual {v4, v7}, Landroid/view/View;->setTop(I)V

    .line 170
    :cond_9e
    if-eq v9, v10, :cond_a3

    .line 171
    invoke-virtual {v4, v9}, Landroid/view/View;->setRight(I)V

    .line 173
    :cond_a3
    if-eq v11, v12, :cond_a8

    .line 174
    invoke-virtual {v4, v11}, Landroid/view/View;->setBottom(I)V

    .line 176
    :cond_a8
    if-eq v5, v6, :cond_2ec

    .line 177
    const/4 v2, 0x1

    const-string/jumbo v14, "left"

    const/4 v15, 0x2

    new-array v15, v15, [I

    const/16 v16, 0x0

    aput v5, v15, v16

    const/4 v5, 0x1

    aput v6, v15, v5

    invoke-static {v14, v15}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    aput-object v5, v13, v3

    .line 179
    :goto_be
    if-eq v7, v8, :cond_2e9

    .line 180
    add-int/lit8 v3, v2, 0x1

    const-string/jumbo v5, "top"

    const/4 v6, 0x2

    new-array v6, v6, [I

    const/4 v14, 0x0

    aput v7, v6, v14

    const/4 v7, 0x1

    aput v8, v6, v7

    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    aput-object v5, v13, v2

    .line 182
    :goto_d4
    if-eq v9, v10, :cond_2e6

    .line 183
    add-int/lit8 v2, v3, 0x1

    const-string/jumbo v5, "right"

    const/4 v6, 0x2

    new-array v6, v6, [I

    const/4 v7, 0x0

    aput v9, v6, v7

    const/4 v7, 0x1

    aput v10, v6, v7

    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    aput-object v5, v13, v3

    .line 186
    :goto_ea
    if-eq v11, v12, :cond_100

    .line 187
    add-int/lit8 v3, v2, 0x1

    const-string/jumbo v3, "bottom"

    const/4 v5, 0x2

    new-array v5, v5, [I

    const/4 v6, 0x0

    aput v11, v5, v6

    const/4 v6, 0x1

    aput v12, v5, v6

    invoke-static {v3, v5}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    aput-object v3, v13, v2

    .line 190
    :cond_100
    invoke-static {v4, v13}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 191
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Landroid/view/ViewGroup;

    if-eqz v2, :cond_11e

    .line 192
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 194
    new-instance v2, Landroid/support/transition/ChangeBoundsPort$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Landroid/support/transition/ChangeBoundsPort$1;-><init>(Landroid/support/transition/ChangeBoundsPort;)V

    .line 220
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/support/transition/ChangeBoundsPort;->a(Landroid/support/transition/TransitionPort$TransitionListener;)Landroid/support/transition/TransitionPort;

    :cond_11e
    move-object v2, v3

    .line 222
    goto/16 :goto_5

    .line 125
    :cond_121
    const/4 v2, 0x0

    goto/16 :goto_37

    .line 224
    :cond_124
    if-eq v13, v15, :cond_12e

    .line 226
    invoke-static {v13, v15}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/2addr v2, v6

    .line 225
    invoke-virtual {v4, v2}, Landroid/view/View;->setRight(I)V

    .line 228
    :cond_12e
    move/from16 v0, v16

    if-eq v14, v0, :cond_13c

    .line 230
    move/from16 v0, v16

    invoke-static {v14, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/2addr v2, v8

    .line 229
    invoke-virtual {v4, v2}, Landroid/view/View;->setBottom(I)V

    .line 233
    :cond_13c
    if-eq v5, v6, :cond_144

    .line 234
    sub-int v2, v5, v6

    int-to-float v2, v2

    invoke-virtual {v4, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 236
    :cond_144
    if-eq v7, v8, :cond_14c

    .line 237
    sub-int v2, v7, v8

    int-to-float v2, v2

    invoke-virtual {v4, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 240
    :cond_14c
    sub-int v2, v6, v5

    int-to-float v5, v2

    .line 241
    sub-int v2, v8, v7

    int-to-float v6, v2

    .line 242
    sub-int v7, v15, v13

    .line 243
    sub-int v8, v16, v14

    .line 244
    const/4 v2, 0x0

    .line 245
    const/4 v3, 0x0

    cmpl-float v3, v5, v3

    if-eqz v3, :cond_15d

    .line 246
    const/4 v2, 0x1

    .line 248
    :cond_15d
    const/4 v3, 0x0

    cmpl-float v3, v6, v3

    if-eqz v3, :cond_164

    .line 249
    add-int/lit8 v2, v2, 0x1

    .line 251
    :cond_164
    if-nez v7, :cond_168

    if-eqz v8, :cond_16a

    .line 252
    :cond_168
    add-int/lit8 v2, v2, 0x1

    .line 254
    :cond_16a
    new-array v9, v2, [Landroid/animation/PropertyValuesHolder;

    .line 255
    const/4 v3, 0x0

    .line 256
    const/4 v2, 0x0

    cmpl-float v2, v5, v2

    if-eqz v2, :cond_2e3

    .line 257
    const/4 v2, 0x1

    const-string/jumbo v5, "translationX"

    const/4 v10, 0x2

    new-array v10, v10, [F

    const/4 v11, 0x0

    .line 258
    invoke-virtual {v4}, Landroid/view/View;->getTranslationX()F

    move-result v12

    aput v12, v10, v11

    const/4 v11, 0x1

    const/4 v12, 0x0

    aput v12, v10, v11

    .line 257
    invoke-static {v5, v10}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    aput-object v5, v9, v3

    .line 260
    :goto_18a
    const/4 v3, 0x0

    cmpl-float v3, v6, v3

    if-eqz v3, :cond_1a8

    .line 261
    add-int/lit8 v3, v2, 0x1

    const-string/jumbo v3, "translationY"

    const/4 v5, 0x2

    new-array v5, v5, [F

    const/4 v6, 0x0

    .line 262
    invoke-virtual {v4}, Landroid/view/View;->getTranslationY()F

    move-result v10

    aput v10, v5, v6

    const/4 v6, 0x1

    const/4 v10, 0x0

    aput v10, v5, v6

    .line 261
    invoke-static {v3, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    aput-object v3, v9, v2

    .line 264
    :cond_1a8
    if-nez v7, :cond_1ac

    if-eqz v8, :cond_1bc

    .line 265
    :cond_1ac
    new-instance v2, Landroid/graphics/Rect;

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-direct {v2, v3, v5, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 266
    new-instance v2, Landroid/graphics/Rect;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move/from16 v0, v16

    invoke-direct {v2, v3, v5, v15, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 270
    :cond_1bc
    invoke-static {v4, v9}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 271
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1da

    .line 272
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 274
    new-instance v2, Landroid/support/transition/ChangeBoundsPort$2;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Landroid/support/transition/ChangeBoundsPort$2;-><init>(Landroid/support/transition/ChangeBoundsPort;)V

    .line 300
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/support/transition/ChangeBoundsPort;->a(Landroid/support/transition/TransitionPort$TransitionListener;)Landroid/support/transition/TransitionPort;

    .line 302
    :cond_1da
    new-instance v2, Landroid/support/transition/ChangeBoundsPort$3;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Landroid/support/transition/ChangeBoundsPort$3;-><init>(Landroid/support/transition/ChangeBoundsPort;)V

    invoke-virtual {v3, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    move-object v2, v3

    .line 308
    goto/16 :goto_5

    .line 312
    :cond_1e7
    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/support/transition/TransitionValues;->a:Ljava/util/Map;

    const-string/jumbo v3, "android:changeBounds:windowX"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 313
    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/support/transition/TransitionValues;->a:Ljava/util/Map;

    const-string/jumbo v5, "android:changeBounds:windowY"

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 314
    move-object/from16 v0, p3

    iget-object v2, v0, Landroid/support/transition/TransitionValues;->a:Ljava/util/Map;

    const-string/jumbo v6, "android:changeBounds:windowX"

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 315
    move-object/from16 v0, p3

    iget-object v2, v0, Landroid/support/transition/TransitionValues;->a:Ljava/util/Map;

    const-string/jumbo v7, "android:changeBounds:windowY"

    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 317
    if-ne v3, v6, :cond_22f

    if-eq v5, v2, :cond_2e0

    .line 318
    :cond_22f
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/support/transition/ChangeBoundsPort;->a:[I

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->getLocationInWindow([I)V

    .line 319
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v7

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v8

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 321
    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 322
    invoke-virtual {v4, v8}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 323
    new-instance v8, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v8, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 324
    const/4 v7, 0x4

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 325
    invoke-static/range {p1 .. p1}, Landroid/support/transition/ViewOverlay;->d(Landroid/view/View;)Landroid/support/transition/ViewOverlay;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/support/transition/ViewOverlay;->a(Landroid/graphics/drawable/Drawable;)V

    .line 327
    new-instance v7, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/support/transition/ChangeBoundsPort;->a:[I

    const/4 v10, 0x0

    aget v9, v9, v10

    sub-int v9, v3, v9

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/support/transition/ChangeBoundsPort;->a:[I

    const/4 v11, 0x1

    aget v10, v10, v11

    sub-int v10, v5, v10

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/support/transition/ChangeBoundsPort;->a:[I

    const/4 v12, 0x0

    aget v11, v11, v12

    sub-int/2addr v3, v11

    .line 328
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v11

    add-int/2addr v3, v11

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/support/transition/ChangeBoundsPort;->a:[I

    const/4 v12, 0x1

    aget v11, v11, v12

    sub-int/2addr v5, v11

    .line 329
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v11

    add-int/2addr v5, v11

    invoke-direct {v7, v9, v10, v3, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 330
    new-instance v3, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/transition/ChangeBoundsPort;->a:[I

    const/4 v9, 0x0

    aget v5, v5, v9

    sub-int v5, v6, v5

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/support/transition/ChangeBoundsPort;->a:[I

    const/4 v10, 0x1

    aget v9, v9, v10

    sub-int v9, v2, v9

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/support/transition/ChangeBoundsPort;->a:[I

    const/4 v11, 0x0

    aget v10, v10, v11

    sub-int/2addr v6, v10

    .line 331
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v10

    add-int/2addr v6, v10

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/support/transition/ChangeBoundsPort;->a:[I

    const/4 v11, 0x1

    aget v10, v10, v11

    sub-int/2addr v2, v10

    .line 332
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v10

    add-int/2addr v2, v10

    invoke-direct {v3, v5, v9, v6, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 333
    const-string/jumbo v2, "bounds"

    sget-object v5, Landroid/support/transition/ChangeBoundsPort;->x:Landroid/support/transition/RectEvaluator;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v7, v6, v9

    const/4 v7, 0x1

    aput-object v3, v6, v7

    invoke-static {v8, v2, v5, v6}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 335
    new-instance v3, Landroid/support/transition/ChangeBoundsPort$4;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v3, v0, v1, v8, v4}, Landroid/support/transition/ChangeBoundsPort$4;-><init>(Landroid/support/transition/ChangeBoundsPort;Landroid/view/ViewGroup;Landroid/graphics/drawable/BitmapDrawable;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto/16 :goto_5

    .line 346
    :cond_2e0
    const/4 v2, 0x0

    goto/16 :goto_5

    :cond_2e3
    move v2, v3

    goto/16 :goto_18a

    :cond_2e6
    move v2, v3

    goto/16 :goto_ea

    :cond_2e9
    move v3, v2

    goto/16 :goto_d4

    :cond_2ec
    move v2, v3

    goto/16 :goto_be
.end method

.method public a(Landroid/support/transition/TransitionValues;)V
    .registers 2

    .prologue
    .line 102
    invoke-direct {p0, p1}, Landroid/support/transition/ChangeBoundsPort;->c(Landroid/support/transition/TransitionValues;)V

    .line 103
    return-void
.end method

.method public a()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 69
    sget-object v0, Landroid/support/transition/ChangeBoundsPort;->w:[Ljava/lang/String;

    return-object v0
.end method

.method public b(Landroid/support/transition/TransitionValues;)V
    .registers 2

    .prologue
    .line 107
    invoke-direct {p0, p1}, Landroid/support/transition/ChangeBoundsPort;->c(Landroid/support/transition/TransitionValues;)V

    .line 108
    return-void
.end method