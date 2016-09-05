.class Landroid/support/v4/app/FragmentActivity$HostCallbacks;
.super Landroid/support/v4/app/FragmentHostCallback;
.source "FragmentActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/app/FragmentHostCallback",
        "<",
        "Landroid/support/v4/app/FragmentActivity;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/app/FragmentActivity;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;)V
    .registers 2

    .prologue
    .line 972
    iput-object p1, p0, Landroid/support/v4/app/FragmentActivity$HostCallbacks;->a:Landroid/support/v4/app/FragmentActivity;

    .line 973
    invoke-direct {p0, p1}, Landroid/support/v4/app/FragmentHostCallback;-><init>(Landroid/support/v4/app/FragmentActivity;)V

    .line 974
    return-void
.end method


# virtual methods
.method public a(I)Landroid/view/View;
    .registers 3

    .prologue
    .line 1044
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity$HostCallbacks;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/support/v4/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .registers 6

    .prologue
    .line 1009
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity$HostCallbacks;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v4/app/FragmentActivity;->startActivityFromFragment(Landroid/support/v4/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 1010
    return-void
.end method

.method public a(Landroid/support/v4/app/Fragment;[Ljava/lang/String;I)V
    .registers 5

    .prologue
    .line 1015
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity$HostCallbacks;->a:Landroid/support/v4/app/FragmentActivity;

    # invokes: Landroid/support/v4/app/FragmentActivity;->requestPermissionsFromFragment(Landroid/support/v4/app/Fragment;[Ljava/lang/String;I)V
    invoke-static {v0, p1, p2, p3}, Landroid/support/v4/app/FragmentActivity;->access$000(Landroid/support/v4/app/FragmentActivity;Landroid/support/v4/app/Fragment;[Ljava/lang/String;I)V

    .line 1017
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 978
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity$HostCallbacks;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v4/app/FragmentActivity;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 979
    return-void
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 1049
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity$HostCallbacks;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 1050
    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public a(Landroid/support/v4/app/Fragment;)Z
    .registers 3

    .prologue
    .line 983
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity$HostCallbacks;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public a(Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 1021
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity$HostCallbacks;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v0, p1}, Landroid/support/v4/app/ActivityCompat;->a(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public b()Landroid/view/LayoutInflater;
    .registers 3

    .prologue
    .line 988
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity$HostCallbacks;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/app/FragmentActivity$HostCallbacks;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, v1}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    return-object v0
.end method

.method public b(Landroid/support/v4/app/Fragment;)V
    .registers 3

    .prologue
    .line 1038
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity$HostCallbacks;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentActivity;->onAttachFragment(Landroid/support/v4/app/Fragment;)V

    .line 1039
    return-void
.end method

.method public c()Landroid/support/v4/app/FragmentActivity;
    .registers 2

    .prologue
    .line 993
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity$HostCallbacks;->a:Landroid/support/v4/app/FragmentActivity;

    return-object v0
.end method

.method public d()V
    .registers 2

    .prologue
    .line 998
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity$HostCallbacks;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->supportInvalidateOptionsMenu()V

    .line 999
    return-void
.end method

.method public e()Z
    .registers 2

    .prologue
    .line 1027
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity$HostCallbacks;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public f()I
    .registers 2

    .prologue
    .line 1032
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity$HostCallbacks;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 1033
    if-nez v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return v0

    :cond_a
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    goto :goto_9
.end method

.method public synthetic g()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 971
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity$HostCallbacks;->c()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    return-object v0
.end method
