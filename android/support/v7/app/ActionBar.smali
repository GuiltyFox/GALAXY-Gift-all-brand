.class public abstract Landroid/support/v7/app/ActionBar;
.super Ljava/lang/Object;
.source "ActionBar.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1359
    return-void
.end method


# virtual methods
.method public abstract a()I
.end method

.method public a(Landroid/support/v7/view/ActionMode$Callback;)Landroid/support/v7/view/ActionMode;
    .registers 3

    .prologue
    .line 1061
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(F)V
    .registers 4

    .prologue
    .line 1020
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_e

    .line 1021
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Setting a non-zero elevation is not supported in this action bar configuration."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1024
    :cond_e
    return-void
.end method

.method public a(Landroid/content/res/Configuration;)V
    .registers 2

    .prologue
    .line 1051
    return-void
.end method

.method public abstract a(Ljava/lang/CharSequence;)V
.end method

.method public abstract a(Z)V
.end method

.method public a(ILandroid/view/KeyEvent;)Z
    .registers 4

    .prologue
    .line 1085
    const/4 v0, 0x0

    return v0
.end method

.method public abstract b()I
.end method

.method public b(Ljava/lang/CharSequence;)V
    .registers 2

    .prologue
    .line 1097
    return-void
.end method

.method public b(Z)V
    .registers 2

    .prologue
    .line 846
    return-void
.end method

.method public c(Z)V
    .registers 4

    .prologue
    .line 965
    if-eqz p1, :cond_b

    .line 966
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Hide on content scroll is not supported in this action bar configuration."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 969
    :cond_b
    return-void
.end method

.method public abstract c()Z
.end method

.method public d()Landroid/content/Context;
    .registers 2

    .prologue
    .line 858
    const/4 v0, 0x0

    return-object v0
.end method

.method public d(Z)V
    .registers 2

    .prologue
    .line 1041
    return-void
.end method

.method public e()I
    .registers 2

    .prologue
    .line 992
    const/4 v0, 0x0

    return v0
.end method

.method public e(Z)V
    .registers 2

    .prologue
    .line 1046
    return-void
.end method

.method public f(Z)V
    .registers 2

    .prologue
    .line 1056
    return-void
.end method

.method public f()Z
    .registers 2

    .prologue
    .line 1073
    const/4 v0, 0x0

    return v0
.end method

.method public g()Z
    .registers 2

    .prologue
    .line 1091
    const/4 v0, 0x0

    return v0
.end method

.method h()Z
    .registers 2

    .prologue
    .line 1105
    const/4 v0, 0x0

    return v0
.end method

.method i()V
    .registers 1

    .prologue
    .line 1112
    return-void
.end method
