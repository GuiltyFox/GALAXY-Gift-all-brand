.class Landroid/support/v4/view/ViewCompatHC;
.super Ljava/lang/Object;
.source "ViewCompatHC.java"


# direct methods
.method public static a(Landroid/view/View;)F
    .registers 2

    .prologue
    .line 31
    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v0

    return v0
.end method

.method public static a(II)I
    .registers 3

    .prologue
    .line 167
    invoke-static {p0, p1}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v0

    return v0
.end method

.method public static a(III)I
    .registers 4

    .prologue
    .line 43
    invoke-static {p0, p1, p2}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v0

    return v0
.end method

.method static a()J
    .registers 2

    .prologue
    .line 27
    invoke-static {}, Landroid/animation/ValueAnimator;->getFrameDelay()J

    move-result-wide v0

    return-wide v0
.end method

.method public static a(Landroid/view/View;F)V
    .registers 2

    .prologue
    .line 95
    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationX(F)V

    .line 96
    return-void
.end method

.method static a(Landroid/view/View;I)V
    .registers 4

    .prologue
    .line 171
    invoke-virtual {p0, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 172
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_19

    .line 173
    invoke-static {p0}, Landroid/support/v4/view/ViewCompatHC;->i(Landroid/view/View;)V

    .line 175
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 176
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_19

    .line 177
    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompatHC;->i(Landroid/view/View;)V

    .line 180
    :cond_19
    return-void
.end method

.method public static a(Landroid/view/View;ILandroid/graphics/Paint;)V
    .registers 3

    .prologue
    .line 35
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 36
    return-void
.end method

.method public static a(Landroid/view/View;Z)V
    .registers 2

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    .line 160
    return-void
.end method

.method public static b(Landroid/view/View;)I
    .registers 2

    .prologue
    .line 39
    invoke-virtual {p0}, Landroid/view/View;->getLayerType()I

    move-result v0

    return v0
.end method

.method public static b(Landroid/view/View;F)V
    .registers 2

    .prologue
    .line 99
    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 100
    return-void
.end method

.method static b(Landroid/view/View;I)V
    .registers 4

    .prologue
    .line 183
    invoke-virtual {p0, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 184
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_19

    .line 185
    invoke-static {p0}, Landroid/support/v4/view/ViewCompatHC;->i(Landroid/view/View;)V

    .line 187
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 188
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_19

    .line 189
    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompatHC;->i(Landroid/view/View;)V

    .line 192
    :cond_19
    return-void
.end method

.method public static b(Landroid/view/View;Z)V
    .registers 2

    .prologue
    .line 163
    invoke-virtual {p0, p1}, Landroid/view/View;->setActivated(Z)V

    .line 164
    return-void
.end method

.method public static c(Landroid/view/View;)I
    .registers 2

    .prologue
    .line 47
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidthAndState()I

    move-result v0

    return v0
.end method

.method public static c(Landroid/view/View;F)V
    .registers 2

    .prologue
    .line 107
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 108
    return-void
.end method

.method public static d(Landroid/view/View;)I
    .registers 2

    .prologue
    .line 55
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredState()I

    move-result v0

    return v0
.end method

.method public static d(Landroid/view/View;F)V
    .registers 2

    .prologue
    .line 131
    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleX(F)V

    .line 132
    return-void
.end method

.method public static e(Landroid/view/View;)F
    .registers 2

    .prologue
    .line 59
    invoke-virtual {p0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    return v0
.end method

.method public static e(Landroid/view/View;F)V
    .registers 2

    .prologue
    .line 135
    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleY(F)V

    .line 136
    return-void
.end method

.method public static f(Landroid/view/View;)F
    .registers 2

    .prologue
    .line 63
    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    return v0
.end method

.method public static g(Landroid/view/View;)F
    .registers 2

    .prologue
    .line 87
    invoke-virtual {p0}, Landroid/view/View;->getScaleX()F

    move-result v0

    return v0
.end method

.method public static h(Landroid/view/View;)V
    .registers 1

    .prologue
    .line 155
    invoke-virtual {p0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 156
    return-void
.end method

.method private static i(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 195
    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    .line 196
    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v1, v0

    invoke-virtual {p0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 197
    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 198
    return-void
.end method
