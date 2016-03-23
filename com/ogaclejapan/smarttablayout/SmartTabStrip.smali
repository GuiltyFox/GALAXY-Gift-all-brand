.class Lcom/ogaclejapan/smarttablayout/SmartTabStrip;
.super Landroid/widget/LinearLayout;
.source "SmartTabStrip.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ogaclejapan/smarttablayout/SmartTabStrip$SimpleTabColorizer;
    }
.end annotation


# static fields
.field private static final DEFAULT_BOTTOM_BORDER_COLOR_ALPHA:B = 0x26t

.field private static final DEFAULT_BOTTOM_BORDER_THICKNESS_DIPS:I = 0x2

.field private static final DEFAULT_DIVIDER_COLOR_ALPHA:B = 0x20t

.field private static final DEFAULT_DIVIDER_HEIGHT:F = 0.5f

.field private static final DEFAULT_DIVIDER_THICKNESS_DIPS:I = 0x1

.field private static final DEFAULT_INDICATOR_CORNER_RADIUS:F = 0.0f

.field private static final DEFAULT_INDICATOR_GRAVITY:I = 0x0

.field private static final DEFAULT_INDICATOR_IN_CENTER:Z = false

.field private static final DEFAULT_INDICATOR_IN_FRONT:Z = false

.field private static final DEFAULT_INDICATOR_WITHOUT_PADDING:Z = false

.field private static final DEFAULT_SELECTED_INDICATOR_COLOR:I = -0xcc4a1b

.field private static final DEFAULT_TOP_BORDER_COLOR_ALPHA:B = 0x26t

.field private static final DEFAULT_TOP_BORDER_THICKNESS_DIPS:I = 0x0

.field private static final GRAVITY_BOTTOM:I = 0x0

.field private static final GRAVITY_CENTER:I = 0x2

.field private static final GRAVITY_TOP:I = 0x1

.field private static final SELECTED_INDICATOR_THICKNESS_DIPS:I = 0x8


# instance fields
.field private final borderPaint:Landroid/graphics/Paint;

.field private final bottomBorderColor:I

.field private final bottomBorderThickness:I

.field private customTabColorizer:Lcom/ogaclejapan/smarttablayout/SmartTabLayout$TabColorizer;

.field private final defaultTabColorizer:Lcom/ogaclejapan/smarttablayout/SmartTabStrip$SimpleTabColorizer;

.field private final dividerHeight:F

.field private final dividerPaint:Landroid/graphics/Paint;

.field private final dividerThickness:I

.field private indicationInterpolator:Lcom/ogaclejapan/smarttablayout/SmartTabIndicationInterpolator;

.field private final indicatorAlwaysInCenter:Z

.field private final indicatorCornerRadius:F

.field private final indicatorGravity:I

.field private final indicatorInFront:Z

.field private final indicatorPaint:Landroid/graphics/Paint;

.field private final indicatorRectF:Landroid/graphics/RectF;

.field private final indicatorThickness:I

.field private final indicatorWithoutPadding:Z

.field private lastPosition:I

.field private selectedPosition:I

.field private selectionOffset:F

.field private final topBorderColor:I

.field private final topBorderThickness:I


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 32
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 81
    invoke-direct/range {p0 .. p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 61
    new-instance v26, Landroid/graphics/RectF;

    invoke-direct/range {v26 .. v26}, Landroid/graphics/RectF;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->indicatorRectF:Landroid/graphics/RectF;

    .line 82
    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->setWillNotDraw(Z)V

    .line 84
    invoke-virtual/range {p0 .. p0}, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v26

    move-object/from16 v0, v26

    iget v5, v0, Landroid/util/DisplayMetrics;->density:F

    .line 86
    .local v5, "density":F
    new-instance v20, Landroid/util/TypedValue;

    invoke-direct/range {v20 .. v20}, Landroid/util/TypedValue;-><init>()V

    .line 87
    .local v20, "outValue":Landroid/util/TypedValue;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v26

    const v27, 0x1010030

    const/16 v28, 0x1

    move-object/from16 v0, v26

    move/from16 v1, v27

    move-object/from16 v2, v20

    move/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 88
    move-object/from16 v0, v20

    iget v0, v0, Landroid/util/TypedValue;->data:I

    move/from16 v23, v0

    .line 90
    .local v23, "themeForegroundColor":I
    const/16 v19, 0x0

    .line 91
    .local v19, "indicatorWithoutPadding":Z
    const/16 v17, 0x0

    .line 92
    .local v17, "indicatorInFront":Z
    const/4 v11, 0x0

    .line 93
    .local v11, "indicatorAlwaysInCenter":Z
    const/4 v10, 0x0

    .line 94
    .local v10, "indicationInterpolatorId":I
    const/16 v16, 0x0

    .line 95
    .local v16, "indicatorGravity":I
    const v12, -0xcc4a1b

    .line 96
    .local v12, "indicatorColor":I
    const/4 v14, -0x1

    .line 97
    .local v14, "indicatorColorsId":I
    const/high16 v26, 0x41000000

    mul-float v26, v26, v5

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v18, v0

    .line 98
    .local v18, "indicatorThickness":I
    const/16 v26, 0x0

    mul-float v15, v26, v5

    .line 99
    .local v15, "indicatorCornerRadius":F
    const/16 v26, 0x26

    move/from16 v0, v23

    move/from16 v1, v26

    invoke-static {v0, v1}, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->setColorAlpha(IB)I

    move-result v21

    .line 100
    .local v21, "overlineColor":I
    const/16 v26, 0x0

    mul-float v26, v26, v5

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v22, v0

    .line 101
    .local v22, "overlineThickness":I
    const/16 v26, 0x26

    move/from16 v0, v23

    move/from16 v1, v26

    invoke-static {v0, v1}, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->setColorAlpha(IB)I

    move-result v24

    .line 102
    .local v24, "underlineColor":I
    const/high16 v26, 0x40000000

    mul-float v26, v26, v5

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v25, v0

    .line 103
    .local v25, "underlineThickness":I
    const/16 v26, 0x20

    move/from16 v0, v23

    move/from16 v1, v26

    invoke-static {v0, v1}, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->setColorAlpha(IB)I

    move-result v6

    .line 104
    .local v6, "dividerColor":I
    const/4 v8, -0x1

    .line 105
    .local v8, "dividerColorsId":I
    const/high16 v26, 0x3f800000

    mul-float v26, v26, v5

    move/from16 v0, v26

    float-to-int v9, v0

    .line 107
    .local v9, "dividerThickness":I
    sget-object v26, Lcom/ogaclejapan/smarttablayout/R$styleable;->stl_SmartTabLayout:[I

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 108
    .local v4, "a":Landroid/content/res/TypedArray;
    sget v26, Lcom/ogaclejapan/smarttablayout/R$styleable;->stl_SmartTabLayout_stl_indicatorAlwaysInCenter:I

    move/from16 v0, v26

    invoke-virtual {v4, v0, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v11

    .line 110
    sget v26, Lcom/ogaclejapan/smarttablayout/R$styleable;->stl_SmartTabLayout_stl_indicatorWithoutPadding:I

    move/from16 v0, v26

    move/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v19

    .line 112
    sget v26, Lcom/ogaclejapan/smarttablayout/R$styleable;->stl_SmartTabLayout_stl_indicatorInFront:I

    move/from16 v0, v26

    move/from16 v1, v17

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v17

    .line 114
    sget v26, Lcom/ogaclejapan/smarttablayout/R$styleable;->stl_SmartTabLayout_stl_indicatorInterpolation:I

    move/from16 v0, v26

    invoke-virtual {v4, v0, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    .line 116
    sget v26, Lcom/ogaclejapan/smarttablayout/R$styleable;->stl_SmartTabLayout_stl_indicatorGravity:I

    move/from16 v0, v26

    move/from16 v1, v16

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v16

    .line 118
    sget v26, Lcom/ogaclejapan/smarttablayout/R$styleable;->stl_SmartTabLayout_stl_indicatorColor:I

    move/from16 v0, v26

    invoke-virtual {v4, v0, v12}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v12

    .line 120
    sget v26, Lcom/ogaclejapan/smarttablayout/R$styleable;->stl_SmartTabLayout_stl_indicatorColors:I

    move/from16 v0, v26

    invoke-virtual {v4, v0, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v14

    .line 122
    sget v26, Lcom/ogaclejapan/smarttablayout/R$styleable;->stl_SmartTabLayout_stl_indicatorThickness:I

    move/from16 v0, v26

    move/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v18

    .line 124
    sget v26, Lcom/ogaclejapan/smarttablayout/R$styleable;->stl_SmartTabLayout_stl_indicatorCornerRadius:I

    move/from16 v0, v26

    invoke-virtual {v4, v0, v15}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v15

    .line 126
    sget v26, Lcom/ogaclejapan/smarttablayout/R$styleable;->stl_SmartTabLayout_stl_overlineColor:I

    move/from16 v0, v26

    move/from16 v1, v21

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v21

    .line 128
    sget v26, Lcom/ogaclejapan/smarttablayout/R$styleable;->stl_SmartTabLayout_stl_overlineThickness:I

    move/from16 v0, v26

    move/from16 v1, v22

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v22

    .line 130
    sget v26, Lcom/ogaclejapan/smarttablayout/R$styleable;->stl_SmartTabLayout_stl_underlineColor:I

    move/from16 v0, v26

    move/from16 v1, v24

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v24

    .line 132
    sget v26, Lcom/ogaclejapan/smarttablayout/R$styleable;->stl_SmartTabLayout_stl_underlineThickness:I

    move/from16 v0, v26

    move/from16 v1, v25

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v25

    .line 134
    sget v26, Lcom/ogaclejapan/smarttablayout/R$styleable;->stl_SmartTabLayout_stl_dividerColor:I

    move/from16 v0, v26

    invoke-virtual {v4, v0, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    .line 136
    sget v26, Lcom/ogaclejapan/smarttablayout/R$styleable;->stl_SmartTabLayout_stl_dividerColors:I

    move/from16 v0, v26

    invoke-virtual {v4, v0, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    .line 138
    sget v26, Lcom/ogaclejapan/smarttablayout/R$styleable;->stl_SmartTabLayout_stl_dividerThickness:I

    move/from16 v0, v26

    invoke-virtual {v4, v0, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v9

    .line 140
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 142
    const/16 v26, -0x1

    move/from16 v0, v26

    if-ne v14, v0, :cond_1f7

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v13, v0, [I

    const/16 v26, 0x0

    aput v12, v13, v26

    .line 146
    .local v13, "indicatorColors":[I
    :goto_142
    const/16 v26, -0x1

    move/from16 v0, v26

    if-ne v8, v0, :cond_203

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v7, v0, [I

    const/16 v26, 0x0

    aput v6, v7, v26

    .line 150
    .local v7, "dividerColors":[I
    :goto_152
    new-instance v26, Lcom/ogaclejapan/smarttablayout/SmartTabStrip$SimpleTabColorizer;

    const/16 v27, 0x0

    invoke-direct/range {v26 .. v27}, Lcom/ogaclejapan/smarttablayout/SmartTabStrip$SimpleTabColorizer;-><init>(Lcom/ogaclejapan/smarttablayout/SmartTabStrip$1;)V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->defaultTabColorizer:Lcom/ogaclejapan/smarttablayout/SmartTabStrip$SimpleTabColorizer;

    .line 151
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->defaultTabColorizer:Lcom/ogaclejapan/smarttablayout/SmartTabStrip$SimpleTabColorizer;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v13}, Lcom/ogaclejapan/smarttablayout/SmartTabStrip$SimpleTabColorizer;->setIndicatorColors([I)V

    .line 152
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->defaultTabColorizer:Lcom/ogaclejapan/smarttablayout/SmartTabStrip$SimpleTabColorizer;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v7}, Lcom/ogaclejapan/smarttablayout/SmartTabStrip$SimpleTabColorizer;->setDividerColors([I)V

    .line 154
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->topBorderThickness:I

    .line 155
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->topBorderColor:I

    .line 156
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->bottomBorderThickness:I

    .line 157
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->bottomBorderColor:I

    .line 158
    new-instance v26, Landroid/graphics/Paint;

    const/16 v27, 0x1

    invoke-direct/range {v26 .. v27}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->borderPaint:Landroid/graphics/Paint;

    .line 160
    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->indicatorAlwaysInCenter:Z

    .line 161
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->indicatorWithoutPadding:Z

    .line 162
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->indicatorInFront:Z

    .line 163
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->indicatorThickness:I

    .line 164
    new-instance v26, Landroid/graphics/Paint;

    const/16 v27, 0x1

    invoke-direct/range {v26 .. v27}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->indicatorPaint:Landroid/graphics/Paint;

    .line 165
    move-object/from16 v0, p0

    iput v15, v0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->indicatorCornerRadius:F

    .line 166
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->indicatorGravity:I

    .line 168
    const/high16 v26, 0x3f000000

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->dividerHeight:F

    .line 169
    new-instance v26, Landroid/graphics/Paint;

    const/16 v27, 0x1

    invoke-direct/range {v26 .. v27}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->dividerPaint:Landroid/graphics/Paint;

    .line 170
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->dividerPaint:Landroid/graphics/Paint;

    move-object/from16 v26, v0

    int-to-float v0, v9

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 171
    move-object/from16 v0, p0

    iput v9, v0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->dividerThickness:I

    .line 173
    invoke-static {v10}, Lcom/ogaclejapan/smarttablayout/SmartTabIndicationInterpolator;->of(I)Lcom/ogaclejapan/smarttablayout/SmartTabIndicationInterpolator;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->indicationInterpolator:Lcom/ogaclejapan/smarttablayout/SmartTabIndicationInterpolator;

    .line 174
    return-void

    .line 144
    .end local v7    # "dividerColors":[I
    .end local v13    # "indicatorColors":[I
    :cond_1f7
    invoke-virtual/range {p0 .. p0}, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v13

    goto/16 :goto_142

    .line 148
    .restart local v13    # "indicatorColors":[I
    :cond_203
    invoke-virtual/range {p0 .. p0}, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v7

    goto/16 :goto_152
.end method

.method private static blendColors(IIF)I
    .registers 10
    .param p0, "color1"    # I
    .param p1, "color2"    # I
    .param p2, "ratio"    # F

    .prologue
    .line 190
    const/high16 v4, 0x3f800000

    sub-float v2, v4, p2

    .line 191
    .local v2, "inverseRation":F
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, p2

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v2

    add-float v3, v4, v5

    .line 192
    .local v3, "r":F
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, p2

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v2

    add-float v1, v4, v5

    .line 193
    .local v1, "g":F
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, p2

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v2

    add-float v0, v4, v5

    .line 194
    .local v0, "b":F
    float-to-int v4, v3

    float-to-int v5, v1

    float-to-int v6, v0

    invoke-static {v4, v5, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    return v4
.end method

.method private drawIndicator(Landroid/graphics/Canvas;IIIFI)V
    .registers 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "left"    # I
    .param p3, "right"    # I
    .param p4, "height"    # I
    .param p5, "thickness"    # F
    .param p6, "color"    # I

    .prologue
    const/high16 v5, 0x40000000

    .line 332
    iget v3, p0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->indicatorThickness:I

    if-gtz v3, :cond_7

    .line 368
    :goto_6
    return-void

    .line 340
    :cond_7
    iget v3, p0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->indicatorGravity:I

    packed-switch v3, :pswitch_data_5c

    .line 353
    int-to-float v3, p4

    iget v4, p0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->indicatorThickness:I

    int-to-float v4, v4

    div-float/2addr v4, v5

    sub-float v1, v3, v4

    .line 354
    .local v1, "center":F
    div-float v3, p5, v5

    sub-float v2, v1, v3

    .line 355
    .local v2, "top":F
    div-float v3, p5, v5

    add-float v0, v1, v3

    .line 358
    .local v0, "bottom":F
    :goto_1b
    iget-object v3, p0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->indicatorPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, p6}, Landroid/graphics/Paint;->setColor(I)V

    .line 359
    iget-object v3, p0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->indicatorRectF:Landroid/graphics/RectF;

    int-to-float v4, p2

    int-to-float v5, p3

    invoke-virtual {v3, v4, v2, v5, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 361
    iget v3, p0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->indicatorCornerRadius:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_54

    .line 362
    iget-object v3, p0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->indicatorRectF:Landroid/graphics/RectF;

    iget v4, p0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->indicatorCornerRadius:F

    iget v5, p0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->indicatorCornerRadius:F

    iget-object v6, p0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->indicatorPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_6

    .line 342
    .end local v0    # "bottom":F
    .end local v1    # "center":F
    .end local v2    # "top":F
    :pswitch_3a
    iget v3, p0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->indicatorThickness:I

    int-to-float v3, v3

    div-float v1, v3, v5

    .line 343
    .restart local v1    # "center":F
    div-float v3, p5, v5

    sub-float v2, v1, v3

    .line 344
    .restart local v2    # "top":F
    div-float v3, p5, v5

    add-float v0, v1, v3

    .line 345
    .restart local v0    # "bottom":F
    goto :goto_1b

    .line 347
    .end local v0    # "bottom":F
    .end local v1    # "center":F
    .end local v2    # "top":F
    :pswitch_48
    int-to-float v3, p4

    div-float v1, v3, v5

    .line 348
    .restart local v1    # "center":F
    div-float v3, p5, v5

    sub-float v2, v1, v3

    .line 349
    .restart local v2    # "top":F
    div-float v3, p5, v5

    add-float v0, v1, v3

    .line 350
    .restart local v0    # "bottom":F
    goto :goto_1b

    .line 366
    :cond_54
    iget-object v3, p0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->indicatorRectF:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->indicatorPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_6

    .line 340
    :pswitch_data_5c
    .packed-switch 0x1
        :pswitch_3a
        :pswitch_48
    .end packed-switch
.end method

.method private drawOverline(Landroid/graphics/Canvas;II)V
    .registers 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "left"    # I
    .param p3, "right"    # I

    .prologue
    .line 371
    iget v0, p0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->topBorderThickness:I

    if-gtz v0, :cond_5

    .line 377
    :goto_4
    return-void

    .line 375
    :cond_5
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->borderPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->topBorderColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 376
    int-to-float v1, p2

    const/4 v2, 0x0

    int-to-float v3, p3

    iget v0, p0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->topBorderThickness:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->borderPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_4
.end method

.method private drawSeparator(Landroid/graphics/Canvas;II)V
    .registers 21
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "height"    # I
    .param p3, "tabCount"    # I

    .prologue
    .line 308
    move-object/from16 v0, p0

    iget v1, v0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->dividerThickness:I

    if-gtz v1, :cond_7

    .line 328
    :cond_6
    return-void

    .line 312
    :cond_7
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->dividerHeight:F

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    const/high16 v2, 0x3f800000

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    move/from16 v0, p2

    int-to-float v2, v0

    mul-float/2addr v1, v2

    float-to-int v8, v1

    .line 313
    .local v8, "dividerHeightPx":I
    invoke-virtual/range {p0 .. p0}, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->getTabColorizer()Lcom/ogaclejapan/smarttablayout/SmartTabLayout$TabColorizer;

    move-result-object v16

    .line 316
    .local v16, "tabColorizer":Lcom/ogaclejapan/smarttablayout/SmartTabLayout$TabColorizer;
    sub-int v1, p2, v8

    div-int/lit8 v14, v1, 0x2

    .line 317
    .local v14, "separatorTop":I
    add-int v13, v14, v8

    .line 319
    .local v13, "separatorBottom":I
    invoke-static/range {p0 .. p0}, Lcom/ogaclejapan/smarttablayout/Utils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v12

    .line 320
    .local v12, "isLayoutRtl":Z
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_2a
    add-int/lit8 v1, p3, -0x1

    if-ge v11, v1, :cond_6

    .line 321
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 322
    .local v7, "child":Landroid/view/View;
    invoke-static {v7}, Lcom/ogaclejapan/smarttablayout/Utils;->getEnd(Landroid/view/View;)I

    move-result v9

    .line 323
    .local v9, "end":I
    invoke-static {v7}, Lcom/ogaclejapan/smarttablayout/Utils;->getMarginEnd(Landroid/view/View;)I

    move-result v10

    .line 324
    .local v10, "endMargin":I
    if-eqz v12, :cond_5d

    sub-int v15, v9, v10

    .line 325
    .local v15, "separatorX":I
    :goto_40
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->dividerPaint:Landroid/graphics/Paint;

    move-object/from16 v0, v16

    invoke-interface {v0, v11}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout$TabColorizer;->getDividerColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 326
    int-to-float v2, v15

    int-to-float v3, v14

    int-to-float v4, v15

    int-to-float v5, v13

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->dividerPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 320
    add-int/lit8 v11, v11, 0x1

    goto :goto_2a

    .line 324
    .end local v15    # "separatorX":I
    :cond_5d
    add-int v15, v9, v10

    goto :goto_40
.end method

.method private drawUnderline(Landroid/graphics/Canvas;III)V
    .registers 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "left"    # I
    .param p3, "right"    # I
    .param p4, "height"    # I

    .prologue
    .line 380
    iget v0, p0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->bottomBorderThickness:I

    if-gtz v0, :cond_5

    .line 386
    :goto_4
    return-void

    .line 384
    :cond_5
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->borderPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->bottomBorderColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 385
    int-to-float v1, p2

    iget v0, p0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->bottomBorderThickness:I

    sub-int v0, p4, v0

    int-to-float v2, v0

    int-to-float v3, p3

    int-to-float v4, p4

    iget-object v5, p0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->borderPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_4
.end method

.method private static setColorAlpha(IB)I
    .registers 5
    .param p0, "color"    # I
    .param p1, "alpha"    # B

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


# virtual methods
.method getTabColorizer()Lcom/ogaclejapan/smarttablayout/SmartTabLayout$TabColorizer;
    .registers 2

    .prologue
    .line 235
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->customTabColorizer:Lcom/ogaclejapan/smarttablayout/SmartTabLayout$TabColorizer;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->customTabColorizer:Lcom/ogaclejapan/smarttablayout/SmartTabLayout$TabColorizer;

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->defaultTabColorizer:Lcom/ogaclejapan/smarttablayout/SmartTabStrip$SimpleTabColorizer;

    goto :goto_6
.end method

.method isIndicatorAlwaysInCenter()Z
    .registers 2

    .prologue
    .line 231
    iget-boolean v0, p0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->indicatorAlwaysInCenter:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 27
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 240
    invoke-virtual/range {p0 .. p0}, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->getHeight()I

    move-result v7

    .line 241
    .local v7, "height":I
    invoke-virtual/range {p0 .. p0}, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->getWidth()I

    move-result v23

    .line 242
    .local v23, "width":I
    invoke-virtual/range {p0 .. p0}, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->getChildCount()I

    move-result v21

    .line 243
    .local v21, "tabCount":I
    invoke-virtual/range {p0 .. p0}, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->getTabColorizer()Lcom/ogaclejapan/smarttablayout/SmartTabLayout$TabColorizer;

    move-result-object v20

    .line 244
    .local v20, "tabColorizer":Lcom/ogaclejapan/smarttablayout/SmartTabLayout$TabColorizer;
    invoke-static/range {p0 .. p0}, Lcom/ogaclejapan/smarttablayout/Utils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v11

    .line 246
    .local v11, "isLayoutRtl":Z
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->indicatorInFront:Z

    if-eqz v3, :cond_2e

    .line 247
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v23

    invoke-direct {v0, v1, v3, v2}, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->drawOverline(Landroid/graphics/Canvas;II)V

    .line 248
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v23

    invoke-direct {v0, v1, v3, v2, v7}, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->drawUnderline(Landroid/graphics/Canvas;III)V

    .line 252
    :cond_2e
    if-lez v21, :cond_f3

    .line 253
    move-object/from16 v0, p0

    iget v3, v0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->selectedPosition:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    .line 254
    .local v18, "selectedTab":Landroid/view/View;
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->indicatorWithoutPadding:Z

    move-object/from16 v0, v18

    invoke-static {v0, v3}, Lcom/ogaclejapan/smarttablayout/Utils;->getStart(Landroid/view/View;Z)I

    move-result v17

    .line 255
    .local v17, "selectedStart":I
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->indicatorWithoutPadding:Z

    move-object/from16 v0, v18

    invoke-static {v0, v3}, Lcom/ogaclejapan/smarttablayout/Utils;->getEnd(Landroid/view/View;Z)I

    move-result v16

    .line 258
    .local v16, "selectedEnd":I
    if-eqz v11, :cond_119

    .line 259
    move/from16 v5, v16

    .line 260
    .local v5, "left":I
    move/from16 v6, v17

    .line 266
    .local v6, "right":I
    :goto_54
    move-object/from16 v0, p0

    iget v3, v0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->selectedPosition:I

    move-object/from16 v0, v20

    invoke-interface {v0, v3}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout$TabColorizer;->getIndicatorColor(I)I

    move-result v9

    .line 267
    .local v9, "color":I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->indicatorThickness:I

    int-to-float v8, v3

    .line 269
    .local v8, "thickness":F
    move-object/from16 v0, p0

    iget v3, v0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->selectionOffset:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_ec

    move-object/from16 v0, p0

    iget v3, v0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->selectedPosition:I

    invoke-virtual/range {p0 .. p0}, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->getChildCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_ec

    .line 270
    move-object/from16 v0, p0

    iget v3, v0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->selectedPosition:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, v20

    invoke-interface {v0, v3}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout$TabColorizer;->getIndicatorColor(I)I

    move-result v12

    .line 271
    .local v12, "nextColor":I
    if-eq v9, v12, :cond_8e

    .line 272
    move-object/from16 v0, p0

    iget v3, v0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->selectionOffset:F

    invoke-static {v12, v9, v3}, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->blendColors(IIF)I

    move-result v9

    .line 276
    :cond_8e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->indicationInterpolator:Lcom/ogaclejapan/smarttablayout/SmartTabIndicationInterpolator;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->selectionOffset:F

    invoke-virtual {v3, v4}, Lcom/ogaclejapan/smarttablayout/SmartTabIndicationInterpolator;->getLeftEdge(F)F

    move-result v19

    .line 277
    .local v19, "startOffset":F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->indicationInterpolator:Lcom/ogaclejapan/smarttablayout/SmartTabIndicationInterpolator;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->selectionOffset:F

    invoke-virtual {v3, v4}, Lcom/ogaclejapan/smarttablayout/SmartTabIndicationInterpolator;->getRightEdge(F)F

    move-result v10

    .line 278
    .local v10, "endOffset":F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->indicationInterpolator:Lcom/ogaclejapan/smarttablayout/SmartTabIndicationInterpolator;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->selectionOffset:F

    invoke-virtual {v3, v4}, Lcom/ogaclejapan/smarttablayout/SmartTabIndicationInterpolator;->getThickness(F)F

    move-result v22

    .line 280
    .local v22, "thicknessOffset":F
    move-object/from16 v0, p0

    iget v3, v0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->selectedPosition:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    .line 281
    .local v15, "nextTab":Landroid/view/View;
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->indicatorWithoutPadding:Z

    invoke-static {v15, v3}, Lcom/ogaclejapan/smarttablayout/Utils;->getStart(Landroid/view/View;Z)I

    move-result v14

    .line 282
    .local v14, "nextStart":I
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->indicatorWithoutPadding:Z

    invoke-static {v15, v3}, Lcom/ogaclejapan/smarttablayout/Utils;->getEnd(Landroid/view/View;Z)I

    move-result v13

    .line 283
    .local v13, "nextEnd":I
    if-eqz v11, :cond_11f

    .line 284
    int-to-float v3, v13

    mul-float/2addr v3, v10

    const/high16 v4, 0x3f800000

    sub-float/2addr v4, v10

    int-to-float v0, v5

    move/from16 v24, v0

    mul-float v4, v4, v24

    add-float/2addr v3, v4

    float-to-int v5, v3

    .line 285
    int-to-float v3, v14

    mul-float v3, v3, v19

    const/high16 v4, 0x3f800000

    sub-float v4, v4, v19

    int-to-float v0, v6

    move/from16 v24, v0

    mul-float v4, v4, v24

    add-float/2addr v3, v4

    float-to-int v6, v3

    .line 290
    :goto_ea
    mul-float v8, v8, v22

    .end local v10    # "endOffset":F
    .end local v12    # "nextColor":I
    .end local v13    # "nextEnd":I
    .end local v14    # "nextStart":I
    .end local v15    # "nextTab":Landroid/view/View;
    .end local v19    # "startOffset":F
    .end local v22    # "thicknessOffset":F
    :cond_ec
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    .line 293
    invoke-direct/range {v3 .. v9}, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->drawIndicator(Landroid/graphics/Canvas;IIIFI)V

    .line 297
    .end local v5    # "left":I
    .end local v6    # "right":I
    .end local v8    # "thickness":F
    .end local v9    # "color":I
    .end local v16    # "selectedEnd":I
    .end local v17    # "selectedStart":I
    .end local v18    # "selectedTab":Landroid/view/View;
    :cond_f3
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->indicatorInFront:Z

    if-nez v3, :cond_10f

    .line 298
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v23

    invoke-direct {v0, v1, v3, v2}, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->drawOverline(Landroid/graphics/Canvas;II)V

    .line 299
    const/4 v3, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->getWidth()I

    move-result v4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v4, v7}, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->drawUnderline(Landroid/graphics/Canvas;III)V

    .line 303
    :cond_10f
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v21

    invoke-direct {v0, v1, v7, v2}, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->drawSeparator(Landroid/graphics/Canvas;II)V

    .line 305
    return-void

    .line 262
    .restart local v16    # "selectedEnd":I
    .restart local v17    # "selectedStart":I
    .restart local v18    # "selectedTab":Landroid/view/View;
    :cond_119
    move/from16 v5, v17

    .line 263
    .restart local v5    # "left":I
    move/from16 v6, v16

    .restart local v6    # "right":I
    goto/16 :goto_54

    .line 287
    .restart local v8    # "thickness":F
    .restart local v9    # "color":I
    .restart local v10    # "endOffset":F
    .restart local v12    # "nextColor":I
    .restart local v13    # "nextEnd":I
    .restart local v14    # "nextStart":I
    .restart local v15    # "nextTab":Landroid/view/View;
    .restart local v19    # "startOffset":F
    .restart local v22    # "thicknessOffset":F
    :cond_11f
    int-to-float v3, v14

    mul-float v3, v3, v19

    const/high16 v4, 0x3f800000

    sub-float v4, v4, v19

    int-to-float v0, v5

    move/from16 v24, v0

    mul-float v4, v4, v24

    add-float/2addr v3, v4

    float-to-int v5, v3

    .line 288
    int-to-float v3, v13

    mul-float/2addr v3, v10

    const/high16 v4, 0x3f800000

    sub-float/2addr v4, v10

    int-to-float v0, v6

    move/from16 v24, v0

    mul-float v4, v4, v24

    add-float/2addr v3, v4

    float-to-int v6, v3

    goto :goto_ea
.end method

.method onViewPagerPageChanged(IF)V
    .registers 5
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F

    .prologue
    .line 222
    iput p1, p0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->selectedPosition:I

    .line 223
    iput p2, p0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->selectionOffset:F

    .line 224
    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-nez v0, :cond_13

    iget v0, p0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->lastPosition:I

    iget v1, p0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->selectedPosition:I

    if-eq v0, v1, :cond_13

    .line 225
    iget v0, p0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->selectedPosition:I

    iput v0, p0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->lastPosition:I

    .line 227
    :cond_13
    invoke-virtual {p0}, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->invalidate()V

    .line 228
    return-void
.end method

.method setCustomTabColorizer(Lcom/ogaclejapan/smarttablayout/SmartTabLayout$TabColorizer;)V
    .registers 2
    .param p1, "customTabColorizer"    # Lcom/ogaclejapan/smarttablayout/SmartTabLayout$TabColorizer;

    .prologue
    .line 203
    iput-object p1, p0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->customTabColorizer:Lcom/ogaclejapan/smarttablayout/SmartTabLayout$TabColorizer;

    .line 204
    invoke-virtual {p0}, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->invalidate()V

    .line 205
    return-void
.end method

.method varargs setDividerColors([I)V
    .registers 3
    .param p1, "colors"    # [I

    .prologue
    .line 216
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->customTabColorizer:Lcom/ogaclejapan/smarttablayout/SmartTabLayout$TabColorizer;

    .line 217
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->defaultTabColorizer:Lcom/ogaclejapan/smarttablayout/SmartTabStrip$SimpleTabColorizer;

    invoke-virtual {v0, p1}, Lcom/ogaclejapan/smarttablayout/SmartTabStrip$SimpleTabColorizer;->setDividerColors([I)V

    .line 218
    invoke-virtual {p0}, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->invalidate()V

    .line 219
    return-void
.end method

.method setIndicationInterpolator(Lcom/ogaclejapan/smarttablayout/SmartTabIndicationInterpolator;)V
    .registers 2
    .param p1, "interpolator"    # Lcom/ogaclejapan/smarttablayout/SmartTabIndicationInterpolator;

    .prologue
    .line 198
    iput-object p1, p0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->indicationInterpolator:Lcom/ogaclejapan/smarttablayout/SmartTabIndicationInterpolator;

    .line 199
    invoke-virtual {p0}, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->invalidate()V

    .line 200
    return-void
.end method

.method varargs setSelectedIndicatorColors([I)V
    .registers 3
    .param p1, "colors"    # [I

    .prologue
    .line 209
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->customTabColorizer:Lcom/ogaclejapan/smarttablayout/SmartTabLayout$TabColorizer;

    .line 210
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->defaultTabColorizer:Lcom/ogaclejapan/smarttablayout/SmartTabStrip$SimpleTabColorizer;

    invoke-virtual {v0, p1}, Lcom/ogaclejapan/smarttablayout/SmartTabStrip$SimpleTabColorizer;->setIndicatorColors([I)V

    .line 211
    invoke-virtual {p0}, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->invalidate()V

    .line 212
    return-void
.end method
