.class Landroid/support/transition/TransitionManagerStaticsKitKat;
.super Landroid/support/transition/TransitionManagerStaticsImpl;
.source "TransitionManagerStaticsKitKat.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/support/transition/TransitionManagerStaticsImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;Landroid/support/transition/TransitionImpl;)V
    .registers 4

    .prologue
    .line 41
    if-nez p2, :cond_7

    const/4 v0, 0x0

    :goto_3
    invoke-static {p1, v0}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    .line 43
    return-void

    .line 41
    :cond_7
    check-cast p2, Landroid/support/transition/TransitionKitKat;

    iget-object v0, p2, Landroid/support/transition/TransitionKitKat;->a:Landroid/transition/Transition;

    goto :goto_3
.end method
