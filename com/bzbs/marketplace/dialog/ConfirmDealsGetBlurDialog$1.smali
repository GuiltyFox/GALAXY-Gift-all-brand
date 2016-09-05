.class Lcom/bzbs/marketplace/dialog/ConfirmDealsGetBlurDialog$1;
.super Ljava/lang/Object;
.source "ConfirmDealsGetBlurDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/marketplace/dialog/ConfirmDealsGetBlurDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation


# instance fields
.field final synthetic a:Lcom/bzbs/marketplace/dialog/ConfirmDealsGetBlurDialog;


# direct methods
.method constructor <init>(Lcom/bzbs/marketplace/dialog/ConfirmDealsGetBlurDialog;)V
    .registers 2

    .prologue
    .line 108
    iput-object p1, p0, Lcom/bzbs/marketplace/dialog/ConfirmDealsGetBlurDialog$1;->a:Lcom/bzbs/marketplace/dialog/ConfirmDealsGetBlurDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 111
    iget-object v0, p0, Lcom/bzbs/marketplace/dialog/ConfirmDealsGetBlurDialog$1;->a:Lcom/bzbs/marketplace/dialog/ConfirmDealsGetBlurDialog;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/dialog/ConfirmDealsGetBlurDialog;->dismiss()V

    .line 112
    return-void
.end method
