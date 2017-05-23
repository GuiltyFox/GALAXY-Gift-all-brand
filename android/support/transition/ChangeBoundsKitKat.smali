.class Landroid/support/transition/ChangeBoundsKitKat;
.super Landroid/support/transition/TransitionKitKat;
.source "ChangeBoundsKitKat.java"


# direct methods
.method public constructor <init>(Landroid/support/transition/TransitionInterface;)V
    .registers 3

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/support/transition/TransitionKitKat;-><init>()V

    .line 22
    new-instance v0, Landroid/transition/ChangeBounds;

    invoke-direct {v0}, Landroid/transition/ChangeBounds;-><init>()V

    invoke-virtual {p0, p1, v0}, Landroid/support/transition/ChangeBoundsKitKat;->a(Landroid/support/transition/TransitionInterface;Ljava/lang/Object;)V

    .line 23
    return-void
.end method
