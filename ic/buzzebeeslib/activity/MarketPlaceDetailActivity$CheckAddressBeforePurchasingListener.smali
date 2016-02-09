.class Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CheckAddressBeforePurchasingListener;
.super Lic/buzzebeeslib/util/http/HttpRQListener;
.source "MarketPlaceDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckAddressBeforePurchasingListener"
.end annotation


# instance fields
.field private gCampaign:Lic/buzzebeeslib/bean/Campaign;

.field final synthetic this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;


# direct methods
.method public constructor <init>(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;Lic/buzzebeeslib/bean/Campaign;)V
    .registers 3
    .param p2, "pCampaign"    # Lic/buzzebeeslib/bean/Campaign;

    .prologue
    .line 4513
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CheckAddressBeforePurchasingListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    invoke-direct {p0}, Lic/buzzebeeslib/util/http/HttpRQListener;-><init>()V

    .line 4514
    iput-object p2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CheckAddressBeforePurchasingListener;->gCampaign:Lic/buzzebeeslib/bean/Campaign;

    .line 4515
    return-void
.end method

.method static synthetic access$0(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CheckAddressBeforePurchasingListener;)Lic/buzzebeeslib/bean/Campaign;
    .registers 2

    .prologue
    .line 4511
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CheckAddressBeforePurchasingListener;->gCampaign:Lic/buzzebeeslib/bean/Campaign;

    return-object v0
.end method

.method static synthetic access$1(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CheckAddressBeforePurchasingListener;)Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;
    .registers 2

    .prologue
    .line 4509
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CheckAddressBeforePurchasingListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    return-object v0
.end method


# virtual methods
.method public onComplete(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 7
    .param p1, "response_code"    # I
    .param p2, "response_text"    # Ljava/lang/String;
    .param p3, "state"    # Ljava/lang/Object;

    .prologue
    .line 4519
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CheckAddressBeforePurchasingListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$0(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "(CheckAddressBeforePurchasingListener|onSuccess)response_code : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " response_text : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 4520
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CheckAddressBeforePurchasingListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    invoke-virtual {v0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_4d

    .line 4522
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CheckAddressBeforePurchasingListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$10(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_3b

    .line 4523
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CheckAddressBeforePurchasingListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$10(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 4526
    :cond_3b
    const/16 v0, 0xc8

    if-ne p1, v0, :cond_4e

    .line 4527
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CheckAddressBeforePurchasingListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$14(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CheckAddressBeforePurchasingListener$1;

    invoke-direct {v1, p0, p2}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CheckAddressBeforePurchasingListener$1;-><init>(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CheckAddressBeforePurchasingListener;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4572
    :cond_4d
    :goto_4d
    return-void

    .line 4569
    :cond_4e
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CheckAddressBeforePurchasingListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CheckAddressBeforePurchasingListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    sget v2, Lic/buzzebeeslib/R$string;->profile_setting_checking_address_error:I

    invoke-virtual {v1, v2}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    # invokes: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->showToast(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$8(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;Ljava/lang/String;)V

    goto :goto_4d
.end method
