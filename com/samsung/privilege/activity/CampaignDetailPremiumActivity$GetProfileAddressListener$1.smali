.class Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$GetProfileAddressListener$1;
.super Ljava/lang/Object;
.source "CampaignDetailPremiumActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$GetProfileAddressListener;->onComplete(ILjava/lang/String;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$GetProfileAddressListener;

.field private final synthetic val$response_code:I

.field private final synthetic val$response_text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$GetProfileAddressListener;ILjava/lang/String;)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$GetProfileAddressListener$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$GetProfileAddressListener;

    iput p2, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$GetProfileAddressListener$1;->val$response_code:I

    iput-object p3, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$GetProfileAddressListener$1;->val$response_text:Ljava/lang/String;

    .line 2825
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 2828
    iget v3, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$GetProfileAddressListener$1;->val$response_code:I

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_93

    .line 2830
    :try_start_6
    new-instance v1, Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$GetProfileAddressListener$1;->val$response_text:Ljava/lang/String;

    invoke-direct {v1, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2831
    .local v1, "jsonRoot":Lorg/json/JSONObject;
    const-string v3, "Address"

    invoke-static {v1, v3}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2832
    .local v2, "strAddress":Ljava/lang/String;
    if-eqz v2, :cond_2a

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2a

    .line 2833
    iget-object v3, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$GetProfileAddressListener$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$GetProfileAddressListener;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$GetProfileAddressListener;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;
    invoke-static {v3}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$GetProfileAddressListener;->access$1(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$GetProfileAddressListener;)Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/samsung/privilege/UserLogin;->SetAddress(Landroid/content/Context;Ljava/lang/String;)Z

    .line 2835
    :cond_2a
    iget-object v3, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$GetProfileAddressListener$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$GetProfileAddressListener;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$GetProfileAddressListener;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;
    invoke-static {v3}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$GetProfileAddressListener;->access$1(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$GetProfileAddressListener;)Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "ShippingFirstName"

    invoke-static {v1, v4}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/privilege/UserLogin;->SetFirstName(Landroid/content/Context;Ljava/lang/String;)Z

    .line 2836
    iget-object v3, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$GetProfileAddressListener$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$GetProfileAddressListener;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$GetProfileAddressListener;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;
    invoke-static {v3}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$GetProfileAddressListener;->access$1(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$GetProfileAddressListener;)Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "ShippingLastName"

    invoke-static {v1, v4}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/privilege/UserLogin;->SetLastName(Landroid/content/Context;Ljava/lang/String;)Z

    .line 2837
    iget-object v3, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$GetProfileAddressListener$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$GetProfileAddressListener;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$GetProfileAddressListener;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;
    invoke-static {v3}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$GetProfileAddressListener;->access$1(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$GetProfileAddressListener;)Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "Gender"

    invoke-static {v1, v4}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/privilege/UserLogin;->SetGender(Landroid/content/Context;Ljava/lang/String;)Z

    .line 2838
    iget-object v3, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$GetProfileAddressListener$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$GetProfileAddressListener;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$GetProfileAddressListener;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;
    invoke-static {v3}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$GetProfileAddressListener;->access$1(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$GetProfileAddressListener;)Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "Address"

    invoke-static {v1, v4}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/privilege/UserLogin;->SetAddress(Landroid/content/Context;Ljava/lang/String;)Z

    .line 2839
    iget-object v3, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$GetProfileAddressListener$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$GetProfileAddressListener;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$GetProfileAddressListener;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;
    invoke-static {v3}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$GetProfileAddressListener;->access$1(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$GetProfileAddressListener;)Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "BirthDate"

    invoke-static {v1, v4}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/privilege/UserLogin;->SetBirthday(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_89} :catch_8a

    .line 2847
    .end local v1    # "jsonRoot":Lorg/json/JSONObject;
    .end local v2    # "strAddress":Ljava/lang/String;
    :goto_89
    return-void

    .line 2841
    :catch_8a
    move-exception v0

    .line 2842
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "campaign.detail"

    const-string v4, "Error while load profile data."

    invoke-static {v3, v4}, Lcom/samsung/privilege/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_89

    .line 2845
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_93
    const-string v3, "campaign.detail"

    const-string v4, "Can not load check address profile data."

    invoke-static {v3, v4}, Lcom/samsung/privilege/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_89
.end method
