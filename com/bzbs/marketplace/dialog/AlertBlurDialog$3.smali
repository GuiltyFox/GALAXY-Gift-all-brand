.class Lcom/bzbs/marketplace/dialog/AlertBlurDialog$3;
.super Ljava/lang/Object;
.source "AlertBlurDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/marketplace/dialog/AlertBlurDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation


# instance fields
.field final synthetic a:Lcom/bzbs/marketplace/dialog/AlertBlurDialog;


# direct methods
.method constructor <init>(Lcom/bzbs/marketplace/dialog/AlertBlurDialog;)V
    .registers 2

    .prologue
    .line 234
    iput-object p1, p0, Lcom/bzbs/marketplace/dialog/AlertBlurDialog$3;->a:Lcom/bzbs/marketplace/dialog/AlertBlurDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 5

    .prologue
    .line 237
    const/4 v0, 0x4

    if-ne p2, v0, :cond_5

    .line 238
    const/4 v0, 0x1

    .line 240
    :goto_4
    return v0

    :cond_5
    const/4 v0, 0x0

    goto :goto_4
.end method
