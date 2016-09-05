.class public Lme/dm7/barcodescanner/core/ViewFinderView;
.super Landroid/view/View;
.source "ViewFinderView.java"


# static fields
.field private static final b:[I


# instance fields
.field private a:Landroid/graphics/Rect;

.field private c:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 31
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lme/dm7/barcodescanner/core/ViewFinderView;->b:[I

    return-void

    :array_a
    .array-data 4
        0x0
        0x40
        0x80
        0xc0
        0xff
        0xc0
        0x80
        0x40
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 37
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 38
    return-void
.end method

.method private static a(FIII)I
    .registers 5

    .prologue
    .line 145
    int-to-float v0, p1

    mul-float/2addr v0, p0

    float-to-int v0, v0

    .line 146
    if-ge v0, p2, :cond_6

    .line 152
    :goto_5
    return p2

    .line 149
    :cond_6
    if-le v0, p3, :cond_a

    move p2, p3

    .line 150
    goto :goto_5

    :cond_a
    move p2, v0

    .line 152
    goto :goto_5
.end method


# virtual methods
.method public a()V
    .registers 1

    .prologue
    .line 45
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/ViewFinderView;->c()V

    .line 46
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/ViewFinderView;->invalidate()V

    .line 47
    return-void
.end method

.method public a(Landroid/graphics/Canvas;)V
    .registers 16

    .prologue
    const/4 v1, 0x0

    .line 65
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 66
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/ViewFinderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 67
    sget v2, Lme/dm7/barcodescanner/core/R$color;->viewfinder_mask:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 69
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v12

    .line 70
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v13

    .line 72
    int-to-float v3, v12

    iget-object v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->a:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v4, v0

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 73
    iget-object v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->a:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget-object v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->a:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v0

    iget-object v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->a:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v4, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 74
    iget-object v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->a:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v7, v0

    iget-object v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->a:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v8, v0

    int-to-float v9, v12

    iget-object v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->a:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v10, v0

    move-object v6, p1

    move-object v11, v5

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 75
    iget-object v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->a:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v2, v0

    int-to-float v3, v12

    int-to-float v4, v13

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 76
    return-void
.end method

.method public b()Landroid/graphics/Rect;
    .registers 2

    .prologue
    .line 50
    iget-object v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->a:Landroid/graphics/Rect;

    return-object v0
.end method

.method public b(Landroid/graphics/Canvas;)V
    .registers 9

    .prologue
    .line 79
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 80
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/ViewFinderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 81
    sget v1, Lme/dm7/barcodescanner/core/R$color;->viewfinder_border:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 82
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 83
    sget v1, Lme/dm7/barcodescanner/core/R$integer;->viewfinder_border_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 84
    sget v1, Lme/dm7/barcodescanner/core/R$integer;->viewfinder_border_length:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    .line 86
    iget-object v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->a:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, -0x1

    int-to-float v1, v0

    iget-object v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->a:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int/lit8 v0, v0, -0x1

    int-to-float v2, v0

    iget-object v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->a:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, -0x1

    int-to-float v3, v0

    iget-object v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->a:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int/lit8 v0, v0, -0x1

    add-int/2addr v0, v6

    int-to-float v4, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 87
    iget-object v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->a:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, -0x1

    int-to-float v1, v0

    iget-object v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->a:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int/lit8 v0, v0, -0x1

    int-to-float v2, v0

    iget-object v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->a:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, -0x1

    add-int/2addr v0, v6

    int-to-float v3, v0

    iget-object v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->a:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int/lit8 v0, v0, -0x1

    int-to-float v4, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 89
    iget-object v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->a:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, -0x1

    int-to-float v1, v0

    iget-object v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->a:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v2, v0

    iget-object v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->a:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, -0x1

    int-to-float v3, v0

    iget-object v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->a:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, 0x1

    sub-int/2addr v0, v6

    int-to-float v4, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 90
    iget-object v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->a:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, -0x1

    int-to-float v1, v0

    iget-object v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->a:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v2, v0

    iget-object v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->a:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, -0x1

    add-int/2addr v0, v6

    int-to-float v3, v0

    iget-object v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->a:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v4, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 92
    iget-object v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->a:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v1, v0

    iget-object v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->a:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int/lit8 v0, v0, -0x1

    int-to-float v2, v0

    iget-object v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->a:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v3, v0

    iget-object v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->a:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int/lit8 v0, v0, -0x1

    add-int/2addr v0, v6

    int-to-float v4, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 93
    iget-object v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->a:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v1, v0

    iget-object v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->a:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int/lit8 v0, v0, -0x1

    int-to-float v2, v0

    iget-object v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->a:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, 0x1

    sub-int/2addr v0, v6

    int-to-float v3, v0

    iget-object v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->a:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int/lit8 v0, v0, -0x1

    int-to-float v4, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 95
    iget-object v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->a:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v1, v0

    iget-object v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->a:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v2, v0

    iget-object v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->a:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v3, v0

    iget-object v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->a:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, 0x1

    sub-int/2addr v0, v6

    int-to-float v4, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 96
    iget-object v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->a:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v1, v0

    iget-object v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->a:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v2, v0

    iget-object v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->a:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, 0x1

    sub-int/2addr v0, v6

    int-to-float v3, v0

    iget-object v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->a:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v4, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 97
    return-void
.end method

.method public declared-synchronized c()V
    .registers 7

    .prologue
    .line 123
    monitor-enter p0

    :try_start_1
    new-instance v2, Landroid/graphics/Point;

    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/ViewFinderView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/ViewFinderView;->getHeight()I

    move-result v1

    invoke-direct {v2, v0, v1}, Landroid/graphics/Point;-><init>(II)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_49

    .line 124
    if-nez v2, :cond_12

    .line 142
    :goto_10
    monitor-exit p0

    return-void

    .line 129
    :cond_12
    :try_start_12
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/ViewFinderView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lme/dm7/barcodescanner/core/DisplayUtils;->b(Landroid/content/Context;)I

    move-result v0

    .line 131
    const/4 v1, 0x1

    if-eq v0, v1, :cond_4c

    .line 132
    const/high16 v0, 0x3f200000    # 0.625f

    iget v1, v2, Landroid/graphics/Point;->x:I

    const/16 v3, 0xf0

    const/16 v4, 0x4b0

    invoke-static {v0, v1, v3, v4}, Lme/dm7/barcodescanner/core/ViewFinderView;->a(FIII)I

    move-result v1

    .line 133
    const/high16 v0, 0x3f200000    # 0.625f

    iget v3, v2, Landroid/graphics/Point;->y:I

    const/16 v4, 0xf0

    const/16 v5, 0x2a3

    invoke-static {v0, v3, v4, v5}, Lme/dm7/barcodescanner/core/ViewFinderView;->a(FIII)I

    move-result v0

    .line 139
    :goto_35
    iget v3, v2, Landroid/graphics/Point;->x:I

    sub-int/2addr v3, v1

    div-int/lit8 v3, v3, 0x2

    .line 140
    iget v2, v2, Landroid/graphics/Point;->y:I

    sub-int/2addr v2, v0

    div-int/lit8 v2, v2, 0x2

    .line 141
    new-instance v4, Landroid/graphics/Rect;

    add-int/2addr v1, v3

    add-int/2addr v0, v2

    invoke-direct {v4, v3, v2, v1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v4, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->a:Landroid/graphics/Rect;
    :try_end_48
    .catchall {:try_start_12 .. :try_end_48} :catchall_49

    goto :goto_10

    .line 123
    :catchall_49
    move-exception v0

    monitor-exit p0

    throw v0

    .line 135
    :cond_4c
    const/high16 v0, 0x3f600000    # 0.875f

    :try_start_4e
    iget v1, v2, Landroid/graphics/Point;->x:I

    const/16 v3, 0xf0

    const/16 v4, 0x3b1

    invoke-static {v0, v1, v3, v4}, Lme/dm7/barcodescanner/core/ViewFinderView;->a(FIII)I

    move-result v1

    .line 136
    const/high16 v0, 0x3ec00000    # 0.375f

    iget v3, v2, Landroid/graphics/Point;->y:I

    const/16 v4, 0xf0

    const/16 v5, 0x2d0

    invoke-static {v0, v3, v4, v5}, Lme/dm7/barcodescanner/core/ViewFinderView;->a(FIII)I
    :try_end_63
    .catchall {:try_start_4e .. :try_end_63} :catchall_49

    move-result v0

    goto :goto_35
.end method

.method public c(Landroid/graphics/Canvas;)V
    .registers 10

    .prologue
    .line 100
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 101
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/ViewFinderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 103
    sget v1, Lme/dm7/barcodescanner/core/R$color;->viewfinder_laser:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 104
    sget-object v0, Lme/dm7/barcodescanner/core/ViewFinderView;->b:[I

    iget v1, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->c:I

    aget v0, v0, v1

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 105
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 106
    iget v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->c:I

    add-int/lit8 v0, v0, 0x1

    sget-object v1, Lme/dm7/barcodescanner/core/ViewFinderView;->b:[I

    array-length v1, v1

    rem-int/2addr v0, v1

    iput v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->c:I

    .line 107
    iget-object v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->a:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->a:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    .line 108
    iget-object v1, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->a:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-int/lit8 v2, v0, -0x1

    int-to-float v2, v2

    iget-object v3, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->a:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/lit8 v3, v3, -0x1

    int-to-float v3, v3

    add-int/lit8 v0, v0, 0x2

    int-to-float v4, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 110
    const-wide/16 v2, 0x50

    iget-object v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->a:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    add-int/lit8 v4, v0, -0xa

    iget-object v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->a:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int/lit8 v5, v0, -0xa

    iget-object v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->a:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v6, v0, 0xa

    iget-object v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->a:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v7, v0, 0xa

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lme/dm7/barcodescanner/core/ViewFinderView;->postInvalidateDelayed(JIIII)V

    .line 115
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 3

    .prologue
    .line 55
    iget-object v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->a:Landroid/graphics/Rect;

    if-nez v0, :cond_5

    .line 62
    :goto_4
    return-void

    .line 59
    :cond_5
    invoke-virtual {p0, p1}, Lme/dm7/barcodescanner/core/ViewFinderView;->a(Landroid/graphics/Canvas;)V

    .line 60
    invoke-virtual {p0, p1}, Lme/dm7/barcodescanner/core/ViewFinderView;->b(Landroid/graphics/Canvas;)V

    .line 61
    invoke-virtual {p0, p1}, Lme/dm7/barcodescanner/core/ViewFinderView;->c(Landroid/graphics/Canvas;)V

    goto :goto_4
.end method

.method protected onSizeChanged(IIII)V
    .registers 5

    .prologue
    .line 119
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/ViewFinderView;->c()V

    .line 120
    return-void
.end method
