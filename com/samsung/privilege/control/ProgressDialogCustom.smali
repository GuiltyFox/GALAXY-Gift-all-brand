.class public Lcom/samsung/privilege/control/ProgressDialogCustom;
.super Landroid/app/ProgressDialog;
.source "ProgressDialogCustom.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 9
    invoke-direct {p0, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 11
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    .line 16
    return-void
.end method


# virtual methods
.method public setTypeFace()V
    .registers 1

    .prologue
    .line 20
    return-void
.end method
