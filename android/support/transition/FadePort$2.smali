.class Landroid/support/transition/FadePort$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FadePort.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/transition/FadePort;->b(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValues;ILandroid/support/transition/TransitionValues;I)Landroid/animation/Animator;
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:I

.field final synthetic d:Landroid/view/View;

.field final synthetic e:Landroid/view/ViewGroup;

.field final synthetic f:Landroid/support/transition/FadePort;


# direct methods
.method constructor <init>(Landroid/support/transition/FadePort;Landroid/view/View;Landroid/view/View;ILandroid/view/View;Landroid/view/ViewGroup;)V
    .registers 7

    .prologue
    .line 259
    iput-object p1, p0, Landroid/support/transition/FadePort$2;->f:Landroid/support/transition/FadePort;

    iput-object p2, p0, Landroid/support/transition/FadePort$2;->a:Landroid/view/View;

    iput-object p3, p0, Landroid/support/transition/FadePort$2;->b:Landroid/view/View;

    iput p4, p0, Landroid/support/transition/FadePort$2;->c:I

    iput-object p5, p0, Landroid/support/transition/FadePort$2;->d:Landroid/view/View;

    iput-object p6, p0, Landroid/support/transition/FadePort$2;->e:Landroid/view/ViewGroup;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    .prologue
    .line 262
    iget-object v0, p0, Landroid/support/transition/FadePort$2;->a:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 264
    iget-object v0, p0, Landroid/support/transition/FadePort$2;->b:Landroid/view/View;

    if-eqz v0, :cond_12

    .line 265
    iget-object v0, p0, Landroid/support/transition/FadePort$2;->b:Landroid/view/View;

    iget v1, p0, Landroid/support/transition/FadePort$2;->c:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 267
    :cond_12
    iget-object v0, p0, Landroid/support/transition/FadePort$2;->d:Landroid/view/View;

    if-eqz v0, :cond_21

    .line 268
    iget-object v0, p0, Landroid/support/transition/FadePort$2;->e:Landroid/view/ViewGroup;

    invoke-static {v0}, Landroid/support/transition/ViewGroupOverlay;->a(Landroid/view/ViewGroup;)Landroid/support/transition/ViewGroupOverlay;

    move-result-object v0

    iget-object v1, p0, Landroid/support/transition/FadePort$2;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/transition/ViewGroupOverlay;->b(Landroid/view/View;)V

    .line 271
    :cond_21
    return-void
.end method
