.class Landroid/support/transition/VisibilityIcs$VisibilityWrapper;
.super Landroid/support/transition/VisibilityPort;
.source "VisibilityIcs.java"


# instance fields
.field private a:Landroid/support/transition/VisibilityInterface;


# direct methods
.method constructor <init>(Landroid/support/transition/VisibilityInterface;)V
    .registers 2

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/support/transition/VisibilityPort;-><init>()V

    .line 58
    iput-object p1, p0, Landroid/support/transition/VisibilityIcs$VisibilityWrapper;->a:Landroid/support/transition/VisibilityInterface;

    .line 59
    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValues;ILandroid/support/transition/TransitionValues;I)Landroid/animation/Animator;
    .registers 12

    .prologue
    .line 86
    iget-object v0, p0, Landroid/support/transition/VisibilityIcs$VisibilityWrapper;->a:Landroid/support/transition/VisibilityInterface;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/support/transition/VisibilityInterface;->a(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValues;ILandroid/support/transition/TransitionValues;I)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)Landroid/animation/Animator;
    .registers 5

    .prologue
    .line 74
    iget-object v0, p0, Landroid/support/transition/VisibilityIcs$VisibilityWrapper;->a:Landroid/support/transition/VisibilityInterface;

    invoke-interface {v0, p1, p2, p3}, Landroid/support/transition/VisibilityInterface;->createAnimator(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/support/transition/TransitionValues;)V
    .registers 3

    .prologue
    .line 63
    iget-object v0, p0, Landroid/support/transition/VisibilityIcs$VisibilityWrapper;->a:Landroid/support/transition/VisibilityInterface;

    invoke-interface {v0, p1}, Landroid/support/transition/VisibilityInterface;->captureStartValues(Landroid/support/transition/TransitionValues;)V

    .line 64
    return-void
.end method

.method public b(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValues;ILandroid/support/transition/TransitionValues;I)Landroid/animation/Animator;
    .registers 12

    .prologue
    .line 93
    iget-object v0, p0, Landroid/support/transition/VisibilityIcs$VisibilityWrapper;->a:Landroid/support/transition/VisibilityInterface;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/support/transition/VisibilityInterface;->b(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValues;ILandroid/support/transition/TransitionValues;I)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method public b(Landroid/support/transition/TransitionValues;)V
    .registers 3

    .prologue
    .line 68
    iget-object v0, p0, Landroid/support/transition/VisibilityIcs$VisibilityWrapper;->a:Landroid/support/transition/VisibilityInterface;

    invoke-interface {v0, p1}, Landroid/support/transition/VisibilityInterface;->captureEndValues(Landroid/support/transition/TransitionValues;)V

    .line 69
    return-void
.end method

.method public c(Landroid/support/transition/TransitionValues;)Z
    .registers 3

    .prologue
    .line 79
    iget-object v0, p0, Landroid/support/transition/VisibilityIcs$VisibilityWrapper;->a:Landroid/support/transition/VisibilityInterface;

    invoke-interface {v0, p1}, Landroid/support/transition/VisibilityInterface;->a(Landroid/support/transition/TransitionValues;)Z

    move-result v0

    return v0
.end method
