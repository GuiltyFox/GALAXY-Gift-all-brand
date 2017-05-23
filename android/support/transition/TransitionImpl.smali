.class abstract Landroid/support/transition/TransitionImpl;
.super Ljava/lang/Object;
.source "TransitionImpl.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()J
.end method

.method public abstract a(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)Landroid/animation/Animator;
.end method

.method public abstract a(I)Landroid/support/transition/TransitionImpl;
.end method

.method public abstract a(IZ)Landroid/support/transition/TransitionImpl;
.end method

.method public abstract a(J)Landroid/support/transition/TransitionImpl;
.end method

.method public abstract a(Landroid/animation/TimeInterpolator;)Landroid/support/transition/TransitionImpl;
.end method

.method public abstract a(Landroid/support/transition/TransitionInterfaceListener;)Landroid/support/transition/TransitionImpl;
.end method

.method public abstract a(Landroid/view/View;)Landroid/support/transition/TransitionImpl;
.end method

.method public abstract a(Landroid/view/View;Z)Landroid/support/transition/TransitionImpl;
.end method

.method public abstract a(Ljava/lang/Class;Z)Landroid/support/transition/TransitionImpl;
.end method

.method public a(Landroid/support/transition/TransitionInterface;)V
    .registers 3

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/support/transition/TransitionImpl;->a(Landroid/support/transition/TransitionInterface;Ljava/lang/Object;)V

    .line 35
    return-void
.end method

.method public abstract a(Landroid/support/transition/TransitionInterface;Ljava/lang/Object;)V
.end method

.method public abstract b()Landroid/animation/TimeInterpolator;
.end method

.method public abstract b(I)Landroid/support/transition/TransitionImpl;
.end method

.method public abstract b(IZ)Landroid/support/transition/TransitionImpl;
.end method

.method public abstract b(J)Landroid/support/transition/TransitionImpl;
.end method

.method public abstract b(Landroid/support/transition/TransitionInterfaceListener;)Landroid/support/transition/TransitionImpl;
.end method

.method public abstract b(Landroid/view/View;)Landroid/support/transition/TransitionImpl;
.end method

.method public abstract b(Landroid/view/View;Z)Landroid/support/transition/TransitionImpl;
.end method

.method public abstract b(Ljava/lang/Class;Z)Landroid/support/transition/TransitionImpl;
.end method

.method public abstract b(Landroid/support/transition/TransitionValues;)V
.end method

.method public abstract c(Landroid/view/View;Z)Landroid/support/transition/TransitionValues;
.end method

.method public abstract c()Ljava/lang/String;
.end method

.method public abstract c(Landroid/support/transition/TransitionValues;)V
.end method

.method public abstract d()J
.end method

.method public abstract e()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract f()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end method

.method public abstract g()[Ljava/lang/String;
.end method
