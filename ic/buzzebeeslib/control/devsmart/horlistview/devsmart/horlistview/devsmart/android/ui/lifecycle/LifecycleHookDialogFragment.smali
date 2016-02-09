.class public Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/LifecycleHookDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "LifecycleHookDialogFragment.java"


# instance fields
.field private mHooks:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/LifecycleHook;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 12
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/LifecycleHookDialogFragment;->mHooks:Ljava/util/LinkedList;

    .line 10
    return-void
.end method


# virtual methods
.method public addLifecycleHook(Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/LifecycleHook;)V
    .registers 3
    .param p1, "hook"    # Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/LifecycleHook;

    .prologue
    .line 15
    iget-object v0, p0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/LifecycleHookDialogFragment;->mHooks:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 16
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 7
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 76
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/DialogFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 77
    iget-object v1, p0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/LifecycleHookDialogFragment;->mHooks:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_10

    .line 80
    return-void

    .line 77
    :cond_10
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/LifecycleHook;

    .line 78
    .local v0, "hook":Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/LifecycleHook;
    invoke-virtual {v0, p1, p2, p3}, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/LifecycleHook;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_9
.end method

.method public onAttach(Landroid/app/Activity;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 20
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onAttach(Landroid/app/Activity;)V

    .line 21
    iget-object v1, p0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/LifecycleHookDialogFragment;->mHooks:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_10

    .line 24
    return-void

    .line 21
    :cond_10
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/LifecycleHook;

    .line 22
    .local v0, "hook":Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/LifecycleHook;
    invoke-virtual {v0, p1}, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/LifecycleHook;->onAttach(Landroid/app/Activity;)V

    goto :goto_9
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 36
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 37
    iget-object v1, p0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/LifecycleHookDialogFragment;->mHooks:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_10

    .line 40
    return-void

    .line 37
    :cond_10
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/LifecycleHook;

    .line 38
    .local v0, "hook":Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/LifecycleHook;
    invoke-virtual {v0, p1}, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/LifecycleHook;->onCreate(Landroid/os/Bundle;)V

    goto :goto_9
.end method

.method public onDestroy()V
    .registers 4

    .prologue
    .line 44
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onDestroy()V

    .line 45
    iget-object v1, p0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/LifecycleHookDialogFragment;->mHooks:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_10

    .line 48
    return-void

    .line 45
    :cond_10
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/LifecycleHook;

    .line 46
    .local v0, "hook":Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/LifecycleHook;
    invoke-virtual {v0}, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/LifecycleHook;->onDestroy()V

    goto :goto_9
.end method

.method public onDetach()V
    .registers 4

    .prologue
    .line 28
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onDetach()V

    .line 29
    iget-object v1, p0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/LifecycleHookDialogFragment;->mHooks:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_10

    .line 32
    return-void

    .line 29
    :cond_10
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/LifecycleHook;

    .line 30
    .local v0, "hook":Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/LifecycleHook;
    invoke-virtual {v0}, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/LifecycleHook;->onDetach()V

    goto :goto_9
.end method

.method public onPause()V
    .registers 4

    .prologue
    .line 52
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onPause()V

    .line 53
    iget-object v1, p0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/LifecycleHookDialogFragment;->mHooks:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_10

    .line 56
    return-void

    .line 53
    :cond_10
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/LifecycleHook;

    .line 54
    .local v0, "hook":Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/LifecycleHook;
    invoke-virtual {v0}, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/LifecycleHook;->onPause()V

    goto :goto_9
.end method

.method public onResume()V
    .registers 4

    .prologue
    .line 60
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onResume()V

    .line 61
    iget-object v1, p0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/LifecycleHookDialogFragment;->mHooks:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_10

    .line 64
    return-void

    .line 61
    :cond_10
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/LifecycleHook;

    .line 62
    .local v0, "hook":Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/LifecycleHook;
    invoke-virtual {v0}, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/LifecycleHook;->onResume()V

    goto :goto_9
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "onState"    # Landroid/os/Bundle;

    .prologue
    .line 68
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 69
    iget-object v1, p0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/LifecycleHookDialogFragment;->mHooks:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_10

    .line 72
    return-void

    .line 69
    :cond_10
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/LifecycleHook;

    .line 70
    .local v0, "hook":Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/LifecycleHook;
    invoke-virtual {v0, p1}, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/LifecycleHook;->onSaveInstanceState(Landroid/os/Bundle;)V

    goto :goto_9
.end method
