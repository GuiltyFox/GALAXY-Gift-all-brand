.class public Lcom/samsung/privilege/control/toggle/ToggleButton;
.super Landroid/view/View;
.source "ToggleButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/privilege/control/toggle/ToggleButton$OnToggleChanged;
    }
.end annotation


# instance fields
.field private borderColor:I

.field private borderWidth:I

.field private centerY:F

.field private defaultAnimate:Z

.field private endX:F

.field private listener:Lcom/samsung/privilege/control/toggle/ToggleButton$OnToggleChanged;

.field private offBorderColor:I

.field private offColor:I

.field private offLineWidth:F

.field private onColor:I

.field private paint:Landroid/graphics/Paint;

.field private radius:F

.field private rect:Landroid/graphics/RectF;

.field private spotColor:I

.field private spotMaxX:F

.field private spotMinX:F

.field private spotSize:I

.field private spotX:F

.field private spring:Lcom/facebook/rebound/Spring;

.field springListener:Lcom/facebook/rebound/SimpleSpringListener;

.field private springSystem:Lcom/facebook/rebound/SpringSystem;

.field private startX:F

.field private toggleOn:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 72
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 33
    const-string/jumbo v0, "#4ebb7f"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->onColor:I

    .line 35
    const-string/jumbo v0, "#dadbda"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->offBorderColor:I

    .line 37
    const-string/jumbo v0, "#ffffff"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->offColor:I

    .line 39
    const-string/jumbo v0, "#ffffff"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->spotColor:I

    .line 41
    iget v0, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->offBorderColor:I

    iput v0, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->borderColor:I

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->toggleOn:Z

    .line 47
    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->borderWidth:I

    .line 61
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->rect:Landroid/graphics/RectF;

    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->defaultAnimate:Z

    .line 232
    new-instance v0, Lcom/samsung/privilege/control/toggle/ToggleButton$2;

    invoke-direct {v0, p0}, Lcom/samsung/privilege/control/toggle/ToggleButton$2;-><init>(Lcom/samsung/privilege/control/toggle/ToggleButton;)V

    iput-object v0, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->springListener:Lcom/facebook/rebound/SimpleSpringListener;

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 79
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    const-string/jumbo v0, "#4ebb7f"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->onColor:I

    .line 35
    const-string/jumbo v0, "#dadbda"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->offBorderColor:I

    .line 37
    const-string/jumbo v0, "#ffffff"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->offColor:I

    .line 39
    const-string/jumbo v0, "#ffffff"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->spotColor:I

    .line 41
    iget v0, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->offBorderColor:I

    iput v0, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->borderColor:I

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->toggleOn:Z

    .line 47
    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->borderWidth:I

    .line 61
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->rect:Landroid/graphics/RectF;

    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->defaultAnimate:Z

    .line 232
    new-instance v0, Lcom/samsung/privilege/control/toggle/ToggleButton$2;

    invoke-direct {v0, p0}, Lcom/samsung/privilege/control/toggle/ToggleButton$2;-><init>(Lcom/samsung/privilege/control/toggle/ToggleButton;)V

    iput-object v0, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->springListener:Lcom/facebook/rebound/SimpleSpringListener;

    .line 80
    invoke-virtual {p0, p2}, Lcom/samsung/privilege/control/toggle/ToggleButton;->setup(Landroid/util/AttributeSet;)V

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 75
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    const-string/jumbo v0, "#4ebb7f"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->onColor:I

    .line 35
    const-string/jumbo v0, "#dadbda"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->offBorderColor:I

    .line 37
    const-string/jumbo v0, "#ffffff"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->offColor:I

    .line 39
    const-string/jumbo v0, "#ffffff"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->spotColor:I

    .line 41
    iget v0, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->offBorderColor:I

    iput v0, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->borderColor:I

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->toggleOn:Z

    .line 47
    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->borderWidth:I

    .line 61
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->rect:Landroid/graphics/RectF;

    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->defaultAnimate:Z

    .line 232
    new-instance v0, Lcom/samsung/privilege/control/toggle/ToggleButton$2;

    invoke-direct {v0, p0}, Lcom/samsung/privilege/control/toggle/ToggleButton$2;-><init>(Lcom/samsung/privilege/control/toggle/ToggleButton;)V

    iput-object v0, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->springListener:Lcom/facebook/rebound/SimpleSpringListener;

    .line 76
    invoke-virtual {p0, p2}, Lcom/samsung/privilege/control/toggle/ToggleButton;->setup(Landroid/util/AttributeSet;)V

    .line 77
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/privilege/control/toggle/ToggleButton;)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/control/toggle/ToggleButton;

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->defaultAnimate:Z

    return v0
.end method

.method static synthetic access$100(Lcom/samsung/privilege/control/toggle/ToggleButton;D)V
    .registers 4
    .param p0, "x0"    # Lcom/samsung/privilege/control/toggle/ToggleButton;
    .param p1, "x1"    # D

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/samsung/privilege/control/toggle/ToggleButton;->calculateEffect(D)V

    return-void
.end method

.method private calculateEffect(D)V
    .registers 28
    .param p1, "value"    # D

    .prologue
    .line 275
    const-wide/16 v6, 0x0

    const-wide/high16 v8, 0x3ff0000000000000L

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/privilege/control/toggle/ToggleButton;->spotMinX:F

    float-to-double v10, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/privilege/control/toggle/ToggleButton;->spotMaxX:F

    float-to-double v12, v4

    move-wide/from16 v4, p1

    invoke-static/range {v4 .. v13}, Lcom/facebook/rebound/SpringUtil;->mapValueFromRangeToRange(DDDDD)D

    move-result-wide v4

    double-to-float v0, v4

    move/from16 v18, v0

    .line 276
    .local v18, "mapToggleX":F
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/privilege/control/toggle/ToggleButton;->spotX:F

    .line 278
    const-wide/high16 v4, 0x3ff0000000000000L

    sub-double v4, v4, p1

    const-wide/16 v6, 0x0

    const-wide/high16 v8, 0x3ff0000000000000L

    const-wide/high16 v10, 0x4024000000000000L

    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/privilege/control/toggle/ToggleButton;->spotSize:I

    int-to-double v12, v12

    invoke-static/range {v4 .. v13}, Lcom/facebook/rebound/SpringUtil;->mapValueFromRangeToRange(DDDDD)D

    move-result-wide v4

    double-to-float v0, v4

    move/from16 v17, v0

    .line 280
    .local v17, "mapOffLineWidth":F
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/privilege/control/toggle/ToggleButton;->offLineWidth:F

    .line 282
    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/privilege/control/toggle/ToggleButton;->onColor:I

    invoke-static {v4}, Landroid/graphics/Color;->blue(I)I

    move-result v14

    .line 283
    .local v14, "fb":I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/privilege/control/toggle/ToggleButton;->onColor:I

    invoke-static {v4}, Landroid/graphics/Color;->red(I)I

    move-result v16

    .line 284
    .local v16, "fr":I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/privilege/control/toggle/ToggleButton;->onColor:I

    invoke-static {v4}, Landroid/graphics/Color;->green(I)I

    move-result v15

    .line 286
    .local v15, "fg":I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/privilege/control/toggle/ToggleButton;->offBorderColor:I

    invoke-static {v4}, Landroid/graphics/Color;->blue(I)I

    move-result v22

    .line 287
    .local v22, "tb":I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/privilege/control/toggle/ToggleButton;->offBorderColor:I

    invoke-static {v4}, Landroid/graphics/Color;->red(I)I

    move-result v24

    .line 288
    .local v24, "tr":I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/privilege/control/toggle/ToggleButton;->offBorderColor:I

    invoke-static {v4}, Landroid/graphics/Color;->green(I)I

    move-result v23

    .line 290
    .local v23, "tg":I
    const-wide/high16 v4, 0x3ff0000000000000L

    sub-double v4, v4, p1

    const-wide/16 v6, 0x0

    const-wide/high16 v8, 0x3ff0000000000000L

    int-to-double v10, v14

    move/from16 v0, v22

    int-to-double v12, v0

    invoke-static/range {v4 .. v13}, Lcom/facebook/rebound/SpringUtil;->mapValueFromRangeToRange(DDDDD)D

    move-result-wide v4

    double-to-int v0, v4

    move/from16 v19, v0

    .line 291
    .local v19, "sb":I
    const-wide/high16 v4, 0x3ff0000000000000L

    sub-double v4, v4, p1

    const-wide/16 v6, 0x0

    const-wide/high16 v8, 0x3ff0000000000000L

    move/from16 v0, v16

    int-to-double v10, v0

    move/from16 v0, v24

    int-to-double v12, v0

    invoke-static/range {v4 .. v13}, Lcom/facebook/rebound/SpringUtil;->mapValueFromRangeToRange(DDDDD)D

    move-result-wide v4

    double-to-int v0, v4

    move/from16 v21, v0

    .line 292
    .local v21, "sr":I
    const-wide/high16 v4, 0x3ff0000000000000L

    sub-double v4, v4, p1

    const-wide/16 v6, 0x0

    const-wide/high16 v8, 0x3ff0000000000000L

    int-to-double v10, v15

    move/from16 v0, v23

    int-to-double v12, v0

    invoke-static/range {v4 .. v13}, Lcom/facebook/rebound/SpringUtil;->mapValueFromRangeToRange(DDDDD)D

    move-result-wide v4

    double-to-int v0, v4

    move/from16 v20, v0

    .line 294
    .local v20, "sg":I
    const/4 v4, 0x0

    const/16 v5, 0xff

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1, v4, v5}, Lcom/samsung/privilege/control/toggle/ToggleButton;->clamp(III)I

    move-result v19

    .line 295
    const/4 v4, 0x0

    const/16 v5, 0xff

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1, v4, v5}, Lcom/samsung/privilege/control/toggle/ToggleButton;->clamp(III)I

    move-result v21

    .line 296
    const/4 v4, 0x0

    const/16 v5, 0xff

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1, v4, v5}, Lcom/samsung/privilege/control/toggle/ToggleButton;->clamp(III)I

    move-result v20

    .line 298
    move/from16 v0, v21

    move/from16 v1, v20

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/samsung/privilege/control/toggle/ToggleButton;->borderColor:I

    .line 300
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/control/toggle/ToggleButton;->postInvalidate()V

    .line 301
    return-void
.end method

.method private clamp(III)I
    .registers 5
    .param p1, "value"    # I
    .param p2, "low"    # I
    .param p3, "high"    # I

    .prologue
    .line 241
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method private takeEffect(Z)V
    .registers 9
    .param p1, "animate"    # Z

    .prologue
    const-wide/high16 v0, 0x3ff0000000000000L

    const-wide/16 v2, 0x0

    .line 177
    if-eqz p1, :cond_12

    .line 178
    iget-object v4, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->spring:Lcom/facebook/rebound/Spring;

    iget-boolean v5, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->toggleOn:Z

    if-eqz v5, :cond_10

    :goto_c
    invoke-virtual {v4, v0, v1}, Lcom/facebook/rebound/Spring;->setEndValue(D)Lcom/facebook/rebound/Spring;

    .line 184
    :goto_f
    return-void

    :cond_10
    move-wide v0, v2

    .line 178
    goto :goto_c

    .line 181
    :cond_12
    iget-object v6, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->spring:Lcom/facebook/rebound/Spring;

    iget-boolean v4, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->toggleOn:Z

    if-eqz v4, :cond_24

    move-wide v4, v0

    :goto_19
    invoke-virtual {v6, v4, v5}, Lcom/facebook/rebound/Spring;->setCurrentValue(D)Lcom/facebook/rebound/Spring;

    .line 182
    iget-boolean v4, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->toggleOn:Z

    if-eqz v4, :cond_26

    :goto_20
    invoke-direct {p0, v0, v1}, Lcom/samsung/privilege/control/toggle/ToggleButton;->calculateEffect(D)V

    goto :goto_f

    :cond_24
    move-wide v4, v2

    .line 181
    goto :goto_19

    :cond_26
    move-wide v0, v2

    .line 182
    goto :goto_20
.end method


# virtual methods
.method public IsToggleOn()Z
    .registers 2

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->toggleOn:Z

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v8, 0x3f000000

    const/4 v6, 0x0

    .line 247
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 249
    iget-object v2, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->rect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/samsung/privilege/control/toggle/ToggleButton;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/samsung/privilege/control/toggle/ToggleButton;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2, v6, v6, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 250
    iget-object v2, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->paint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->borderColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 251
    iget-object v2, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->rect:Landroid/graphics/RectF;

    iget v3, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->radius:F

    iget v4, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->radius:F

    iget-object v5, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 253
    iget v2, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->offLineWidth:F

    cmpl-float v2, v2, v6

    if-lez v2, :cond_50

    .line 254
    iget v2, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->offLineWidth:F

    mul-float v0, v2, v8

    .line 255
    .local v0, "cy":F
    iget-object v2, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->rect:Landroid/graphics/RectF;

    iget v3, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->spotX:F

    sub-float/2addr v3, v0

    iget v4, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->centerY:F

    sub-float/2addr v4, v0

    iget v5, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->endX:F

    add-float/2addr v5, v0

    iget v6, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->centerY:F

    add-float/2addr v6, v0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 256
    iget-object v2, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->paint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->offColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 257
    iget-object v2, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->rect:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v0, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 260
    .end local v0    # "cy":F
    :cond_50
    iget-object v2, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->rect:Landroid/graphics/RectF;

    iget v3, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->spotX:F

    const/high16 v4, 0x3f800000

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->radius:F

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->centerY:F

    iget v5, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->radius:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->spotX:F

    const v6, 0x3f8ccccd

    add-float/2addr v5, v6

    iget v6, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->radius:F

    add-float/2addr v5, v6

    iget v6, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->centerY:F

    iget v7, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->radius:F

    add-float/2addr v6, v7

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 261
    iget-object v2, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->paint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->borderColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 262
    iget-object v2, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->rect:Landroid/graphics/RectF;

    iget v3, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->radius:F

    iget v4, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->radius:F

    iget-object v5, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 264
    iget v2, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->spotSize:I

    int-to-float v2, v2

    mul-float v1, v2, v8

    .line 265
    .local v1, "spotR":F
    iget-object v2, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->rect:Landroid/graphics/RectF;

    iget v3, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->spotX:F

    sub-float/2addr v3, v1

    iget v4, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->centerY:F

    sub-float/2addr v4, v1

    iget v5, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->spotX:F

    add-float/2addr v5, v1

    iget v6, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->centerY:F

    add-float/2addr v6, v1

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 266
    iget-object v2, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->paint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->spotColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 267
    iget-object v2, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->rect:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v1, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 269
    return-void
.end method

.method public isAnimate()Z
    .registers 2

    .prologue
    .line 320
    iget-boolean v0, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->defaultAnimate:Z

    return v0
.end method

.method public onAttachedToWindow()V
    .registers 3

    .prologue
    .line 90
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 91
    iget-object v0, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->spring:Lcom/facebook/rebound/Spring;

    iget-object v1, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->springListener:Lcom/facebook/rebound/SimpleSpringListener;

    invoke-virtual {v0, v1}, Lcom/facebook/rebound/Spring;->addListener(Lcom/facebook/rebound/SpringListener;)Lcom/facebook/rebound/Spring;

    .line 92
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    .prologue
    .line 85
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 86
    iget-object v0, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->spring:Lcom/facebook/rebound/Spring;

    iget-object v1, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->springListener:Lcom/facebook/rebound/SimpleSpringListener;

    invoke-virtual {v0, v1}, Lcom/facebook/rebound/Spring;->removeListener(Lcom/facebook/rebound/SpringListener;)Lcom/facebook/rebound/Spring;

    .line 87
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 10
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 215
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 217
    invoke-virtual {p0}, Lcom/samsung/privilege/control/toggle/ToggleButton;->getWidth()I

    move-result v1

    .line 218
    .local v1, "width":I
    invoke-virtual {p0}, Lcom/samsung/privilege/control/toggle/ToggleButton;->getHeight()I

    move-result v0

    .line 220
    .local v0, "height":I
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f000000

    mul-float/2addr v2, v3

    iput v2, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->radius:F

    .line 221
    iget v2, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->radius:F

    iput v2, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->centerY:F

    .line 222
    iget v2, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->radius:F

    iput v2, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->startX:F

    .line 223
    int-to-float v2, v1

    iget v3, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->radius:F

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->endX:F

    .line 224
    iget v2, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->startX:F

    iget v3, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->borderWidth:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->spotMinX:F

    .line 225
    iget v2, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->endX:F

    iget v3, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->borderWidth:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->spotMaxX:F

    .line 226
    iget v2, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->borderWidth:I

    mul-int/lit8 v2, v2, 0x4

    sub-int v2, v0, v2

    iput v2, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->spotSize:I

    .line 227
    iget-boolean v2, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->toggleOn:Z

    if-eqz v2, :cond_47

    iget v2, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->spotMaxX:F

    :goto_41
    iput v2, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->spotX:F

    .line 228
    const/4 v2, 0x0

    iput v2, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->offLineWidth:F

    .line 229
    return-void

    .line 227
    :cond_47
    iget v2, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->spotMinX:F

    goto :goto_41
.end method

.method protected onMeasure(II)V
    .registers 13
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v9, 0x40000000

    const/4 v8, 0x1

    const/high16 v7, -0x80000000

    .line 190
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 191
    .local v3, "widthMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 193
    .local v0, "heightMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 194
    .local v4, "widthSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 196
    .local v1, "heightSize":I
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    .line 197
    .local v2, "r":Landroid/content/res/Resources;
    if-eqz v3, :cond_1d

    if-ne v3, v7, :cond_2c

    .line 198
    :cond_1d
    const/high16 v5, 0x42480000

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    invoke-static {v8, v5, v6}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    float-to-int v4, v5

    .line 199
    invoke-static {v4, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 202
    :cond_2c
    if-eqz v0, :cond_30

    if-ne v1, v7, :cond_3f

    .line 203
    :cond_30
    const/high16 v5, 0x41f00000

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    invoke-static {v8, v5, v6}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    float-to-int v1, v5

    .line 204
    invoke-static {v1, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 208
    :cond_3f
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 209
    return-void
.end method

.method public setAnimate(Z)V
    .registers 2
    .param p1, "animate"    # Z

    .prologue
    .line 323
    iput-boolean p1, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->defaultAnimate:Z

    .line 324
    return-void
.end method

.method public setOnToggleChanged(Lcom/samsung/privilege/control/toggle/ToggleButton$OnToggleChanged;)V
    .registers 2
    .param p1, "onToggleChanged"    # Lcom/samsung/privilege/control/toggle/ToggleButton$OnToggleChanged;

    .prologue
    .line 316
    iput-object p1, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->listener:Lcom/samsung/privilege/control/toggle/ToggleButton$OnToggleChanged;

    .line 317
    return-void
.end method

.method public setToggleOff()V
    .registers 2

    .prologue
    .line 168
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/control/toggle/ToggleButton;->setToggleOff(Z)V

    .line 169
    return-void
.end method

.method public setToggleOff(Z)V
    .registers 3
    .param p1, "animate"    # Z

    .prologue
    .line 172
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->toggleOn:Z

    .line 173
    invoke-direct {p0, p1}, Lcom/samsung/privilege/control/toggle/ToggleButton;->takeEffect(Z)V

    .line 174
    return-void
.end method

.method public setToggleOn()V
    .registers 2

    .prologue
    .line 153
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/control/toggle/ToggleButton;->setToggleOn(Z)V

    .line 154
    return-void
.end method

.method public setToggleOn(Z)V
    .registers 3
    .param p1, "animate"    # Z

    .prologue
    .line 160
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->toggleOn:Z

    .line 161
    invoke-direct {p0, p1}, Lcom/samsung/privilege/control/toggle/ToggleButton;->takeEffect(Z)V

    .line 162
    return-void
.end method

.method public setup(Landroid/util/AttributeSet;)V
    .registers 9
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v6, 0x1

    .line 95
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v6}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->paint:Landroid/graphics/Paint;

    .line 96
    iget-object v1, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 97
    iget-object v1, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 99
    invoke-static {}, Lcom/facebook/rebound/SpringSystem;->create()Lcom/facebook/rebound/SpringSystem;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->springSystem:Lcom/facebook/rebound/SpringSystem;

    .line 100
    iget-object v1, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->springSystem:Lcom/facebook/rebound/SpringSystem;

    invoke-virtual {v1}, Lcom/facebook/rebound/SpringSystem;->createSpring()Lcom/facebook/rebound/Spring;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->spring:Lcom/facebook/rebound/Spring;

    .line 101
    iget-object v1, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->spring:Lcom/facebook/rebound/Spring;

    const-wide/high16 v2, 0x4049000000000000L

    const-wide/high16 v4, 0x401c000000000000L

    invoke-static {v2, v3, v4, v5}, Lcom/facebook/rebound/SpringConfig;->fromOrigamiTensionAndFriction(DD)Lcom/facebook/rebound/SpringConfig;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/rebound/Spring;->setSpringConfig(Lcom/facebook/rebound/SpringConfig;)Lcom/facebook/rebound/Spring;

    .line 103
    new-instance v1, Lcom/samsung/privilege/control/toggle/ToggleButton$1;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/control/toggle/ToggleButton$1;-><init>(Lcom/samsung/privilege/control/toggle/ToggleButton;)V

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/control/toggle/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    invoke-virtual {p0}, Lcom/samsung/privilege/control/toggle/ToggleButton;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/samsung/privilege/R$styleable;->ToggleButton:[I

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 111
    .local v0, "typedArray":Landroid/content/res/TypedArray;
    iget v1, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->offBorderColor:I

    invoke-virtual {v0, v6, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->offBorderColor:I

    .line 112
    const/4 v1, 0x3

    iget v2, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->onColor:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->onColor:I

    .line 113
    const/4 v1, 0x4

    iget v2, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->spotColor:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->spotColor:I

    .line 114
    const/4 v1, 0x2

    iget v2, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->offColor:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->offColor:I

    .line 115
    const/4 v1, 0x0

    iget v2, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->borderWidth:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->borderWidth:I

    .line 116
    const/4 v1, 0x5

    iget-boolean v2, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->defaultAnimate:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->defaultAnimate:Z

    .line 117
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 119
    iget v1, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->offBorderColor:I

    iput v1, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->borderColor:I

    .line 120
    return-void
.end method

.method public toggle()V
    .registers 2

    .prologue
    .line 123
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/control/toggle/ToggleButton;->toggle(Z)V

    .line 124
    return-void
.end method

.method public toggle(Z)V
    .registers 4
    .param p1, "animate"    # Z

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->toggleOn:Z

    if-nez v0, :cond_16

    const/4 v0, 0x1

    :goto_5
    iput-boolean v0, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->toggleOn:Z

    .line 128
    invoke-direct {p0, p1}, Lcom/samsung/privilege/control/toggle/ToggleButton;->takeEffect(Z)V

    .line 130
    iget-object v0, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->listener:Lcom/samsung/privilege/control/toggle/ToggleButton$OnToggleChanged;

    if-eqz v0, :cond_15

    .line 131
    iget-object v0, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->listener:Lcom/samsung/privilege/control/toggle/ToggleButton$OnToggleChanged;

    iget-boolean v1, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->toggleOn:Z

    invoke-interface {v0, v1}, Lcom/samsung/privilege/control/toggle/ToggleButton$OnToggleChanged;->onToggle(Z)V

    .line 133
    :cond_15
    return-void

    .line 127
    :cond_16
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public toggleOff()V
    .registers 3

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/samsung/privilege/control/toggle/ToggleButton;->setToggleOff()V

    .line 144
    iget-object v0, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->listener:Lcom/samsung/privilege/control/toggle/ToggleButton$OnToggleChanged;

    if-eqz v0, :cond_e

    .line 145
    iget-object v0, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->listener:Lcom/samsung/privilege/control/toggle/ToggleButton$OnToggleChanged;

    iget-boolean v1, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->toggleOn:Z

    invoke-interface {v0, v1}, Lcom/samsung/privilege/control/toggle/ToggleButton$OnToggleChanged;->onToggle(Z)V

    .line 147
    :cond_e
    return-void
.end method

.method public toggleOn()V
    .registers 3

    .prologue
    .line 136
    invoke-virtual {p0}, Lcom/samsung/privilege/control/toggle/ToggleButton;->setToggleOn()V

    .line 137
    iget-object v0, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->listener:Lcom/samsung/privilege/control/toggle/ToggleButton$OnToggleChanged;

    if-eqz v0, :cond_e

    .line 138
    iget-object v0, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->listener:Lcom/samsung/privilege/control/toggle/ToggleButton$OnToggleChanged;

    iget-boolean v1, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->toggleOn:Z

    invoke-interface {v0, v1}, Lcom/samsung/privilege/control/toggle/ToggleButton$OnToggleChanged;->onToggle(Z)V

    .line 140
    :cond_e
    return-void
.end method
