.class Landroid/support/v7/widget/RoundRectDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "RoundRectDrawable.java"


# instance fields
.field private mBackground:Landroid/content/res/ColorStateList;

.field private final mBoundsF:Landroid/graphics/RectF;

.field private final mBoundsI:Landroid/graphics/Rect;

.field private mInsetForPadding:Z

.field private mInsetForRadius:Z

.field private mPadding:F

.field private final mPaint:Landroid/graphics/Paint;

.field private mRadius:F

.field private mTint:Landroid/content/res/ColorStateList;

.field private mTintFilter:Landroid/graphics/PorterDuffColorFilter;

.field private mTintMode:Landroid/graphics/PorterDuff$Mode;


# direct methods
.method public constructor <init>(Landroid/content/res/ColorStateList;F)V
    .registers 5

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/RoundRectDrawable;->mInsetForPadding:Z

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/RoundRectDrawable;->mInsetForRadius:Z

    .line 53
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Landroid/support/v7/widget/RoundRectDrawable;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 56
    iput p2, p0, Landroid/support/v7/widget/RoundRectDrawable;->mRadius:F

    .line 57
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Landroid/support/v7/widget/RoundRectDrawable;->mPaint:Landroid/graphics/Paint;

    .line 58
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RoundRectDrawable;->setBackground(Landroid/content/res/ColorStateList;)V

    .line 60
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RoundRectDrawable;->mBoundsF:Landroid/graphics/RectF;

    .line 61
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RoundRectDrawable;->mBoundsI:Landroid/graphics/Rect;

    .line 62
    return-void
.end method

.method private createTintFilter(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
    .registers 5

    .prologue
    .line 206
    if-eqz p1, :cond_4

    if-nez p2, :cond_6

    .line 207
    :cond_4
    const/4 v0, 0x0

    .line 210
    :goto_5
    return-object v0

    .line 209
    :cond_6
    invoke-virtual {p0}, Landroid/support/v7/widget/RoundRectDrawable;->getState()[I

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    .line 210
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v0, v1, p2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_5
.end method

.method private setBackground(Landroid/content/res/ColorStateList;)V
    .registers 6

    .prologue
    .line 65
    if-nez p1, :cond_7

    const/4 v0, 0x0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    :cond_7
    iput-object p1, p0, Landroid/support/v7/widget/RoundRectDrawable;->mBackground:Landroid/content/res/ColorStateList;

    .line 66
    iget-object v0, p0, Landroid/support/v7/widget/RoundRectDrawable;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Landroid/support/v7/widget/RoundRectDrawable;->mBackground:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/support/v7/widget/RoundRectDrawable;->getState()[I

    move-result-object v2

    iget-object v3, p0, Landroid/support/v7/widget/RoundRectDrawable;->mBackground:Landroid/content/res/ColorStateList;

    invoke-virtual {v3}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 67
    return-void
.end method

.method private updateBounds(Landroid/graphics/Rect;)V
    .registers 8

    .prologue
    .line 105
    if-nez p1, :cond_6

    .line 106
    invoke-virtual {p0}, Landroid/support/v7/widget/RoundRectDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    .line 108
    :cond_6
    iget-object v0, p0, Landroid/support/v7/widget/RoundRectDrawable;->mBoundsF:Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget v3, p1, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 109
    iget-object v0, p0, Landroid/support/v7/widget/RoundRectDrawable;->mBoundsI:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 110
    iget-boolean v0, p0, Landroid/support/v7/widget/RoundRectDrawable;->mInsetForPadding:Z

    if-eqz v0, :cond_4c

    .line 111
    iget v0, p0, Landroid/support/v7/widget/RoundRectDrawable;->mPadding:F

    iget v1, p0, Landroid/support/v7/widget/RoundRectDrawable;->mRadius:F

    iget-boolean v2, p0, Landroid/support/v7/widget/RoundRectDrawable;->mInsetForRadius:Z

    invoke-static {v0, v1, v2}, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->a(FFZ)F

    move-result v0

    .line 112
    iget v1, p0, Landroid/support/v7/widget/RoundRectDrawable;->mPadding:F

    iget v2, p0, Landroid/support/v7/widget/RoundRectDrawable;->mRadius:F

    iget-boolean v3, p0, Landroid/support/v7/widget/RoundRectDrawable;->mInsetForRadius:Z

    invoke-static {v1, v2, v3}, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->b(FFZ)F

    move-result v1

    .line 113
    iget-object v2, p0, Landroid/support/v7/widget/RoundRectDrawable;->mBoundsI:Landroid/graphics/Rect;

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v1, v4

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v0, v4

    invoke-virtual {v2, v1, v0}, Landroid/graphics/Rect;->inset(II)V

    .line 115
    iget-object v0, p0, Landroid/support/v7/widget/RoundRectDrawable;->mBoundsF:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/support/v7/widget/RoundRectDrawable;->mBoundsI:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 117
    :cond_4c
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 7

    .prologue
    .line 87
    iget-object v1, p0, Landroid/support/v7/widget/RoundRectDrawable;->mPaint:Landroid/graphics/Paint;

    .line 90
    iget-object v0, p0, Landroid/support/v7/widget/RoundRectDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    if-eqz v0, :cond_22

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    if-nez v0, :cond_22

    .line 91
    iget-object v0, p0, Landroid/support/v7/widget/RoundRectDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 92
    const/4 v0, 0x1

    .line 97
    :goto_12
    iget-object v2, p0, Landroid/support/v7/widget/RoundRectDrawable;->mBoundsF:Landroid/graphics/RectF;

    iget v3, p0, Landroid/support/v7/widget/RoundRectDrawable;->mRadius:F

    iget v4, p0, Landroid/support/v7/widget/RoundRectDrawable;->mRadius:F

    invoke-virtual {p1, v2, v3, v4, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 99
    if-eqz v0, :cond_21

    .line 100
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 102
    :cond_21
    return-void

    .line 94
    :cond_22
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public getColor()Landroid/content/res/ColorStateList;
    .registers 2

    .prologue
    .line 164
    iget-object v0, p0, Landroid/support/v7/widget/RoundRectDrawable;->mBackground:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getOpacity()I
    .registers 2

    .prologue
    .line 151
    const/4 v0, -0x3

    return v0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .registers 4

    .prologue
    .line 127
    iget-object v0, p0, Landroid/support/v7/widget/RoundRectDrawable;->mBoundsI:Landroid/graphics/Rect;

    iget v1, p0, Landroid/support/v7/widget/RoundRectDrawable;->mRadius:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    .line 128
    return-void
.end method

.method getPadding()F
    .registers 2

    .prologue
    .line 82
    iget v0, p0, Landroid/support/v7/widget/RoundRectDrawable;->mPadding:F

    return v0
.end method

.method public getRadius()F
    .registers 2

    .prologue
    .line 155
    iget v0, p0, Landroid/support/v7/widget/RoundRectDrawable;->mRadius:F

    return v0
.end method

.method public isStateful()Z
    .registers 2

    .prologue
    .line 197
    iget-object v0, p0, Landroid/support/v7/widget/RoundRectDrawable;->mTint:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/support/v7/widget/RoundRectDrawable;->mTint:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_1e

    :cond_c
    iget-object v0, p0, Landroid/support/v7/widget/RoundRectDrawable;->mBackground:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_18

    iget-object v0, p0, Landroid/support/v7/widget/RoundRectDrawable;->mBackground:Landroid/content/res/ColorStateList;

    .line 198
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_1e

    :cond_18
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_20

    :cond_1e
    const/4 v0, 0x1

    :goto_1f
    return v0

    :cond_20
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .registers 2

    .prologue
    .line 121
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 122
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RoundRectDrawable;->updateBounds(Landroid/graphics/Rect;)V

    .line 123
    return-void
.end method

.method protected onStateChange([I)Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    .line 183
    iget-object v1, p0, Landroid/support/v7/widget/RoundRectDrawable;->mBackground:Landroid/content/res/ColorStateList;

    iget-object v2, p0, Landroid/support/v7/widget/RoundRectDrawable;->mBackground:Landroid/content/res/ColorStateList;

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    invoke-virtual {v1, p1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    .line 184
    iget-object v1, p0, Landroid/support/v7/widget/RoundRectDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    if-eq v2, v1, :cond_30

    move v1, v0

    .line 185
    :goto_16
    if-eqz v1, :cond_1d

    .line 186
    iget-object v3, p0, Landroid/support/v7/widget/RoundRectDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 188
    :cond_1d
    iget-object v2, p0, Landroid/support/v7/widget/RoundRectDrawable;->mTint:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_32

    iget-object v2, p0, Landroid/support/v7/widget/RoundRectDrawable;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    if-eqz v2, :cond_32

    .line 189
    iget-object v1, p0, Landroid/support/v7/widget/RoundRectDrawable;->mTint:Landroid/content/res/ColorStateList;

    iget-object v2, p0, Landroid/support/v7/widget/RoundRectDrawable;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p0, v1, v2}, Landroid/support/v7/widget/RoundRectDrawable;->createTintFilter(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/widget/RoundRectDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 192
    :goto_2f
    return v0

    .line 184
    :cond_30
    const/4 v1, 0x0

    goto :goto_16

    :cond_32
    move v0, v1

    .line 192
    goto :goto_2f
.end method

.method public setAlpha(I)V
    .registers 3

    .prologue
    .line 141
    iget-object v0, p0, Landroid/support/v7/widget/RoundRectDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 142
    return-void
.end method

.method public setColor(Landroid/content/res/ColorStateList;)V
    .registers 2

    .prologue
    .line 159
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RoundRectDrawable;->setBackground(Landroid/content/res/ColorStateList;)V

    .line 160
    invoke-virtual {p0}, Landroid/support/v7/widget/RoundRectDrawable;->invalidateSelf()V

    .line 161
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3

    .prologue
    .line 146
    iget-object v0, p0, Landroid/support/v7/widget/RoundRectDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 147
    return-void
.end method

.method setPadding(FZZ)V
    .registers 5

    .prologue
    .line 70
    iget v0, p0, Landroid/support/v7/widget/RoundRectDrawable;->mPadding:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_f

    iget-boolean v0, p0, Landroid/support/v7/widget/RoundRectDrawable;->mInsetForPadding:Z

    if-ne v0, p2, :cond_f

    iget-boolean v0, p0, Landroid/support/v7/widget/RoundRectDrawable;->mInsetForRadius:Z

    if-ne v0, p3, :cond_f

    .line 79
    :goto_e
    return-void

    .line 74
    :cond_f
    iput p1, p0, Landroid/support/v7/widget/RoundRectDrawable;->mPadding:F

    .line 75
    iput-boolean p2, p0, Landroid/support/v7/widget/RoundRectDrawable;->mInsetForPadding:Z

    .line 76
    iput-boolean p3, p0, Landroid/support/v7/widget/RoundRectDrawable;->mInsetForRadius:Z

    .line 77
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/RoundRectDrawable;->updateBounds(Landroid/graphics/Rect;)V

    .line 78
    invoke-virtual {p0}, Landroid/support/v7/widget/RoundRectDrawable;->invalidateSelf()V

    goto :goto_e
.end method

.method setRadius(F)V
    .registers 3

    .prologue
    .line 131
    iget v0, p0, Landroid/support/v7/widget/RoundRectDrawable;->mRadius:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_7

    .line 137
    :goto_6
    return-void

    .line 134
    :cond_7
    iput p1, p0, Landroid/support/v7/widget/RoundRectDrawable;->mRadius:F

    .line 135
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/RoundRectDrawable;->updateBounds(Landroid/graphics/Rect;)V

    .line 136
    invoke-virtual {p0}, Landroid/support/v7/widget/RoundRectDrawable;->invalidateSelf()V

    goto :goto_6
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .registers 4

    .prologue
    .line 169
    iput-object p1, p0, Landroid/support/v7/widget/RoundRectDrawable;->mTint:Landroid/content/res/ColorStateList;

    .line 170
    iget-object v0, p0, Landroid/support/v7/widget/RoundRectDrawable;->mTint:Landroid/content/res/ColorStateList;

    iget-object v1, p0, Landroid/support/v7/widget/RoundRectDrawable;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p0, v0, v1}, Landroid/support/v7/widget/RoundRectDrawable;->createTintFilter(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/RoundRectDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 171
    invoke-virtual {p0}, Landroid/support/v7/widget/RoundRectDrawable;->invalidateSelf()V

    .line 172
    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 4

    .prologue
    .line 176
    iput-object p1, p0, Landroid/support/v7/widget/RoundRectDrawable;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 177
    iget-object v0, p0, Landroid/support/v7/widget/RoundRectDrawable;->mTint:Landroid/content/res/ColorStateList;

    iget-object v1, p0, Landroid/support/v7/widget/RoundRectDrawable;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p0, v0, v1}, Landroid/support/v7/widget/RoundRectDrawable;->createTintFilter(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/RoundRectDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 178
    invoke-virtual {p0}, Landroid/support/v7/widget/RoundRectDrawable;->invalidateSelf()V

    .line 179
    return-void
.end method
