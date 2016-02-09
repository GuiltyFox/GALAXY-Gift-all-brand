.class Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$9;
.super Ljava/lang/Object;
.source "MarketPlaceDetail2Activity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->showDialogConditionDealsGet()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

.field private final synthetic val$dialogSerial:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;Landroid/app/Dialog;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$9;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    iput-object p2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$9;->val$dialogSerial:Landroid/app/Dialog;

    .line 1462
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 15
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 1464
    iget-object v6, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$9;->val$dialogSerial:Landroid/app/Dialog;

    invoke-virtual {v6}, Landroid/app/Dialog;->dismiss()V

    .line 1471
    iget-object v6, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$9;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;
    invoke-static {v6}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$3(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)Lic/buzzebeeslib/bean/Campaign;

    move-result-object v6

    iget-object v6, v6, Lic/buzzebeeslib/bean/Campaign;->CustomInput:Ljava/lang/String;

    if-eqz v6, :cond_3d

    iget-object v6, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$9;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;
    invoke-static {v6}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$3(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)Lic/buzzebeeslib/bean/Campaign;

    move-result-object v6

    iget-object v6, v6, Lic/buzzebeeslib/bean/Campaign;->CustomInput:Ljava/lang/String;

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3d

    .line 1472
    iget-object v6, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$9;->val$dialogSerial:Landroid/app/Dialog;

    invoke-virtual {v6}, Landroid/app/Dialog;->dismiss()V

    .line 1475
    const-string v6, "content://someURI"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 1476
    .local v4, "uri":Landroid/net/Uri;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v12, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1477
    .local v3, "intent":Landroid/content/Intent;
    iget-object v6, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$9;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    const/4 v7, -0x1

    invoke-virtual {v6, v7, v3}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->setResult(ILandroid/content/Intent;)V

    .line 1478
    iget-object v6, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$9;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    # invokes: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->showCustominput()V
    invoke-static {v6}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$39(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)V

    .line 1497
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "uri":Landroid/net/Uri;
    :goto_3c
    return-void

    .line 1480
    :cond_3d
    iget-object v6, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$9;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$9;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    const-string v8, ""

    iget-object v9, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$9;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    sget v10, Lic/buzzebeeslib/R$string;->please_wait:I

    invoke-virtual {v9, v10}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9, v11, v11}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v7

    invoke-static {v6, v7}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$20(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;Landroid/app/ProgressDialog;)V

    .line 1482
    new-instance v2, Lic/buzzebeeslib/util/DeviceHelper;

    iget-object v6, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$9;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    invoke-virtual {v6}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v2, v6}, Lic/buzzebeeslib/util/DeviceHelper;-><init>(Landroid/content/Context;)V

    .line 1483
    .local v2, "deviceHelper":Lic/buzzebeeslib/util/DeviceHelper;
    iget-object v6, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$9;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    invoke-virtual {v6}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lic/buzzebeeslib/util/PhoneManagerUtil;->GetSimOperator(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1484
    .local v0, "carrier":Ljava/lang/String;
    invoke-virtual {v2}, Lic/buzzebeeslib/util/DeviceHelper;->getPhoneNumber()Ljava/lang/String;

    move-result-object v1

    .line 1486
    .local v1, "contact_number":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    sget-object v7, Lic/buzzebeeslib/LibConst;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "api/campaign/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$9;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;
    invoke-static {v7}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$3(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)Lic/buzzebeeslib/bean/Campaign;

    move-result-object v7

    iget-object v7, v7, Lic/buzzebeeslib/bean/Campaign;->ID:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/redeem?token="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$9;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    invoke-virtual {v7}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lic/buzzebeeslib/LibUserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&carrier="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&contact_number="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1487
    .local v5, "url":Ljava/lang/String;
    iget-object v6, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$9;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->TAG:Ljava/lang/String;
    invoke-static {v6}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$1(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "OK redeem url="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1492
    new-instance v6, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostDealsGetListener;

    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$9;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    invoke-direct {v6, v7}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostDealsGetListener;-><init>(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)V

    invoke-static {v5, v12, v6}, Lic/buzzebeeslib/util/http/BuzzbeesRestClient;->post(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V

    goto/16 :goto_3c
.end method
