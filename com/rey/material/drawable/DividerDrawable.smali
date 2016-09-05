.class public Lcom/rey/material/drawable/DividerDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "DividerDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# instance fields
.field private a:Z

.field private b:J

.field private c:F

.field private d:I

.field private e:Landroid/graphics/Paint;

.field private f:Landroid/content/res/ColorStateList;

.field private g:I

.field private h:I

.field private i:I

.field private j:Z

.field private k:Landroid/graphics/PathEffect;

.field private l:Landroid/graphics/Path;

.field private m:Z

.field private n:Z

.field private o:I

.field private p:I

.field private final q:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(IIILandroid/content/res/ColorStateList;I)V
    .registers 10

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 45
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 20
    iput-boolean v3, p0, Lcom/rey/material/drawable/DividerDrawable;->a:Z

    .line 31
    iput-boolean v2, p0, Lcom/rey/material/drawable/DividerDrawable;->j:Z

    .line 35
    iput-boolean v3, p0, Lcom/rey/material/drawable/DividerDrawable;->m:Z

    .line 36
    iput-boolean v2, p0, Lcom/rey/material/drawable/DividerDrawable;->n:Z

    .line 231
    new-instance v0, Lcom/rey/material/drawable/DividerDrawable$1;

    invoke-direct {v0, p0}, Lcom/rey/material/drawable/DividerDrawable$1;-><init>(Lcom/rey/material/drawable/DividerDrawable;)V

    iput-object v0, p0, Lcom/rey/material/drawable/DividerDrawable;->q:Ljava/lang/Runnable;

    .line 46
    iput p1, p0, Lcom/rey/material/drawable/DividerDrawable;->g:I

    .line 47
    iput p2, p0, Lcom/rey/material/drawable/DividerDrawable;->o:I

    .line 48
    iput p3, p0, Lcom/rey/material/drawable/DividerDrawable;->p:I

    .line 49
    iput p5, p0, Lcom/rey/material/drawable/DividerDrawable;->d:I

    .line 51
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/rey/material/drawable/DividerDrawable;->e:Landroid/graphics/Paint;

    .line 52
    iget-object v0, p0, Lcom/rey/material/drawable/DividerDrawable;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 53
    iget-object v0, p0, Lcom/rey/material/drawable/DividerDrawable;->e:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 54
    iget-object v0, p0, Lcom/rey/material/drawable/DividerDrawable;->e:Landroid/graphics/Paint;

    iget v1, p0, Lcom/rey/material/drawable/DividerDrawable;->g:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 55
    iget-object v0, p0, Lcom/rey/material/drawable/DividerDrawable;->e:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 56
    iget-object v0, p0, Lcom/rey/material/drawable/DividerDrawable;->e:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 58
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/rey/material/drawable/DividerDrawable;->l:Landroid/graphics/Path;

    .line 60
    iput-boolean v3, p0, Lcom/rey/material/drawable/DividerDrawable;->n:Z

    .line 61
    invoke-virtual {p0, p4}, Lcom/rey/material/drawable/DividerDrawable;->a(Landroid/content/res/ColorStateList;)V

    .line 62
    iput-boolean v2, p0, Lcom/rey/material/drawable/DividerDrawable;->n:Z

    .line 63
    return-void
.end method

.method public constructor <init>(ILandroid/content/res/ColorStateList;I)V
    .registers 10

    .prologue
    const/4 v2, 0x0

    .line 42
    move-object v0, p0

    move v1, p1

    move v3, v2

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/rey/material/drawable/DividerDrawable;-><init>(IIILandroid/content/res/ColorStateList;I)V

    .line 43
    return-void
.end method

.method private a()Landroid/graphics/PathEffect;
    .registers 5

    .prologue
    .line 111
    iget-object v0, p0, Lcom/rey/material/drawable/DividerDrawable;->k:Landroid/graphics/PathEffect;

    if-nez v0, :cond_1d

    .line 112
    new-instance v0, Landroid/graphics/DashPathEffect;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    const v3, 0x3e4ccccd    # 0.2f

    aput v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/rey/material/drawable/DividerDrawable;->g:I

    mul-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    aput v3, v1, v2

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    iput-object v0, p0, Lcom/rey/material/drawable/DividerDrawable;->k:Landroid/graphics/PathEffect;

    .line 114
    :cond_1d
    iget-object v0, p0, Lcom/rey/material/drawable/DividerDrawable;->k:Landroid/graphics/PathEffect;

    return-object v0
.end method

.method static synthetic a(Lcom/rey/material/drawable/DividerDrawable;)V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/rey/material/drawable/DividerDrawable;->c()V

    return-void
.end method

.method private b()V
    .registers 3

    .prologue
    .line 202
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/rey/material/drawable/DividerDrawable;->b:J

    .line 203
    const/4 v0, 0x0

    iput v0, p0, Lcom/rey/material/drawable/DividerDrawable;->c:F

    .line 204
    return-void
.end method

.method private c()V
    .registers 7

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 241
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 242
    iget-wide v2, p0, Lcom/rey/material/drawable/DividerDrawable;->b:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    iget v1, p0, Lcom/rey/material/drawable/DividerDrawable;->d:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-static {v4, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/rey/material/drawable/DividerDrawable;->c:F

    .line 244
    iget v0, p0, Lcom/rey/material/drawable/DividerDrawable;->c:F

    cmpl-float v0, v0, v4

    if-nez v0, :cond_1d

    .line 245
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/rey/material/drawable/DividerDrawable;->a:Z

    .line 247
    :cond_1d
    invoke-virtual {p0}, Lcom/rey/material/drawable/DividerDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 248
    iget-object v0, p0, Lcom/rey/material/drawable/DividerDrawable;->q:Ljava/lang/Runnable;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x10

    add-long/2addr v2, v4

    invoke-virtual {p0, v0, v2, v3}, Lcom/rey/material/drawable/DividerDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 250
    :cond_2f
    invoke-virtual {p0}, Lcom/rey/material/drawable/DividerDrawable;->invalidateSelf()V

    .line 251
    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 4

    .prologue
    .line 66
    iget v0, p0, Lcom/rey/material/drawable/DividerDrawable;->g:I

    if-eq v0, p1, :cond_11

    .line 67
    iput p1, p0, Lcom/rey/material/drawable/DividerDrawable;->g:I

    .line 68
    iget-object v0, p0, Lcom/rey/material/drawable/DividerDrawable;->e:Landroid/graphics/Paint;

    iget v1, p0, Lcom/rey/material/drawable/DividerDrawable;->g:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 69
    invoke-virtual {p0}, Lcom/rey/material/drawable/DividerDrawable;->invalidateSelf()V

    .line 71
    :cond_11
    return-void
.end method

.method public a(Landroid/content/res/ColorStateList;)V
    .registers 3

    .prologue
    .line 102
    iput-object p1, p0, Lcom/rey/material/drawable/DividerDrawable;->f:Landroid/content/res/ColorStateList;

    .line 103
    invoke-virtual {p0}, Lcom/rey/material/drawable/DividerDrawable;->getState()[I

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/rey/material/drawable/DividerDrawable;->onStateChange([I)Z

    .line 104
    return-void
.end method

.method public b(I)V
    .registers 2

    .prologue
    .line 107
    iput p1, p0, Lcom/rey/material/drawable/DividerDrawable;->d:I

    .line 108
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 10

    .prologue
    const/4 v0, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    .line 119
    iget v1, p0, Lcom/rey/material/drawable/DividerDrawable;->g:I

    if-nez v1, :cond_8

    .line 156
    :goto_7
    return-void

    .line 122
    :cond_8
    invoke-virtual {p0}, Lcom/rey/material/drawable/DividerDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 123
    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    iget v3, p0, Lcom/rey/material/drawable/DividerDrawable;->g:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    .line 125
    invoke-virtual {p0}, Lcom/rey/material/drawable/DividerDrawable;->isRunning()Z

    move-result v3

    if-nez v3, :cond_52

    .line 126
    iget-object v3, p0, Lcom/rey/material/drawable/DividerDrawable;->l:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 127
    iget-object v3, p0, Lcom/rey/material/drawable/DividerDrawable;->l:Landroid/graphics/Path;

    iget v4, v1, Landroid/graphics/Rect;->left:I

    iget v5, p0, Lcom/rey/material/drawable/DividerDrawable;->o:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v3, v4, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 128
    iget-object v3, p0, Lcom/rey/material/drawable/DividerDrawable;->l:Landroid/graphics/Path;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget v4, p0, Lcom/rey/material/drawable/DividerDrawable;->p:I

    sub-int/2addr v1, v4

    int-to-float v1, v1

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 129
    iget-object v1, p0, Lcom/rey/material/drawable/DividerDrawable;->e:Landroid/graphics/Paint;

    iget-boolean v2, p0, Lcom/rey/material/drawable/DividerDrawable;->j:Z

    if-eqz v2, :cond_4d

    :goto_3b
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 130
    iget-object v0, p0, Lcom/rey/material/drawable/DividerDrawable;->e:Landroid/graphics/Paint;

    iget v1, p0, Lcom/rey/material/drawable/DividerDrawable;->i:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 131
    iget-object v0, p0, Lcom/rey/material/drawable/DividerDrawable;->l:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/rey/material/drawable/DividerDrawable;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_7

    .line 129
    :cond_4d
    invoke-direct {p0}, Lcom/rey/material/drawable/DividerDrawable;->a()Landroid/graphics/PathEffect;

    move-result-object v0

    goto :goto_3b

    .line 134
    :cond_52
    iget v3, v1, Landroid/graphics/Rect;->right:I

    iget v4, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/rey/material/drawable/DividerDrawable;->p:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/rey/material/drawable/DividerDrawable;->o:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    .line 135
    iget v4, p0, Lcom/rey/material/drawable/DividerDrawable;->c:F

    sub-float v4, v7, v4

    mul-float/2addr v4, v3

    iget v5, v1, Landroid/graphics/Rect;->left:I

    iget v6, p0, Lcom/rey/material/drawable/DividerDrawable;->o:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    iget v6, p0, Lcom/rey/material/drawable/DividerDrawable;->c:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    .line 136
    iget v5, p0, Lcom/rey/material/drawable/DividerDrawable;->c:F

    sub-float v5, v7, v5

    mul-float/2addr v3, v5

    iget v5, v1, Landroid/graphics/Rect;->right:I

    iget v6, p0, Lcom/rey/material/drawable/DividerDrawable;->p:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    iget v6, p0, Lcom/rey/material/drawable/DividerDrawable;->c:F

    mul-float/2addr v5, v6

    add-float/2addr v3, v5

    .line 138
    iget-object v5, p0, Lcom/rey/material/drawable/DividerDrawable;->e:Landroid/graphics/Paint;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 140
    iget v0, p0, Lcom/rey/material/drawable/DividerDrawable;->c:F

    cmpg-float v0, v0, v7

    if-gez v0, :cond_bd

    .line 141
    iget-object v0, p0, Lcom/rey/material/drawable/DividerDrawable;->e:Landroid/graphics/Paint;

    iget v5, p0, Lcom/rey/material/drawable/DividerDrawable;->h:I

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 142
    iget-object v0, p0, Lcom/rey/material/drawable/DividerDrawable;->l:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 143
    iget-object v0, p0, Lcom/rey/material/drawable/DividerDrawable;->l:Landroid/graphics/Path;

    iget v5, v1, Landroid/graphics/Rect;->left:I

    iget v6, p0, Lcom/rey/material/drawable/DividerDrawable;->o:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {v0, v5, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 144
    iget-object v0, p0, Lcom/rey/material/drawable/DividerDrawable;->l:Landroid/graphics/Path;

    invoke-virtual {v0, v4, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 145
    iget-object v0, p0, Lcom/rey/material/drawable/DividerDrawable;->l:Landroid/graphics/Path;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget v5, p0, Lcom/rey/material/drawable/DividerDrawable;->p:I

    sub-int/2addr v1, v5

    int-to-float v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 146
    iget-object v0, p0, Lcom/rey/material/drawable/DividerDrawable;->l:Landroid/graphics/Path;

    invoke-virtual {v0, v3, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 147
    iget-object v0, p0, Lcom/rey/material/drawable/DividerDrawable;->l:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/rey/material/drawable/DividerDrawable;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 150
    :cond_bd
    iget-object v0, p0, Lcom/rey/material/drawable/DividerDrawable;->e:Landroid/graphics/Paint;

    iget v1, p0, Lcom/rey/material/drawable/DividerDrawable;->i:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 151
    iget-object v0, p0, Lcom/rey/material/drawable/DividerDrawable;->l:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 152
    iget-object v0, p0, Lcom/rey/material/drawable/DividerDrawable;->l:Landroid/graphics/Path;

    invoke-virtual {v0, v4, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 153
    iget-object v0, p0, Lcom/rey/material/drawable/DividerDrawable;->l:Landroid/graphics/Path;

    invoke-virtual {v0, v3, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 154
    iget-object v0, p0, Lcom/rey/material/drawable/DividerDrawable;->l:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/rey/material/drawable/DividerDrawable;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_7
.end method

.method public getOpacity()I
    .registers 2

    .prologue
    .line 170
    const/4 v0, -0x3

    return v0
.end method

.method public isRunning()Z
    .registers 2

    .prologue
    .line 222
    iget-boolean v0, p0, Lcom/rey/material/drawable/DividerDrawable;->a:Z

    return v0
.end method

.method public isStateful()Z
    .registers 2

    .prologue
    .line 175
    const/4 v0, 0x1

    return v0
.end method

.method protected onStateChange([I)Z
    .registers 4

    .prologue
    .line 180
    const v0, 0x101009e

    invoke-static {p1, v0}, Lcom/rey/material/util/ViewUtil;->a([II)Z

    move-result v0

    iput-boolean v0, p0, Lcom/rey/material/drawable/DividerDrawable;->j:Z

    .line 181
    iget-object v0, p0, Lcom/rey/material/drawable/DividerDrawable;->f:Landroid/content/res/ColorStateList;

    iget v1, p0, Lcom/rey/material/drawable/DividerDrawable;->i:I

    invoke-virtual {v0, p1, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    .line 183
    iget v0, p0, Lcom/rey/material/drawable/DividerDrawable;->i:I

    if-eq v0, v1, :cond_3e

    .line 184
    iget-boolean v0, p0, Lcom/rey/material/drawable/DividerDrawable;->m:Z

    if-nez v0, :cond_39

    iget-boolean v0, p0, Lcom/rey/material/drawable/DividerDrawable;->n:Z

    if-eqz v0, :cond_39

    iget-boolean v0, p0, Lcom/rey/material/drawable/DividerDrawable;->j:Z

    if-eqz v0, :cond_39

    iget v0, p0, Lcom/rey/material/drawable/DividerDrawable;->d:I

    if-lez v0, :cond_39

    .line 185
    invoke-virtual {p0}, Lcom/rey/material/drawable/DividerDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_36

    iget v0, p0, Lcom/rey/material/drawable/DividerDrawable;->h:I

    :goto_2d
    iput v0, p0, Lcom/rey/material/drawable/DividerDrawable;->h:I

    .line 186
    iput v1, p0, Lcom/rey/material/drawable/DividerDrawable;->i:I

    .line 187
    invoke-virtual {p0}, Lcom/rey/material/drawable/DividerDrawable;->start()V

    .line 193
    :goto_34
    const/4 v0, 0x1

    .line 198
    :goto_35
    return v0

    .line 185
    :cond_36
    iget v0, p0, Lcom/rey/material/drawable/DividerDrawable;->i:I

    goto :goto_2d

    .line 190
    :cond_39
    iput v1, p0, Lcom/rey/material/drawable/DividerDrawable;->h:I

    .line 191
    iput v1, p0, Lcom/rey/material/drawable/DividerDrawable;->i:I

    goto :goto_34

    .line 195
    :cond_3e
    invoke-virtual {p0}, Lcom/rey/material/drawable/DividerDrawable;->isRunning()Z

    move-result v0

    if-nez v0, :cond_46

    .line 196
    iput v1, p0, Lcom/rey/material/drawable/DividerDrawable;->h:I

    .line 198
    :cond_46
    const/4 v0, 0x0

    goto :goto_35
.end method

.method public scheduleSelf(Ljava/lang/Runnable;J)V
    .registers 6

    .prologue
    .line 227
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/rey/material/drawable/DividerDrawable;->a:Z

    .line 228
    invoke-super {p0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 229
    return-void
.end method

.method public setAlpha(I)V
    .registers 3

    .prologue
    .line 160
    iget-object v0, p0, Lcom/rey/material/drawable/DividerDrawable;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 161
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3

    .prologue
    .line 165
    iget-object v0, p0, Lcom/rey/material/drawable/DividerDrawable;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 166
    return-void
.end method

.method public start()V
    .registers 7

    .prologue
    .line 208
    invoke-direct {p0}, Lcom/rey/material/drawable/DividerDrawable;->b()V

    .line 209
    iget-object v0, p0, Lcom/rey/material/drawable/DividerDrawable;->q:Ljava/lang/Runnable;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x10

    add-long/2addr v2, v4

    invoke-virtual {p0, v0, v2, v3}, Lcom/rey/material/drawable/DividerDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 210
    invoke-virtual {p0}, Lcom/rey/material/drawable/DividerDrawable;->invalidateSelf()V

    .line 211
    return-void
.end method

.method public stop()V
    .registers 2

    .prologue
    .line 215
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/rey/material/drawable/DividerDrawable;->a:Z

    .line 216
    iget-object v0, p0, Lcom/rey/material/drawable/DividerDrawable;->q:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/rey/material/drawable/DividerDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 217
    invoke-virtual {p0}, Lcom/rey/material/drawable/DividerDrawable;->invalidateSelf()V

    .line 218
    return-void
.end method
