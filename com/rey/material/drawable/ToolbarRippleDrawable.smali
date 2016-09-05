.class public Lcom/rey/material/drawable/ToolbarRippleDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "ToolbarRippleDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# static fields
.field private static final x:[F


# instance fields
.field private a:Z

.field private b:Landroid/graphics/Paint;

.field private c:Landroid/graphics/Paint;

.field private d:Landroid/graphics/RadialGradient;

.field private e:Landroid/graphics/RadialGradient;

.field private f:Landroid/graphics/Matrix;

.field private g:I

.field private h:Landroid/graphics/RectF;

.field private i:Landroid/graphics/Path;

.field private j:I

.field private k:I

.field private l:F

.field private m:Landroid/graphics/PointF;

.field private n:F

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:F

.field private t:I

.field private u:J

.field private v:Z

.field private w:I

.field private final y:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 78
    const/4 v0, 0x3

    new-array v0, v0, [F

    fill-array-data v0, :array_a

    sput-object v0, Lcom/rey/material/drawable/ToolbarRippleDrawable;->x:[F

    return-void

    nop

    :array_a
    .array-data 4
        0x0
        0x3f7d70a4    # 0.99f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private a(FF)I
    .registers 9

    .prologue
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    .line 291
    iget-object v0, p0, Lcom/rey/material/drawable/ToolbarRippleDrawable;->h:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_36

    iget-object v0, p0, Lcom/rey/material/drawable/ToolbarRippleDrawable;->h:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    .line 292
    :goto_10
    iget-object v1, p0, Lcom/rey/material/drawable/ToolbarRippleDrawable;->h:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    cmpg-float v1, p2, v1

    if-gez v1, :cond_3b

    iget-object v1, p0, Lcom/rey/material/drawable/ToolbarRippleDrawable;->h:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    .line 294
    :goto_1e
    sub-float/2addr v0, p1

    float-to-double v2, v0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    sub-float v0, v1, p2

    float-to-double v0, v0

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    return v0

    .line 291
    :cond_36
    iget-object v0, p0, Lcom/rey/material/drawable/ToolbarRippleDrawable;->h:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    goto :goto_10

    .line 292
    :cond_3b
    iget-object v1, p0, Lcom/rey/material/drawable/ToolbarRippleDrawable;->h:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    goto :goto_1e
.end method

.method private a(I)V
    .registers 4

    .prologue
    .line 159
    iget v0, p0, Lcom/rey/material/drawable/ToolbarRippleDrawable;->w:I

    if-eq v0, p1, :cond_12

    .line 160
    iput p1, p0, Lcom/rey/material/drawable/ToolbarRippleDrawable;->w:I

    .line 162
    iget v0, p0, Lcom/rey/material/drawable/ToolbarRippleDrawable;->w:I

    if-eqz v0, :cond_17

    .line 163
    iget v0, p0, Lcom/rey/material/drawable/ToolbarRippleDrawable;->w:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_13

    .line 164
    invoke-virtual {p0}, Lcom/rey/material/drawable/ToolbarRippleDrawable;->start()V

    .line 171
    :cond_12
    :goto_12
    return-void

    .line 166
    :cond_13
    invoke-virtual {p0}, Lcom/rey/material/drawable/ToolbarRippleDrawable;->stop()V

    goto :goto_12

    .line 169
    :cond_17
    invoke-virtual {p0}, Lcom/rey/material/drawable/ToolbarRippleDrawable;->stop()V

    goto :goto_12
.end method

.method private a(Landroid/graphics/Canvas;)V
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 256
    iget v0, p0, Lcom/rey/material/drawable/ToolbarRippleDrawable;->w:I

    if-eqz v0, :cond_51

    .line 257
    iget v0, p0, Lcom/rey/material/drawable/ToolbarRippleDrawable;->l:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_28

    .line 258
    iget-object v0, p0, Lcom/rey/material/drawable/ToolbarRippleDrawable;->c:Landroid/graphics/Paint;

    iget v1, p0, Lcom/rey/material/drawable/ToolbarRippleDrawable;->k:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 259
    iget-object v0, p0, Lcom/rey/material/drawable/ToolbarRippleDrawable;->c:Landroid/graphics/Paint;

    iget v1, p0, Lcom/rey/material/drawable/ToolbarRippleDrawable;->g:I

    int-to-float v1, v1

    iget v2, p0, Lcom/rey/material/drawable/ToolbarRippleDrawable;->l:F

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 260
    iget-object v0, p0, Lcom/rey/material/drawable/ToolbarRippleDrawable;->i:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/rey/material/drawable/ToolbarRippleDrawable;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 263
    :cond_28
    iget v0, p0, Lcom/rey/material/drawable/ToolbarRippleDrawable;->n:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_51

    iget v0, p0, Lcom/rey/material/drawable/ToolbarRippleDrawable;->s:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_51

    .line 264
    iget-object v0, p0, Lcom/rey/material/drawable/ToolbarRippleDrawable;->b:Landroid/graphics/Paint;

    iget v1, p0, Lcom/rey/material/drawable/ToolbarRippleDrawable;->g:I

    int-to-float v1, v1

    iget v2, p0, Lcom/rey/material/drawable/ToolbarRippleDrawable;->s:F

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 265
    iget-object v0, p0, Lcom/rey/material/drawable/ToolbarRippleDrawable;->b:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/rey/material/drawable/ToolbarRippleDrawable;->d:Landroid/graphics/RadialGradient;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 266
    iget-object v0, p0, Lcom/rey/material/drawable/ToolbarRippleDrawable;->i:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/rey/material/drawable/ToolbarRippleDrawable;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 269
    :cond_51
    return-void
.end method

.method private a(FFF)Z
    .registers 6

    .prologue
    .line 174
    iget-object v0, p0, Lcom/rey/material/drawable/ToolbarRippleDrawable;->m:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/rey/material/drawable/ToolbarRippleDrawable;->m:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    cmpl-float v0, v0, p2

    if-nez v0, :cond_16

    iget v0, p0, Lcom/rey/material/drawable/ToolbarRippleDrawable;->n:F

    cmpl-float v0, v0, p3

    if-eqz v0, :cond_45

    .line 175
    :cond_16
    iget-object v0, p0, Lcom/rey/material/drawable/ToolbarRippleDrawable;->m:Landroid/graphics/PointF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    .line 176
    iput p3, p0, Lcom/rey/material/drawable/ToolbarRippleDrawable;->n:F

    .line 177
    iget v0, p0, Lcom/rey/material/drawable/ToolbarRippleDrawable;->n:F

    const/high16 v1, 0x41800000    # 16.0f

    div-float/2addr v0, v1

    .line 178
    iget-object v1, p0, Lcom/rey/material/drawable/ToolbarRippleDrawable;->f:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 179
    iget-object v1, p0, Lcom/rey/material/drawable/ToolbarRippleDrawable;->f:Landroid/graphics/Matrix;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 180
    iget-object v1, p0, Lcom/rey/material/drawable/ToolbarRippleDrawable;->f:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0, v0, p1, p2}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 181
    iget-object v0, p0, Lcom/rey/material/drawable/ToolbarRippleDrawable;->d:Landroid/graphics/RadialGradient;

    iget-object v1, p0, Lcom/rey/material/drawable/ToolbarRippleDrawable;->f:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/RadialGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 182
    iget-object v0, p0, Lcom/rey/material/drawable/ToolbarRippleDrawable;->e:Landroid/graphics/RadialGradient;

    if-eqz v0, :cond_43

    .line 183
    iget-object v0, p0, Lcom/rey/material/drawable/ToolbarRippleDrawable;->e:Landroid/graphics/RadialGradient;

    iget-object v1, p0, Lcom/rey/material/drawable/ToolbarRippleDrawable;->f:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/RadialGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 185
    :cond_43
    const/4 v0, 0x1

    .line 188
    :goto_44
    return v0

    :cond_45
    const/4 v0, 0x0

    goto :goto_44
.end method

.method private b(Landroid/graphics/Canvas;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 272
    iget v0, p0, Lcom/rey/material/drawable/ToolbarRippleDrawable;->w:I

    if-eqz v0, :cond_1e

    .line 273
    iget v0, p0, Lcom/rey/material/drawable/ToolbarRippleDrawable;->w:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2e

    .line 274
    iget v0, p0, Lcom/rey/material/drawable/ToolbarRippleDrawable;->n:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_1f

    .line 275
    iget-object v0, p0, Lcom/rey/material/drawable/ToolbarRippleDrawable;->c:Landroid/graphics/Paint;

    iget v1, p0, Lcom/rey/material/drawable/ToolbarRippleDrawable;->r:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 276
    iget-object v0, p0, Lcom/rey/material/drawable/ToolbarRippleDrawable;->i:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/rey/material/drawable/ToolbarRippleDrawable;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 288
    :cond_1e
    :goto_1e
    return-void

    .line 279
    :cond_1f
    iget-object v0, p0, Lcom/rey/material/drawable/ToolbarRippleDrawable;->b:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/rey/material/drawable/ToolbarRippleDrawable;->e:Landroid/graphics/RadialGradient;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 280
    iget-object v0, p0, Lcom/rey/material/drawable/ToolbarRippleDrawable;->i:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/rey/material/drawable/ToolbarRippleDrawable;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_1e

    .line 283
    :cond_2e
    iget v0, p0, Lcom/rey/material/drawable/ToolbarRippleDrawable;->n:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1e

    .line 284
    iget-object v0, p0, Lcom/rey/material/drawable/ToolbarRippleDrawable;->b:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/rey/material/drawable/ToolbarRippleDrawable;->d:Landroid/graphics/RadialGradient;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 285
    iget-object v0, p0, Lcom/rey/material/drawable/ToolbarRippleDrawable;->i:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/rey/material/drawable/ToolbarRippleDrawable;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_1e
.end method

.method private c()V
    .registers 3

    .prologue
    .line 304
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/rey/material/drawable/ToolbarRippleDrawable;->u:J

    .line 305
    return-void
.end method


# virtual methods
.method public a()J
    .registers 7

    .prologue
    const-wide/16 v0, -0x1

    const/4 v3, 0x3

    .line 140
    iget v2, p0, Lcom/rey/material/drawable/ToolbarRippleDrawable;->t:I

    packed-switch v2, :pswitch_data_4e

    .line 155
    :cond_8
    :goto_8
    :pswitch_8
    return-wide v0

    .line 144
    :pswitch_9
    iget v2, p0, Lcom/rey/material/drawable/ToolbarRippleDrawable;->w:I

    if-ne v2, v3, :cond_8

    .line 145
    iget v0, p0, Lcom/rey/material/drawable/ToolbarRippleDrawable;->j:I

    iget v1, p0, Lcom/rey/material/drawable/ToolbarRippleDrawable;->q:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-long v0, v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/rey/material/drawable/ToolbarRippleDrawable;->u:J

    sub-long/2addr v2, v4

    sub-long/2addr v0, v2

    goto :goto_8

    .line 148
    :pswitch_1f
    iget v2, p0, Lcom/rey/material/drawable/ToolbarRippleDrawable;->w:I

    if-ne v2, v3, :cond_37

    .line 149
    iget v0, p0, Lcom/rey/material/drawable/ToolbarRippleDrawable;->j:I

    iget v1, p0, Lcom/rey/material/drawable/ToolbarRippleDrawable;->q:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    int-to-long v0, v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/rey/material/drawable/ToolbarRippleDrawable;->u:J

    sub-long/2addr v2, v4

    sub-long/2addr v0, v2

    goto :goto_8

    .line 150
    :cond_37
    iget v2, p0, Lcom/rey/material/drawable/ToolbarRippleDrawable;->w:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_8

    .line 151
    iget v0, p0, Lcom/rey/material/drawable/ToolbarRippleDrawable;->j:I

    iget v1, p0, Lcom/rey/material/drawable/ToolbarRippleDrawable;->q:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-long v0, v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/rey/material/drawable/ToolbarRippleDrawable;->u:J

    sub-long/2addr v2, v4

    sub-long/2addr v0, v2

    goto :goto_8

    .line 140
    :pswitch_data_4e
    .packed-switch 0x0
        :pswitch_8
        :pswitch_9
        :pswitch_1f
    .end packed-switch
.end method

.method public b()V
    .registers 2

    .prologue
    .line 300
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/rey/material/drawable/ToolbarRippleDrawable;->a(I)V

    .line 301
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 3

    .prologue
    .line 244
    iget v0, p0, Lcom/rey/material/drawable/ToolbarRippleDrawable;->o:I

    packed-switch v0, :pswitch_data_e

    .line 253
    :goto_5
    return-void

    .line 247
    :pswitch_6
    invoke-direct {p0, p1}, Lcom/rey/material/drawable/ToolbarRippleDrawable;->a(Landroid/graphics/Canvas;)V

    goto :goto_5

    .line 250
    :pswitch_a
    invoke-direct {p0, p1}, Lcom/rey/material/drawable/ToolbarRippleDrawable;->b(Landroid/graphics/Canvas;)V

    goto :goto_5

    .line 244
    :pswitch_data_e
    .packed-switch -0x1
        :pswitch_6
        :pswitch_6
        :pswitch_a
    .end packed-switch
.end method

.method public getOpacity()I
    .registers 2

    .prologue
    .line 136
    const/4 v0, -0x3

    return v0
.end method

.method public isRunning()Z
    .registers 2

    .prologue
    .line 330
    iget-boolean v0, p0, Lcom/rey/material/drawable/ToolbarRippleDrawable;->a:Z

    return v0
.end method

.method public isStateful()Z
    .registers 2

    .prologue
    .line 200
    const/4 v0, 0x1

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .registers 7

    .prologue
    .line 193
    iget-object v0, p0, Lcom/rey/material/drawable/ToolbarRippleDrawable;->h:Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget v3, p1, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 194
    iget-object v0, p0, Lcom/rey/material/drawable/ToolbarRippleDrawable;->i:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 195
    iget-object v0, p0, Lcom/rey/material/drawable/ToolbarRippleDrawable;->i:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/rey/material/drawable/ToolbarRippleDrawable;->h:Landroid/graphics/RectF;

    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 196
    return-void
.end method

.method protected onStateChange([I)Z
    .registers 8

    .prologue
    const/4 v5, 0x4

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v0, 0x1

    .line 205
    const v1, 0x10100a7

    invoke-static {p1, v1}, Lcom/rey/material/util/ViewUtil;->a([II)Z

    move-result v1

    .line 207
    iget-boolean v2, p0, Lcom/rey/material/drawable/ToolbarRippleDrawable;->v:Z

    if-eq v2, v1, :cond_7d

    .line 208
    iput-boolean v1, p0, Lcom/rey/material/drawable/ToolbarRippleDrawable;->v:Z

    .line 210
    iget-boolean v1, p0, Lcom/rey/material/drawable/ToolbarRippleDrawable;->v:Z

    if-eqz v1, :cond_58

    .line 211
    invoke-virtual {p0}, Lcom/rey/material/drawable/ToolbarRippleDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 213
    iget v2, p0, Lcom/rey/material/drawable/ToolbarRippleDrawable;->w:I

    if-eqz v2, :cond_21

    iget v2, p0, Lcom/rey/material/drawable/ToolbarRippleDrawable;->w:I

    if-ne v2, v5, :cond_46

    .line 214
    :cond_21
    iget v2, p0, Lcom/rey/material/drawable/ToolbarRippleDrawable;->o:I

    if-eq v2, v0, :cond_29

    iget v2, p0, Lcom/rey/material/drawable/ToolbarRippleDrawable;->o:I

    if-ne v2, v3, :cond_37

    .line 215
    :cond_29
    invoke-virtual {v1}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/rey/material/drawable/ToolbarRippleDrawable;->a(FF)I

    move-result v2

    iput v2, p0, Lcom/rey/material/drawable/ToolbarRippleDrawable;->p:I

    .line 217
    :cond_37
    invoke-virtual {v1}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v1

    invoke-direct {p0, v2, v1, v4}, Lcom/rey/material/drawable/ToolbarRippleDrawable;->a(FFF)Z

    .line 218
    invoke-direct {p0, v0}, Lcom/rey/material/drawable/ToolbarRippleDrawable;->a(I)V

    .line 239
    :cond_45
    :goto_45
    return v0

    .line 220
    :cond_46
    iget v2, p0, Lcom/rey/material/drawable/ToolbarRippleDrawable;->o:I

    if-nez v2, :cond_45

    .line 221
    invoke-virtual {v1}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v1

    iget v3, p0, Lcom/rey/material/drawable/ToolbarRippleDrawable;->n:F

    invoke-direct {p0, v2, v1, v3}, Lcom/rey/material/drawable/ToolbarRippleDrawable;->a(FFF)Z

    goto :goto_45

    .line 224
    :cond_58
    iget v1, p0, Lcom/rey/material/drawable/ToolbarRippleDrawable;->w:I

    if-eqz v1, :cond_45

    .line 225
    iget v1, p0, Lcom/rey/material/drawable/ToolbarRippleDrawable;->w:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_78

    .line 226
    iget v1, p0, Lcom/rey/material/drawable/ToolbarRippleDrawable;->o:I

    if-eq v1, v0, :cond_69

    iget v1, p0, Lcom/rey/material/drawable/ToolbarRippleDrawable;->o:I

    if-ne v1, v3, :cond_74

    .line 227
    :cond_69
    iget-object v1, p0, Lcom/rey/material/drawable/ToolbarRippleDrawable;->m:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/rey/material/drawable/ToolbarRippleDrawable;->m:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-direct {p0, v1, v2, v4}, Lcom/rey/material/drawable/ToolbarRippleDrawable;->a(FFF)Z

    .line 229
    :cond_74
    invoke-direct {p0, v5}, Lcom/rey/material/drawable/ToolbarRippleDrawable;->a(I)V

    goto :goto_45

    .line 232
    :cond_78
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/rey/material/drawable/ToolbarRippleDrawable;->a(I)V

    goto :goto_45

    .line 239
    :cond_7d
    const/4 v0, 0x0

    goto :goto_45
.end method

.method public scheduleSelf(Ljava/lang/Runnable;J)V
    .registers 6

    .prologue
    .line 335
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/rey/material/drawable/ToolbarRippleDrawable;->a:Z

    .line 336
    invoke-super {p0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 337
    return-void
.end method

.method public setAlpha(I)V
    .registers 2

    .prologue
    .line 125
    iput p1, p0, Lcom/rey/material/drawable/ToolbarRippleDrawable;->g:I

    .line 126
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3

    .prologue
    .line 130
    iget-object v0, p0, Lcom/rey/material/drawable/ToolbarRippleDrawable;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 131
    iget-object v0, p0, Lcom/rey/material/drawable/ToolbarRippleDrawable;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 132
    return-void
.end method

.method public start()V
    .registers 7

    .prologue
    .line 309
    invoke-virtual {p0}, Lcom/rey/material/drawable/ToolbarRippleDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 316
    :goto_6
    return-void

    .line 312
    :cond_7
    invoke-direct {p0}, Lcom/rey/material/drawable/ToolbarRippleDrawable;->c()V

    .line 314
    iget-object v0, p0, Lcom/rey/material/drawable/ToolbarRippleDrawable;->y:Ljava/lang/Runnable;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x10

    add-long/2addr v2, v4

    invoke-virtual {p0, v0, v2, v3}, Lcom/rey/material/drawable/ToolbarRippleDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 315
    invoke-virtual {p0}, Lcom/rey/material/drawable/ToolbarRippleDrawable;->invalidateSelf()V

    goto :goto_6
.end method

.method public stop()V
    .registers 2

    .prologue
    .line 320
    invoke-virtual {p0}, Lcom/rey/material/drawable/ToolbarRippleDrawable;->isRunning()Z

    move-result v0

    if-nez v0, :cond_7

    .line 326
    :goto_6
    return-void

    .line 323
    :cond_7
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/rey/material/drawable/ToolbarRippleDrawable;->a:Z

    .line 324
    iget-object v0, p0, Lcom/rey/material/drawable/ToolbarRippleDrawable;->y:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/rey/material/drawable/ToolbarRippleDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 325
    invoke-virtual {p0}, Lcom/rey/material/drawable/ToolbarRippleDrawable;->invalidateSelf()V

    goto :goto_6
.end method
