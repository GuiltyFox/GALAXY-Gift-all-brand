.class Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CheckAddressBeforePurchasingListener$1;
.super Ljava/lang/Object;
.source "MarketPlaceDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CheckAddressBeforePurchasingListener;->onComplete(ILjava/lang/String;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CheckAddressBeforePurchasingListener;

.field private final synthetic val$response_text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CheckAddressBeforePurchasingListener;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CheckAddressBeforePurchasingListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CheckAddressBeforePurchasingListener;

    iput-object p2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CheckAddressBeforePurchasingListener$1;->val$response_text:Ljava/lang/String;

    .line 4527
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CheckAddressBeforePurchasingListener$1;)Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CheckAddressBeforePurchasingListener;
    .registers 2

    .prologue
    .line 4527
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CheckAddressBeforePurchasingListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CheckAddressBeforePurchasingListener;

    return-object v0
.end method


# virtual methods
.method public run()V
    .registers 14

    .prologue
    .line 4531
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CheckAddressBeforePurchasingListener$1;->val$response_text:Ljava/lang/String;

    invoke-direct {v3, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 4532
    .local v3, "jsonRoot":Lorg/json/JSONObject;
    const-string v7, "Address"

    invoke-static {v3, v7}, Lic/buzzebeeslib/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 4533
    .local v5, "strAddress":Ljava/lang/String;
    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CheckAddressBeforePurchasingListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CheckAddressBeforePurchasingListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CheckAddressBeforePurchasingListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;
    invoke-static {v7}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CheckAddressBeforePurchasingListener;->access$1(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CheckAddressBeforePurchasingListener;)Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    move-result-object v7

    invoke-virtual {v7}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v5}, Lic/buzzebeeslib/LibUserLogin;->SetAddress(Landroid/content/Context;Ljava/lang/String;)Z

    .line 4535
    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CheckAddressBeforePurchasingListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CheckAddressBeforePurchasingListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CheckAddressBeforePurchasingListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;
    invoke-static {v7}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CheckAddressBeforePurchasingListener;->access$1(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CheckAddressBeforePurchasingListener;)Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    move-result-object v7

    invoke-virtual {v7}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lic/buzzebeeslib/LibUserLogin;->GetFirstName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_40

    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CheckAddressBeforePurchasingListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CheckAddressBeforePurchasingListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CheckAddressBeforePurchasingListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;
    invoke-static {v7}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CheckAddressBeforePurchasingListener;->access$1(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CheckAddressBeforePurchasingListener;)Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    move-result-object v7

    invoke-virtual {v7}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lic/buzzebeeslib/LibUserLogin;->GetFirstName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8c

    :cond_40
    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CheckAddressBeforePurchasingListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CheckAddressBeforePurchasingListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CheckAddressBeforePurchasingListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;
    invoke-static {v7}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CheckAddressBeforePurchasingListener;->access$1(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CheckAddressBeforePurchasingListener;)Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    move-result-object v7

    invoke-virtual {v7}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lic/buzzebeeslib/LibUserLogin;->GetLastName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_66

    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CheckAddressBeforePurchasingListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CheckAddressBeforePurchasingListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CheckAddressBeforePurchasingListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;
    invoke-static {v7}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CheckAddressBeforePurchasingListener;->access$1(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CheckAddressBeforePurchasingListener;)Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    move-result-object v7

    invoke-virtual {v7}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lic/buzzebeeslib/LibUserLogin;->GetLastName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8c

    :cond_66
    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CheckAddressBeforePurchasingListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CheckAddressBeforePurchasingListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CheckAddressBeforePurchasingListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;
    invoke-static {v7}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CheckAddressBeforePurchasingListener;->access$1(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CheckAddressBeforePurchasingListener;)Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    move-result-object v7

    invoke-virtual {v7}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lic/buzzebeeslib/LibUserLogin;->GetAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_156

    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CheckAddressBeforePurchasingListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CheckAddressBeforePurchasingListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CheckAddressBeforePurchasingListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;
    invoke-static {v7}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CheckAddressBeforePurchasingListener;->access$1(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CheckAddressBeforePurchasingListener;)Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    move-result-object v7

    invoke-virtual {v7}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lic/buzzebeeslib/LibUserLogin;->GetAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_156

    .line 4536
    :cond_8c
    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CheckAddressBeforePurchasingListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CheckAddressBeforePurchasingListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CheckAddressBeforePurchasingListener;->gCampaign:Lic/buzzebeeslib/bean/Campaign;
    invoke-static {v7}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CheckAddressBeforePurchasingListener;->access$0(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CheckAddressBeforePurchasingListener;)Lic/buzzebeeslib/bean/Campaign;

    move-result-object v7

    iget v7, v7, Lic/buzzebeeslib/bean/Campaign;->RedeemCount:I

    if-lez v7, :cond_135

    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CheckAddressBeforePurchasingListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CheckAddressBeforePurchasingListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CheckAddressBeforePurchasingListener;->gCampaign:Lic/buzzebeeslib/bean/Campaign;
    invoke-static {v7}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CheckAddressBeforePurchasingListener;->access$0(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CheckAddressBeforePurchasingListener;)Lic/buzzebeeslib/bean/Campaign;

    move-result-object v7

    iget v7, v7, Lic/buzzebeeslib/bean/Campaign;->UseCount:I

    iget-object v8, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CheckAddressBeforePurchasingListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CheckAddressBeforePurchasingListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CheckAddressBeforePurchasingListener;->gCampaign:Lic/buzzebeeslib/bean/Campaign;
    invoke-static {v8}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CheckAddressBeforePurchasingListener;->access$0(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CheckAddressBeforePurchasingListener;)Lic/buzzebeeslib/bean/Campaign;

    move-result-object v8

    iget v8, v8, Lic/buzzebeeslib/bean/Campaign;->RedeemCount:I

    if-ne v7, v8, :cond_135

    .line 4537
    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CheckAddressBeforePurchasingListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CheckAddressBeforePurchasingListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CheckAddressBeforePurchasingListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;
    invoke-static {v7}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CheckAddressBeforePurchasingListener;->access$1(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CheckAddressBeforePurchasingListener;)Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    move-result-object v7

    iget-object v8, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CheckAddressBeforePurchasingListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CheckAddressBeforePurchasingListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CheckAddressBeforePurchasingListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;
    invoke-static {v8}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CheckAddressBeforePurchasingListener;->access$1(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CheckAddressBeforePurchasingListener;)Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    move-result-object v8

    const-string v9, ""

    iget-object v10, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CheckAddressBeforePurchasingListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CheckAddressBeforePurchasingListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CheckAddressBeforePurchasingListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;
    invoke-static {v10}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CheckAddressBeforePurchasingListener;->access$1(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CheckAddressBeforePurchasingListener;)Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    move-result-object v10

    sget v11, Lic/buzzebeeslib/R$string;->please_wait:I

    invoke-virtual {v10, v11}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    const/4 v12, 0x1

    invoke-static {v8, v9, v10, v11, v12}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v8

    invoke-static {v7, v8}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$26(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;Landroid/app/ProgressDialog;)V

    .line 4539
    new-instance v7, Ljava/lang/StringBuilder;

    sget-object v8, Lic/buzzebeeslib/LibConst;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "api/campaign/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CheckAddressBeforePurchasingListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CheckAddressBeforePurchasingListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CheckAddressBeforePurchasingListener;->gCampaign:Lic/buzzebeeslib/bean/Campaign;
    invoke-static {v8}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CheckAddressBeforePurchasingListener;->access$0(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CheckAddressBeforePurchasingListener;)Lic/buzzebeeslib/bean/Campaign;

    move-result-object v8

    iget-object v8, v8, Lic/buzzebeeslib/bean/Campaign;->ID:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/use?token="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CheckAddressBeforePurchasingListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CheckAddressBeforePurchasingListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CheckAddressBeforePurchasingListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;
    invoke-static {v8}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CheckAddressBeforePurchasingListener;->access$1(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CheckAddressBeforePurchasingListener;)Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    move-result-object v8

    invoke-virtual {v8}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lic/buzzebeeslib/LibUserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 4540
    .local v6, "url":Ljava/lang/String;
    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CheckAddressBeforePurchasingListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CheckAddressBeforePurchasingListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CheckAddressBeforePurchasingListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;
    invoke-static {v7}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CheckAddressBeforePurchasingListener;->access$1(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CheckAddressBeforePurchasingListener;)Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    move-result-object v7

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->TAG:Ljava/lang/String;
    invoke-static {v7}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$0(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "OK redeem url="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 4541
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 4542
    .local v4, "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lic/buzzebeeslib/bean/InputItem;>;"
    new-instance v7, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostUsedListener;

    iget-object v8, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CheckAddressBeforePurchasingListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CheckAddressBeforePurchasingListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CheckAddressBeforePurchasingListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;
    invoke-static {v8}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CheckAddressBeforePurchasingListener;->access$1(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CheckAddressBeforePurchasingListener;)Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    move-result-object v8

    invoke-direct {v7, v8}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostUsedListener;-><init>(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)V

    const/4 v8, 0x0

    invoke-static {v6, v4, v7, v8}, Lic/buzzebeeslib/util/http/HttpCall;->RQ_POST(Ljava/lang/String;Ljava/util/ArrayList;Lic/buzzebeeslib/util/http/RQListener;Ljava/lang/Object;)V

    .line 4566
    .end local v3    # "jsonRoot":Lorg/json/JSONObject;
    .end local v4    # "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lic/buzzebeeslib/bean/InputItem;>;"
    .end local v5    # "strAddress":Ljava/lang/String;
    .end local v6    # "url":Ljava/lang/String;
    :goto_134
    return-void

    .line 4544
    .restart local v3    # "jsonRoot":Lorg/json/JSONObject;
    .restart local v5    # "strAddress":Ljava/lang/String;
    :cond_135
    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CheckAddressBeforePurchasingListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CheckAddressBeforePurchasingListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CheckAddressBeforePurchasingListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;
    invoke-static {v7}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CheckAddressBeforePurchasingListener;->access$1(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CheckAddressBeforePurchasingListener;)Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    move-result-object v7

    # invokes: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->showDialogDealsGet()V
    invoke-static {v7}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$12(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)V
    :try_end_13e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13e} :catch_13f

    goto :goto_134

    .line 4563
    .end local v3    # "jsonRoot":Lorg/json/JSONObject;
    .end local v5    # "strAddress":Ljava/lang/String;
    :catch_13f
    move-exception v2

    .line 4564
    .local v2, "e":Ljava/lang/Exception;
    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CheckAddressBeforePurchasingListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CheckAddressBeforePurchasingListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CheckAddressBeforePurchasingListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;
    invoke-static {v7}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CheckAddressBeforePurchasingListener;->access$1(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CheckAddressBeforePurchasingListener;)Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    move-result-object v7

    iget-object v8, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CheckAddressBeforePurchasingListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CheckAddressBeforePurchasingListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CheckAddressBeforePurchasingListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;
    invoke-static {v8}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CheckAddressBeforePurchasingListener;->access$1(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CheckAddressBeforePurchasingListener;)Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    move-result-object v8

    sget v9, Lic/buzzebeeslib/R$string;->profile_setting_checking_address_error:I

    invoke-virtual {v8, v9}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    # invokes: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->showToast(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$8(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;Ljava/lang/String;)V

    goto :goto_134

    .line 4547
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v3    # "jsonRoot":Lorg/json/JSONObject;
    .restart local v5    # "strAddress":Ljava/lang/String;
    :cond_156
    :try_start_156
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CheckAddressBeforePurchasingListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CheckAddressBeforePurchasingListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CheckAddressBeforePurchasingListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;
    invoke-static {v7}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CheckAddressBeforePurchasingListener;->access$1(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CheckAddressBeforePurchasingListener;)Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    move-result-object v7

    invoke-direct {v1, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 4548
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CheckAddressBeforePurchasingListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CheckAddressBeforePurchasingListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CheckAddressBeforePurchasingListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;
    invoke-static {v7}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CheckAddressBeforePurchasingListener;->access$1(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CheckAddressBeforePurchasingListener;)Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    move-result-object v7

    sget v8, Lic/buzzebeeslib/R$string;->app_name:I

    invoke-virtual {v7, v8}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    iget-object v8, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CheckAddressBeforePurchasingListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CheckAddressBeforePurchasingListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CheckAddressBeforePurchasingListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;
    invoke-static {v8}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CheckAddressBeforePurchasingListener;->access$1(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CheckAddressBeforePurchasingListener;)Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    move-result-object v8

    sget v9, Lic/buzzebeeslib/R$string;->profile_setting_alert_address:I

    invoke-virtual {v8, v9}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const-string v8, "Yes"

    new-instance v9, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CheckAddressBeforePurchasingListener$1$1;

    invoke-direct {v9, p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CheckAddressBeforePurchasingListener$1$1;-><init>(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CheckAddressBeforePurchasingListener$1;)V

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    .line 4555
    const-string v8, "No"

    new-instance v9, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CheckAddressBeforePurchasingListener$1$2;

    invoke-direct {v9, p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CheckAddressBeforePurchasingListener$1$2;-><init>(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CheckAddressBeforePurchasingListener$1;)V

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 4560
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 4561
    .local v0, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V
    :try_end_1a2
    .catch Ljava/lang/Exception; {:try_start_156 .. :try_end_1a2} :catch_13f

    goto :goto_134
.end method
