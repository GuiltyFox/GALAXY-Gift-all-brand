.class Landroid/support/v4/animation/GingerbreadAnimatorCompatProvider;
.super Ljava/lang/Object;
.source "GingerbreadAnimatorCompatProvider.java"

# interfaces
.implements Landroid/support/v4/animation/AnimatorProvider;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method


# virtual methods
.method public a()Landroid/support/v4/animation/ValueAnimatorCompat;
    .registers 2

    .prologue
    .line 35
    new-instance v0, Landroid/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;

    invoke-direct {v0}, Landroid/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;-><init>()V

    return-object v0
.end method

.method public a(Landroid/view/View;)V
    .registers 2

    .prologue
    .line 154
    return-void
.end method
