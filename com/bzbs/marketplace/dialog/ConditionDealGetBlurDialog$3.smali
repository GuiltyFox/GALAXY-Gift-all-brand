.class final Lcom/bzbs/marketplace/dialog/ConditionDealGetBlurDialog$3;
.super Lcom/bzbs/marketplace/asynctask/http/CallbackHttpAsyncTask;
.source "ConditionDealGetBlurDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/marketplace/dialog/ConditionDealGetBlurDialog;->a(Landroid/app/Activity;Landroid/app/Dialog;Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Landroid/app/ProgressDialog;

.field final synthetic c:Landroid/app/Dialog;

.field final synthetic d:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/app/ProgressDialog;Landroid/app/Dialog;Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;)V
    .registers 5

    .prologue
    .line 168
    iput-object p1, p0, Lcom/bzbs/marketplace/dialog/ConditionDealGetBlurDialog$3;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/bzbs/marketplace/dialog/ConditionDealGetBlurDialog$3;->b:Landroid/app/ProgressDialog;

    iput-object p3, p0, Lcom/bzbs/marketplace/dialog/ConditionDealGetBlurDialog$3;->c:Landroid/app/Dialog;

    iput-object p4, p0, Lcom/bzbs/marketplace/dialog/ConditionDealGetBlurDialog$3;->d:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-direct {p0}, Lcom/bzbs/marketplace/asynctask/http/CallbackHttpAsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I[Lcz/msebera/android/httpclient/Header;[B)V
    .registers 8

    .prologue
    .line 172
    iget-object v0, p0, Lcom/bzbs/marketplace/dialog/ConditionDealGetBlurDialog$3;->a:Landroid/app/Activity;

    check-cast v0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->l()V

    .line 173
    iget-object v0, p0, Lcom/bzbs/marketplace/dialog/ConditionDealGetBlurDialog$3;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 175
    iget-object v0, p0, Lcom/bzbs/marketplace/dialog/ConditionDealGetBlurDialog$3;->c:Landroid/app/Dialog;

    if-eqz v0, :cond_15

    .line 176
    iget-object v0, p0, Lcom/bzbs/marketplace/dialog/ConditionDealGetBlurDialog$3;->c:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 179
    :cond_15
    const/16 v0, 0xc8

    if-ne p1, v0, :cond_b1

    .line 180
    iget-object v0, p0, Lcom/bzbs/marketplace/dialog/ConditionDealGetBlurDialog$3;->d:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getType()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_56

    .line 181
    iget-object v0, p0, Lcom/bzbs/marketplace/dialog/ConditionDealGetBlurDialog$3;->d:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->isDelivered()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 183
    iget-object v0, p0, Lcom/bzbs/marketplace/dialog/ConditionDealGetBlurDialog$3;->a:Landroid/app/Activity;

    check-cast v0, Lcom/bzbs/marketplace/activity/MarketPlaceDetailActivity;

    iget-object v1, p0, Lcom/bzbs/marketplace/dialog/ConditionDealGetBlurDialog$3;->d:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v0, v1}, Lcom/bzbs/marketplace/activity/MarketPlaceDetailActivity;->a(Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;)V

    .line 215
    :cond_39
    :goto_39
    return-void

    .line 186
    :cond_3a
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p3}, Ljava/lang/String;-><init>([B)V

    const-class v2, Lcom/bzbs/marketplace/model/dialog/ConfirmOnDialogDealsGetModel;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/marketplace/model/dialog/ConfirmOnDialogDealsGetModel;

    .line 187
    iget-object v1, p0, Lcom/bzbs/marketplace/dialog/ConditionDealGetBlurDialog$3;->a:Landroid/app/Activity;

    check-cast v1, Lcom/bzbs/marketplace/activity/MarketPlaceDetailActivity;

    iget-object v2, p0, Lcom/bzbs/marketplace/dialog/ConditionDealGetBlurDialog$3;->d:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v1, v2, v0}, Lcom/bzbs/marketplace/activity/MarketPlaceDetailActivity;->a(Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;Lcom/bzbs/marketplace/model/dialog/ConfirmOnDialogDealsGetModel;)V

    goto :goto_39

    .line 191
    :cond_56
    iget-object v0, p0, Lcom/bzbs/marketplace/dialog/ConditionDealGetBlurDialog$3;->d:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getPointType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_39

    .line 194
    iget-object v0, p0, Lcom/bzbs/marketplace/dialog/ConditionDealGetBlurDialog$3;->d:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getPointType()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "get"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_95

    .line 195
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p3}, Ljava/lang/String;-><init>([B)V

    .line 196
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    const-class v2, Lcom/bzbs/marketplace/model/CampaignTypeGetModel;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/marketplace/model/CampaignTypeGetModel;

    .line 197
    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/CampaignTypeGetModel;->getBuzzebees()Lcom/bzbs/marketplace/model/CampaignTypeGetModel$BuzzebeesEntity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/CampaignTypeGetModel$BuzzebeesEntity;->getPoints()I

    move-result v0

    const-string/jumbo v1, ""

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iget-object v3, p0, Lcom/bzbs/marketplace/dialog/ConditionDealGetBlurDialog$3;->a:Landroid/app/Activity;

    invoke-static {v0, v1, v2, v3}, Lcom/bzbs/lib/survey/util/AnimationPoint;->a(ILjava/lang/String;Landroid/os/Handler;Landroid/app/Activity;)V

    goto :goto_39

    .line 200
    :cond_95
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p3}, Ljava/lang/String;-><init>([B)V

    const-class v2, Lcom/bzbs/marketplace/model/dialog/ConfirmOnDialogDealsGetModel;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/marketplace/model/dialog/ConfirmOnDialogDealsGetModel;

    .line 201
    iget-object v1, p0, Lcom/bzbs/marketplace/dialog/ConditionDealGetBlurDialog$3;->a:Landroid/app/Activity;

    check-cast v1, Lcom/bzbs/marketplace/activity/MarketPlaceDetailActivity;

    iget-object v2, p0, Lcom/bzbs/marketplace/dialog/ConditionDealGetBlurDialog$3;->d:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v1, v2, v0}, Lcom/bzbs/marketplace/activity/MarketPlaceDetailActivity;->a(Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;Lcom/bzbs/marketplace/model/dialog/ConfirmOnDialogDealsGetModel;)V

    goto :goto_39

    .line 205
    :cond_b1
    const-string/jumbo v0, ""

    .line 206
    if-eqz p3, :cond_dc

    .line 207
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p3}, Ljava/lang/String;-><init>([B)V

    .line 208
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    const-class v2, Lcom/bzbs/marketplace/model/dialog/ErrorDialogModel;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/marketplace/model/dialog/ErrorDialogModel;

    .line 209
    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/dialog/ErrorDialogModel;->getError()Lcom/bzbs/marketplace/model/dialog/ErrorDialogModel$ErrorEntity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/dialog/ErrorDialogModel$ErrorEntity;->getMessage()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 212
    :goto_d1
    iget-object v0, p0, Lcom/bzbs/marketplace/dialog/ConditionDealGetBlurDialog$3;->a:Landroid/app/Activity;

    check-cast v0, Lcom/bzbs/marketplace/activity/MarketPlaceDetailActivity;

    iget-object v2, p0, Lcom/bzbs/marketplace/dialog/ConditionDealGetBlurDialog$3;->d:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v0, v2, v1}, Lcom/bzbs/marketplace/activity/MarketPlaceDetailActivity;->a(Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;Ljava/lang/String;)V

    goto/16 :goto_39

    :cond_dc
    move-object v1, v0

    goto :goto_d1
.end method

.method public a(I[Lcz/msebera/android/httpclient/Header;[BLjava/lang/Throwable;)V
    .registers 5

    .prologue
    .line 219
    invoke-virtual {p0, p1, p2, p3}, Lcom/bzbs/marketplace/dialog/ConditionDealGetBlurDialog$3;->a(I[Lcz/msebera/android/httpclient/Header;[B)V

    .line 220
    return-void
.end method
