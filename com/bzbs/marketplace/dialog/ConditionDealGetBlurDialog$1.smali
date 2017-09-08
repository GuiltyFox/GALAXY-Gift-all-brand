.class Lcom/bzbs/marketplace/dialog/ConditionDealGetBlurDialog$1;
.super Ljava/lang/Object;
.source "ConditionDealGetBlurDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/marketplace/dialog/ConditionDealGetBlurDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Dialog;

.field final synthetic b:Lcom/bzbs/marketplace/dialog/ConditionDealGetBlurDialog;


# direct methods
.method constructor <init>(Lcom/bzbs/marketplace/dialog/ConditionDealGetBlurDialog;Landroid/app/Dialog;)V
    .registers 3

    .prologue
    .line 125
    iput-object p1, p0, Lcom/bzbs/marketplace/dialog/ConditionDealGetBlurDialog$1;->b:Lcom/bzbs/marketplace/dialog/ConditionDealGetBlurDialog;

    iput-object p2, p0, Lcom/bzbs/marketplace/dialog/ConditionDealGetBlurDialog$1;->a:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .prologue
    .line 128
    iget-object v0, p0, Lcom/bzbs/marketplace/dialog/ConditionDealGetBlurDialog$1;->b:Lcom/bzbs/marketplace/dialog/ConditionDealGetBlurDialog;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/dialog/ConditionDealGetBlurDialog;->dismiss()V

    .line 129
    invoke-static {}, Lcom/bzbs/marketplace/dialog/ConditionDealGetBlurDialog;->f()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/bzbs/marketplace/dialog/ConditionDealGetBlurDialog$1;->a:Landroid/app/Dialog;

    invoke-static {}, Lcom/bzbs/marketplace/dialog/ConditionDealGetBlurDialog;->g()Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/bzbs/marketplace/dialog/ConditionDealGetBlurDialog;->a(Landroid/app/Activity;Landroid/app/Dialog;Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;)V

    .line 130
    return-void
.end method
