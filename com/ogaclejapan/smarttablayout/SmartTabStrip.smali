.class Lcom/ogaclejapan/smarttablayout/SmartTabStrip;
.super Landroid/widget/LinearLayout;
.source "SmartTabStrip.java"


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:Landroid/graphics/Paint;

.field private final f:Landroid/graphics/RectF;

.field private final g:Z

.field private final h:Z

.field private final i:Z

.field private final j:I

.field private final k:I

.field private final l:F

.field private final m:Landroid/graphics/Paint;

.field private final n:I

.field private final o:Landroid/graphics/Paint;

.field private final p:F

.field private final q:Lcom/ogaclejapan/smarttablayout/SmartTabStrip$SimpleTabColorizer;

.field private r:I

.field private s:I

.field private t:F

.field private u:Lcom/ogaclejapan/smarttablayout/SmartTabIndicationInterpolator;

.field private v:Lcom/ogaclejapan/smarttablayout/SmartTabLayout$TabColorizer;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 25

    .prologue
    .line 81
    invoke-direct/range {p0 .. p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 61
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->f:Landroid/graphics/RectF;

    .line 82
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->setWillNotDraw(Z)V

    .line 84
    invoke-virtual/range {p0 .. p0}, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    .line 86
    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    .line 87
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    const v6, 0x1010030

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v4, v7}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 88
    iget v4, v4, Landroid/util/TypedValue;->data:I

    .line 90
    const/4 v5, 0x0

    .line 91
    const/4 v6, 0x0

    .line 92
    const/4 v7, 0x0

    .line 93
    const/4 v8, 0x0

    .line 94
    const/4 v9, 0x0

    .line 95
    const v10, -0xcc4a1b

    .line 96
    const/4 v11, -0x1

    .line 97
    const/high16 v12, 0x41000000    # 8.0f

    mul-float/2addr v12, v3

    float-to-int v12, v12

    .line 98
    const/4 v13, 0x0

    mul-float/2addr v13, v3

    .line 99
    const/16 v14, 0x26

    invoke-static {v4, v14}, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->a(IB)I

    move-result v14

    .line 100
    const/4 v15, 0x0

    mul-float/2addr v15, v3

    float-to-int v15, v15

    .line 101
    const/16 v16, 0x26

    move/from16 v0, v16

    invoke-static {v4, v0}, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->a(IB)I

    move-result v16

    .line 102
    const/high16 v17, 0x40000000    # 2.0f

    mul-float v17, v17, v3

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    .line 103
    const/16 v18, 0x20

    move/from16 v0, v18

    invoke-static {v4, v0}, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->a(IB)I

    move-result v4

    .line 104
    const/16 v18, -0x1

    .line 105
    const/high16 v19, 0x3f800000    # 1.0f

    mul-float v3, v3, v19

    float-to-int v3, v3

    .line 107
    sget-object v19, Lcom/ogaclejapan/smarttablayout/R$styleable;->stl_SmartTabLayout:[I

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v19

    .line 108
    sget v20, Lcom/ogaclejapan/smarttablayout/R$styleable;->stl_SmartTabLayout_stl_indicatorAlwaysInCenter:I

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v1, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    .line 110
    sget v20, Lcom/ogaclejapan/smarttablayout/R$styleable;->stl_SmartTabLayout_stl_indicatorWithoutPadding:I

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    .line 112
    sget v20, Lcom/ogaclejapan/smarttablayout/R$styleable;->stl_SmartTabLayout_stl_indicatorInFront:I

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    .line 114
    sget v20, Lcom/ogaclejapan/smarttablayout/R$styleable;->stl_SmartTabLayout_stl_indicatorInterpolation:I

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v1, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    .line 116
    sget v20, Lcom/ogaclejapan/smarttablayout/R$styleable;->stl_SmartTabLayout_stl_indicatorGravity:I

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v1, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    .line 118
    sget v20, Lcom/ogaclejapan/smarttablayout/R$styleable;->stl_SmartTabLayout_stl_indicatorColor:I

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v1, v10}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v10

    .line 120
    sget v20, Lcom/ogaclejapan/smarttablayout/R$styleable;->stl_SmartTabLayout_stl_indicatorColors:I

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v1, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    .line 122
    sget v20, Lcom/ogaclejapan/smarttablayout/R$styleable;->stl_SmartTabLayout_stl_indicatorThickness:I

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v1, v12}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v12

    .line 124
    sget v20, Lcom/ogaclejapan/smarttablayout/R$styleable;->stl_SmartTabLayout_stl_indicatorCornerRadius:I

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v1, v13}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v13

    .line 126
    sget v20, Lcom/ogaclejapan/smarttablayout/R$styleable;->stl_SmartTabLayout_stl_overlineColor:I

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v1, v14}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v14

    .line 128
    sget v20, Lcom/ogaclejapan/smarttablayout/R$styleable;->stl_SmartTabLayout_stl_overlineThickness:I

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v1, v15}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v15

    .line 130
    sget v20, Lcom/ogaclejapan/smarttablayout/R$styleable;->stl_SmartTabLayout_stl_underlineColor:I

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v16

    .line 132
    sget v20, Lcom/ogaclejapan/smarttablayout/R$styleable;->stl_SmartTabLayout_stl_underlineThickness:I

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v17

    .line 134
    sget v20, Lcom/ogaclejapan/smarttablayout/R$styleable;->stl_SmartTabLayout_stl_dividerColor:I

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v20

    .line 136
    sget v4, Lcom/ogaclejapan/smarttablayout/R$styleable;->stl_SmartTabLayout_stl_dividerColors:I

    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v18

    .line 138
    sget v4, Lcom/ogaclejapan/smarttablayout/R$styleable;->stl_SmartTabLayout_stl_dividerThickness:I

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v21

    .line 140
    invoke-virtual/range {v19 .. v19}, Landroid/content/res/TypedArray;->recycle()V

    .line 142
    const/4 v3, -0x1

    if-ne v11, v3, :cond_1ad

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput v10, v3, v4

    move-object v4, v3

    .line 146
    :goto_121
    const/4 v3, -0x1

    move/from16 v0, v18

    if-ne v0, v3, :cond_1b8

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v10, 0x0

    aput v20, v3, v10

    .line 150
    :goto_12c
    new-instance v10, Lcom/ogaclejapan/smarttablayout/SmartTabStrip$SimpleTabColorizer;

    const/4 v11, 0x0

    invoke-direct {v10, v11}, Lcom/ogaclejapan/smarttablayout/SmartTabStrip$SimpleTabColorizer;-><init>(Lcom/ogaclejapan/smarttablayout/SmartTabStrip$1;)V

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->q:Lcom/ogaclejapan/smarttablayout/SmartTabStrip$SimpleTabColorizer;

    .line 151
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->q:Lcom/ogaclejapan/smarttablayout/SmartTabStrip$SimpleTabColorizer;

    invoke-virtual {v10, v4}, Lcom/ogaclejapan/smarttablayout/SmartTabStrip$SimpleTabColorizer;->a([I)V

    .line 152
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->q:Lcom/ogaclejapan/smarttablayout/SmartTabStrip$SimpleTabColorizer;

    invoke-virtual {v4, v3}, Lcom/ogaclejapan/smarttablayout/SmartTabStrip$SimpleTabColorizer;->b([I)V

    .line 154
    move-object/from16 v0, p0

    iput v15, v0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->a:I

    .line 155
    move-object/from16 v0, p0

    iput v14, v0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->b:I

    .line 156
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->c:I

    .line 157
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->d:I

    .line 158
    new-instance v3, Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->e:Landroid/graphics/Paint;

    .line 160
    move-object/from16 v0, p0

    iput-boolean v7, v0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->h:Z

    .line 161
    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->g:Z

    .line 162
    move-object/from16 v0, p0

    iput-boolean v6, v0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->i:Z

    .line 163
    move-object/from16 v0, p0

    iput v12, v0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->j:I

    .line 164
    new-instance v3, Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->m:Landroid/graphics/Paint;

    .line 165
    move-object/from16 v0, p0

    iput v13, v0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->l:F

    .line 166
    move-object/from16 v0, p0

    iput v9, v0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->k:I

    .line 168
    const/high16 v3, 0x3f000000    # 0.5f

    move-object/from16 v0, p0

    iput v3, v0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->p:F

    .line 169
    new-instance v3, Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->o:Landroid/graphics/Paint;

    .line 170
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->o:Landroid/graphics/Paint;

    move/from16 v0, v21

    int-to-float v4, v0

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 171
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->n:I

    .line 173
    invoke-static {v8}, Lcom/ogaclejapan/smarttablayout/SmartTabIndicationInterpolator;->a(I)Lcom/ogaclejapan/smarttablayout/SmartTabIndicationInterpolator;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->u:Lcom/ogaclejapan/smarttablayout/SmartTabIndicationInterpolator;

    .line 174
    return-void

    .line 144
    :cond_1ad
    invoke-virtual/range {p0 .. p0}, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v11}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    move-object v4, v3

    goto/16 :goto_121

    .line 148
    :cond_1b8
    invoke-virtual/range {p0 .. p0}, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    goto/16 :goto_12c
.end method

.method private static a(IB)I
    .registers 5

    .prologue
    .line 180
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    invoke-static {p1, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    return v0
.end method

.method private static a(IIF)I
    .registers 8

    .prologue
    .line 190
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    .line 191
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p2

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    .line 192
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p2

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    .line 193
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, p2

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v0, v4

    add-float/2addr v0, v3

    .line 194
    float-to-int v1, v1

    float-to-int v2, v2

    float-to-int v0, v0

    invoke-static {v1, v2, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    return v0
.end method

.method private a(Landroid/graphics/Canvas;II)V
    .registers 15

    .prologue
    .line 308
    iget v0, p0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->n:I

    if-gtz v0, :cond_5

    .line 328
    :cond_4
    return-void

    .line 312
    :cond_5
    const/4 v0, 0x0

    iget v1, p0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->p:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    int-to-float v1, p2

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 313
    invoke-virtual {p0}, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->b()Lcom/ogaclejapan/smarttablayout/SmartTabLayout$TabColorizer;

    move-result-object v7

    .line 316
    sub-int v1, p2, v0

    div-int/lit8 v8, v1, 0x2

    .line 317
    add-int v9, v8, v0

    .line 319
    invoke-static {p0}, Lcom/ogaclejapan/smarttablayout/Utils;->k(Landroid/view/View;)Z

    move-result v10

    .line 320
    const/4 v0, 0x0

    move v6, v0

    :goto_25
    add-int/lit8 v0, p3, -0x1

    if-ge v6, v0, :cond_4

    .line 321
    invoke-virtual {p0, v6}, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 322
    invoke-static {v0}, Lcom/ogaclejapan/smarttablayout/Utils;->d(Landroid/view/View;)I

    move-result v1

    .line 323
    invoke-static {v0}, Lcom/ogaclejapan/smarttablayout/Utils;->i(Landroid/view/View;)I

    move-result v0

    .line 324
    if-eqz v10, :cond_50

    sub-int v0, v1, v0

    .line 325
    :goto_39
    iget-object v1, p0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->o:Landroid/graphics/Paint;

    invoke-interface {v7, v6}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout$TabColorizer;->b(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 326
    int-to-float v1, v0

    int-to-float v2, v8

    int-to-float v3, v0

    int-to-float v4, v9

    iget-object v5, p0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->o:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 320
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_25

    .line 324
    :cond_50
    add-int/2addr v0, v1

    goto :goto_39
.end method

.method private a(Landroid/graphics/Canvas;III)V
    .registers 11

    .prologue
    .line 380
    iget v0, p0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->c:I

    if-gtz v0, :cond_5

    .line 386
    :goto_4
    return-void

    .line 384
    :cond_5
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->e:Landroid/graphics/Paint;

    iget v1, p0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->d:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 385
    int-to-float v1, p2

    iget v0, p0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->c:I

    sub-int v0, p4, v0

    int-to-float v2, v0

    int-to-float v3, p3

    int-to-float v4, p4

    iget-object v5, p0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->e:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_4
.end method

.method private a(Landroid/graphics/Canvas;IIIFI)V
    .registers 12

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 332
    iget v0, p0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->j:I

    if-gtz v0, :cond_7

    .line 368
    :goto_6
    return-void

    .line 340
    :cond_7
    iget v0, p0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->k:I

    packed-switch v0, :pswitch_data_56

    .line 353
    int-to-float v0, p4

    iget v1, p0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->j:I

    int-to-float v1, v1

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    .line 354
    div-float v1, p5, v2

    sub-float v1, v0, v1

    .line 355
    div-float v2, p5, v2

    add-float/2addr v0, v2

    .line 358
    :goto_19
    iget-object v2, p0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->m:Landroid/graphics/Paint;

    invoke-virtual {v2, p6}, Landroid/graphics/Paint;->setColor(I)V

    .line 359
    iget-object v2, p0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->f:Landroid/graphics/RectF;

    int-to-float v3, p2

    int-to-float v4, p3

    invoke-virtual {v2, v3, v1, v4, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 361
    iget v0, p0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->l:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4e

    .line 362
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->f:Landroid/graphics/RectF;

    iget v1, p0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->l:F

    iget v2, p0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->l:F

    iget-object v3, p0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->m:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_6

    .line 342
    :pswitch_38
    iget v0, p0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->j:I

    int-to-float v0, v0

    div-float/2addr v0, v2

    .line 343
    div-float v1, p5, v2

    sub-float v1, v0, v1

    .line 344
    div-float v2, p5, v2

    add-float/2addr v0, v2

    .line 345
    goto :goto_19

    .line 347
    :pswitch_44
    int-to-float v0, p4

    div-float/2addr v0, v2

    .line 348
    div-float v1, p5, v2

    sub-float v1, v0, v1

    .line 349
    div-float v2, p5, v2

    add-float/2addr v0, v2

    .line 350
    goto :goto_19

    .line 366
    :cond_4e
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->f:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->m:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_6

    .line 340
    :pswitch_data_56
    .packed-switch 0x1
        :pswitch_38
        :pswitch_44
    .end packed-switch
.end method

.method private b(Landroid/graphics/Canvas;II)V
    .registers 10

    .prologue
    .line 371
    iget v0, p0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->a:I

    if-gtz v0, :cond_5

    .line 377
    :goto_4
    return-void

    .line 375
    :cond_5
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->e:Landroid/graphics/Paint;

    iget v1, p0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->b:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 376
    int-to-float v1, p2

    const/4 v2, 0x0

    int-to-float v3, p3

    iget v0, p0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->a:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->e:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_4
.end method


# virtual methods
.method a(IF)V
    .registers 5

    .prologue
    .line 222
    iput p1, p0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->s:I

    .line 223
    iput p2, p0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->t:F

    .line 224
    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-nez v0, :cond_13

    iget v0, p0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->r:I

    iget v1, p0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->s:I

    if-eq v0, v1, :cond_13

    .line 225
    iget v0, p0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->s:I

    iput v0, p0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->r:I

    .line 227
    :cond_13
    invoke-virtual {p0}, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->invalidate()V

    .line 228
    return-void
.end method

.method varargs a([I)V
    .registers 3

    .prologue
    .line 209
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->v:Lcom/ogaclejapan/smarttablayout/SmartTabLayout$TabColorizer;

    .line 210
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->q:Lcom/ogaclejapan/smarttablayout/SmartTabStrip$SimpleTabColorizer;

    invoke-virtual {v0, p1}, Lcom/ogaclejapan/smarttablayout/SmartTabStrip$SimpleTabColorizer;->a([I)V

    .line 211
    invoke-virtual {p0}, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->invalidate()V

    .line 212
    return-void
.end method

.method a()Z
    .registers 2

    .prologue
    .line 231
    iget-boolean v0, p0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->h:Z

    return v0
.end method

.method b()Lcom/ogaclejapan/smarttablayout/SmartTabLayout$TabColorizer;
    .registers 2

    .prologue
    .line 235
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->v:Lcom/ogaclejapan/smarttablayout/SmartTabLayout$TabColorizer;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->v:Lcom/ogaclejapan/smarttablayout/SmartTabLayout$TabColorizer;

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->q:Lcom/ogaclejapan/smarttablayout/SmartTabStrip$SimpleTabColorizer;

    goto :goto_6
.end method

.method varargs b([I)V
    .registers 3

    .prologue
    .line 216
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->v:Lcom/ogaclejapan/smarttablayout/SmartTabLayout$TabColorizer;

    .line 217
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->q:Lcom/ogaclejapan/smarttablayout/SmartTabStrip$SimpleTabColorizer;

    invoke-virtual {v0, p1}, Lcom/ogaclejapan/smarttablayout/SmartTabStrip$SimpleTabColorizer;->b([I)V

    .line 218
    invoke-virtual {p0}, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->invalidate()V

    .line 219
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 19

    .prologue
    .line 240
    invoke-virtual/range {p0 .. p0}, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->getHeight()I

    move-result v6

    .line 241
    invoke-virtual/range {p0 .. p0}, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->getWidth()I

    move-result v9

    .line 242
    invoke-virtual/range {p0 .. p0}, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->getChildCount()I

    move-result v10

    .line 243
    invoke-virtual/range {p0 .. p0}, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->b()Lcom/ogaclejapan/smarttablayout/SmartTabLayout$TabColorizer;

    move-result-object v5

    .line 244
    invoke-static/range {p0 .. p0}, Lcom/ogaclejapan/smarttablayout/Utils;->k(Landroid/view/View;)Z

    move-result v8

    .line 246
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->i:Z

    if-eqz v2, :cond_2a

    .line 247
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2, v9}, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->b(Landroid/graphics/Canvas;II)V

    .line 248
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2, v9, v6}, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->a(Landroid/graphics/Canvas;III)V

    .line 252
    :cond_2a
    if-lez v10, :cond_df

    .line 253
    move-object/from16 v0, p0

    iget v2, v0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->s:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 254
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->g:Z

    invoke-static {v3, v2}, Lcom/ogaclejapan/smarttablayout/Utils;->a(Landroid/view/View;Z)I

    move-result v2

    .line 255
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->g:Z

    invoke-static {v3, v4}, Lcom/ogaclejapan/smarttablayout/Utils;->b(Landroid/view/View;Z)I

    move-result v3

    .line 258
    if-eqz v8, :cond_101

    .line 266
    :goto_48
    move-object/from16 v0, p0

    iget v4, v0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->s:I

    invoke-interface {v5, v4}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout$TabColorizer;->a(I)I

    move-result v4

    .line 267
    move-object/from16 v0, p0

    iget v7, v0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->j:I

    int-to-float v7, v7

    .line 269
    move-object/from16 v0, p0

    iget v11, v0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->t:F

    const/4 v12, 0x0

    cmpl-float v11, v11, v12

    if-lez v11, :cond_11c

    move-object/from16 v0, p0

    iget v11, v0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->s:I

    invoke-virtual/range {p0 .. p0}, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->getChildCount()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    if-ge v11, v12, :cond_11c

    .line 270
    move-object/from16 v0, p0

    iget v11, v0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->s:I

    add-int/lit8 v11, v11, 0x1

    invoke-interface {v5, v11}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout$TabColorizer;->a(I)I

    move-result v5

    .line 271
    if-eq v4, v5, :cond_7e

    .line 272
    move-object/from16 v0, p0

    iget v11, v0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->t:F

    invoke-static {v5, v4, v11}, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->a(IIF)I

    move-result v4

    .line 276
    :cond_7e
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->u:Lcom/ogaclejapan/smarttablayout/SmartTabIndicationInterpolator;

    move-object/from16 v0, p0

    iget v11, v0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->t:F

    invoke-virtual {v5, v11}, Lcom/ogaclejapan/smarttablayout/SmartTabIndicationInterpolator;->a(F)F

    move-result v5

    .line 277
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->u:Lcom/ogaclejapan/smarttablayout/SmartTabIndicationInterpolator;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->t:F

    invoke-virtual {v11, v12}, Lcom/ogaclejapan/smarttablayout/SmartTabIndicationInterpolator;->b(F)F

    move-result v11

    .line 278
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->u:Lcom/ogaclejapan/smarttablayout/SmartTabIndicationInterpolator;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->t:F

    invoke-virtual {v12, v13}, Lcom/ogaclejapan/smarttablayout/SmartTabIndicationInterpolator;->c(F)F

    move-result v12

    .line 280
    move-object/from16 v0, p0

    iget v13, v0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->s:I

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 281
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->g:Z

    invoke-static {v13, v14}, Lcom/ogaclejapan/smarttablayout/Utils;->a(Landroid/view/View;Z)I

    move-result v14

    .line 282
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->g:Z

    invoke-static {v13, v15}, Lcom/ogaclejapan/smarttablayout/Utils;->b(Landroid/view/View;Z)I

    move-result v13

    .line 283
    if-eqz v8, :cond_108

    .line 284
    int-to-float v8, v13

    mul-float/2addr v8, v11

    const/high16 v13, 0x3f800000    # 1.0f

    sub-float v11, v13, v11

    int-to-float v3, v3

    mul-float/2addr v3, v11

    add-float/2addr v3, v8

    float-to-int v3, v3

    .line 285
    int-to-float v8, v14

    mul-float/2addr v8, v5

    const/high16 v11, 0x3f800000    # 1.0f

    sub-float v5, v11, v5

    int-to-float v2, v2

    mul-float/2addr v2, v5

    add-float/2addr v2, v8

    float-to-int v2, v2

    .line 290
    :goto_d4
    mul-float/2addr v7, v12

    move v8, v4

    move v5, v2

    move v4, v3

    :goto_d8
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    .line 293
    invoke-direct/range {v2 .. v8}, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->a(Landroid/graphics/Canvas;IIIFI)V

    .line 297
    :cond_df
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->i:Z

    if-nez v2, :cond_f9

    .line 298
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2, v9}, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->b(Landroid/graphics/Canvas;II)V

    .line 299
    const/4 v2, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->getWidth()I

    move-result v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->a(Landroid/graphics/Canvas;III)V

    .line 303
    :cond_f9
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v6, v10}, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->a(Landroid/graphics/Canvas;II)V

    .line 305
    return-void

    :cond_101
    move/from16 v16, v3

    move v3, v2

    move/from16 v2, v16

    .line 263
    goto/16 :goto_48

    .line 287
    :cond_108
    int-to-float v8, v14

    mul-float/2addr v8, v5

    const/high16 v14, 0x3f800000    # 1.0f

    sub-float v5, v14, v5

    int-to-float v3, v3

    mul-float/2addr v3, v5

    add-float/2addr v3, v8

    float-to-int v3, v3

    .line 288
    int-to-float v5, v13

    mul-float/2addr v5, v11

    const/high16 v8, 0x3f800000    # 1.0f

    sub-float/2addr v8, v11

    int-to-float v2, v2

    mul-float/2addr v2, v8

    add-float/2addr v2, v5

    float-to-int v2, v2

    goto :goto_d4

    :cond_11c
    move v8, v4

    move v5, v2

    move v4, v3

    goto :goto_d8
.end method
