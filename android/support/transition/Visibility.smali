.class public abstract Landroid/support/transition/Visibility;
.super Landroid/support/transition/Transition;
.source "Visibility.java"

# interfaces
.implements Landroid/support/transition/VisibilityInterface;


# direct methods
.method constructor <init>(Z)V
    .registers 4

    .prologue
    .line 43
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/transition/Transition;-><init>(Z)V

    .line 44
    if-nez p1, :cond_18

    .line 45
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_19

    .line 46
    new-instance v0, Landroid/support/transition/VisibilityKitKat;

    invoke-direct {v0}, Landroid/support/transition/VisibilityKitKat;-><init>()V

    iput-object v0, p0, Landroid/support/transition/Visibility;->mImpl:Landroid/support/transition/TransitionImpl;

    .line 50
    :goto_13
    iget-object v0, p0, Landroid/support/transition/Visibility;->mImpl:Landroid/support/transition/TransitionImpl;

    invoke-virtual {v0, p0}, Landroid/support/transition/TransitionImpl;->a(Landroid/support/transition/TransitionInterface;)V

    .line 52
    :cond_18
    return-void

    .line 48
    :cond_19
    new-instance v0, Landroid/support/transition/VisibilityIcs;

    invoke-direct {v0}, Landroid/support/transition/VisibilityIcs;-><init>()V

    iput-object v0, p0, Landroid/support/transition/Visibility;->mImpl:Landroid/support/transition/TransitionImpl;

    goto :goto_13
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValues;ILandroid/support/transition/TransitionValues;I)Landroid/animation/Animator;
    .registers 12

    .prologue
    .line 102
    iget-object v0, p0, Landroid/support/transition/Visibility;->mImpl:Landroid/support/transition/TransitionImpl;

    check-cast v0, Landroid/support/transition/VisibilityImpl;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/support/transition/VisibilityImpl;->a(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValues;ILandroid/support/transition/TransitionValues;I)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/support/transition/TransitionValues;)Z
    .registers 3

    .prologue
    .line 81
    iget-object v0, p0, Landroid/support/transition/Visibility;->mImpl:Landroid/support/transition/TransitionImpl;

    check-cast v0, Landroid/support/transition/VisibilityImpl;

    invoke-interface {v0, p1}, Landroid/support/transition/VisibilityImpl;->a(Landroid/support/transition/TransitionValues;)Z

    move-result v0

    return v0
.end method

.method public b(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValues;ILandroid/support/transition/TransitionValues;I)Landroid/animation/Animator;
    .registers 12

    .prologue
    .line 124
    iget-object v0, p0, Landroid/support/transition/Visibility;->mImpl:Landroid/support/transition/TransitionImpl;

    check-cast v0, Landroid/support/transition/VisibilityImpl;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/support/transition/VisibilityImpl;->b(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValues;ILandroid/support/transition/TransitionValues;I)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method public captureEndValues(Landroid/support/transition/TransitionValues;)V
    .registers 3

    .prologue
    .line 56
    iget-object v0, p0, Landroid/support/transition/Visibility;->mImpl:Landroid/support/transition/TransitionImpl;

    invoke-virtual {v0, p1}, Landroid/support/transition/TransitionImpl;->b(Landroid/support/transition/TransitionValues;)V

    .line 57
    return-void
.end method

.method public captureStartValues(Landroid/support/transition/TransitionValues;)V
    .registers 3

    .prologue
    .line 61
    iget-object v0, p0, Landroid/support/transition/Visibility;->mImpl:Landroid/support/transition/TransitionImpl;

    invoke-virtual {v0, p1}, Landroid/support/transition/TransitionImpl;->c(Landroid/support/transition/TransitionValues;)V

    .line 62
    return-void
.end method
