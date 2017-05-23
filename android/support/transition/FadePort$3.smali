.class Landroid/support/transition/FadePort$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FadePort.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/transition/FadePort;->b(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValues;ILandroid/support/transition/TransitionValues;I)Landroid/animation/Animator;
.end annotation


# instance fields
.field a:Z

.field b:F

.field final synthetic c:Landroid/view/View;

.field final synthetic d:Landroid/view/View;

.field final synthetic e:I

.field final synthetic f:Landroid/view/View;

.field final synthetic g:Landroid/view/ViewGroup;

.field final synthetic h:Landroid/support/transition/FadePort;


# direct methods
.method constructor <init>(Landroid/support/transition/FadePort;Landroid/view/View;Landroid/view/View;ILandroid/view/View;Landroid/view/ViewGroup;)V
    .registers 8

    .prologue
    .line 300
    iput-object p1, p0, Landroid/support/transition/FadePort$3;->h:Landroid/support/transition/FadePort;

    iput-object p2, p0, Landroid/support/transition/FadePort$3;->c:Landroid/view/View;

    iput-object p3, p0, Landroid/support/transition/FadePort$3;->d:Landroid/view/View;

    iput p4, p0, Landroid/support/transition/FadePort$3;->e:I

    iput-object p5, p0, Landroid/support/transition/FadePort$3;->f:Landroid/view/View;

    iput-object p6, p0, Landroid/support/transition/FadePort$3;->g:Landroid/view/ViewGroup;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 301
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/transition/FadePort$3;->a:Z

    .line 303
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Landroid/support/transition/FadePort$3;->b:F

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 4

    .prologue
    .line 324
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/transition/FadePort$3;->a:Z

    .line 325
    iget v0, p0, Landroid/support/transition/FadePort$3;->b:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_11

    .line 326
    iget-object v0, p0, Landroid/support/transition/FadePort$3;->c:Landroid/view/View;

    iget v1, p0, Landroid/support/transition/FadePort$3;->b:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 328
    :cond_11
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    .prologue
    .line 332
    iget-boolean v0, p0, Landroid/support/transition/FadePort$3;->a:Z

    if-nez v0, :cond_b

    .line 333
    iget-object v0, p0, Landroid/support/transition/FadePort$3;->c:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 336
    :cond_b
    iget-object v0, p0, Landroid/support/transition/FadePort$3;->d:Landroid/view/View;

    if-eqz v0, :cond_1a

    iget-boolean v0, p0, Landroid/support/transition/FadePort$3;->a:Z

    if-nez v0, :cond_1a

    .line 337
    iget-object v0, p0, Landroid/support/transition/FadePort$3;->d:Landroid/view/View;

    iget v1, p0, Landroid/support/transition/FadePort$3;->e:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 339
    :cond_1a
    iget-object v0, p0, Landroid/support/transition/FadePort$3;->f:Landroid/view/View;

    if-eqz v0, :cond_29

    .line 340
    iget-object v0, p0, Landroid/support/transition/FadePort$3;->g:Landroid/view/ViewGroup;

    invoke-static {v0}, Landroid/support/transition/ViewGroupOverlay;->a(Landroid/view/ViewGroup;)Landroid/support/transition/ViewGroupOverlay;

    move-result-object v0

    iget-object v1, p0, Landroid/support/transition/FadePort$3;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/transition/ViewGroupOverlay;->a(Landroid/view/View;)V

    .line 343
    :cond_29
    return-void
.end method
