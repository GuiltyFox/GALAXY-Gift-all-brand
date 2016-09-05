.class public Lcom/samsung/privilege/control/toggle/ToggleButton;
.super Landroid/view/View;
.source "ToggleButton.java"


# instance fields
.field a:Lcom/facebook/rebound/SimpleSpringListener;

.field private b:Lcom/facebook/rebound/SpringSystem;

.field private c:Lcom/facebook/rebound/Spring;

.field private d:F

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:Landroid/graphics/Paint;

.field private k:Z

.field private l:I

.field private m:F

.field private n:F

.field private o:F

.field private p:F

.field private q:F

.field private r:I

.field private s:F

.field private t:F

.field private u:Landroid/graphics/RectF;

.field private v:Z

.field private w:Lcom/samsung/privilege/control/toggle/ToggleButton$OnToggleChanged;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 72
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 33
    const-string/jumbo v0, "#4ebb7f"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->e:I

    .line 35
    const-string/jumbo v0, "#dadbda"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->f:I

    .line 37
    const-string/jumbo v0, "#ffffff"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->g:I

    .line 39
    const-string/jumbo v0, "#ffffff"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->h:I

    .line 41
    iget v0, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->f:I

    iput v0, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->i:I

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->k:Z

    .line 47
    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->l:I

    .line 61
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->u:Landroid/graphics/RectF;

    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->v:Z

    .line 232
    new-instance v0, Lcom/samsung/privilege/control/toggle/ToggleButton$2;

    invoke-direct {v0, p0}, Lcom/samsung/privilege/control/toggle/ToggleButton$2;-><init>(Lcom/samsung/privilege/control/toggle/ToggleButton;)V

    iput-object v0, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->a:Lcom/facebook/rebound/SimpleSpringListener;

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .prologue
    .line 79
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    const-string/jumbo v0, "#4ebb7f"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->e:I

    .line 35
    const-string/jumbo v0, "#dadbda"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->f:I

    .line 37
    const-string/jumbo v0, "#ffffff"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->g:I

    .line 39
    const-string/jumbo v0, "#ffffff"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->h:I

    .line 41
    iget v0, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->f:I

    iput v0, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->i:I

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->k:Z

    .line 47
    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->l:I

    .line 61
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->u:Landroid/graphics/RectF;

    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->v:Z

    .line 232
    new-instance v0, Lcom/samsung/privilege/control/toggle/ToggleButton$2;

    invoke-direct {v0, p0}, Lcom/samsung/privilege/control/toggle/ToggleButton$2;-><init>(Lcom/samsung/privilege/control/toggle/ToggleButton;)V

    iput-object v0, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->a:Lcom/facebook/rebound/SimpleSpringListener;

    .line 80
    invoke-virtual {p0, p2}, Lcom/samsung/privilege/control/toggle/ToggleButton;->a(Landroid/util/AttributeSet;)V

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    .prologue
    .line 75
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    const-string/jumbo v0, "#4ebb7f"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->e:I

    .line 35
    const-string/jumbo v0, "#dadbda"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->f:I

    .line 37
    const-string/jumbo v0, "#ffffff"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->g:I

    .line 39
    const-string/jumbo v0, "#ffffff"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->h:I

    .line 41
    iget v0, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->f:I

    iput v0, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->i:I

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->k:Z

    .line 47
    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->l:I

    .line 61
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->u:Landroid/graphics/RectF;

    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->v:Z

    .line 232
    new-instance v0, Lcom/samsung/privilege/control/toggle/ToggleButton$2;

    invoke-direct {v0, p0}, Lcom/samsung/privilege/control/toggle/ToggleButton$2;-><init>(Lcom/samsung/privilege/control/toggle/ToggleButton;)V

    iput-object v0, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->a:Lcom/facebook/rebound/SimpleSpringListener;

    .line 76
    invoke-virtual {p0, p2}, Lcom/samsung/privilege/control/toggle/ToggleButton;->a(Landroid/util/AttributeSet;)V

    .line 77
    return-void
.end method

.method private a(III)I
    .registers 5

    .prologue
    .line 241
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method private a(D)V
    .registers 18

    .prologue
    .line 275
    const-wide/16 v2, 0x0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    iget v0, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->p:F

    float-to-double v6, v0

    iget v0, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->q:F

    float-to-double v8, v0

    move-wide/from16 v0, p1

    invoke-static/range {v0 .. v9}, Lcom/facebook/rebound/SpringUtil;->mapValueFromRangeToRange(DDDDD)D

    move-result-wide v0

    double-to-float v0, v0

    .line 276
    iput v0, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->s:F

    .line 278
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sub-double v0, v0, p1

    const-wide/16 v2, 0x0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    iget v8, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->r:I

    int-to-double v8, v8

    invoke-static/range {v0 .. v9}, Lcom/facebook/rebound/SpringUtil;->mapValueFromRangeToRange(DDDDD)D

    move-result-wide v0

    double-to-float v0, v0

    .line 280
    iput v0, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->t:F

    .line 282
    iget v0, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->e:I

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    .line 283
    iget v0, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->e:I

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v10

    .line 284
    iget v0, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->e:I

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v11

    .line 286
    iget v0, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->f:I

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v8

    .line 287
    iget v0, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->f:I

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v12

    .line 288
    iget v0, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->f:I

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v13

    .line 290
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sub-double v0, v0, p1

    const-wide/16 v2, 0x0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    int-to-double v6, v6

    int-to-double v8, v8

    invoke-static/range {v0 .. v9}, Lcom/facebook/rebound/SpringUtil;->mapValueFromRangeToRange(DDDDD)D

    move-result-wide v0

    double-to-int v14, v0

    .line 291
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sub-double v0, v0, p1

    const-wide/16 v2, 0x0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    int-to-double v6, v10

    int-to-double v8, v12

    invoke-static/range {v0 .. v9}, Lcom/facebook/rebound/SpringUtil;->mapValueFromRangeToRange(DDDDD)D

    move-result-wide v0

    double-to-int v10, v0

    .line 292
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sub-double v0, v0, p1

    const-wide/16 v2, 0x0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    int-to-double v6, v11

    int-to-double v8, v13

    invoke-static/range {v0 .. v9}, Lcom/facebook/rebound/SpringUtil;->mapValueFromRangeToRange(DDDDD)D

    move-result-wide v0

    double-to-int v0, v0

    .line 294
    const/4 v1, 0x0

    const/16 v2, 0xff

    invoke-direct {p0, v14, v1, v2}, Lcom/samsung/privilege/control/toggle/ToggleButton;->a(III)I

    move-result v1

    .line 295
    const/4 v2, 0x0

    const/16 v3, 0xff

    invoke-direct {p0, v10, v2, v3}, Lcom/samsung/privilege/control/toggle/ToggleButton;->a(III)I

    move-result v2

    .line 296
    const/4 v3, 0x0

    const/16 v4, 0xff

    invoke-direct {p0, v0, v3, v4}, Lcom/samsung/privilege/control/toggle/ToggleButton;->a(III)I

    move-result v0

    .line 298
    invoke-static {v2, v0, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->i:I

    .line 300
    invoke-virtual {p0}, Lcom/samsung/privilege/control/toggle/ToggleButton;->postInvalidate()V

    .line 301
    return-void
.end method

.method static synthetic a(Lcom/samsung/privilege/control/toggle/ToggleButton;D)V
    .registers 4

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/samsung/privilege/control/toggle/ToggleButton;->a(D)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/privilege/control/toggle/ToggleButton;)Z
    .registers 2

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->v:Z

    return v0
.end method

.method private b(Z)V
    .registers 9

    .prologue
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const-wide/16 v2, 0x0

    .line 177
    if-eqz p1, :cond_12

    .line 178
    iget-object v4, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->c:Lcom/facebook/rebound/Spring;

    iget-boolean v5, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->k:Z

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
    iget-object v6, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->c:Lcom/facebook/rebound/Spring;

    iget-boolean v4, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->k:Z

    if-eqz v4, :cond_24

    move-wide v4, v0

    :goto_19
    invoke-virtual {v6, v4, v5}, Lcom/facebook/rebound/Spring;->setCurrentValue(D)Lcom/facebook/rebound/Spring;

    .line 182
    iget-boolean v4, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->k:Z

    if-eqz v4, :cond_26

    :goto_20
    invoke-direct {p0, v0, v1}, Lcom/samsung/privilege/control/toggle/ToggleButton;->a(D)V

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
.method public a(Landroid/util/AttributeSet;)V
    .registers 9

    .prologue
    const/4 v6, 0x1

    .line 95
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v6}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->j:Landroid/graphics/Paint;

    .line 96
    iget-object v0, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->j:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 97
    iget-object v0, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->j:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 99
    invoke-static {}, Lcom/facebook/rebound/SpringSystem;->create()Lcom/facebook/rebound/SpringSystem;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->b:Lcom/facebook/rebound/SpringSystem;

    .line 100
    iget-object v0, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->b:Lcom/facebook/rebound/SpringSystem;

    invoke-virtual {v0}, Lcom/facebook/rebound/SpringSystem;->createSpring()Lcom/facebook/rebound/Spring;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->c:Lcom/facebook/rebound/Spring;

    .line 101
    iget-object v0, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->c:Lcom/facebook/rebound/Spring;

    const-wide/high16 v2, 0x4049000000000000L    # 50.0

    const-wide/high16 v4, 0x401c000000000000L    # 7.0

    invoke-static {v2, v3, v4, v5}, Lcom/facebook/rebound/SpringConfig;->fromOrigamiTensionAndFriction(DD)Lcom/facebook/rebound/SpringConfig;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/rebound/Spring;->setSpringConfig(Lcom/facebook/rebound/SpringConfig;)Lcom/facebook/rebound/Spring;

    .line 103
    new-instance v0, Lcom/samsung/privilege/control/toggle/ToggleButton$1;

    invoke-direct {v0, p0}, Lcom/samsung/privilege/control/toggle/ToggleButton$1;-><init>(Lcom/samsung/privilege/control/toggle/ToggleButton;)V

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/control/toggle/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    invoke-virtual {p0}, Lcom/samsung/privilege/control/toggle/ToggleButton;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/samsung/privilege/R$styleable;->ToggleButton:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 111
    iget v1, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->f:I

    invoke-virtual {v0, v6, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->f:I

    .line 112
    const/4 v1, 0x3

    iget v2, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->e:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->e:I

    .line 113
    const/4 v1, 0x4

    iget v2, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->h:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->h:I

    .line 114
    const/4 v1, 0x2

    iget v2, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->g:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->g:I

    .line 115
    const/4 v1, 0x0

    iget v2, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->l:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->l:I

    .line 116
    const/4 v1, 0x5

    iget-boolean v2, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->v:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->v:Z

    .line 117
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 119
    iget v0, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->f:I

    iput v0, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->i:I

    .line 120
    return-void
.end method

.method public a(Lcom/samsung/privilege/control/toggle/ToggleButton$OnToggleChanged;)V
    .registers 2

    .prologue
    .line 316
    iput-object p1, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->w:Lcom/samsung/privilege/control/toggle/ToggleButton$OnToggleChanged;

    .line 317
    return-void
.end method

.method public a(Z)V
    .registers 4

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->k:Z

    if-nez v0, :cond_16

    const/4 v0, 0x1

    :goto_5
    iput-boolean v0, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->k:Z

    .line 128
    invoke-direct {p0, p1}, Lcom/samsung/privilege/control/toggle/ToggleButton;->b(Z)V

    .line 130
    iget-object v0, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->w:Lcom/samsung/privilege/control/toggle/ToggleButton$OnToggleChanged;

    if-eqz v0, :cond_15

    .line 131
    iget-object v0, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->w:Lcom/samsung/privilege/control/toggle/ToggleButton$OnToggleChanged;

    iget-boolean v1, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->k:Z

    invoke-interface {v0, v1}, Lcom/samsung/privilege/control/toggle/ToggleButton$OnToggleChanged;->a(Z)V

    .line 133
    :cond_15
    return-void

    .line 127
    :cond_16
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->k:Z

    return v0
.end method

.method public b()V
    .registers 2

    .prologue
    .line 153
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/control/toggle/ToggleButton;->setToggleOn(Z)V

    .line 154
    return-void
.end method

.method public c()V
    .registers 2

    .prologue
    .line 168
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/control/toggle/ToggleButton;->setToggleOff(Z)V

    .line 169
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 9

    .prologue
    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v4, 0x0

    .line 247
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 249
    iget-object v0, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->u:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/samsung/privilege/control/toggle/ToggleButton;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/samsung/privilege/control/toggle/ToggleButton;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 250
    iget-object v0, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->j:Landroid/graphics/Paint;

    iget v1, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->i:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 251
    iget-object v0, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->u:Landroid/graphics/RectF;

    iget v1, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->d:F

    iget v2, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->d:F

    iget-object v3, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->j:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 253
    iget v0, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->t:F

    cmpl-float v0, v0, v4

    if-lez v0, :cond_4f

    .line 254
    iget v0, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->t:F

    mul-float/2addr v0, v6

    .line 255
    iget-object v1, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->u:Landroid/graphics/RectF;

    iget v2, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->s:F

    sub-float/2addr v2, v0

    iget v3, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->m:F

    sub-float/2addr v3, v0

    iget v4, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->o:F

    add-float/2addr v4, v0

    iget v5, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->m:F

    add-float/2addr v5, v0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 256
    iget-object v1, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->j:Landroid/graphics/Paint;

    iget v2, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->g:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 257
    iget-object v1, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->u:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->j:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v0, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 260
    :cond_4f
    iget-object v0, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->u:Landroid/graphics/RectF;

    iget v1, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->s:F

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->d:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->m:F

    iget v3, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->d:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->s:F

    const v4, 0x3f8ccccd    # 1.1f

    add-float/2addr v3, v4

    iget v4, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->d:F

    add-float/2addr v3, v4

    iget v4, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->m:F

    iget v5, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->d:F

    add-float/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 261
    iget-object v0, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->j:Landroid/graphics/Paint;

    iget v1, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->i:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 262
    iget-object v0, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->u:Landroid/graphics/RectF;

    iget v1, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->d:F

    iget v2, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->d:F

    iget-object v3, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->j:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 264
    iget v0, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->r:I

    int-to-float v0, v0

    mul-float/2addr v0, v6

    .line 265
    iget-object v1, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->u:Landroid/graphics/RectF;

    iget v2, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->s:F

    sub-float/2addr v2, v0

    iget v3, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->m:F

    sub-float/2addr v3, v0

    iget v4, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->s:F

    add-float/2addr v4, v0

    iget v5, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->m:F

    add-float/2addr v5, v0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 266
    iget-object v1, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->j:Landroid/graphics/Paint;

    iget v2, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->h:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 267
    iget-object v1, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->u:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->j:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v0, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 269
    return-void
.end method

.method public onAttachedToWindow()V
    .registers 3

    .prologue
    .line 90
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 91
    iget-object v0, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->c:Lcom/facebook/rebound/Spring;

    iget-object v1, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->a:Lcom/facebook/rebound/SimpleSpringListener;

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
    iget-object v0, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->c:Lcom/facebook/rebound/Spring;

    iget-object v1, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->a:Lcom/facebook/rebound/SimpleSpringListener;

    invoke-virtual {v0, v1}, Lcom/facebook/rebound/Spring;->removeListener(Lcom/facebook/rebound/SpringListener;)Lcom/facebook/rebound/Spring;

    .line 87
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 10

    .prologue
    .line 215
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 217
    invoke-virtual {p0}, Lcom/samsung/privilege/control/toggle/ToggleButton;->getWidth()I

    move-result v0

    .line 218
    invoke-virtual {p0}, Lcom/samsung/privilege/control/toggle/ToggleButton;->getHeight()I

    move-result v1

    .line 220
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v2, v3

    iput v2, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->d:F

    .line 221
    iget v2, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->d:F

    iput v2, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->m:F

    .line 222
    iget v2, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->d:F

    iput v2, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->n:F

    .line 223
    int-to-float v0, v0

    iget v2, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->d:F

    sub-float/2addr v0, v2

    iput v0, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->o:F

    .line 224
    iget v0, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->n:F

    iget v2, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->l:I

    int-to-float v2, v2

    add-float/2addr v0, v2

    iput v0, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->p:F

    .line 225
    iget v0, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->o:F

    iget v2, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->l:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    iput v0, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->q:F

    .line 226
    iget v0, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->l:I

    mul-int/lit8 v0, v0, 0x4

    sub-int v0, v1, v0

    iput v0, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->r:I

    .line 227
    iget-boolean v0, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->k:Z

    if-eqz v0, :cond_47

    iget v0, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->q:F

    :goto_41
    iput v0, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->s:F

    .line 228
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->t:F

    .line 229
    return-void

    .line 227
    :cond_47
    iget v0, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->p:F

    goto :goto_41
.end method

.method protected onMeasure(II)V
    .registers 11

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    const/4 v6, 0x1

    const/high16 v5, -0x80000000

    .line 190
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 191
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 193
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 194
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 196
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    .line 197
    if-eqz v0, :cond_1c

    if-ne v0, v5, :cond_2b

    .line 198
    :cond_1c
    const/high16 v0, 0x42480000    # 50.0f

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-static {v6, v0, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    .line 199
    invoke-static {v0, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 202
    :cond_2b
    if-eqz v1, :cond_2f

    if-ne v2, v5, :cond_3e

    .line 203
    :cond_2f
    const/high16 v0, 0x41f00000    # 30.0f

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v6, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    .line 204
    invoke-static {v0, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 208
    :cond_3e
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 209
    return-void
.end method

.method public setAnimate(Z)V
    .registers 2

    .prologue
    .line 323
    iput-boolean p1, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->v:Z

    .line 324
    return-void
.end method

.method public setToggleOff(Z)V
    .registers 3

    .prologue
    .line 172
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->k:Z

    .line 173
    invoke-direct {p0, p1}, Lcom/samsung/privilege/control/toggle/ToggleButton;->b(Z)V

    .line 174
    return-void
.end method

.method public setToggleOn(Z)V
    .registers 3

    .prologue
    .line 160
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/privilege/control/toggle/ToggleButton;->k:Z

    .line 161
    invoke-direct {p0, p1}, Lcom/samsung/privilege/control/toggle/ToggleButton;->b(Z)V

    .line 162
    return-void
.end method
