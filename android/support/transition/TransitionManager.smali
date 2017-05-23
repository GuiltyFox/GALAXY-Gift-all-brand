.class public Landroid/support/transition/TransitionManager;
.super Ljava/lang/Object;
.source "TransitionManager.java"


# static fields
.field private static a:Landroid/support/transition/TransitionManagerStaticsImpl;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 42
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_e

    .line 43
    new-instance v0, Landroid/support/transition/TransitionManagerStaticsIcs;

    invoke-direct {v0}, Landroid/support/transition/TransitionManagerStaticsIcs;-><init>()V

    sput-object v0, Landroid/support/transition/TransitionManager;->a:Landroid/support/transition/TransitionManagerStaticsImpl;

    .line 47
    :goto_d
    return-void

    .line 45
    :cond_e
    new-instance v0, Landroid/support/transition/TransitionManagerStaticsKitKat;

    invoke-direct {v0}, Landroid/support/transition/TransitionManagerStaticsKitKat;-><init>()V

    sput-object v0, Landroid/support/transition/TransitionManager;->a:Landroid/support/transition/TransitionManagerStaticsImpl;

    goto :goto_d
.end method

.method public static a(Landroid/view/ViewGroup;Landroid/support/transition/Transition;)V
    .registers 4

    .prologue
    .line 125
    sget-object v1, Landroid/support/transition/TransitionManager;->a:Landroid/support/transition/TransitionManagerStaticsImpl;

    if-nez p1, :cond_9

    const/4 v0, 0x0

    :goto_5
    invoke-virtual {v1, p0, v0}, Landroid/support/transition/TransitionManagerStaticsImpl;->a(Landroid/view/ViewGroup;Landroid/support/transition/TransitionImpl;)V

    .line 126
    return-void

    .line 125
    :cond_9
    iget-object v0, p1, Landroid/support/transition/Transition;->mImpl:Landroid/support/transition/TransitionImpl;

    goto :goto_5
.end method
