.class Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$CheckAddressBeforeRedeemListener;
.super Lic/buzzebeeslib/util/http/HttpRQListener;
.source "MarketPlaceDetail2Activity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckAddressBeforeRedeemListener"
.end annotation


# instance fields
.field private gCampaign:Lic/buzzebeeslib/bean/Campaign;

.field final synthetic this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;


# direct methods
.method public constructor <init>(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;Lic/buzzebeeslib/bean/Campaign;)V
    .registers 3
    .param p2, "pCampaign"    # Lic/buzzebeeslib/bean/Campaign;

    .prologue
    .line 4040
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$CheckAddressBeforeRedeemListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    invoke-direct {p0}, Lic/buzzebeeslib/util/http/HttpRQListener;-><init>()V

    .line 4041
    iput-object p2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$CheckAddressBeforeRedeemListener;->gCampaign:Lic/buzzebeeslib/bean/Campaign;

    .line 4042
    return-void
.end method

.method static synthetic access$0(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$CheckAddressBeforeRedeemListener;)Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;
    .registers 2

    .prologue
    .line 4036
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$CheckAddressBeforeRedeemListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    return-object v0
.end method


# virtual methods
.method public onComplete(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 7
    .param p1, "response_code"    # I
    .param p2, "response_text"    # Ljava/lang/String;
    .param p3, "state"    # Ljava/lang/Object;

    .prologue
    .line 4046
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$CheckAddressBeforeRedeemListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$1(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)Ljava/lang/String;

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

    .line 4047
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$CheckAddressBeforeRedeemListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    invoke-virtual {v0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_4d

    .line 4049
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$CheckAddressBeforeRedeemListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$10(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_3b

    .line 4050
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$CheckAddressBeforeRedeemListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$10(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 4053
    :cond_3b
    const/16 v0, 0xc8

    if-ne p1, v0, :cond_4e

    .line 4054
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$CheckAddressBeforeRedeemListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$14(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$CheckAddressBeforeRedeemListener$1;

    invoke-direct {v1, p0, p2}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$CheckAddressBeforeRedeemListener$1;-><init>(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$CheckAddressBeforeRedeemListener;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4100
    :cond_4d
    :goto_4d
    return-void

    .line 4097
    :cond_4e
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$CheckAddressBeforeRedeemListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$CheckAddressBeforeRedeemListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    sget v2, Lic/buzzebeeslib/R$string;->profile_setting_checking_address_error:I

    invoke-virtual {v1, v2}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    # invokes: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->showToast(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$8(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;Ljava/lang/String;)V

    goto :goto_4d
.end method
