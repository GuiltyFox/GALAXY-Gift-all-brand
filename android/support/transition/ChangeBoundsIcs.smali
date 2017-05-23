.class Landroid/support/transition/ChangeBoundsIcs;
.super Landroid/support/transition/TransitionIcs;
.source "ChangeBoundsIcs.java"


# direct methods
.method public constructor <init>(Landroid/support/transition/TransitionInterface;)V
    .registers 3

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/support/transition/TransitionIcs;-><init>()V

    .line 22
    new-instance v0, Landroid/support/transition/ChangeBoundsPort;

    invoke-direct {v0}, Landroid/support/transition/ChangeBoundsPort;-><init>()V

    invoke-virtual {p0, p1, v0}, Landroid/support/transition/ChangeBoundsIcs;->a(Landroid/support/transition/TransitionInterface;Ljava/lang/Object;)V

    .line 23
    return-void
.end method
