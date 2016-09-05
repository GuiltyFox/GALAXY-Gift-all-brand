.class Lcom/bzbs/marketplace/dialog/ConfirmDealsGetBlurDialog$3;
.super Lcom/bzbs/marketplace/asynctask/http/CallbackHttpAsyncTask;
.source "ConfirmDealsGetBlurDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/marketplace/dialog/ConfirmDealsGetBlurDialog;->a(Landroid/app/Activity;Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/app/ProgressDialog;

.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

.field final synthetic d:Lcom/bzbs/marketplace/dialog/ConfirmDealsGetBlurDialog;


# direct methods
.method constructor <init>(Lcom/bzbs/marketplace/dialog/ConfirmDealsGetBlurDialog;Landroid/app/ProgressDialog;Landroid/app/Activity;Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;)V
    .registers 5

    .prologue
    .line 135
    iput-object p1, p0, Lcom/bzbs/marketplace/dialog/ConfirmDealsGetBlurDialog$3;->d:Lcom/bzbs/marketplace/dialog/ConfirmDealsGetBlurDialog;

    iput-object p2, p0, Lcom/bzbs/marketplace/dialog/ConfirmDealsGetBlurDialog$3;->a:Landroid/app/ProgressDialog;

    iput-object p3, p0, Lcom/bzbs/marketplace/dialog/ConfirmDealsGetBlurDialog$3;->b:Landroid/app/Activity;

    iput-object p4, p0, Lcom/bzbs/marketplace/dialog/ConfirmDealsGetBlurDialog$3;->c:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-direct {p0}, Lcom/bzbs/marketplace/asynctask/http/CallbackHttpAsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I[Lcz/msebera/android/httpclient/Header;[B)V
    .registers 8

    .prologue
    .line 138
    iget-object v0, p0, Lcom/bzbs/marketplace/dialog/ConfirmDealsGetBlurDialog$3;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 140
    const/16 v0, 0xc8

    if-ne p1, v0, :cond_34

    .line 141
    const-string/jumbo v0, "onSuccess"

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p3}, Ljava/lang/String;-><init>([B)V

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p3}, Ljava/lang/String;-><init>([B)V

    const-class v2, Lcom/bzbs/marketplace/model/dialog/ConfirmOnDialogDealsGetModel;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/marketplace/model/dialog/ConfirmOnDialogDealsGetModel;

    .line 143
    iget-object v1, p0, Lcom/bzbs/marketplace/dialog/ConfirmDealsGetBlurDialog$3;->b:Landroid/app/Activity;

    iget-object v2, p0, Lcom/bzbs/marketplace/dialog/ConfirmDealsGetBlurDialog$3;->d:Lcom/bzbs/marketplace/dialog/ConfirmDealsGetBlurDialog;

    invoke-virtual {v2}, Lcom/bzbs/marketplace/dialog/ConfirmDealsGetBlurDialog;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    iget-object v3, p0, Lcom/bzbs/marketplace/dialog/ConfirmDealsGetBlurDialog$3;->c:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-static {v1, v2, v3, v0}, Lcom/bzbs/marketplace/dialog/util/DialogUtils;->a(Landroid/app/Activity;Landroid/support/v4/app/FragmentManager;Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;Lcom/bzbs/marketplace/model/dialog/ConfirmOnDialogDealsGetModel;)V

    .line 152
    :cond_33
    :goto_33
    return-void

    .line 145
    :cond_34
    if-eqz p3, :cond_33

    .line 148
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p3}, Ljava/lang/String;-><init>([B)V

    const-class v2, Lcom/bzbs/marketplace/model/dialog/ErrorDialogModel;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/marketplace/model/dialog/ErrorDialogModel;

    .line 149
    if-eqz v0, :cond_33

    .line 150
    iget-object v1, p0, Lcom/bzbs/marketplace/dialog/ConfirmDealsGetBlurDialog$3;->b:Landroid/app/Activity;

    iget-object v2, p0, Lcom/bzbs/marketplace/dialog/ConfirmDealsGetBlurDialog$3;->d:Lcom/bzbs/marketplace/dialog/ConfirmDealsGetBlurDialog;

    invoke-virtual {v2}, Lcom/bzbs/marketplace/dialog/ConfirmDealsGetBlurDialog;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    iget-object v3, p0, Lcom/bzbs/marketplace/dialog/ConfirmDealsGetBlurDialog$3;->c:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/dialog/ErrorDialogModel;->getError()Lcom/bzbs/marketplace/model/dialog/ErrorDialogModel$ErrorEntity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/dialog/ErrorDialogModel$ErrorEntity;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v3, v0}, Lcom/bzbs/marketplace/dialog/util/DialogUtils;->a(Landroid/app/Activity;Landroid/support/v4/app/FragmentManager;Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;Ljava/lang/String;)V

    goto :goto_33
.end method

.method public a(I[Lcz/msebera/android/httpclient/Header;[BLjava/lang/Throwable;)V
    .registers 5

    .prologue
    .line 156
    invoke-virtual {p0, p1, p2, p3}, Lcom/bzbs/marketplace/dialog/ConfirmDealsGetBlurDialog$3;->a(I[Lcz/msebera/android/httpclient/Header;[B)V

    .line 157
    return-void
.end method
