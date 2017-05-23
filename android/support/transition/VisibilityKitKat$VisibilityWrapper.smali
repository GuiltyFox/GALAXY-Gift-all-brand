.class Landroid/support/transition/VisibilityKitKat$VisibilityWrapper;
.super Landroid/transition/Visibility;
.source "VisibilityKitKat.java"


# instance fields
.field private final a:Landroid/support/transition/VisibilityInterface;


# direct methods
.method constructor <init>(Landroid/support/transition/VisibilityInterface;)V
    .registers 2

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/transition/Visibility;-><init>()V

    .line 60
    iput-object p1, p0, Landroid/support/transition/VisibilityKitKat$VisibilityWrapper;->a:Landroid/support/transition/VisibilityInterface;

    .line 61
    return-void
.end method


# virtual methods
.method public captureEndValues(Landroid/transition/TransitionValues;)V
    .registers 3

    .prologue
    .line 70
    iget-object v0, p0, Landroid/support/transition/VisibilityKitKat$VisibilityWrapper;->a:Landroid/support/transition/VisibilityInterface;

    invoke-static {v0, p1}, Landroid/support/transition/TransitionKitKat;->b(Landroid/support/transition/TransitionInterface;Landroid/transition/TransitionValues;)V

    .line 71
    return-void
.end method

.method public captureStartValues(Landroid/transition/TransitionValues;)V
    .registers 3

    .prologue
    .line 65
    iget-object v0, p0, Landroid/support/transition/VisibilityKitKat$VisibilityWrapper;->a:Landroid/support/transition/VisibilityInterface;

    invoke-static {v0, p1}, Landroid/support/transition/TransitionKitKat;->a(Landroid/support/transition/TransitionInterface;Landroid/transition/TransitionValues;)V

    .line 66
    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .registers 7

    .prologue
    .line 77
    iget-object v0, p0, Landroid/support/transition/VisibilityKitKat$VisibilityWrapper;->a:Landroid/support/transition/VisibilityInterface;

    invoke-static {p2}, Landroid/support/transition/TransitionKitKat;->a(Landroid/transition/TransitionValues;)Landroid/support/transition/TransitionValues;

    move-result-object v1

    .line 78
    invoke-static {p3}, Landroid/support/transition/TransitionKitKat;->a(Landroid/transition/TransitionValues;)Landroid/support/transition/TransitionValues;

    move-result-object v2

    .line 77
    invoke-interface {v0, p1, v1, v2}, Landroid/support/transition/VisibilityInterface;->createAnimator(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method public isVisible(Landroid/transition/TransitionValues;)Z
    .registers 4

    .prologue
    .line 83
    if-nez p1, :cond_4

    .line 84
    const/4 v0, 0x0

    .line 88
    :goto_3
    return v0

    .line 86
    :cond_4
    new-instance v0, Landroid/support/transition/TransitionValues;

    invoke-direct {v0}, Landroid/support/transition/TransitionValues;-><init>()V

    .line 87
    invoke-static {p1, v0}, Landroid/support/transition/TransitionKitKat;->a(Landroid/transition/TransitionValues;Landroid/support/transition/TransitionValues;)V

    .line 88
    iget-object v1, p0, Landroid/support/transition/VisibilityKitKat$VisibilityWrapper;->a:Landroid/support/transition/VisibilityInterface;

    invoke-interface {v1, v0}, Landroid/support/transition/VisibilityInterface;->a(Landroid/support/transition/TransitionValues;)Z

    move-result v0

    goto :goto_3
.end method

.method public onAppear(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;ILandroid/transition/TransitionValues;I)Landroid/animation/Animator;
    .registers 12

    .prologue
    .line 95
    iget-object v0, p0, Landroid/support/transition/VisibilityKitKat$VisibilityWrapper;->a:Landroid/support/transition/VisibilityInterface;

    invoke-static {p2}, Landroid/support/transition/TransitionKitKat;->a(Landroid/transition/TransitionValues;)Landroid/support/transition/TransitionValues;

    move-result-object v2

    .line 96
    invoke-static {p4}, Landroid/support/transition/TransitionKitKat;->a(Landroid/transition/TransitionValues;)Landroid/support/transition/TransitionValues;

    move-result-object v4

    move-object v1, p1

    move v3, p3

    move v5, p5

    .line 95
    invoke-interface/range {v0 .. v5}, Landroid/support/transition/VisibilityInterface;->a(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValues;ILandroid/support/transition/TransitionValues;I)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method public onDisappear(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;ILandroid/transition/TransitionValues;I)Landroid/animation/Animator;
    .registers 12

    .prologue
    .line 103
    iget-object v0, p0, Landroid/support/transition/VisibilityKitKat$VisibilityWrapper;->a:Landroid/support/transition/VisibilityInterface;

    invoke-static {p2}, Landroid/support/transition/TransitionKitKat;->a(Landroid/transition/TransitionValues;)Landroid/support/transition/TransitionValues;

    move-result-object v2

    .line 105
    invoke-static {p4}, Landroid/support/transition/TransitionKitKat;->a(Landroid/transition/TransitionValues;)Landroid/support/transition/TransitionValues;

    move-result-object v4

    move-object v1, p1

    move v3, p3

    move v5, p5

    .line 103
    invoke-interface/range {v0 .. v5}, Landroid/support/transition/VisibilityInterface;->b(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValues;ILandroid/support/transition/TransitionValues;I)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method
