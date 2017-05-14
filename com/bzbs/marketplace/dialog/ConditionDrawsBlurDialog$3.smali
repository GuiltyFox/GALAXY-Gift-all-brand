.class Lcom/bzbs/marketplace/dialog/ConditionDrawsBlurDialog$3;
.super Lcom/bzbs/marketplace/asynctask/http/CallbackHttpAsyncTask;
.source "ConditionDrawsBlurDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/marketplace/dialog/ConditionDrawsBlurDialog;->h()V
.end annotation


# instance fields
.field final synthetic a:Lcom/bzbs/marketplace/dialog/ConditionDrawsBlurDialog;


# direct methods
.method constructor <init>(Lcom/bzbs/marketplace/dialog/ConditionDrawsBlurDialog;)V
    .registers 2

    .prologue
    .line 159
    iput-object p1, p0, Lcom/bzbs/marketplace/dialog/ConditionDrawsBlurDialog$3;->a:Lcom/bzbs/marketplace/dialog/ConditionDrawsBlurDialog;

    invoke-direct {p0}, Lcom/bzbs/marketplace/asynctask/http/CallbackHttpAsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I[Lcz/msebera/android/httpclient/Header;[B)V
    .registers 8

    .prologue
    .line 164
    iget-object v0, p0, Lcom/bzbs/marketplace/dialog/ConditionDrawsBlurDialog$3;->a:Lcom/bzbs/marketplace/dialog/ConditionDrawsBlurDialog;

    invoke-static {v0}, Lcom/bzbs/marketplace/dialog/ConditionDrawsBlurDialog;->b(Lcom/bzbs/marketplace/dialog/ConditionDrawsBlurDialog;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 165
    iget-object v0, p0, Lcom/bzbs/marketplace/dialog/ConditionDrawsBlurDialog$3;->a:Lcom/bzbs/marketplace/dialog/ConditionDrawsBlurDialog;

    invoke-static {v0}, Lcom/bzbs/marketplace/dialog/ConditionDrawsBlurDialog;->b(Lcom/bzbs/marketplace/dialog/ConditionDrawsBlurDialog;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 167
    :cond_11
    iget-object v0, p0, Lcom/bzbs/marketplace/dialog/ConditionDrawsBlurDialog$3;->a:Lcom/bzbs/marketplace/dialog/ConditionDrawsBlurDialog;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/dialog/ConditionDrawsBlurDialog;->dismiss()V

    .line 169
    invoke-static {}, Lcom/bzbs/marketplace/dialog/ConditionDrawsBlurDialog;->f()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/bzbs/marketplace/activity/MarketPlaceDetailActivity;

    if-eqz v0, :cond_27

    .line 170
    invoke-static {}, Lcom/bzbs/marketplace/dialog/ConditionDrawsBlurDialog;->f()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/bzbs/marketplace/activity/MarketPlaceDetailActivity;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/activity/MarketPlaceDetailActivity;->l()V

    .line 172
    :cond_27
    const/16 v0, 0xc8

    if-ne p1, v0, :cond_4f

    .line 173
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p3}, Ljava/lang/String;-><init>([B)V

    const-class v2, Lcom/bzbs/marketplace/model/dialog/ConditionDrawSuccessModel;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/marketplace/model/dialog/ConditionDrawSuccessModel;

    .line 174
    invoke-static {}, Lcom/bzbs/marketplace/dialog/ConditionDrawsBlurDialog;->f()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/bzbs/marketplace/dialog/ConditionDrawsBlurDialog$3;->a:Lcom/bzbs/marketplace/dialog/ConditionDrawsBlurDialog;

    invoke-virtual {v1}, Lcom/bzbs/marketplace/dialog/ConditionDrawsBlurDialog;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-static {}, Lcom/bzbs/marketplace/dialog/ConditionDrawsBlurDialog;->g()Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/bzbs/marketplace/dialog/util/DialogUtils;->a(Landroid/app/Activity;Landroid/support/v4/app/FragmentManager;Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;)V

    .line 183
    :cond_4e
    :goto_4e
    return-void

    .line 176
    :cond_4f
    if-eqz p3, :cond_4e

    .line 179
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p3}, Ljava/lang/String;-><init>([B)V

    const-class v2, Lcom/bzbs/marketplace/model/dialog/ErrorDialogModel;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/marketplace/model/dialog/ErrorDialogModel;

    .line 180
    if-eqz v0, :cond_4e

    .line 181
    invoke-static {}, Lcom/bzbs/marketplace/dialog/ConditionDrawsBlurDialog;->f()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/bzbs/marketplace/dialog/ConditionDrawsBlurDialog$3;->a:Lcom/bzbs/marketplace/dialog/ConditionDrawsBlurDialog;

    invoke-virtual {v2}, Lcom/bzbs/marketplace/dialog/ConditionDrawsBlurDialog;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-static {}, Lcom/bzbs/marketplace/dialog/ConditionDrawsBlurDialog;->g()Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    move-result-object v3

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/dialog/ErrorDialogModel;->getError()Lcom/bzbs/marketplace/model/dialog/ErrorDialogModel$ErrorEntity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/dialog/ErrorDialogModel$ErrorEntity;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v3, v0}, Lcom/bzbs/marketplace/dialog/util/DialogUtils;->a(Landroid/app/Activity;Landroid/support/v4/app/FragmentManager;Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;Ljava/lang/String;)V

    goto :goto_4e
.end method

.method public a(I[Lcz/msebera/android/httpclient/Header;[BLjava/lang/Throwable;)V
    .registers 5

    .prologue
    .line 187
    invoke-virtual {p0, p1, p2, p3}, Lcom/bzbs/marketplace/dialog/ConditionDrawsBlurDialog$3;->a(I[Lcz/msebera/android/httpclient/Header;[B)V

    .line 188
    return-void
.end method
