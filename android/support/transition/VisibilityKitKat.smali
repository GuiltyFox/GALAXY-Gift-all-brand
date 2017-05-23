.class Landroid/support/transition/VisibilityKitKat;
.super Landroid/support/transition/TransitionKitKat;
.source "VisibilityKitKat.java"

# interfaces
.implements Landroid/support/transition/VisibilityImpl;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/support/transition/TransitionKitKat;-><init>()V

    .line 55
    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValues;ILandroid/support/transition/TransitionValues;I)Landroid/animation/Animator;
    .registers 12

    .prologue
    .line 42
    iget-object v0, p0, Landroid/support/transition/VisibilityKitKat;->a:Landroid/transition/Transition;

    check-cast v0, Landroid/transition/Visibility;

    .line 43
    invoke-static {p2}, Landroid/support/transition/VisibilityKitKat;->d(Landroid/support/transition/TransitionValues;)Landroid/transition/TransitionValues;

    move-result-object v2

    .line 44
    invoke-static {p4}, Landroid/support/transition/VisibilityKitKat;->d(Landroid/support/transition/TransitionValues;)Landroid/transition/TransitionValues;

    move-result-object v4

    move-object v1, p1

    move v3, p3

    move v5, p5

    .line 42
    invoke-virtual/range {v0 .. v5}, Landroid/transition/Visibility;->onAppear(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;ILandroid/transition/TransitionValues;I)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/support/transition/TransitionInterface;Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 26
    iput-object p1, p0, Landroid/support/transition/VisibilityKitKat;->b:Landroid/support/transition/TransitionInterface;

    .line 27
    if-nez p2, :cond_e

    .line 28
    new-instance v0, Landroid/support/transition/VisibilityKitKat$VisibilityWrapper;

    check-cast p1, Landroid/support/transition/VisibilityInterface;

    invoke-direct {v0, p1}, Landroid/support/transition/VisibilityKitKat$VisibilityWrapper;-><init>(Landroid/support/transition/VisibilityInterface;)V

    iput-object v0, p0, Landroid/support/transition/VisibilityKitKat;->a:Landroid/transition/Transition;

    .line 32
    :goto_d
    return-void

    .line 30
    :cond_e
    check-cast p2, Landroid/transition/Visibility;

    iput-object p2, p0, Landroid/support/transition/VisibilityKitKat;->a:Landroid/transition/Transition;

    goto :goto_d
.end method

.method public a(Landroid/support/transition/TransitionValues;)Z
    .registers 4

    .prologue
    .line 36
    iget-object v0, p0, Landroid/support/transition/VisibilityKitKat;->a:Landroid/transition/Transition;

    check-cast v0, Landroid/transition/Visibility;

    invoke-static {p1}, Landroid/support/transition/VisibilityKitKat;->d(Landroid/support/transition/TransitionValues;)Landroid/transition/TransitionValues;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/transition/Visibility;->isVisible(Landroid/transition/TransitionValues;)Z

    move-result v0

    return v0
.end method

.method public b(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValues;ILandroid/support/transition/TransitionValues;I)Landroid/animation/Animator;
    .registers 12

    .prologue
    .line 50
    iget-object v0, p0, Landroid/support/transition/VisibilityKitKat;->a:Landroid/transition/Transition;

    check-cast v0, Landroid/transition/Visibility;

    .line 51
    invoke-static {p2}, Landroid/support/transition/VisibilityKitKat;->d(Landroid/support/transition/TransitionValues;)Landroid/transition/TransitionValues;

    move-result-object v2

    .line 52
    invoke-static {p4}, Landroid/support/transition/VisibilityKitKat;->d(Landroid/support/transition/TransitionValues;)Landroid/transition/TransitionValues;

    move-result-object v4

    move-object v1, p1

    move v3, p3

    move v5, p5

    .line 50
    invoke-virtual/range {v0 .. v5}, Landroid/transition/Visibility;->onDisappear(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;ILandroid/transition/TransitionValues;I)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method
