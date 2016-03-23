.class public Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/FragmentStateManager;
.super Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/LifecycleHook;
.source "FragmentStateManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/FragmentStateManager$FragmentState;
    }
.end annotation


# instance fields
.field private mRunWhenActiveQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mState:Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/FragmentStateManager$FragmentState;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/LifecycleHook;-><init>()V

    .line 21
    sget-object v0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/FragmentStateManager$FragmentState;->PREATTACHED:Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/FragmentStateManager$FragmentState;

    iput-object v0, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/FragmentStateManager;->mState:Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/FragmentStateManager$FragmentState;

    .line 22
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/FragmentStateManager;->mRunWhenActiveQueue:Ljava/util/Queue;

    return-void
.end method


# virtual methods
.method public getFragmentState()Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/FragmentStateManager$FragmentState;
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/FragmentStateManager;->mState:Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/FragmentStateManager$FragmentState;

    return-object v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 30
    sget-object v0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/FragmentStateManager$FragmentState;->ATTACHED:Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/FragmentStateManager$FragmentState;

    iput-object v0, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/FragmentStateManager;->mState:Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/FragmentStateManager$FragmentState;

    .line 31
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 35
    sget-object v0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/FragmentStateManager$FragmentState;->CREATED:Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/FragmentStateManager$FragmentState;

    iput-object v0, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/FragmentStateManager;->mState:Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/FragmentStateManager$FragmentState;

    .line 36
    return-void
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 58
    sget-object v0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/FragmentStateManager$FragmentState;->DESTROYED:Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/FragmentStateManager$FragmentState;

    iput-object v0, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/FragmentStateManager;->mState:Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/FragmentStateManager$FragmentState;

    .line 59
    return-void
.end method

.method public onDetach()V
    .registers 2

    .prologue
    .line 53
    sget-object v0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/FragmentStateManager$FragmentState;->DETACHED:Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/FragmentStateManager$FragmentState;

    iput-object v0, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/FragmentStateManager;->mState:Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/FragmentStateManager$FragmentState;

    .line 54
    return-void
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 48
    sget-object v0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/FragmentStateManager$FragmentState;->PAUSED:Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/FragmentStateManager$FragmentState;

    iput-object v0, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/FragmentStateManager;->mState:Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/FragmentStateManager$FragmentState;

    .line 49
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 40
    sget-object v0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/FragmentStateManager$FragmentState;->ACTIVE:Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/FragmentStateManager$FragmentState;

    iput-object v0, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/FragmentStateManager;->mState:Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/FragmentStateManager$FragmentState;

    .line 41
    :goto_4
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/FragmentStateManager;->mRunWhenActiveQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_18

    .line 42
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/FragmentStateManager;->mRunWhenActiveQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_4

    .line 44
    :cond_18
    return-void
.end method

.method public runWhenActive(Ljava/lang/Runnable;)V
    .registers 4
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/FragmentStateManager;->mRunWhenActiveQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 63
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/FragmentStateManager;->mState:Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/FragmentStateManager$FragmentState;

    sget-object v1, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/FragmentStateManager$FragmentState;->ACTIVE:Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/FragmentStateManager$FragmentState;

    if-ne v0, v1, :cond_1f

    .line 64
    :goto_b
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/FragmentStateManager;->mRunWhenActiveQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 65
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/FragmentStateManager;->mRunWhenActiveQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_b

    .line 68
    :cond_1f
    return-void
.end method
