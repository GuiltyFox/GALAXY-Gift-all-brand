.class public Landroid/support/design/internal/TextScale;
.super Landroid/support/transition/Transition;
.source "TextScale.java"


# static fields
.field private static final PROPNAME_SCALE:Ljava/lang/String; = "android:textscale:scale"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/support/transition/Transition;-><init>()V

    return-void
.end method

.method private captureValues(Landroid/support/transition/TransitionValues;)V
    .registers 5

    .prologue
    .line 45
    iget-object v0, p1, Landroid/support/transition/TransitionValues;->b:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/TextView;

    if-eqz v0, :cond_1a

    .line 46
    iget-object v0, p1, Landroid/support/transition/TransitionValues;->b:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    .line 47
    iget-object v1, p1, Landroid/support/transition/TransitionValues;->a:Ljava/util/Map;

    const-string/jumbo v2, "android:textscale:scale"

    invoke-virtual {v0}, Landroid/widget/TextView;->getScaleX()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    :cond_1a
    return-void
.end method


# virtual methods
.method public captureEndValues(Landroid/support/transition/TransitionValues;)V
    .registers 2

    .prologue
    .line 41
    invoke-direct {p0, p1}, Landroid/support/design/internal/TextScale;->captureValues(Landroid/support/transition/TransitionValues;)V

    .line 42
    return-void
.end method

.method public captureStartValues(Landroid/support/transition/TransitionValues;)V
    .registers 2

    .prologue
    .line 36
    invoke-direct {p0, p1}, Landroid/support/design/internal/TextScale;->captureValues(Landroid/support/transition/TransitionValues;)V

    .line 37
    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)Landroid/animation/Animator;
    .registers 10

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    .line 54
    if-eqz p2, :cond_13

    if-eqz p3, :cond_13

    iget-object v0, p2, Landroid/support/transition/TransitionValues;->b:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/TextView;

    if-eqz v0, :cond_13

    iget-object v0, p3, Landroid/support/transition/TransitionValues;->b:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/TextView;

    if-nez v0, :cond_15

    :cond_13
    move-object v0, v4

    .line 79
    :goto_14
    return-object v0

    .line 58
    :cond_15
    iget-object v0, p3, Landroid/support/transition/TransitionValues;->b:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    .line 59
    iget-object v1, p2, Landroid/support/transition/TransitionValues;->a:Ljava/util/Map;

    .line 60
    iget-object v5, p3, Landroid/support/transition/TransitionValues;->a:Ljava/util/Map;

    .line 61
    const-string/jumbo v2, "android:textscale:scale"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_50

    const-string/jumbo v2, "android:textscale:scale"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    move v2, v1

    .line 63
    :goto_34
    const-string/jumbo v1, "android:textscale:scale"

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4a

    const-string/jumbo v1, "android:textscale:scale"

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 65
    :cond_4a
    cmpl-float v1, v2, v3

    if-nez v1, :cond_52

    move-object v0, v4

    .line 66
    goto :goto_14

    :cond_50
    move v2, v3

    .line 61
    goto :goto_34

    .line 69
    :cond_52
    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v4, 0x0

    aput v2, v1, v4

    const/4 v2, 0x1

    aput v3, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 71
    new-instance v2, Landroid/support/design/internal/TextScale$1;

    invoke-direct {v2, p0, v0}, Landroid/support/design/internal/TextScale$1;-><init>(Landroid/support/design/internal/TextScale;Landroid/widget/TextView;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    move-object v0, v1

    .line 79
    goto :goto_14
.end method
