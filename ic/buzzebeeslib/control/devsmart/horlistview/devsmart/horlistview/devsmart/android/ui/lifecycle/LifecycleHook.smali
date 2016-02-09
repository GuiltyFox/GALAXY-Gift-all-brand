.class public abstract Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/LifecycleHook;
.super Ljava/lang/Object;
.source "LifecycleHook.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 23
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .registers 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 9
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 13
    return-void
.end method

.method public onDestroy()V
    .registers 1

    .prologue
    .line 15
    return-void
.end method

.method public onDetach()V
    .registers 1

    .prologue
    .line 11
    return-void
.end method

.method public onPause()V
    .registers 1

    .prologue
    .line 17
    return-void
.end method

.method public onResume()V
    .registers 1

    .prologue
    .line 19
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 21
    return-void
.end method
