.class Landroid/support/v7/widget/CardViewApi21;
.super Ljava/lang/Object;
.source "CardViewApi21.java"

# interfaces
.implements Landroid/support/v7/widget/CardViewImpl;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private j(Landroid/support/v7/widget/CardViewDelegate;)Landroid/support/v7/widget/RoundRectDrawable;
    .registers 3

    .prologue
    .line 119
    invoke-interface {p1}, Landroid/support/v7/widget/CardViewDelegate;->c()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RoundRectDrawable;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/support/v7/widget/CardViewDelegate;)F
    .registers 3

    .prologue
    .line 55
    invoke-direct {p0, p1}, Landroid/support/v7/widget/CardViewApi21;->j(Landroid/support/v7/widget/CardViewDelegate;)Landroid/support/v7/widget/RoundRectDrawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RoundRectDrawable;->getPadding()F

    move-result v0

    return v0
.end method

.method public a()V
    .registers 1

    .prologue
    .line 44
    return-void
.end method

.method public a(Landroid/support/v7/widget/CardViewDelegate;F)V
    .registers 4

    .prologue
    .line 39
    invoke-direct {p0, p1}, Landroid/support/v7/widget/CardViewApi21;->j(Landroid/support/v7/widget/CardViewDelegate;)Landroid/support/v7/widget/RoundRectDrawable;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/support/v7/widget/RoundRectDrawable;->setRadius(F)V

    .line 40
    return-void
.end method

.method public a(Landroid/support/v7/widget/CardViewDelegate;Landroid/content/Context;Landroid/content/res/ColorStateList;FFF)V
    .registers 9

    .prologue
    .line 28
    new-instance v0, Landroid/support/v7/widget/RoundRectDrawable;

    invoke-direct {v0, p3, p4}, Landroid/support/v7/widget/RoundRectDrawable;-><init>(Landroid/content/res/ColorStateList;F)V

    .line 29
    invoke-interface {p1, v0}, Landroid/support/v7/widget/CardViewDelegate;->a(Landroid/graphics/drawable/Drawable;)V

    .line 31
    invoke-interface {p1}, Landroid/support/v7/widget/CardViewDelegate;->d()Landroid/view/View;

    move-result-object v0

    .line 32
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClipToOutline(Z)V

    .line 33
    invoke-virtual {v0, p5}, Landroid/view/View;->setElevation(F)V

    .line 34
    invoke-virtual {p0, p1, p6}, Landroid/support/v7/widget/CardViewApi21;->b(Landroid/support/v7/widget/CardViewDelegate;F)V

    .line 35
    return-void
.end method

.method public a(Landroid/support/v7/widget/CardViewDelegate;Landroid/content/res/ColorStateList;)V
    .registers 4

    .prologue
    .line 110
    invoke-direct {p0, p1}, Landroid/support/v7/widget/CardViewApi21;->j(Landroid/support/v7/widget/CardViewDelegate;)Landroid/support/v7/widget/RoundRectDrawable;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/support/v7/widget/RoundRectDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    .line 111
    return-void
.end method

.method public b(Landroid/support/v7/widget/CardViewDelegate;)F
    .registers 4

    .prologue
    .line 60
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/CardViewApi21;->d(Landroid/support/v7/widget/CardViewDelegate;)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    return v0
.end method

.method public b(Landroid/support/v7/widget/CardViewDelegate;F)V
    .registers 6

    .prologue
    .line 48
    invoke-direct {p0, p1}, Landroid/support/v7/widget/CardViewApi21;->j(Landroid/support/v7/widget/CardViewDelegate;)Landroid/support/v7/widget/RoundRectDrawable;

    move-result-object v0

    .line 49
    invoke-interface {p1}, Landroid/support/v7/widget/CardViewDelegate;->a()Z

    move-result v1

    invoke-interface {p1}, Landroid/support/v7/widget/CardViewDelegate;->b()Z

    move-result v2

    .line 48
    invoke-virtual {v0, p2, v1, v2}, Landroid/support/v7/widget/RoundRectDrawable;->setPadding(FZZ)V

    .line 50
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/CardViewApi21;->f(Landroid/support/v7/widget/CardViewDelegate;)V

    .line 51
    return-void
.end method

.method public c(Landroid/support/v7/widget/CardViewDelegate;)F
    .registers 4

    .prologue
    .line 65
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/CardViewApi21;->d(Landroid/support/v7/widget/CardViewDelegate;)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    return v0
.end method

.method public c(Landroid/support/v7/widget/CardViewDelegate;F)V
    .registers 4

    .prologue
    .line 75
    invoke-interface {p1}, Landroid/support/v7/widget/CardViewDelegate;->d()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/View;->setElevation(F)V

    .line 76
    return-void
.end method

.method public d(Landroid/support/v7/widget/CardViewDelegate;)F
    .registers 3

    .prologue
    .line 70
    invoke-direct {p0, p1}, Landroid/support/v7/widget/CardViewApi21;->j(Landroid/support/v7/widget/CardViewDelegate;)Landroid/support/v7/widget/RoundRectDrawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RoundRectDrawable;->getRadius()F

    move-result v0

    return v0
.end method

.method public e(Landroid/support/v7/widget/CardViewDelegate;)F
    .registers 3

    .prologue
    .line 80
    invoke-interface {p1}, Landroid/support/v7/widget/CardViewDelegate;->d()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getElevation()F

    move-result v0

    return v0
.end method

.method public f(Landroid/support/v7/widget/CardViewDelegate;)V
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 85
    invoke-interface {p1}, Landroid/support/v7/widget/CardViewDelegate;->a()Z

    move-result v0

    if-nez v0, :cond_b

    .line 86
    invoke-interface {p1, v1, v1, v1, v1}, Landroid/support/v7/widget/CardViewDelegate;->a(IIII)V

    .line 96
    :goto_a
    return-void

    .line 89
    :cond_b
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/CardViewApi21;->a(Landroid/support/v7/widget/CardViewDelegate;)F

    move-result v0

    .line 90
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/CardViewApi21;->d(Landroid/support/v7/widget/CardViewDelegate;)F

    move-result v1

    .line 92
    invoke-interface {p1}, Landroid/support/v7/widget/CardViewDelegate;->b()Z

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->b(FFZ)F

    move-result v2

    float-to-double v2, v2

    .line 91
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    .line 94
    invoke-interface {p1}, Landroid/support/v7/widget/CardViewDelegate;->b()Z

    move-result v3

    invoke-static {v0, v1, v3}, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->a(FFZ)F

    move-result v0

    float-to-double v0, v0

    .line 93
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 95
    invoke-interface {p1, v2, v0, v2, v0}, Landroid/support/v7/widget/CardViewDelegate;->a(IIII)V

    goto :goto_a
.end method

.method public g(Landroid/support/v7/widget/CardViewDelegate;)V
    .registers 3

    .prologue
    .line 100
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/CardViewApi21;->a(Landroid/support/v7/widget/CardViewDelegate;)F

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/CardViewApi21;->b(Landroid/support/v7/widget/CardViewDelegate;F)V

    .line 101
    return-void
.end method

.method public h(Landroid/support/v7/widget/CardViewDelegate;)V
    .registers 3

    .prologue
    .line 105
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/CardViewApi21;->a(Landroid/support/v7/widget/CardViewDelegate;)F

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/CardViewApi21;->b(Landroid/support/v7/widget/CardViewDelegate;F)V

    .line 106
    return-void
.end method

.method public i(Landroid/support/v7/widget/CardViewDelegate;)Landroid/content/res/ColorStateList;
    .registers 3

    .prologue
    .line 115
    invoke-direct {p0, p1}, Landroid/support/v7/widget/CardViewApi21;->j(Landroid/support/v7/widget/CardViewDelegate;)Landroid/support/v7/widget/RoundRectDrawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RoundRectDrawable;->getColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method
