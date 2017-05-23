.class public abstract Landroid/support/transition/Transition;
.super Ljava/lang/Object;
.source "Transition.java"

# interfaces
.implements Landroid/support/transition/TransitionInterface;


# instance fields
.field mImpl:Landroid/support/transition/TransitionImpl;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/transition/Transition;-><init>(Z)V

    .line 69
    return-void
.end method

.method constructor <init>(Z)V
    .registers 4

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    if-nez p1, :cond_17

    .line 74
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_18

    .line 75
    new-instance v0, Landroid/support/transition/TransitionApi23;

    invoke-direct {v0}, Landroid/support/transition/TransitionApi23;-><init>()V

    iput-object v0, p0, Landroid/support/transition/Transition;->mImpl:Landroid/support/transition/TransitionImpl;

    .line 81
    :goto_12
    iget-object v0, p0, Landroid/support/transition/Transition;->mImpl:Landroid/support/transition/TransitionImpl;

    invoke-virtual {v0, p0}, Landroid/support/transition/TransitionImpl;->a(Landroid/support/transition/TransitionInterface;)V

    .line 83
    :cond_17
    return-void

    .line 76
    :cond_18
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_26

    .line 77
    new-instance v0, Landroid/support/transition/TransitionKitKat;

    invoke-direct {v0}, Landroid/support/transition/TransitionKitKat;-><init>()V

    iput-object v0, p0, Landroid/support/transition/Transition;->mImpl:Landroid/support/transition/TransitionImpl;

    goto :goto_12

    .line 79
    :cond_26
    new-instance v0, Landroid/support/transition/TransitionIcs;

    invoke-direct {v0}, Landroid/support/transition/TransitionIcs;-><init>()V

    iput-object v0, p0, Landroid/support/transition/Transition;->mImpl:Landroid/support/transition/TransitionImpl;

    goto :goto_12
.end method


# virtual methods
.method public addListener(Landroid/support/transition/Transition$TransitionListener;)Landroid/support/transition/Transition;
    .registers 3

    .prologue
    .line 95
    iget-object v0, p0, Landroid/support/transition/Transition;->mImpl:Landroid/support/transition/TransitionImpl;

    invoke-virtual {v0, p1}, Landroid/support/transition/TransitionImpl;->a(Landroid/support/transition/TransitionInterfaceListener;)Landroid/support/transition/TransitionImpl;

    .line 96
    return-object p0
.end method

.method public addTarget(I)Landroid/support/transition/Transition;
    .registers 3

    .prologue
    .line 151
    iget-object v0, p0, Landroid/support/transition/Transition;->mImpl:Landroid/support/transition/TransitionImpl;

    invoke-virtual {v0, p1}, Landroid/support/transition/TransitionImpl;->b(I)Landroid/support/transition/TransitionImpl;

    .line 152
    return-object p0
.end method

.method public addTarget(Landroid/view/View;)Landroid/support/transition/Transition;
    .registers 3

    .prologue
    .line 127
    iget-object v0, p0, Landroid/support/transition/Transition;->mImpl:Landroid/support/transition/TransitionImpl;

    invoke-virtual {v0, p1}, Landroid/support/transition/TransitionImpl;->a(Landroid/view/View;)Landroid/support/transition/TransitionImpl;

    .line 128
    return-object p0
.end method

.method public abstract captureEndValues(Landroid/support/transition/TransitionValues;)V
.end method

.method public abstract captureStartValues(Landroid/support/transition/TransitionValues;)V
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)Landroid/animation/Animator;
    .registers 5

    .prologue
    .line 264
    const/4 v0, 0x0

    return-object v0
.end method

.method public excludeChildren(IZ)Landroid/support/transition/Transition;
    .registers 4

    .prologue
    .line 319
    iget-object v0, p0, Landroid/support/transition/Transition;->mImpl:Landroid/support/transition/TransitionImpl;

    invoke-virtual {v0, p1, p2}, Landroid/support/transition/TransitionImpl;->a(IZ)Landroid/support/transition/TransitionImpl;

    .line 320
    return-object p0
.end method

.method public excludeChildren(Landroid/view/View;Z)Landroid/support/transition/Transition;
    .registers 4

    .prologue
    .line 289
    iget-object v0, p0, Landroid/support/transition/Transition;->mImpl:Landroid/support/transition/TransitionImpl;

    invoke-virtual {v0, p1, p2}, Landroid/support/transition/TransitionImpl;->a(Landroid/view/View;Z)Landroid/support/transition/TransitionImpl;

    .line 290
    return-object p0
.end method

.method public excludeChildren(Ljava/lang/Class;Z)Landroid/support/transition/Transition;
    .registers 4

    .prologue
    .line 346
    iget-object v0, p0, Landroid/support/transition/Transition;->mImpl:Landroid/support/transition/TransitionImpl;

    invoke-virtual {v0, p1, p2}, Landroid/support/transition/TransitionImpl;->a(Ljava/lang/Class;Z)Landroid/support/transition/TransitionImpl;

    .line 347
    return-object p0
.end method

.method public excludeTarget(IZ)Landroid/support/transition/Transition;
    .registers 4

    .prologue
    .line 398
    iget-object v0, p0, Landroid/support/transition/Transition;->mImpl:Landroid/support/transition/TransitionImpl;

    invoke-virtual {v0, p1, p2}, Landroid/support/transition/TransitionImpl;->b(IZ)Landroid/support/transition/TransitionImpl;

    .line 399
    return-object p0
.end method

.method public excludeTarget(Landroid/view/View;Z)Landroid/support/transition/Transition;
    .registers 4

    .prologue
    .line 372
    iget-object v0, p0, Landroid/support/transition/Transition;->mImpl:Landroid/support/transition/TransitionImpl;

    invoke-virtual {v0, p1, p2}, Landroid/support/transition/TransitionImpl;->b(Landroid/view/View;Z)Landroid/support/transition/TransitionImpl;

    .line 373
    return-object p0
.end method

.method public excludeTarget(Ljava/lang/Class;Z)Landroid/support/transition/Transition;
    .registers 4

    .prologue
    .line 424
    iget-object v0, p0, Landroid/support/transition/Transition;->mImpl:Landroid/support/transition/TransitionImpl;

    invoke-virtual {v0, p1, p2}, Landroid/support/transition/TransitionImpl;->b(Ljava/lang/Class;Z)Landroid/support/transition/TransitionImpl;

    .line 425
    return-object p0
.end method

.method public getDuration()J
    .registers 3

    .prologue
    .line 437
    iget-object v0, p0, Landroid/support/transition/Transition;->mImpl:Landroid/support/transition/TransitionImpl;

    invoke-virtual {v0}, Landroid/support/transition/TransitionImpl;->a()J

    move-result-wide v0

    return-wide v0
.end method

.method public getInterpolator()Landroid/animation/TimeInterpolator;
    .registers 2

    .prologue
    .line 466
    iget-object v0, p0, Landroid/support/transition/Transition;->mImpl:Landroid/support/transition/TransitionImpl;

    invoke-virtual {v0}, Landroid/support/transition/TransitionImpl;->b()Landroid/animation/TimeInterpolator;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 499
    iget-object v0, p0, Landroid/support/transition/Transition;->mImpl:Landroid/support/transition/TransitionImpl;

    invoke-virtual {v0}, Landroid/support/transition/TransitionImpl;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStartDelay()J
    .registers 3

    .prologue
    .line 511
    iget-object v0, p0, Landroid/support/transition/Transition;->mImpl:Landroid/support/transition/TransitionImpl;

    invoke-virtual {v0}, Landroid/support/transition/TransitionImpl;->d()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTargetIds()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 541
    iget-object v0, p0, Landroid/support/transition/Transition;->mImpl:Landroid/support/transition/TransitionImpl;

    invoke-virtual {v0}, Landroid/support/transition/TransitionImpl;->e()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTargets()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 555
    iget-object v0, p0, Landroid/support/transition/Transition;->mImpl:Landroid/support/transition/TransitionImpl;

    invoke-virtual {v0}, Landroid/support/transition/TransitionImpl;->f()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTransitionProperties()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 581
    iget-object v0, p0, Landroid/support/transition/Transition;->mImpl:Landroid/support/transition/TransitionImpl;

    invoke-virtual {v0}, Landroid/support/transition/TransitionImpl;->g()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTransitionValues(Landroid/view/View;Z)Landroid/support/transition/TransitionValues;
    .registers 4

    .prologue
    .line 592
    iget-object v0, p0, Landroid/support/transition/Transition;->mImpl:Landroid/support/transition/TransitionImpl;

    invoke-virtual {v0, p1, p2}, Landroid/support/transition/TransitionImpl;->c(Landroid/view/View;Z)Landroid/support/transition/TransitionValues;

    move-result-object v0

    return-object v0
.end method

.method public removeListener(Landroid/support/transition/Transition$TransitionListener;)Landroid/support/transition/Transition;
    .registers 3

    .prologue
    .line 604
    iget-object v0, p0, Landroid/support/transition/Transition;->mImpl:Landroid/support/transition/TransitionImpl;

    invoke-virtual {v0, p1}, Landroid/support/transition/TransitionImpl;->b(Landroid/support/transition/TransitionInterfaceListener;)Landroid/support/transition/TransitionImpl;

    .line 605
    return-object p0
.end method

.method public removeTarget(I)Landroid/support/transition/Transition;
    .registers 3

    .prologue
    .line 636
    iget-object v0, p0, Landroid/support/transition/Transition;->mImpl:Landroid/support/transition/TransitionImpl;

    invoke-virtual {v0, p1}, Landroid/support/transition/TransitionImpl;->a(I)Landroid/support/transition/TransitionImpl;

    .line 637
    return-object p0
.end method

.method public removeTarget(Landroid/view/View;)Landroid/support/transition/Transition;
    .registers 3

    .prologue
    .line 620
    iget-object v0, p0, Landroid/support/transition/Transition;->mImpl:Landroid/support/transition/TransitionImpl;

    invoke-virtual {v0, p1}, Landroid/support/transition/TransitionImpl;->b(Landroid/view/View;)Landroid/support/transition/TransitionImpl;

    .line 621
    return-object p0
.end method

.method public setDuration(J)Landroid/support/transition/Transition;
    .registers 4

    .prologue
    .line 452
    iget-object v0, p0, Landroid/support/transition/Transition;->mImpl:Landroid/support/transition/TransitionImpl;

    invoke-virtual {v0, p1, p2}, Landroid/support/transition/TransitionImpl;->a(J)Landroid/support/transition/TransitionImpl;

    .line 453
    return-object p0
.end method

.method public setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/support/transition/Transition;
    .registers 3

    .prologue
    .line 481
    iget-object v0, p0, Landroid/support/transition/Transition;->mImpl:Landroid/support/transition/TransitionImpl;

    invoke-virtual {v0, p1}, Landroid/support/transition/TransitionImpl;->a(Landroid/animation/TimeInterpolator;)Landroid/support/transition/TransitionImpl;

    .line 482
    return-object p0
.end method

.method public setStartDelay(J)Landroid/support/transition/Transition;
    .registers 4

    .prologue
    .line 526
    iget-object v0, p0, Landroid/support/transition/Transition;->mImpl:Landroid/support/transition/TransitionImpl;

    invoke-virtual {v0, p1, p2}, Landroid/support/transition/TransitionImpl;->b(J)Landroid/support/transition/TransitionImpl;

    .line 527
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 642
    iget-object v0, p0, Landroid/support/transition/Transition;->mImpl:Landroid/support/transition/TransitionImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
