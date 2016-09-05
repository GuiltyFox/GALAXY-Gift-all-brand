.class Landroid/support/v4/animation/HoneycombMr1AnimatorCompatProvider$AnimatorListenerCompatWrapper;
.super Ljava/lang/Object;
.source "HoneycombMr1AnimatorCompatProvider.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field final a:Landroid/support/v4/animation/AnimatorListenerCompat;

.field final b:Landroid/support/v4/animation/ValueAnimatorCompat;


# direct methods
.method public constructor <init>(Landroid/support/v4/animation/AnimatorListenerCompat;Landroid/support/v4/animation/ValueAnimatorCompat;)V
    .registers 3

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-object p1, p0, Landroid/support/v4/animation/HoneycombMr1AnimatorCompatProvider$AnimatorListenerCompatWrapper;->a:Landroid/support/v4/animation/AnimatorListenerCompat;

    .line 104
    iput-object p2, p0, Landroid/support/v4/animation/HoneycombMr1AnimatorCompatProvider$AnimatorListenerCompatWrapper;->b:Landroid/support/v4/animation/ValueAnimatorCompat;

    .line 105
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 4

    .prologue
    .line 119
    iget-object v0, p0, Landroid/support/v4/animation/HoneycombMr1AnimatorCompatProvider$AnimatorListenerCompatWrapper;->a:Landroid/support/v4/animation/AnimatorListenerCompat;

    iget-object v1, p0, Landroid/support/v4/animation/HoneycombMr1AnimatorCompatProvider$AnimatorListenerCompatWrapper;->b:Landroid/support/v4/animation/ValueAnimatorCompat;

    invoke-interface {v0, v1}, Landroid/support/v4/animation/AnimatorListenerCompat;->c(Landroid/support/v4/animation/ValueAnimatorCompat;)V

    .line 120
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    .prologue
    .line 114
    iget-object v0, p0, Landroid/support/v4/animation/HoneycombMr1AnimatorCompatProvider$AnimatorListenerCompatWrapper;->a:Landroid/support/v4/animation/AnimatorListenerCompat;

    iget-object v1, p0, Landroid/support/v4/animation/HoneycombMr1AnimatorCompatProvider$AnimatorListenerCompatWrapper;->b:Landroid/support/v4/animation/ValueAnimatorCompat;

    invoke-interface {v0, v1}, Landroid/support/v4/animation/AnimatorListenerCompat;->b(Landroid/support/v4/animation/ValueAnimatorCompat;)V

    .line 115
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 4

    .prologue
    .line 124
    iget-object v0, p0, Landroid/support/v4/animation/HoneycombMr1AnimatorCompatProvider$AnimatorListenerCompatWrapper;->a:Landroid/support/v4/animation/AnimatorListenerCompat;

    iget-object v1, p0, Landroid/support/v4/animation/HoneycombMr1AnimatorCompatProvider$AnimatorListenerCompatWrapper;->b:Landroid/support/v4/animation/ValueAnimatorCompat;

    invoke-interface {v0, v1}, Landroid/support/v4/animation/AnimatorListenerCompat;->d(Landroid/support/v4/animation/ValueAnimatorCompat;)V

    .line 125
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 4

    .prologue
    .line 109
    iget-object v0, p0, Landroid/support/v4/animation/HoneycombMr1AnimatorCompatProvider$AnimatorListenerCompatWrapper;->a:Landroid/support/v4/animation/AnimatorListenerCompat;

    iget-object v1, p0, Landroid/support/v4/animation/HoneycombMr1AnimatorCompatProvider$AnimatorListenerCompatWrapper;->b:Landroid/support/v4/animation/ValueAnimatorCompat;

    invoke-interface {v0, v1}, Landroid/support/v4/animation/AnimatorListenerCompat;->a(Landroid/support/v4/animation/ValueAnimatorCompat;)V

    .line 110
    return-void
.end method
