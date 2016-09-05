.class Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$1;
.super Ljava/lang/Object;
.source "ReviewGiftBlurDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation


# instance fields
.field final synthetic a:Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;


# direct methods
.method constructor <init>(Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;)V
    .registers 2

    .prologue
    .line 122
    iput-object p1, p0, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$1;->a:Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 125
    iget-object v0, p0, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$1;->a:Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;->dismiss()V

    .line 126
    return-void
.end method
