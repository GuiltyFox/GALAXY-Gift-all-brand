.class Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$CheckAddressBeforeRedeemListener$1;
.super Ljava/lang/Object;
.source "MarketPlaceDetail2Activity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$CheckAddressBeforeRedeemListener;->onComplete(ILjava/lang/String;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$CheckAddressBeforeRedeemListener;

.field private final synthetic val$response_text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$CheckAddressBeforeRedeemListener;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$CheckAddressBeforeRedeemListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$CheckAddressBeforeRedeemListener;

    iput-object p2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$CheckAddressBeforeRedeemListener$1;->val$response_text:Ljava/lang/String;

    .line 4054
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$CheckAddressBeforeRedeemListener$1;)Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$CheckAddressBeforeRedeemListener;
    .registers 2

    .prologue
    .line 4054
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$CheckAddressBeforeRedeemListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$CheckAddressBeforeRedeemListener;

    return-object v0
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    .line 4058
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    iget-object v5, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$CheckAddressBeforeRedeemListener$1;->val$response_text:Ljava/lang/String;

    invoke-direct {v3, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 4059
    .local v3, "jsonRoot":Lorg/json/JSONObject;
    const-string v5, "Address"

    invoke-static {v3, v5}, Lic/buzzebeeslib/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4060
    .local v4, "strAddress":Ljava/lang/String;
    iget-object v5, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$CheckAddressBeforeRedeemListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$CheckAddressBeforeRedeemListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$CheckAddressBeforeRedeemListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;
    invoke-static {v5}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$CheckAddressBeforeRedeemListener;->access$0(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$CheckAddressBeforeRedeemListener;)Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    move-result-object v5

    invoke-virtual {v5}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v4}, Lic/buzzebeeslib/LibUserLogin;->SetAddress(Landroid/content/Context;Ljava/lang/String;)Z

    .line 4062
    if-eqz v4, :cond_82

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_82

    .line 4063
    iget-object v5, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$CheckAddressBeforeRedeemListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$CheckAddressBeforeRedeemListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$CheckAddressBeforeRedeemListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;
    invoke-static {v5}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$CheckAddressBeforeRedeemListener;->access$0(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$CheckAddressBeforeRedeemListener;)Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    move-result-object v5

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;
    invoke-static {v5}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$3(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)Lic/buzzebeeslib/bean/Campaign;

    move-result-object v5

    iget-object v5, v5, Lic/buzzebeeslib/bean/Campaign;->Type:Ljava/lang/String;

    const-string v6, "3"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_43

    .line 4064
    iget-object v5, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$CheckAddressBeforeRedeemListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$CheckAddressBeforeRedeemListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$CheckAddressBeforeRedeemListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;
    invoke-static {v5}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$CheckAddressBeforeRedeemListener;->access$0(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$CheckAddressBeforeRedeemListener;)Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->doBuy(Landroid/view/View;)V

    .line 4094
    .end local v3    # "jsonRoot":Lorg/json/JSONObject;
    .end local v4    # "strAddress":Ljava/lang/String;
    :goto_42
    return-void

    .line 4066
    .restart local v3    # "jsonRoot":Lorg/json/JSONObject;
    .restart local v4    # "strAddress":Ljava/lang/String;
    :cond_43
    iget-object v5, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$CheckAddressBeforeRedeemListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$CheckAddressBeforeRedeemListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$CheckAddressBeforeRedeemListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;
    invoke-static {v5}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$CheckAddressBeforeRedeemListener;->access$0(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$CheckAddressBeforeRedeemListener;)Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    move-result-object v5

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;
    invoke-static {v5}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$3(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)Lic/buzzebeeslib/bean/Campaign;

    move-result-object v5

    iget-object v5, v5, Lic/buzzebeeslib/bean/Campaign;->Type:Ljava/lang/String;

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_78

    .line 4067
    iget-object v5, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$CheckAddressBeforeRedeemListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$CheckAddressBeforeRedeemListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$CheckAddressBeforeRedeemListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;
    invoke-static {v5}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$CheckAddressBeforeRedeemListener;->access$0(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$CheckAddressBeforeRedeemListener;)Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    move-result-object v5

    # invokes: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->showDialogConditionDraws()V
    invoke-static {v5}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$21(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)V
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_60} :catch_61

    goto :goto_42

    .line 4091
    .end local v3    # "jsonRoot":Lorg/json/JSONObject;
    .end local v4    # "strAddress":Ljava/lang/String;
    :catch_61
    move-exception v2

    .line 4092
    .local v2, "e":Ljava/lang/Exception;
    iget-object v5, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$CheckAddressBeforeRedeemListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$CheckAddressBeforeRedeemListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$CheckAddressBeforeRedeemListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;
    invoke-static {v5}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$CheckAddressBeforeRedeemListener;->access$0(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$CheckAddressBeforeRedeemListener;)Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    move-result-object v5

    iget-object v6, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$CheckAddressBeforeRedeemListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$CheckAddressBeforeRedeemListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$CheckAddressBeforeRedeemListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;
    invoke-static {v6}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$CheckAddressBeforeRedeemListener;->access$0(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$CheckAddressBeforeRedeemListener;)Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    move-result-object v6

    sget v7, Lic/buzzebeeslib/R$string;->profile_setting_checking_address_error:I

    invoke-virtual {v6, v7}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    # invokes: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->showToast(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$8(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;Ljava/lang/String;)V

    goto :goto_42

    .line 4069
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v3    # "jsonRoot":Lorg/json/JSONObject;
    .restart local v4    # "strAddress":Ljava/lang/String;
    :cond_78
    :try_start_78
    iget-object v5, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$CheckAddressBeforeRedeemListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$CheckAddressBeforeRedeemListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$CheckAddressBeforeRedeemListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;
    invoke-static {v5}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$CheckAddressBeforeRedeemListener;->access$0(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$CheckAddressBeforeRedeemListener;)Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    move-result-object v5

    # invokes: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->showDialogConditionDealsGet()V
    invoke-static {v5}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$22(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)V

    goto :goto_42

    .line 4075
    :cond_82
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$CheckAddressBeforeRedeemListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$CheckAddressBeforeRedeemListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$CheckAddressBeforeRedeemListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;
    invoke-static {v5}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$CheckAddressBeforeRedeemListener;->access$0(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$CheckAddressBeforeRedeemListener;)Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    move-result-object v5

    invoke-direct {v1, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 4076
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v5, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$CheckAddressBeforeRedeemListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$CheckAddressBeforeRedeemListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$CheckAddressBeforeRedeemListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;
    invoke-static {v5}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$CheckAddressBeforeRedeemListener;->access$0(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$CheckAddressBeforeRedeemListener;)Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    move-result-object v5

    sget v6, Lic/buzzebeeslib/R$string;->app_name:I

    invoke-virtual {v5, v6}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    iget-object v6, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$CheckAddressBeforeRedeemListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$CheckAddressBeforeRedeemListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$CheckAddressBeforeRedeemListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;
    invoke-static {v6}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$CheckAddressBeforeRedeemListener;->access$0(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$CheckAddressBeforeRedeemListener;)Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    move-result-object v6

    sget v7, Lic/buzzebeeslib/R$string;->profile_setting_alert_address:I

    invoke-virtual {v6, v7}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const-string v6, "Yes"

    new-instance v7, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$CheckAddressBeforeRedeemListener$1$1;

    invoke-direct {v7, p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$CheckAddressBeforeRedeemListener$1$1;-><init>(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$CheckAddressBeforeRedeemListener$1;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 4083
    const-string v6, "No"

    new-instance v7, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$CheckAddressBeforeRedeemListener$1$2;

    invoke-direct {v7, p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$CheckAddressBeforeRedeemListener$1$2;-><init>(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$CheckAddressBeforeRedeemListener$1;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 4088
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 4089
    .local v0, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V
    :try_end_ce
    .catch Ljava/lang/Exception; {:try_start_78 .. :try_end_ce} :catch_61

    goto/16 :goto_42
.end method
