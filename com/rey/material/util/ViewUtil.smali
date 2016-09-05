.class public Lcom/rey/material/util/ViewUtil;
.super Ljava/lang/Object;
.source "ViewUtil.java"


# static fields
.field private static final a:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 25
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/rey/material/util/ViewUtil;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public static a(Landroid/view/View;I)V
    .registers 4

    .prologue
    .line 68
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, p1}, Lcom/rey/material/util/ViewUtil;->a(Landroid/view/View;Landroid/util/AttributeSet;II)V

    .line 69
    return-void
.end method

.method public static a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .registers 4

    .prologue
    .line 56
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_a

    .line 57
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 60
    :goto_9
    return-void

    .line 59
    :cond_a
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_9
.end method

.method public static a(Landroid/view/View;Landroid/util/AttributeSet;II)V
    .registers 26

    .prologue
    .line 79
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/rey/material/R$styleable;->View:[I

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v3, v0, v4, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v16

    .line 81
    const/4 v14, -0x1

    .line 82
    const/4 v13, -0x1

    .line 83
    const/4 v12, -0x1

    .line 84
    const/4 v11, -0x1

    .line 85
    const/high16 v10, -0x80000000

    .line 86
    const/high16 v9, -0x80000000

    .line 87
    const/4 v8, -0x1

    .line 89
    const/4 v7, 0x0

    .line 90
    const/4 v6, 0x0

    .line 91
    const/4 v5, 0x0

    .line 92
    const/4 v4, 0x0

    .line 94
    const/4 v3, 0x0

    invoke-virtual/range {v16 .. v16}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v17

    move v15, v3

    :goto_23
    move/from16 v0, v17

    if-ge v15, v0, :cond_4e6

    .line 95
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    .line 96
    sget v18, Lcom/rey/material/R$styleable;->View_android_background:I

    move/from16 v0, v18

    if-ne v3, v0, :cond_58

    .line 97
    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 98
    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/rey/material/util/ViewUtil;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v9

    move v9, v10

    move v10, v11

    move v11, v12

    move v12, v13

    move v13, v14

    .line 94
    :goto_49
    add-int/lit8 v14, v15, 0x1

    move v15, v14

    move v14, v13

    move v13, v12

    move v12, v11

    move v11, v10

    move v10, v9

    move v9, v8

    move v8, v7

    move v7, v6

    move v6, v5

    move v5, v4

    move v4, v3

    goto :goto_23

    .line 100
    :cond_58
    sget v18, Lcom/rey/material/R$styleable;->View_android_backgroundTint:I

    move/from16 v0, v18

    if-ne v3, v0, :cond_7f

    .line 101
    sget v18, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v19, 0x15

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_4d9

    .line 102
    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v9

    move v9, v10

    move v10, v11

    move v11, v12

    move v12, v13

    move v13, v14

    goto :goto_49

    .line 104
    :cond_7f
    sget v18, Lcom/rey/material/R$styleable;->View_android_backgroundTintMode:I

    move/from16 v0, v18

    if-ne v3, v0, :cond_d8

    .line 105
    sget v18, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v19, 0x15

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_4d9

    .line 106
    const/16 v18, 0x3

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 107
    packed-switch v3, :pswitch_data_57c

    :goto_9c
    :pswitch_9c
    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v9

    move v9, v10

    move v10, v11

    move v11, v12

    move v12, v13

    move v13, v14

    .line 127
    goto :goto_49

    .line 109
    :pswitch_a8
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    goto :goto_9c

    .line 112
    :pswitch_b0
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    goto :goto_9c

    .line 115
    :pswitch_b8
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    goto :goto_9c

    .line 118
    :pswitch_c0
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    goto :goto_9c

    .line 121
    :pswitch_c8
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    goto :goto_9c

    .line 124
    :pswitch_d0
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->ADD:Landroid/graphics/PorterDuff$Mode;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    goto :goto_9c

    .line 129
    :cond_d8
    sget v18, Lcom/rey/material/R$styleable;->View_android_elevation:I

    move/from16 v0, v18

    if-ne v3, v0, :cond_105

    .line 130
    sget v18, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v19, 0x15

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_4d9

    .line 131
    const/16 v18, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/view/View;->setElevation(F)V

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v9

    move v9, v10

    move v10, v11

    move v11, v12

    move v12, v13

    move v13, v14

    goto/16 :goto_49

    .line 133
    :cond_105
    sget v18, Lcom/rey/material/R$styleable;->View_android_padding:I

    move/from16 v0, v18

    if-ne v3, v0, :cond_122

    .line 134
    const/4 v4, -0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    .line 135
    const/4 v4, 0x1

    .line 136
    const/4 v3, 0x1

    move v8, v9

    move v9, v10

    move v10, v11

    move v11, v12

    move v12, v13

    move v13, v14

    move/from16 v20, v6

    move v6, v7

    move v7, v5

    move/from16 v5, v20

    goto/16 :goto_49

    .line 138
    :cond_122
    sget v18, Lcom/rey/material/R$styleable;->View_android_paddingLeft:I

    move/from16 v0, v18

    if-ne v3, v0, :cond_143

    .line 139
    const/4 v5, -0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    .line 140
    const/4 v3, 0x1

    move/from16 v20, v4

    move v4, v3

    move/from16 v3, v20

    move/from16 v21, v6

    move v6, v7

    move v7, v8

    move v8, v9

    move v9, v10

    move v10, v11

    move v11, v12

    move v12, v13

    move v13, v5

    move/from16 v5, v21

    goto/16 :goto_49

    .line 142
    :cond_143
    sget v18, Lcom/rey/material/R$styleable;->View_android_paddingTop:I

    move/from16 v0, v18

    if-ne v3, v0, :cond_160

    .line 143
    const/4 v13, -0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v13}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    move v13, v14

    move/from16 v20, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v9

    move v9, v10

    move v10, v11

    move v11, v12

    move v12, v3

    move v3, v4

    move/from16 v4, v20

    goto/16 :goto_49

    .line 144
    :cond_160
    sget v18, Lcom/rey/material/R$styleable;->View_android_paddingRight:I

    move/from16 v0, v18

    if-ne v3, v0, :cond_17d

    .line 145
    const/4 v4, -0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    .line 146
    const/4 v3, 0x1

    move v12, v13

    move v13, v14

    move/from16 v20, v7

    move v7, v8

    move v8, v9

    move v9, v10

    move v10, v11

    move v11, v4

    move v4, v5

    move v5, v6

    move/from16 v6, v20

    goto/16 :goto_49

    .line 148
    :cond_17d
    sget v18, Lcom/rey/material/R$styleable;->View_android_paddingBottom:I

    move/from16 v0, v18

    if-ne v3, v0, :cond_19a

    .line 149
    const/4 v11, -0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v11}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    move v11, v12

    move v12, v13

    move v13, v14

    move/from16 v20, v7

    move v7, v8

    move v8, v9

    move v9, v10

    move v10, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move/from16 v6, v20

    goto/16 :goto_49

    .line 150
    :cond_19a
    sget v18, Lcom/rey/material/R$styleable;->View_android_paddingStart:I

    move/from16 v0, v18

    if-ne v3, v0, :cond_1cc

    .line 151
    sget v18, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v19, 0x11

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_4d9

    .line 152
    const/high16 v7, -0x80000000

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    .line 153
    const/high16 v3, -0x80000000

    if-eq v7, v3, :cond_1ca

    const/4 v3, 0x1

    :goto_1b7
    move v10, v11

    move v11, v12

    move v12, v13

    move v13, v14

    move/from16 v20, v8

    move v8, v9

    move v9, v7

    move/from16 v7, v20

    move/from16 v21, v4

    move v4, v5

    move v5, v6

    move v6, v3

    move/from16 v3, v21

    goto/16 :goto_49

    :cond_1ca
    const/4 v3, 0x0

    goto :goto_1b7

    .line 156
    :cond_1cc
    sget v18, Lcom/rey/material/R$styleable;->View_android_paddingEnd:I

    move/from16 v0, v18

    if-ne v3, v0, :cond_1fe

    .line 157
    sget v18, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v19, 0x11

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_4d9

    .line 158
    const/high16 v6, -0x80000000

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    .line 159
    const/high16 v3, -0x80000000

    if-eq v6, v3, :cond_1fc

    const/4 v3, 0x1

    :goto_1e9
    move v9, v10

    move v10, v11

    move v11, v12

    move v12, v13

    move v13, v14

    move/from16 v20, v6

    move v6, v7

    move v7, v8

    move/from16 v8, v20

    move/from16 v21, v3

    move v3, v4

    move v4, v5

    move/from16 v5, v21

    goto/16 :goto_49

    :cond_1fc
    const/4 v3, 0x0

    goto :goto_1e9

    .line 162
    :cond_1fe
    sget v18, Lcom/rey/material/R$styleable;->View_android_fadeScrollbars:I

    move/from16 v0, v18

    if-ne v3, v0, :cond_220

    .line 163
    const/16 v18, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/view/View;->setScrollbarFadingEnabled(Z)V

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v9

    move v9, v10

    move v10, v11

    move v11, v12

    move v12, v13

    move v13, v14

    goto/16 :goto_49

    .line 164
    :cond_220
    sget v18, Lcom/rey/material/R$styleable;->View_android_fadingEdgeLength:I

    move/from16 v0, v18

    if-ne v3, v0, :cond_242

    .line 165
    const/16 v18, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/view/View;->setFadingEdgeLength(I)V

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v9

    move v9, v10

    move v10, v11

    move v11, v12

    move v12, v13

    move v13, v14

    goto/16 :goto_49

    .line 166
    :cond_242
    sget v18, Lcom/rey/material/R$styleable;->View_android_minHeight:I

    move/from16 v0, v18

    if-ne v3, v0, :cond_264

    .line 167
    const/16 v18, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/view/View;->setMinimumHeight(I)V

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v9

    move v9, v10

    move v10, v11

    move v11, v12

    move v12, v13

    move v13, v14

    goto/16 :goto_49

    .line 168
    :cond_264
    sget v18, Lcom/rey/material/R$styleable;->View_android_minWidth:I

    move/from16 v0, v18

    if-ne v3, v0, :cond_286

    .line 169
    const/16 v18, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/view/View;->setMinimumWidth(I)V

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v9

    move v9, v10

    move v10, v11

    move v11, v12

    move v12, v13

    move v13, v14

    goto/16 :goto_49

    .line 170
    :cond_286
    sget v18, Lcom/rey/material/R$styleable;->View_android_requiresFadingEdge:I

    move/from16 v0, v18

    if-ne v3, v0, :cond_2a8

    .line 171
    const/16 v18, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVerticalFadingEdgeEnabled(Z)V

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v9

    move v9, v10

    move v10, v11

    move v11, v12

    move v12, v13

    move v13, v14

    goto/16 :goto_49

    .line 172
    :cond_2a8
    sget v18, Lcom/rey/material/R$styleable;->View_android_scrollbarDefaultDelayBeforeFade:I

    move/from16 v0, v18

    if-ne v3, v0, :cond_2d4

    .line 173
    sget v18, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v19, 0x10

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_4d9

    .line 174
    const/16 v18, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/view/View;->setScrollBarDefaultDelayBeforeFade(I)V

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v9

    move v9, v10

    move v10, v11

    move v11, v12

    move v12, v13

    move v13, v14

    goto/16 :goto_49

    .line 176
    :cond_2d4
    sget v18, Lcom/rey/material/R$styleable;->View_android_scrollbarFadeDuration:I

    move/from16 v0, v18

    if-ne v3, v0, :cond_300

    .line 177
    sget v18, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v19, 0x10

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_4d9

    .line 178
    const/16 v18, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/view/View;->setScrollBarFadeDuration(I)V

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v9

    move v9, v10

    move v10, v11

    move v11, v12

    move v12, v13

    move v13, v14

    goto/16 :goto_49

    .line 180
    :cond_300
    sget v18, Lcom/rey/material/R$styleable;->View_android_scrollbarSize:I

    move/from16 v0, v18

    if-ne v3, v0, :cond_32c

    .line 181
    sget v18, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v19, 0x10

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_4d9

    .line 182
    const/16 v18, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/view/View;->setScrollBarSize(I)V

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v9

    move v9, v10

    move v10, v11

    move v11, v12

    move v12, v13

    move v13, v14

    goto/16 :goto_49

    .line 184
    :cond_32c
    sget v18, Lcom/rey/material/R$styleable;->View_android_scrollbarStyle:I

    move/from16 v0, v18

    if-ne v3, v0, :cond_36b

    .line 185
    const/16 v18, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    .line 186
    sparse-switch v3, :sswitch_data_59c

    :goto_33f
    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v9

    move v9, v10

    move v10, v11

    move v11, v12

    move v12, v13

    move v13, v14

    .line 200
    goto/16 :goto_49

    .line 188
    :sswitch_34c
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/view/View;->setScrollBarStyle(I)V

    goto :goto_33f

    .line 191
    :sswitch_353
    const/high16 v3, 0x1000000

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/view/View;->setScrollBarStyle(I)V

    goto :goto_33f

    .line 194
    :sswitch_35b
    const/high16 v3, 0x2000000

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/view/View;->setScrollBarStyle(I)V

    goto :goto_33f

    .line 197
    :sswitch_363
    const/high16 v3, 0x3000000

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/view/View;->setScrollBarStyle(I)V

    goto :goto_33f

    .line 201
    :cond_36b
    sget v18, Lcom/rey/material/R$styleable;->View_android_soundEffectsEnabled:I

    move/from16 v0, v18

    if-ne v3, v0, :cond_38d

    .line 202
    const/16 v18, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v9

    move v9, v10

    move v10, v11

    move v11, v12

    move v12, v13

    move v13, v14

    goto/16 :goto_49

    .line 203
    :cond_38d
    sget v18, Lcom/rey/material/R$styleable;->View_android_textAlignment:I

    move/from16 v0, v18

    if-ne v3, v0, :cond_3e8

    .line 204
    sget v18, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v19, 0x11

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_4d9

    .line 205
    const/16 v18, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    .line 206
    packed-switch v3, :pswitch_data_5ae

    :goto_3aa
    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v9

    move v9, v10

    move v10, v11

    move v11, v12

    move v12, v13

    move v13, v14

    .line 229
    goto/16 :goto_49

    .line 208
    :pswitch_3b7
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/view/View;->setTextAlignment(I)V

    goto :goto_3aa

    .line 211
    :pswitch_3be
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/view/View;->setTextAlignment(I)V

    goto :goto_3aa

    .line 214
    :pswitch_3c5
    const/4 v3, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/view/View;->setTextAlignment(I)V

    goto :goto_3aa

    .line 217
    :pswitch_3cc
    const/4 v3, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/view/View;->setTextAlignment(I)V

    goto :goto_3aa

    .line 220
    :pswitch_3d3
    const/4 v3, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/view/View;->setTextAlignment(I)V

    goto :goto_3aa

    .line 223
    :pswitch_3da
    const/4 v3, 0x5

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/view/View;->setTextAlignment(I)V

    goto :goto_3aa

    .line 226
    :pswitch_3e1
    const/4 v3, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/view/View;->setTextAlignment(I)V

    goto :goto_3aa

    .line 231
    :cond_3e8
    sget v18, Lcom/rey/material/R$styleable;->View_android_textDirection:I

    move/from16 v0, v18

    if-ne v3, v0, :cond_43c

    .line 232
    sget v18, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v19, 0x11

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_4d9

    .line 233
    const/16 v18, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    .line 234
    packed-switch v3, :pswitch_data_5c0

    :goto_405
    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v9

    move v9, v10

    move v10, v11

    move v11, v12

    move v12, v13

    move v13, v14

    .line 254
    goto/16 :goto_49

    .line 236
    :pswitch_412
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/view/View;->setTextDirection(I)V

    goto :goto_405

    .line 239
    :pswitch_419
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/view/View;->setTextDirection(I)V

    goto :goto_405

    .line 242
    :pswitch_420
    const/4 v3, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/view/View;->setTextDirection(I)V

    goto :goto_405

    .line 245
    :pswitch_427
    const/4 v3, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/view/View;->setTextDirection(I)V

    goto :goto_405

    .line 248
    :pswitch_42e
    const/4 v3, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/view/View;->setTextDirection(I)V

    goto :goto_405

    .line 251
    :pswitch_435
    const/4 v3, 0x5

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/view/View;->setTextDirection(I)V

    goto :goto_405

    .line 256
    :cond_43c
    sget v18, Lcom/rey/material/R$styleable;->View_android_visibility:I

    move/from16 v0, v18

    if-ne v3, v0, :cond_472

    .line 257
    const/16 v18, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    .line 258
    packed-switch v3, :pswitch_data_5d0

    :goto_44f
    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v9

    move v9, v10

    move v10, v11

    move v11, v12

    move v12, v13

    move v13, v14

    .line 269
    goto/16 :goto_49

    .line 260
    :pswitch_45c
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_44f

    .line 263
    :pswitch_463
    const/4 v3, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_44f

    .line 266
    :pswitch_46a
    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_44f

    .line 270
    :cond_472
    sget v18, Lcom/rey/material/R$styleable;->View_android_layoutDirection:I

    move/from16 v0, v18

    if-ne v3, v0, :cond_4b8

    .line 271
    sget v18, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v19, 0x11

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_4d9

    .line 272
    const/16 v18, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    .line 273
    packed-switch v3, :pswitch_data_5da

    :goto_48f
    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v9

    move v9, v10

    move v10, v11

    move v11, v12

    move v12, v13

    move v13, v14

    .line 287
    goto/16 :goto_49

    .line 275
    :pswitch_49c
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutDirection(I)V

    goto :goto_48f

    .line 278
    :pswitch_4a3
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutDirection(I)V

    goto :goto_48f

    .line 281
    :pswitch_4aa
    const/4 v3, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutDirection(I)V

    goto :goto_48f

    .line 284
    :pswitch_4b1
    const/4 v3, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutDirection(I)V

    goto :goto_48f

    .line 289
    :cond_4b8
    sget v18, Lcom/rey/material/R$styleable;->View_android_src:I

    move/from16 v0, v18

    if-ne v3, v0, :cond_4d9

    .line 290
    move-object/from16 v0, p0

    instance-of v0, v0, Landroid/widget/ImageView;

    move/from16 v18, v0

    if-eqz v18, :cond_4d9

    .line 291
    const/16 v18, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v18

    move-object/from16 v3, p0

    .line 292
    check-cast v3, Landroid/widget/ImageView;

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_4d9
    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v9

    move v9, v10

    move v10, v11

    move v11, v12

    move v12, v13

    move v13, v14

    goto/16 :goto_49

    .line 297
    :cond_4e6
    if-ltz v8, :cond_4fc

    .line 298
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v8, v8, v8}, Landroid/view/View;->setPadding(IIII)V

    .line 324
    :cond_4ed
    :goto_4ed
    invoke-virtual/range {v16 .. v16}, Landroid/content/res/TypedArray;->recycle()V

    .line 326
    move-object/from16 v0, p0

    instance-of v3, v0, Landroid/widget/TextView;

    if-eqz v3, :cond_4fb

    .line 327
    check-cast p0, Landroid/widget/TextView;

    invoke-static/range {p0 .. p3}, Lcom/rey/material/util/ViewUtil;->b(Landroid/widget/TextView;Landroid/util/AttributeSet;II)V

    .line 328
    :cond_4fb
    return-void

    .line 299
    :cond_4fc
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x11

    if-ge v3, v8, :cond_52a

    .line 300
    if-eqz v7, :cond_57a

    move v4, v10

    .line 302
    :goto_505
    if-eqz v6, :cond_578

    move v3, v9

    .line 305
    :goto_508
    if-ltz v4, :cond_516

    :goto_50a
    if-ltz v13, :cond_51b

    :goto_50c
    if-ltz v3, :cond_520

    :goto_50e
    if-ltz v11, :cond_525

    :goto_510
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v13, v3, v11}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_4ed

    :cond_516
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    goto :goto_50a

    :cond_51b
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v13

    goto :goto_50c

    :cond_520
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    goto :goto_50e

    :cond_525
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v11

    goto :goto_510

    .line 311
    :cond_52a
    if-nez v5, :cond_52e

    if-eqz v4, :cond_53d

    .line 312
    :cond_52e
    if-eqz v5, :cond_54f

    :goto_530
    if-ltz v13, :cond_554

    move v5, v13

    :goto_533
    if-eqz v4, :cond_55a

    :goto_535
    if-ltz v11, :cond_55f

    move v3, v11

    :goto_538
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v5, v12, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 317
    :cond_53d
    if-nez v7, :cond_541

    if-eqz v6, :cond_4ed

    .line 318
    :cond_541
    if-eqz v7, :cond_564

    :goto_543
    if-ltz v13, :cond_569

    :goto_545
    if-eqz v6, :cond_56e

    :goto_547
    if-ltz v11, :cond_573

    :goto_549
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v13, v9, v11}, Landroid/view/View;->setPaddingRelative(IIII)V

    goto :goto_4ed

    .line 312
    :cond_54f
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v14

    goto :goto_530

    :cond_554
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    move v5, v3

    goto :goto_533

    :cond_55a
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v12

    goto :goto_535

    :cond_55f
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    goto :goto_538

    .line 318
    :cond_564
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingStart()I

    move-result v10

    goto :goto_543

    :cond_569
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v13

    goto :goto_545

    :cond_56e
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingEnd()I

    move-result v9

    goto :goto_547

    :cond_573
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v11

    goto :goto_549

    :cond_578
    move v3, v12

    goto :goto_508

    :cond_57a
    move v4, v14

    goto :goto_505

    .line 107
    :pswitch_data_57c
    .packed-switch 0x3
        :pswitch_a8
        :pswitch_9c
        :pswitch_b0
        :pswitch_9c
        :pswitch_9c
        :pswitch_9c
        :pswitch_b8
        :pswitch_9c
        :pswitch_9c
        :pswitch_9c
        :pswitch_9c
        :pswitch_c0
        :pswitch_c8
        :pswitch_d0
    .end packed-switch

    .line 186
    :sswitch_data_59c
    .sparse-switch
        0x0 -> :sswitch_34c
        0x1000000 -> :sswitch_353
        0x2000000 -> :sswitch_35b
        0x3000000 -> :sswitch_363
    .end sparse-switch

    .line 206
    :pswitch_data_5ae
    .packed-switch 0x0
        :pswitch_3b7
        :pswitch_3be
        :pswitch_3c5
        :pswitch_3cc
        :pswitch_3d3
        :pswitch_3da
        :pswitch_3e1
    .end packed-switch

    .line 234
    :pswitch_data_5c0
    .packed-switch 0x0
        :pswitch_412
        :pswitch_419
        :pswitch_420
        :pswitch_427
        :pswitch_42e
        :pswitch_435
    .end packed-switch

    .line 258
    :pswitch_data_5d0
    .packed-switch 0x0
        :pswitch_45c
        :pswitch_463
        :pswitch_46a
    .end packed-switch

    .line 273
    :pswitch_data_5da
    .packed-switch 0x0
        :pswitch_49c
        :pswitch_4a3
        :pswitch_4aa
        :pswitch_4b1
    .end packed-switch
.end method

.method private static a(Landroid/widget/AutoCompleteTextView;Landroid/util/AttributeSet;II)V
    .registers 11

    .prologue
    const/4 v6, -0x2

    const/4 v1, 0x0

    .line 748
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Lcom/rey/material/R$styleable;->AutoCompleteTextView:[I

    invoke-virtual {v0, p1, v2, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 750
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v3

    move v0, v1

    .line 751
    :goto_11
    if-ge v0, v3, :cond_79

    .line 752
    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v4

    .line 754
    sget v5, Lcom/rey/material/R$styleable;->AutoCompleteTextView_android_completionHint:I

    if-ne v4, v5, :cond_25

    .line 755
    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/widget/AutoCompleteTextView;->setCompletionHint(Ljava/lang/CharSequence;)V

    .line 751
    :cond_22
    :goto_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 756
    :cond_25
    sget v5, Lcom/rey/material/R$styleable;->AutoCompleteTextView_android_completionThreshold:I

    if-ne v4, v5, :cond_31

    .line 757
    invoke-virtual {v2, v4, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/widget/AutoCompleteTextView;->setThreshold(I)V

    goto :goto_22

    .line 758
    :cond_31
    sget v5, Lcom/rey/material/R$styleable;->AutoCompleteTextView_android_dropDownAnchor:I

    if-ne v4, v5, :cond_3d

    .line 759
    invoke-virtual {v2, v4, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/widget/AutoCompleteTextView;->setDropDownAnchor(I)V

    goto :goto_22

    .line 760
    :cond_3d
    sget v5, Lcom/rey/material/R$styleable;->AutoCompleteTextView_android_dropDownHeight:I

    if-ne v4, v5, :cond_49

    .line 761
    invoke-virtual {v2, v4, v6}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/widget/AutoCompleteTextView;->setDropDownHeight(I)V

    goto :goto_22

    .line 762
    :cond_49
    sget v5, Lcom/rey/material/R$styleable;->AutoCompleteTextView_android_dropDownWidth:I

    if-ne v4, v5, :cond_55

    .line 763
    invoke-virtual {v2, v4, v6}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/widget/AutoCompleteTextView;->setDropDownWidth(I)V

    goto :goto_22

    .line 764
    :cond_55
    sget v5, Lcom/rey/material/R$styleable;->AutoCompleteTextView_android_dropDownHorizontalOffset:I

    if-ne v4, v5, :cond_61

    .line 765
    invoke-virtual {v2, v4, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/widget/AutoCompleteTextView;->setDropDownHorizontalOffset(I)V

    goto :goto_22

    .line 766
    :cond_61
    sget v5, Lcom/rey/material/R$styleable;->AutoCompleteTextView_android_dropDownVerticalOffset:I

    if-ne v4, v5, :cond_6d

    .line 767
    invoke-virtual {v2, v4, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/widget/AutoCompleteTextView;->setDropDownVerticalOffset(I)V

    goto :goto_22

    .line 768
    :cond_6d
    sget v5, Lcom/rey/material/R$styleable;->AutoCompleteTextView_android_popupBackground:I

    if-ne v4, v5, :cond_22

    .line 769
    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/widget/AutoCompleteTextView;->setDropDownBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_22

    .line 771
    :cond_79
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 772
    return-void
.end method

.method public static a(Landroid/widget/TextView;I)V
    .registers 15

    .prologue
    .line 343
    if-nez p1, :cond_3

    .line 442
    :cond_2
    :goto_2
    return-void

    .line 346
    :cond_3
    const/4 v6, 0x0

    .line 347
    const/4 v5, -0x1

    .line 348
    const/4 v4, -0x1

    .line 349
    const/4 v3, 0x0

    .line 350
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 352
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v7

    sget-object v8, Lcom/rey/material/R$styleable;->TextAppearance:[I

    invoke-virtual {v7, p1, v8}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v8

    .line 353
    if-eqz v8, :cond_105

    .line 354
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v9

    .line 355
    const/4 v7, 0x0

    :goto_1b
    if-ge v7, v9, :cond_102

    .line 356
    invoke-virtual {v8, v7}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v10

    .line 358
    sget v11, Lcom/rey/material/R$styleable;->TextAppearance_android_textColorHighlight:I

    if-ne v10, v11, :cond_30

    .line 359
    const/4 v11, 0x0

    invoke-virtual {v8, v10, v11}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v10

    invoke-virtual {p0, v10}, Landroid/widget/TextView;->setHighlightColor(I)V

    .line 355
    :cond_2d
    :goto_2d
    add-int/lit8 v7, v7, 0x1

    goto :goto_1b

    .line 361
    :cond_30
    sget v11, Lcom/rey/material/R$styleable;->TextAppearance_android_textColor:I

    if-ne v10, v11, :cond_3c

    .line 362
    invoke-virtual {v8, v10}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v10

    invoke-virtual {p0, v10}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_2d

    .line 364
    :cond_3c
    sget v11, Lcom/rey/material/R$styleable;->TextAppearance_android_textColorHint:I

    if-ne v10, v11, :cond_48

    .line 365
    invoke-virtual {v8, v10}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v10

    invoke-virtual {p0, v10}, Landroid/widget/TextView;->setHintTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_2d

    .line 367
    :cond_48
    sget v11, Lcom/rey/material/R$styleable;->TextAppearance_android_textColorLink:I

    if-ne v10, v11, :cond_54

    .line 368
    invoke-virtual {v8, v10}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v10

    invoke-virtual {p0, v10}, Landroid/widget/TextView;->setLinkTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_2d

    .line 370
    :cond_54
    sget v11, Lcom/rey/material/R$styleable;->TextAppearance_android_textSize:I

    if-ne v10, v11, :cond_63

    .line 371
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v8, v10, v12}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {p0, v11, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_2d

    .line 373
    :cond_63
    sget v11, Lcom/rey/material/R$styleable;->TextAppearance_android_typeface:I

    if-ne v10, v11, :cond_6d

    .line 374
    const/4 v5, -0x1

    invoke-virtual {v8, v10, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    goto :goto_2d

    .line 376
    :cond_6d
    sget v11, Lcom/rey/material/R$styleable;->TextAppearance_android_fontFamily:I

    if-ne v10, v11, :cond_76

    .line 377
    invoke-virtual {v8, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_2d

    .line 379
    :cond_76
    sget v11, Lcom/rey/material/R$styleable;->TextAppearance_tv_fontFamily:I

    if-ne v10, v11, :cond_7f

    .line 380
    invoke-virtual {v8, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_2d

    .line 382
    :cond_7f
    sget v11, Lcom/rey/material/R$styleable;->TextAppearance_android_textStyle:I

    if-ne v10, v11, :cond_89

    .line 383
    const/4 v4, -0x1

    invoke-virtual {v8, v10, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    goto :goto_2d

    .line 385
    :cond_89
    sget v11, Lcom/rey/material/R$styleable;->TextAppearance_android_textAllCaps:I

    if-ne v10, v11, :cond_9c

    .line 386
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0xe

    if-lt v11, v12, :cond_2d

    .line 387
    const/4 v11, 0x0

    invoke-virtual {v8, v10, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    invoke-virtual {p0, v10}, Landroid/widget/TextView;->setAllCaps(Z)V

    goto :goto_2d

    .line 389
    :cond_9c
    sget v11, Lcom/rey/material/R$styleable;->TextAppearance_android_shadowColor:I

    if-ne v10, v11, :cond_a6

    .line 390
    const/4 v3, 0x0

    invoke-virtual {v8, v10, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    goto :goto_2d

    .line 392
    :cond_a6
    sget v11, Lcom/rey/material/R$styleable;->TextAppearance_android_shadowDx:I

    if-ne v10, v11, :cond_b1

    .line 393
    const/4 v2, 0x0

    invoke-virtual {v8, v10, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    goto/16 :goto_2d

    .line 395
    :cond_b1
    sget v11, Lcom/rey/material/R$styleable;->TextAppearance_android_shadowDy:I

    if-ne v10, v11, :cond_bc

    .line 396
    const/4 v1, 0x0

    invoke-virtual {v8, v10, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    goto/16 :goto_2d

    .line 398
    :cond_bc
    sget v11, Lcom/rey/material/R$styleable;->TextAppearance_android_shadowRadius:I

    if-ne v10, v11, :cond_c7

    .line 399
    const/4 v0, 0x0

    invoke-virtual {v8, v10, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    goto/16 :goto_2d

    .line 401
    :cond_c7
    sget v11, Lcom/rey/material/R$styleable;->TextAppearance_android_elegantTextHeight:I

    if-ne v10, v11, :cond_db

    .line 402
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x15

    if-lt v11, v12, :cond_2d

    .line 403
    const/4 v11, 0x0

    invoke-virtual {v8, v10, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    invoke-virtual {p0, v10}, Landroid/widget/TextView;->setElegantTextHeight(Z)V

    goto/16 :goto_2d

    .line 405
    :cond_db
    sget v11, Lcom/rey/material/R$styleable;->TextAppearance_android_letterSpacing:I

    if-ne v10, v11, :cond_ef

    .line 406
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x15

    if-lt v11, v12, :cond_2d

    .line 407
    const/4 v11, 0x0

    invoke-virtual {v8, v10, v11}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v10

    invoke-virtual {p0, v10}, Landroid/widget/TextView;->setLetterSpacing(F)V

    goto/16 :goto_2d

    .line 409
    :cond_ef
    sget v11, Lcom/rey/material/R$styleable;->TextAppearance_android_fontFeatureSettings:I

    if-ne v10, v11, :cond_2d

    .line 410
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x15

    if-lt v11, v12, :cond_2d

    .line 411
    invoke-virtual {v8, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Landroid/widget/TextView;->setFontFeatureSettings(Ljava/lang/String;)V

    goto/16 :goto_2d

    .line 416
    :cond_102
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 419
    :cond_105
    if-eqz v3, :cond_10a

    .line 420
    invoke-virtual {p0, v0, v2, v1, v3}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 422
    :cond_10a
    const/4 v0, 0x0

    .line 423
    if-eqz v6, :cond_11a

    .line 424
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v6, v4}, Lcom/rey/material/util/TypefaceUtil;->a(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    .line 425
    if-eqz v0, :cond_11a

    .line 426
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 428
    :cond_11a
    if-eqz v0, :cond_2

    .line 429
    packed-switch v5, :pswitch_data_12e

    .line 440
    :goto_11f
    invoke-virtual {p0, v0, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto/16 :goto_2

    .line 431
    :pswitch_124
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    goto :goto_11f

    .line 434
    :pswitch_127
    sget-object v0, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    goto :goto_11f

    .line 437
    :pswitch_12a
    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    goto :goto_11f

    .line 429
    nop

    :pswitch_data_12e
    .packed-switch 0x1
        :pswitch_124
        :pswitch_127
        :pswitch_12a
    .end packed-switch
.end method

.method public static a(Landroid/widget/TextView;Landroid/util/AttributeSet;II)V
    .registers 8

    .prologue
    const/4 v3, 0x0

    .line 331
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [I

    sget v2, Lcom/rey/material/R$attr;->tv_fontFamily:I

    aput v2, v1, v3

    invoke-virtual {v0, p1, v1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 332
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 334
    if-eqz v1, :cond_21

    .line 335
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1, v3}, Lcom/rey/material/util/TypefaceUtil;->a(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    .line 336
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 339
    :cond_21
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 340
    return-void
.end method

.method public static a([II)Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 45
    if-nez p0, :cond_4

    .line 52
    :cond_3
    :goto_3
    return v0

    .line 48
    :cond_4
    array-length v2, p0

    move v1, v0

    :goto_6
    if-ge v1, v2, :cond_3

    aget v3, p0, v1

    .line 49
    if-ne v3, p1, :cond_e

    .line 50
    const/4 v0, 0x1

    goto :goto_3

    .line 48
    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_6
.end method

.method private static b(Landroid/widget/TextView;Landroid/util/AttributeSet;II)V
    .registers 37

    .prologue
    .line 452
    const/4 v10, 0x0

    .line 453
    const/4 v9, -0x1

    .line 454
    const/4 v8, -0x1

    .line 455
    const/4 v7, 0x0

    .line 456
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 458
    const/16 v19, 0x0

    const/16 v18, 0x0

    const/16 v17, 0x0

    .line 459
    const/16 v16, 0x0

    const/4 v15, 0x0

    const/4 v14, 0x0

    .line 460
    const/4 v13, 0x0

    .line 461
    const/4 v12, 0x0

    .line 469
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v11

    sget-object v20, Lcom/rey/material/R$styleable;->TextViewAppearance:[I

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v20

    .line 470
    const/4 v11, 0x0

    .line 471
    sget v21, Lcom/rey/material/R$styleable;->TextViewAppearance_android_textAppearance:I

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v21

    .line 472
    invoke-virtual/range {v20 .. v20}, Landroid/content/res/TypedArray;->recycle()V

    .line 474
    if-eqz v21, :cond_739

    .line 475
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v11

    sget-object v20, Lcom/rey/material/R$styleable;->TextAppearance:[I

    move/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v11, v0, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v11

    move-object/from16 v20, v11

    .line 477
    :goto_43
    if-eqz v20, :cond_210

    .line 478
    invoke-virtual/range {v20 .. v20}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v21

    .line 479
    const/4 v11, 0x0

    :goto_4a
    move/from16 v0, v21

    if-ge v11, v0, :cond_20d

    .line 480
    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v22

    .line 482
    sget v23, Lcom/rey/material/R$styleable;->TextAppearance_android_textColorHighlight:I

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_72

    .line 483
    const/16 v23, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHighlightColor(I)V

    .line 479
    :cond_6f
    :goto_6f
    add-int/lit8 v11, v11, 0x1

    goto :goto_4a

    .line 485
    :cond_72
    sget v23, Lcom/rey/material/R$styleable;->TextAppearance_android_textColor:I

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_8a

    .line 486
    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_6f

    .line 488
    :cond_8a
    sget v23, Lcom/rey/material/R$styleable;->TextAppearance_android_textColorHint:I

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_a2

    .line 489
    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHintTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_6f

    .line 491
    :cond_a2
    sget v23, Lcom/rey/material/R$styleable;->TextAppearance_android_textColorLink:I

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_ba

    .line 492
    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLinkTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_6f

    .line 494
    :cond_ba
    sget v23, Lcom/rey/material/R$styleable;->TextAppearance_android_textSize:I

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_df

    .line 495
    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v22

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_6f

    .line 497
    :cond_df
    sget v23, Lcom/rey/material/R$styleable;->TextAppearance_android_typeface:I

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_f2

    .line 498
    const/4 v9, -0x1

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    goto/16 :goto_6f

    .line 500
    :cond_f2
    sget v23, Lcom/rey/material/R$styleable;->TextAppearance_android_fontFamily:I

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_104

    .line 501
    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_6f

    .line 503
    :cond_104
    sget v23, Lcom/rey/material/R$styleable;->TextAppearance_tv_fontFamily:I

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_116

    .line 504
    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_6f

    .line 506
    :cond_116
    sget v23, Lcom/rey/material/R$styleable;->TextAppearance_android_textStyle:I

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_129

    .line 507
    const/4 v8, -0x1

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    goto/16 :goto_6f

    .line 509
    :cond_129
    sget v23, Lcom/rey/material/R$styleable;->TextAppearance_android_textAllCaps:I

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_150

    .line 510
    sget v23, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v24, 0xe

    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_6f

    .line 511
    const/16 v23, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAllCaps(Z)V

    goto/16 :goto_6f

    .line 513
    :cond_150
    sget v23, Lcom/rey/material/R$styleable;->TextAppearance_android_shadowColor:I

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_163

    .line 514
    const/4 v7, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    goto/16 :goto_6f

    .line 516
    :cond_163
    sget v23, Lcom/rey/material/R$styleable;->TextAppearance_android_shadowDx:I

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_176

    .line 517
    const/4 v6, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    goto/16 :goto_6f

    .line 519
    :cond_176
    sget v23, Lcom/rey/material/R$styleable;->TextAppearance_android_shadowDy:I

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_189

    .line 520
    const/4 v5, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    goto/16 :goto_6f

    .line 522
    :cond_189
    sget v23, Lcom/rey/material/R$styleable;->TextAppearance_android_shadowRadius:I

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_19c

    .line 523
    const/4 v4, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    goto/16 :goto_6f

    .line 525
    :cond_19c
    sget v23, Lcom/rey/material/R$styleable;->TextAppearance_android_elegantTextHeight:I

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_1c3

    .line 526
    sget v23, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v24, 0x15

    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_6f

    .line 527
    const/16 v23, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setElegantTextHeight(Z)V

    goto/16 :goto_6f

    .line 529
    :cond_1c3
    sget v23, Lcom/rey/material/R$styleable;->TextAppearance_android_letterSpacing:I

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_1ea

    .line 530
    sget v23, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v24, 0x15

    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_6f

    .line 531
    const/16 v23, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLetterSpacing(F)V

    goto/16 :goto_6f

    .line 533
    :cond_1ea
    sget v23, Lcom/rey/material/R$styleable;->TextAppearance_android_fontFeatureSettings:I

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_6f

    .line 534
    sget v23, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v24, 0x15

    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_6f

    .line 535
    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFontFeatureSettings(Ljava/lang/String;)V

    goto/16 :goto_6f

    .line 540
    :cond_20d
    invoke-virtual/range {v20 .. v20}, Landroid/content/res/TypedArray;->recycle()V

    .line 543
    :cond_210
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v11

    sget-object v20, Lcom/rey/material/R$styleable;->TextView:[I

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v20

    .line 545
    invoke-virtual/range {v20 .. v20}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v21

    .line 546
    const/4 v11, 0x0

    move/from16 v25, v11

    move-object/from16 v11, v19

    move/from16 v19, v25

    move/from16 v26, v13

    move v13, v5

    move/from16 v5, v26

    move-object/from16 v27, v15

    move v15, v7

    move-object/from16 v7, v27

    move-object/from16 v28, v17

    move/from16 v17, v9

    move-object/from16 v9, v28

    move/from16 v29, v12

    move v12, v4

    move/from16 v4, v29

    move-object/from16 v30, v14

    move v14, v6

    move-object/from16 v6, v30

    move-object/from16 v31, v16

    move/from16 v16, v8

    move-object/from16 v8, v31

    move-object/from16 v32, v18

    move-object/from16 v18, v10

    move-object/from16 v10, v32

    :goto_253
    move/from16 v0, v19

    move/from16 v1, v21

    if-ge v0, v1, :cond_69a

    .line 547
    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v22

    .line 549
    sget v23, Lcom/rey/material/R$styleable;->TextView_android_drawableLeft:I

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_275

    .line 550
    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 551
    const/4 v5, 0x1

    .line 546
    :cond_272
    :goto_272
    add-int/lit8 v19, v19, 0x1

    goto :goto_253

    .line 553
    :cond_275
    sget v23, Lcom/rey/material/R$styleable;->TextView_android_drawableTop:I

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_287

    .line 554
    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 555
    const/4 v5, 0x1

    goto :goto_272

    .line 557
    :cond_287
    sget v23, Lcom/rey/material/R$styleable;->TextView_android_drawableRight:I

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_299

    .line 558
    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 559
    const/4 v5, 0x1

    goto :goto_272

    .line 561
    :cond_299
    sget v23, Lcom/rey/material/R$styleable;->TextView_android_drawableBottom:I

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_2ab

    .line 562
    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 563
    const/4 v5, 0x1

    goto :goto_272

    .line 565
    :cond_2ab
    sget v23, Lcom/rey/material/R$styleable;->TextView_android_drawableStart:I

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_2bd

    .line 566
    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 567
    const/4 v4, 0x1

    goto :goto_272

    .line 569
    :cond_2bd
    sget v23, Lcom/rey/material/R$styleable;->TextView_android_drawableEnd:I

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_2cf

    .line 570
    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 571
    const/4 v4, 0x1

    goto :goto_272

    .line 573
    :cond_2cf
    sget v23, Lcom/rey/material/R$styleable;->TextView_android_drawablePadding:I

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_2eb

    .line 574
    const/16 v23, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    goto :goto_272

    .line 576
    :cond_2eb
    sget v23, Lcom/rey/material/R$styleable;->TextView_android_maxLines:I

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_308

    .line 577
    const/16 v23, -0x1

    move-object/from16 v0, v20

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    goto/16 :goto_272

    .line 579
    :cond_308
    sget v23, Lcom/rey/material/R$styleable;->TextView_android_maxHeight:I

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_325

    .line 580
    const/16 v23, -0x1

    move-object/from16 v0, v20

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxHeight(I)V

    goto/16 :goto_272

    .line 582
    :cond_325
    sget v23, Lcom/rey/material/R$styleable;->TextView_android_lines:I

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_342

    .line 583
    const/16 v23, -0x1

    move-object/from16 v0, v20

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLines(I)V

    goto/16 :goto_272

    .line 585
    :cond_342
    sget v23, Lcom/rey/material/R$styleable;->TextView_android_height:I

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_35f

    .line 586
    const/16 v23, -0x1

    move-object/from16 v0, v20

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHeight(I)V

    goto/16 :goto_272

    .line 588
    :cond_35f
    sget v23, Lcom/rey/material/R$styleable;->TextView_android_minLines:I

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_37c

    .line 589
    const/16 v23, -0x1

    move-object/from16 v0, v20

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMinLines(I)V

    goto/16 :goto_272

    .line 591
    :cond_37c
    sget v23, Lcom/rey/material/R$styleable;->TextView_android_minHeight:I

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_399

    .line 592
    const/16 v23, -0x1

    move-object/from16 v0, v20

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMinHeight(I)V

    goto/16 :goto_272

    .line 594
    :cond_399
    sget v23, Lcom/rey/material/R$styleable;->TextView_android_maxEms:I

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_3b6

    .line 595
    const/16 v23, -0x1

    move-object/from16 v0, v20

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxEms(I)V

    goto/16 :goto_272

    .line 597
    :cond_3b6
    sget v23, Lcom/rey/material/R$styleable;->TextView_android_maxWidth:I

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_3d3

    .line 598
    const/16 v23, -0x1

    move-object/from16 v0, v20

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    goto/16 :goto_272

    .line 600
    :cond_3d3
    sget v23, Lcom/rey/material/R$styleable;->TextView_android_ems:I

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_3f0

    .line 601
    const/16 v23, -0x1

    move-object/from16 v0, v20

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEms(I)V

    goto/16 :goto_272

    .line 603
    :cond_3f0
    sget v23, Lcom/rey/material/R$styleable;->TextView_android_width:I

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_40d

    .line 604
    const/16 v23, -0x1

    move-object/from16 v0, v20

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setWidth(I)V

    goto/16 :goto_272

    .line 606
    :cond_40d
    sget v23, Lcom/rey/material/R$styleable;->TextView_android_minEms:I

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_42a

    .line 607
    const/16 v23, -0x1

    move-object/from16 v0, v20

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMinEms(I)V

    goto/16 :goto_272

    .line 609
    :cond_42a
    sget v23, Lcom/rey/material/R$styleable;->TextView_android_minWidth:I

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_447

    .line 610
    const/16 v23, -0x1

    move-object/from16 v0, v20

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMinWidth(I)V

    goto/16 :goto_272

    .line 612
    :cond_447
    sget v23, Lcom/rey/material/R$styleable;->TextView_android_gravity:I

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_464

    .line 613
    const/16 v23, -0x1

    move-object/from16 v0, v20

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    goto/16 :goto_272

    .line 615
    :cond_464
    sget v23, Lcom/rey/material/R$styleable;->TextView_android_scrollHorizontally:I

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_481

    .line 616
    const/16 v23, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    goto/16 :goto_272

    .line 618
    :cond_481
    sget v23, Lcom/rey/material/R$styleable;->TextView_android_includeFontPadding:I

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_49e

    .line 619
    const/16 v23, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    goto/16 :goto_272

    .line 621
    :cond_49e
    sget v23, Lcom/rey/material/R$styleable;->TextView_android_cursorVisible:I

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_4bb

    .line 622
    const/16 v23, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setCursorVisible(Z)V

    goto/16 :goto_272

    .line 624
    :cond_4bb
    sget v23, Lcom/rey/material/R$styleable;->TextView_android_textScaleX:I

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_4d8

    .line 625
    const/high16 v23, 0x3f800000    # 1.0f

    move-object/from16 v0, v20

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextScaleX(F)V

    goto/16 :goto_272

    .line 627
    :cond_4d8
    sget v23, Lcom/rey/material/R$styleable;->TextView_android_shadowColor:I

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_4eb

    .line 628
    const/4 v15, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1, v15}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v15

    goto/16 :goto_272

    .line 630
    :cond_4eb
    sget v23, Lcom/rey/material/R$styleable;->TextView_android_shadowDx:I

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_4fe

    .line 631
    const/4 v14, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1, v14}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v14

    goto/16 :goto_272

    .line 633
    :cond_4fe
    sget v23, Lcom/rey/material/R$styleable;->TextView_android_shadowDy:I

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_511

    .line 634
    const/4 v13, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1, v13}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v13

    goto/16 :goto_272

    .line 636
    :cond_511
    sget v23, Lcom/rey/material/R$styleable;->TextView_android_shadowRadius:I

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_524

    .line 637
    const/4 v12, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1, v12}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v12

    goto/16 :goto_272

    .line 639
    :cond_524
    sget v23, Lcom/rey/material/R$styleable;->TextView_android_textColorHighlight:I

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_541

    .line 640
    const/16 v23, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHighlightColor(I)V

    goto/16 :goto_272

    .line 642
    :cond_541
    sget v23, Lcom/rey/material/R$styleable;->TextView_android_textColor:I

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_55a

    .line 643
    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto/16 :goto_272

    .line 645
    :cond_55a
    sget v23, Lcom/rey/material/R$styleable;->TextView_android_textColorHint:I

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_573

    .line 646
    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHintTextColor(Landroid/content/res/ColorStateList;)V

    goto/16 :goto_272

    .line 648
    :cond_573
    sget v23, Lcom/rey/material/R$styleable;->TextView_android_textColorLink:I

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_58c

    .line 649
    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLinkTextColor(Landroid/content/res/ColorStateList;)V

    goto/16 :goto_272

    .line 651
    :cond_58c
    sget v23, Lcom/rey/material/R$styleable;->TextView_android_textSize:I

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_5b2

    .line 652
    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v22

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    goto/16 :goto_272

    .line 654
    :cond_5b2
    sget v23, Lcom/rey/material/R$styleable;->TextView_android_typeface:I

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_5c8

    .line 655
    const/16 v17, -0x1

    move-object/from16 v0, v20

    move/from16 v1, v22

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v17

    goto/16 :goto_272

    .line 657
    :cond_5c8
    sget v23, Lcom/rey/material/R$styleable;->TextView_android_textStyle:I

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_5de

    .line 658
    const/16 v16, -0x1

    move-object/from16 v0, v20

    move/from16 v1, v22

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v16

    goto/16 :goto_272

    .line 660
    :cond_5de
    sget v23, Lcom/rey/material/R$styleable;->TextView_android_fontFamily:I

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_5f0

    .line 661
    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_272

    .line 663
    :cond_5f0
    sget v23, Lcom/rey/material/R$styleable;->TextView_tv_fontFamily:I

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_602

    .line 664
    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_272

    .line 666
    :cond_602
    sget v23, Lcom/rey/material/R$styleable;->TextView_android_textAllCaps:I

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_629

    .line 667
    sget v23, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v24, 0xe

    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_272

    .line 668
    const/16 v23, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAllCaps(Z)V

    goto/16 :goto_272

    .line 670
    :cond_629
    sget v23, Lcom/rey/material/R$styleable;->TextView_android_elegantTextHeight:I

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_650

    .line 671
    sget v23, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v24, 0x15

    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_272

    .line 672
    const/16 v23, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setElegantTextHeight(Z)V

    goto/16 :goto_272

    .line 674
    :cond_650
    sget v23, Lcom/rey/material/R$styleable;->TextView_android_letterSpacing:I

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_677

    .line 675
    sget v23, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v24, 0x15

    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_272

    .line 676
    const/16 v23, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLetterSpacing(F)V

    goto/16 :goto_272

    .line 678
    :cond_677
    sget v23, Lcom/rey/material/R$styleable;->TextView_android_fontFeatureSettings:I

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_272

    .line 679
    sget v23, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v24, 0x15

    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_272

    .line 680
    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFontFeatureSettings(Ljava/lang/String;)V

    goto/16 :goto_272

    .line 684
    :cond_69a
    invoke-virtual/range {v20 .. v20}, Landroid/content/res/TypedArray;->recycle()V

    .line 686
    if-eqz v15, :cond_6a4

    .line 687
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v14, v13, v15}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 689
    :cond_6a4
    if-eqz v5, :cond_6cf

    .line 690
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 691
    if-eqz v7, :cond_724

    .line 692
    const/4 v11, 0x0

    aput-object v7, v5, v11

    .line 695
    :cond_6af
    :goto_6af
    if-eqz v10, :cond_6b4

    .line 696
    const/4 v11, 0x1

    aput-object v10, v5, v11

    .line 697
    :cond_6b4
    if-eqz v6, :cond_72a

    .line 698
    const/4 v9, 0x2

    aput-object v6, v5, v9

    .line 701
    :cond_6b9
    :goto_6b9
    if-eqz v8, :cond_6be

    .line 702
    const/4 v9, 0x3

    aput-object v8, v5, v9

    .line 703
    :cond_6be
    const/4 v8, 0x0

    aget-object v8, v5, v8

    const/4 v9, 0x1

    aget-object v9, v5, v9

    const/4 v10, 0x2

    aget-object v10, v5, v10

    const/4 v11, 0x3

    aget-object v5, v5, v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v9, v10, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 706
    :cond_6cf
    if-eqz v4, :cond_6f6

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x11

    if-lt v4, v5, :cond_6f6

    .line 707
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 708
    if-eqz v7, :cond_6e0

    .line 709
    const/4 v5, 0x0

    aput-object v7, v4, v5

    .line 710
    :cond_6e0
    if-eqz v6, :cond_6e5

    .line 711
    const/4 v5, 0x2

    aput-object v6, v4, v5

    .line 712
    :cond_6e5
    const/4 v5, 0x0

    aget-object v5, v4, v5

    const/4 v6, 0x1

    aget-object v6, v4, v6

    const/4 v7, 0x2

    aget-object v7, v4, v7

    const/4 v8, 0x3

    aget-object v4, v4, v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7, v4}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 715
    :cond_6f6
    const/4 v4, 0x0

    .line 716
    if-eqz v18, :cond_70c

    .line 717
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-static {v4, v0, v1}, Lcom/rey/material/util/TypefaceUtil;->a(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v4

    .line 718
    if-eqz v4, :cond_70c

    .line 719
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 721
    :cond_70c
    if-eqz v4, :cond_718

    .line 722
    packed-switch v17, :pswitch_data_73e

    .line 733
    :goto_711
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v4, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 736
    :cond_718
    move-object/from16 v0, p0

    instance-of v4, v0, Landroid/widget/AutoCompleteTextView;

    if-eqz v4, :cond_723

    .line 737
    check-cast p0, Landroid/widget/AutoCompleteTextView;

    invoke-static/range {p0 .. p3}, Lcom/rey/material/util/ViewUtil;->a(Landroid/widget/AutoCompleteTextView;Landroid/util/AttributeSet;II)V

    .line 738
    :cond_723
    return-void

    .line 693
    :cond_724
    if-eqz v11, :cond_6af

    .line 694
    const/4 v12, 0x0

    aput-object v11, v5, v12

    goto :goto_6af

    .line 699
    :cond_72a
    if-eqz v9, :cond_6b9

    .line 700
    const/4 v10, 0x2

    aput-object v9, v5, v10

    goto :goto_6b9

    .line 724
    :pswitch_730
    sget-object v4, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    goto :goto_711

    .line 727
    :pswitch_733
    sget-object v4, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    goto :goto_711

    .line 730
    :pswitch_736
    sget-object v4, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    goto :goto_711

    :cond_739
    move-object/from16 v20, v11

    goto/16 :goto_43

    .line 722
    nop

    :pswitch_data_73e
    .packed-switch 0x1
        :pswitch_730
        :pswitch_733
        :pswitch_736
    .end packed-switch
.end method
