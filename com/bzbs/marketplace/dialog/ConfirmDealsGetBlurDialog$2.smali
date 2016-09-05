.class Lcom/bzbs/marketplace/dialog/ConfirmDealsGetBlurDialog$2;
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
    .line 114
    iput-object p1, p0, Lcom/bzbs/marketplace/dialog/ConfirmDealsGetBlurDialog$2;->a:Lcom/bzbs/marketplace/dialog/ConfirmDealsGetBlurDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .prologue
    .line 120
    iget-object v0, p0, Lcom/bzbs/marketplace/dialog/ConfirmDealsGetBlurDialog$2;->a:Lcom/bzbs/marketplace/dialog/ConfirmDealsGetBlurDialog;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/dialog/ConfirmDealsGetBlurDialog;->dismiss()V

    .line 121
    iget-object v0, p0, Lcom/bzbs/marketplace/dialog/ConfirmDealsGetBlurDialog$2;->a:Lcom/bzbs/marketplace/dialog/ConfirmDealsGetBlurDialog;

    invoke-static {}, Lcom/bzbs/marketplace/dialog/ConfirmDealsGetBlurDialog;->f()Landroid/app/Activity;

    move-result-object v1

    invoke-static {}, Lcom/bzbs/marketplace/dialog/ConfirmDealsGetBlurDialog;->g()Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/bzbs/marketplace/dialog/ConfirmDealsGetBlurDialog;->a(Landroid/app/Activity;Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;)V

    .line 122
    return-void
.end method
