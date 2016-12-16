.class Lcom/bzbs/marketplace/dialog/AlertBlurDialog$1;
.super Ljava/lang/Object;
.source "AlertBlurDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 200
    iput-object p1, p0, Lcom/bzbs/marketplace/dialog/AlertBlurDialog$1;->a:Lcom/bzbs/marketplace/dialog/AlertBlurDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    .prologue
    .line 203
    invoke-static {}, Lcom/bzbs/marketplace/dialog/AlertBlurDialog;->f()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "transfer_point"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 204
    iget-object v0, p0, Lcom/bzbs/marketplace/dialog/AlertBlurDialog$1;->a:Lcom/bzbs/marketplace/dialog/AlertBlurDialog;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bzbs/marketplace/dialog/AlertBlurDialog;->a(Lcom/bzbs/marketplace/dialog/AlertBlurDialog;Z)V

    .line 212
    :cond_13
    :goto_13
    iget-object v0, p0, Lcom/bzbs/marketplace/dialog/AlertBlurDialog$1;->a:Lcom/bzbs/marketplace/dialog/AlertBlurDialog;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/dialog/AlertBlurDialog;->dismiss()V

    .line 213
    return-void

    .line 205
    :cond_19
    invoke-static {}, Lcom/bzbs/marketplace/dialog/AlertBlurDialog;->f()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/bzbs/marketplace/dialog/AlertBlurDialog$1;->a:Lcom/bzbs/marketplace/dialog/AlertBlurDialog;

    const v2, 0x7f09042f

    invoke-virtual {v1, v2}, Lcom/bzbs/marketplace/dialog/AlertBlurDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 206
    invoke-static {}, Lcom/bzbs/marketplace/dialog/AlertBlurDialog;->g()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    .line 207
    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/bzbs/marketplace/dialog/AlertBlurDialog;->h()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/marketplace/model/url/UrlModel;->getUrlBuyPoint(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 208
    new-instance v1, Landroid/content/Intent;

    invoke-static {}, Lcom/bzbs/marketplace/dialog/AlertBlurDialog;->h()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/samsung/privilege/activity/WebViewBuyPointActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 209
    const-string/jumbo v2, "url"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 210
    iget-object v0, p0, Lcom/bzbs/marketplace/dialog/AlertBlurDialog$1;->a:Lcom/bzbs/marketplace/dialog/AlertBlurDialog;

    iget-object v2, p0, Lcom/bzbs/marketplace/dialog/AlertBlurDialog$1;->a:Lcom/bzbs/marketplace/dialog/AlertBlurDialog;

    iget v2, v2, Lcom/bzbs/marketplace/dialog/AlertBlurDialog;->a:I

    invoke-virtual {v0, v1, v2}, Lcom/bzbs/marketplace/dialog/AlertBlurDialog;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_13
.end method
