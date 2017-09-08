.class Lcom/bzbs/marketplace/dialog/ConditionDrawsBlurDialog$3;
.super Lcom/bzbs/marketplace/asynctask/http/CallbackHttpAsyncTask;
.source "ConditionDrawsBlurDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/marketplace/dialog/ConditionDrawsBlurDialog;->f()V
.end annotation


# instance fields
.field final synthetic a:Lcom/bzbs/marketplace/dialog/ConditionDrawsBlurDialog;


# direct methods
.method constructor <init>(Lcom/bzbs/marketplace/dialog/ConditionDrawsBlurDialog;)V
    .registers 2

    .prologue
    .line 162
    iput-object p1, p0, Lcom/bzbs/marketplace/dialog/ConditionDrawsBlurDialog$3;->a:Lcom/bzbs/marketplace/dialog/ConditionDrawsBlurDialog;

    invoke-direct {p0}, Lcom/bzbs/marketplace/asynctask/http/CallbackHttpAsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I[Lcz/msebera/android/httpclient/Header;[B)V
    .registers 8

    .prologue
    .line 167
    iget-object v0, p0, Lcom/bzbs/marketplace/dialog/ConditionDrawsBlurDialog$3;->a:Lcom/bzbs/marketplace/dialog/ConditionDrawsBlurDialog;

    invoke-static {v0}, Lcom/bzbs/marketplace/dialog/ConditionDrawsBlurDialog;->a(Lcom/bzbs/marketplace/dialog/ConditionDrawsBlurDialog;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 168
    iget-object v0, p0, Lcom/bzbs/marketplace/dialog/ConditionDrawsBlurDialog$3;->a:Lcom/bzbs/marketplace/dialog/ConditionDrawsBlurDialog;

    invoke-static {v0}, Lcom/bzbs/marketplace/dialog/ConditionDrawsBlurDialog;->a(Lcom/bzbs/marketplace/dialog/ConditionDrawsBlurDialog;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 171
    :cond_11
    invoke-static {}, Lcom/bzbs/marketplace/dialog/ConditionDrawsBlurDialog;->g()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/bzbs/marketplace/activity/MarketPlaceDetailActivity;

    if-eqz v0, :cond_22

    .line 172
    invoke-static {}, Lcom/bzbs/marketplace/dialog/ConditionDrawsBlurDialog;->g()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/bzbs/marketplace/activity/MarketPlaceDetailActivity;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/activity/MarketPlaceDetailActivity;->l()V

    .line 174
    :cond_22
    const/16 v0, 0xc8

    if-ne p1, v0, :cond_4f

    .line 175
    iget-object v0, p0, Lcom/bzbs/marketplace/dialog/ConditionDrawsBlurDialog$3;->a:Lcom/bzbs/marketplace/dialog/ConditionDrawsBlurDialog;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/dialog/ConditionDrawsBlurDialog;->dismiss()V

    .line 176
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p3}, Ljava/lang/String;-><init>([B)V

    const-class v2, Lcom/bzbs/marketplace/model/dialog/ConditionDrawSuccessModel;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/marketplace/model/dialog/ConditionDrawSuccessModel;

    .line 177
    invoke-static {}, Lcom/bzbs/marketplace/dialog/ConditionDrawsBlurDialog;->g()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/bzbs/marketplace/dialog/ConditionDrawsBlurDialog$3;->a:Lcom/bzbs/marketplace/dialog/ConditionDrawsBlurDialog;

    invoke-virtual {v1}, Lcom/bzbs/marketplace/dialog/ConditionDrawsBlurDialog;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-static {}, Lcom/bzbs/marketplace/dialog/ConditionDrawsBlurDialog;->h()Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/bzbs/marketplace/dialog/util/DialogUtils;->a(Landroid/app/Activity;Landroid/support/v4/app/FragmentManager;Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;)V

    .line 194
    :cond_4e
    :goto_4e
    return-void

    .line 179
    :cond_4f
    if-nez p3, :cond_57

    .line 180
    iget-object v0, p0, Lcom/bzbs/marketplace/dialog/ConditionDrawsBlurDialog$3;->a:Lcom/bzbs/marketplace/dialog/ConditionDrawsBlurDialog;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/dialog/ConditionDrawsBlurDialog;->dismiss()V

    goto :goto_4e

    .line 183
    :cond_57
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p3}, Ljava/lang/String;-><init>([B)V

    const-class v2, Lcom/bzbs/marketplace/model/dialog/ErrorDialogModel;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/marketplace/model/dialog/ErrorDialogModel;

    .line 184
    if-eqz v0, :cond_4e

    .line 185
    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/dialog/ErrorDialogModel;->getError()Lcom/bzbs/marketplace/model/dialog/ErrorDialogModel$ErrorEntity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bzbs/marketplace/model/dialog/ErrorDialogModel$ErrorEntity;->getCode()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "409"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9b

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/dialog/ErrorDialogModel;->getError()Lcom/bzbs/marketplace/model/dialog/ErrorDialogModel$ErrorEntity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bzbs/marketplace/model/dialog/ErrorDialogModel$ErrorEntity;->getId()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "1201"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9b

    .line 186
    invoke-static {}, Lcom/bzbs/marketplace/dialog/ConditionDrawsBlurDialog;->i()Lcom/bzbs/event/CallbackOTPDialog;

    move-result-object v0

    if-eqz v0, :cond_4e

    .line 187
    invoke-static {}, Lcom/bzbs/marketplace/dialog/ConditionDrawsBlurDialog;->i()Lcom/bzbs/event/CallbackOTPDialog;

    move-result-object v0

    invoke-interface {v0}, Lcom/bzbs/event/CallbackOTPDialog;->a()V

    goto :goto_4e

    .line 189
    :cond_9b
    iget-object v1, p0, Lcom/bzbs/marketplace/dialog/ConditionDrawsBlurDialog$3;->a:Lcom/bzbs/marketplace/dialog/ConditionDrawsBlurDialog;

    invoke-virtual {v1}, Lcom/bzbs/marketplace/dialog/ConditionDrawsBlurDialog;->dismiss()V

    .line 190
    invoke-static {}, Lcom/bzbs/marketplace/dialog/ConditionDrawsBlurDialog;->g()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/bzbs/marketplace/dialog/ConditionDrawsBlurDialog$3;->a:Lcom/bzbs/marketplace/dialog/ConditionDrawsBlurDialog;

    invoke-virtual {v2}, Lcom/bzbs/marketplace/dialog/ConditionDrawsBlurDialog;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-static {}, Lcom/bzbs/marketplace/dialog/ConditionDrawsBlurDialog;->h()Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

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
    .line 198
    invoke-virtual {p0, p1, p2, p3}, Lcom/bzbs/marketplace/dialog/ConditionDrawsBlurDialog$3;->a(I[Lcz/msebera/android/httpclient/Header;[B)V

    .line 199
    return-void
.end method
