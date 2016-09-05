.class public Lcom/rey/material/drawable/ArrowDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "ArrowDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# static fields
.field public static a:I

.field public static b:I


# instance fields
.field private c:Z

.field private d:J

.field private e:F

.field private f:I

.field private g:Landroid/graphics/Paint;

.field private h:Landroid/content/res/ColorStateList;

.field private i:I

.field private j:I

.field private k:I

.field private l:Landroid/view/animation/Interpolator;

.field private m:Landroid/graphics/Path;

.field private n:Z

.field private final o:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 34
    const/4 v0, 0x0

    sput v0, Lcom/rey/material/drawable/ArrowDrawable;->a:I

    .line 35
    const/4 v0, 0x1

    sput v0, Lcom/rey/material/drawable/ArrowDrawable;->b:I

    return-void
.end method

.method public constructor <init>(IILandroid/content/res/ColorStateList;ILandroid/view/animation/Interpolator;Z)V
    .registers 9

    .prologue
    const/4 v1, 0x1

    .line 39
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/rey/material/drawable/ArrowDrawable;->c:Z

    .line 37
    iput-boolean v1, p0, Lcom/rey/material/drawable/ArrowDrawable;->n:Z

    .line 204
    new-instance v0, Lcom/rey/material/drawable/ArrowDrawable$1;

    invoke-direct {v0, p0}, Lcom/rey/material/drawable/ArrowDrawable$1;-><init>(Lcom/rey/material/drawable/ArrowDrawable;)V

    iput-object v0, p0, Lcom/rey/material/drawable/ArrowDrawable;->o:Ljava/lang/Runnable;

    .line 40
    iput p2, p0, Lcom/rey/material/drawable/ArrowDrawable;->i:I

    .line 41
    iput p4, p0, Lcom/rey/material/drawable/ArrowDrawable;->f:I

    .line 42
    iput p1, p0, Lcom/rey/material/drawable/ArrowDrawable;->k:I

    .line 43
    iput-object p5, p0, Lcom/rey/material/drawable/ArrowDrawable;->l:Landroid/view/animation/Interpolator;

    .line 44
    iget-object v0, p0, Lcom/rey/material/drawable/ArrowDrawable;->l:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_23

    .line 45
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/rey/material/drawable/ArrowDrawable;->l:Landroid/view/animation/Interpolator;

    .line 46
    :cond_23
    iput-boolean p6, p0, Lcom/rey/material/drawable/ArrowDrawable;->n:Z

    .line 48
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/rey/material/drawable/ArrowDrawable;->g:Landroid/graphics/Paint;

    .line 49
    iget-object v0, p0, Lcom/rey/material/drawable/ArrowDrawable;->g:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 50
    iget-object v0, p0, Lcom/rey/material/drawable/ArrowDrawable;->g:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 52
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/rey/material/drawable/ArrowDrawable;->m:Landroid/graphics/Path;

    .line 54
    invoke-virtual {p0, p3}, Lcom/rey/material/drawable/ArrowDrawable;->a(Landroid/content/res/ColorStateList;)V

    .line 55
    return-void
.end method

.method private a()V
    .registers 3

    .prologue
    .line 175
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/rey/material/drawable/ArrowDrawable;->d:J

    .line 176
    const/4 v0, 0x0

    iput v0, p0, Lcom/rey/material/drawable/ArrowDrawable;->e:F

    .line 177
    return-void
.end method

.method static synthetic a(Lcom/rey/material/drawable/ArrowDrawable;)V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/rey/material/drawable/ArrowDrawable;->b()V

    return-void
.end method

.method private b()V
    .registers 7

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 214
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 215
    iget-wide v2, p0, Lcom/rey/material/drawable/ArrowDrawable;->d:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    iget v1, p0, Lcom/rey/material/drawable/ArrowDrawable;->f:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-static {v4, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/rey/material/drawable/ArrowDrawable;->e:F

    .line 217
    iget v0, p0, Lcom/rey/material/drawable/ArrowDrawable;->e:F

    cmpl-float v0, v0, v4

    if-nez v0, :cond_1d

    .line 218
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/rey/material/drawable/ArrowDrawable;->c:Z

    .line 220
    :cond_1d
    invoke-virtual {p0}, Lcom/rey/material/drawable/ArrowDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 221
    iget-object v0, p0, Lcom/rey/material/drawable/ArrowDrawable;->o:Ljava/lang/Runnable;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x10

    add-long/2addr v2, v4

    invoke-virtual {p0, v0, v2, v3}, Lcom/rey/material/drawable/ArrowDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 223
    :cond_2f
    invoke-virtual {p0}, Lcom/rey/material/drawable/ArrowDrawable;->invalidateSelf()V

    .line 224
    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 2

    .prologue
    .line 63
    iput p1, p0, Lcom/rey/material/drawable/ArrowDrawable;->f:I

    .line 64
    return-void
.end method

.method public a(IZ)V
    .registers 4

    .prologue
    .line 82
    iget v0, p0, Lcom/rey/material/drawable/ArrowDrawable;->k:I

    if-eq v0, p1, :cond_f

    .line 83
    iput p1, p0, Lcom/rey/material/drawable/ArrowDrawable;->k:I

    .line 84
    if-eqz p2, :cond_10

    iget v0, p0, Lcom/rey/material/drawable/ArrowDrawable;->f:I

    if-lez v0, :cond_10

    .line 85
    invoke-virtual {p0}, Lcom/rey/material/drawable/ArrowDrawable;->start()V

    .line 89
    :cond_f
    :goto_f
    return-void

    .line 87
    :cond_10
    invoke-virtual {p0}, Lcom/rey/material/drawable/ArrowDrawable;->invalidateSelf()V

    goto :goto_f
.end method

.method public a(Landroid/content/res/ColorStateList;)V
    .registers 3

    .prologue
    .line 58
    iput-object p1, p0, Lcom/rey/material/drawable/ArrowDrawable;->h:Landroid/content/res/ColorStateList;

    .line 59
    invoke-virtual {p0}, Lcom/rey/material/drawable/ArrowDrawable;->getState()[I

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/rey/material/drawable/ArrowDrawable;->onStateChange([I)Z

    .line 60
    return-void
.end method

.method public a(Landroid/view/animation/Interpolator;)V
    .registers 2

    .prologue
    .line 67
    iput-object p1, p0, Lcom/rey/material/drawable/ArrowDrawable;->l:Landroid/view/animation/Interpolator;

    .line 68
    return-void
.end method

.method public a(Z)V
    .registers 2

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/rey/material/drawable/ArrowDrawable;->n:Z

    .line 72
    return-void
.end method

.method public b(I)V
    .registers 3

    .prologue
    .line 75
    iget v0, p0, Lcom/rey/material/drawable/ArrowDrawable;->i:I

    if-eq v0, p1, :cond_9

    .line 76
    iput p1, p0, Lcom/rey/material/drawable/ArrowDrawable;->i:I

    .line 77
    invoke-virtual {p0}, Lcom/rey/material/drawable/ArrowDrawable;->invalidateSelf()V

    .line 79
    :cond_9
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 10

    .prologue
    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v6, -0x3ccc0000    # -180.0f

    const/high16 v5, 0x43340000    # 180.0f

    .line 109
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 110
    invoke-virtual {p0}, Lcom/rey/material/drawable/ArrowDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 112
    invoke-virtual {p0}, Lcom/rey/material/drawable/ArrowDrawable;->isRunning()Z

    move-result v0

    if-nez v0, :cond_37

    .line 113
    iget v0, p0, Lcom/rey/material/drawable/ArrowDrawable;->k:I

    sget v3, Lcom/rey/material/drawable/ArrowDrawable;->b:I

    if-ne v0, v3, :cond_25

    .line 114
    invoke-virtual {v2}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v0

    invoke-virtual {v2}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v2

    invoke-virtual {p1, v5, v0, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 136
    :cond_25
    :goto_25
    iget-object v0, p0, Lcom/rey/material/drawable/ArrowDrawable;->g:Landroid/graphics/Paint;

    iget v2, p0, Lcom/rey/material/drawable/ArrowDrawable;->j:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 137
    iget-object v0, p0, Lcom/rey/material/drawable/ArrowDrawable;->m:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/rey/material/drawable/ArrowDrawable;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 139
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 140
    return-void

    .line 117
    :cond_37
    iget-object v0, p0, Lcom/rey/material/drawable/ArrowDrawable;->l:Landroid/view/animation/Interpolator;

    iget v3, p0, Lcom/rey/material/drawable/ArrowDrawable;->e:F

    invoke-interface {v0, v3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    .line 120
    iget-boolean v3, p0, Lcom/rey/material/drawable/ArrowDrawable;->n:Z

    if-eqz v3, :cond_59

    .line 121
    iget v3, p0, Lcom/rey/material/drawable/ArrowDrawable;->k:I

    sget v4, Lcom/rey/material/drawable/ArrowDrawable;->b:I

    if-ne v3, v4, :cond_56

    .line 122
    mul-float/2addr v0, v5

    .line 133
    :goto_4a
    invoke-virtual {v2}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v2

    invoke-virtual {p1, v0, v3, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    goto :goto_25

    .line 124
    :cond_56
    add-float/2addr v0, v7

    mul-float/2addr v0, v5

    goto :goto_4a

    .line 127
    :cond_59
    iget v3, p0, Lcom/rey/material/drawable/ArrowDrawable;->k:I

    sget v4, Lcom/rey/material/drawable/ArrowDrawable;->b:I

    if-ne v3, v4, :cond_61

    .line 128
    mul-float/2addr v0, v6

    goto :goto_4a

    .line 130
    :cond_61
    add-float/2addr v0, v7

    mul-float/2addr v0, v6

    goto :goto_4a
.end method

.method public getOpacity()I
    .registers 2

    .prologue
    .line 154
    const/4 v0, -0x3

    return v0
.end method

.method public isRunning()Z
    .registers 2

    .prologue
    .line 195
    iget-boolean v0, p0, Lcom/rey/material/drawable/ArrowDrawable;->c:Z

    return v0
.end method

.method public isStateful()Z
    .registers 2

    .prologue
    .line 159
    const/4 v0, 0x1

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .registers 8

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    .line 97
    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v0

    .line 98
    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v1

    .line 100
    iget-object v2, p0, Lcom/rey/material/drawable/ArrowDrawable;->m:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 101
    iget-object v2, p0, Lcom/rey/material/drawable/ArrowDrawable;->m:Landroid/graphics/Path;

    iget v3, p0, Lcom/rey/material/drawable/ArrowDrawable;->i:I

    int-to-float v3, v3

    div-float/2addr v3, v5

    add-float/2addr v3, v1

    invoke-virtual {v2, v0, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 102
    iget-object v2, p0, Lcom/rey/material/drawable/ArrowDrawable;->m:Landroid/graphics/Path;

    iget v3, p0, Lcom/rey/material/drawable/ArrowDrawable;->i:I

    int-to-float v3, v3

    sub-float v3, v0, v3

    iget v4, p0, Lcom/rey/material/drawable/ArrowDrawable;->i:I

    int-to-float v4, v4

    div-float/2addr v4, v5

    sub-float v4, v1, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 103
    iget-object v2, p0, Lcom/rey/material/drawable/ArrowDrawable;->m:Landroid/graphics/Path;

    iget v3, p0, Lcom/rey/material/drawable/ArrowDrawable;->i:I

    int-to-float v3, v3

    add-float/2addr v0, v3

    iget v3, p0, Lcom/rey/material/drawable/ArrowDrawable;->i:I

    int-to-float v3, v3

    div-float/2addr v3, v5

    sub-float/2addr v1, v3

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 104
    iget-object v0, p0, Lcom/rey/material/drawable/ArrowDrawable;->m:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 105
    return-void
.end method

.method protected onStateChange([I)Z
    .registers 4

    .prologue
    .line 164
    iget-object v0, p0, Lcom/rey/material/drawable/ArrowDrawable;->h:Landroid/content/res/ColorStateList;

    iget v1, p0, Lcom/rey/material/drawable/ArrowDrawable;->j:I

    invoke-virtual {v0, p1, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 166
    iget v1, p0, Lcom/rey/material/drawable/ArrowDrawable;->j:I

    if-eq v1, v0, :cond_10

    .line 167
    iput v0, p0, Lcom/rey/material/drawable/ArrowDrawable;->j:I

    .line 168
    const/4 v0, 0x1

    .line 171
    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public scheduleSelf(Ljava/lang/Runnable;J)V
    .registers 6

    .prologue
    .line 200
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/rey/material/drawable/ArrowDrawable;->c:Z

    .line 201
    invoke-super {p0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 202
    return-void
.end method

.method public setAlpha(I)V
    .registers 3

    .prologue
    .line 144
    iget-object v0, p0, Lcom/rey/material/drawable/ArrowDrawable;->g:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 145
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3

    .prologue
    .line 149
    iget-object v0, p0, Lcom/rey/material/drawable/ArrowDrawable;->g:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 150
    return-void
.end method

.method public start()V
    .registers 7

    .prologue
    .line 181
    invoke-direct {p0}, Lcom/rey/material/drawable/ArrowDrawable;->a()V

    .line 182
    iget-object v0, p0, Lcom/rey/material/drawable/ArrowDrawable;->o:Ljava/lang/Runnable;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x10

    add-long/2addr v2, v4

    invoke-virtual {p0, v0, v2, v3}, Lcom/rey/material/drawable/ArrowDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 183
    invoke-virtual {p0}, Lcom/rey/material/drawable/ArrowDrawable;->invalidateSelf()V

    .line 184
    return-void
.end method

.method public stop()V
    .registers 2

    .prologue
    .line 188
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/rey/material/drawable/ArrowDrawable;->c:Z

    .line 189
    iget-object v0, p0, Lcom/rey/material/drawable/ArrowDrawable;->o:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/rey/material/drawable/ArrowDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 190
    invoke-virtual {p0}, Lcom/rey/material/drawable/ArrowDrawable;->invalidateSelf()V

    .line 191
    return-void
.end method
