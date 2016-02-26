.class public Lcom/samsung/privilege/activity/CampaignListActivity$PostNFCEncyptListener;
.super Lcom/samsung/privilege/util/http/HttpRQListener;
.source "CampaignListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/privilege/activity/CampaignListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PostNFCEncyptListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/CampaignListActivity;


# direct methods
.method public constructor <init>(Lcom/samsung/privilege/activity/CampaignListActivity;)V
    .registers 2

    .prologue
    .line 694
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignListActivity$PostNFCEncyptListener;->this$0:Lcom/samsung/privilege/activity/CampaignListActivity;

    invoke-direct {p0}, Lcom/samsung/privilege/util/http/HttpRQListener;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/samsung/privilege/activity/CampaignListActivity$PostNFCEncyptListener;)Lcom/samsung/privilege/activity/CampaignListActivity;
    .registers 2

    .prologue
    .line 694
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity$PostNFCEncyptListener;->this$0:Lcom/samsung/privilege/activity/CampaignListActivity;

    return-object v0
.end method


# virtual methods
.method public onComplete(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 13
    .param p1, "response_code"    # I
    .param p2, "response_text"    # Ljava/lang/String;
    .param p3, "state"    # Ljava/lang/Object;

    .prologue
    .line 697
    iget-object v6, p0, Lcom/samsung/privilege/activity/CampaignListActivity$PostNFCEncyptListener;->this$0:Lcom/samsung/privilege/activity/CampaignListActivity;

    invoke-virtual {v6}, Lcom/samsung/privilege/activity/CampaignListActivity;->isFinishing()Z

    move-result v6

    if-nez v6, :cond_c5

    .line 698
    const-string v6, "CampaignListActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "(PostNFCEncyptListener|onComplete):response_code="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",response_text="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 700
    iget-object v6, p0, Lcom/samsung/privilege/activity/CampaignListActivity$PostNFCEncyptListener;->this$0:Lcom/samsung/privilege/activity/CampaignListActivity;

    invoke-virtual {v6}, Lcom/samsung/privilege/activity/CampaignListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/privilege/UserLogin;->IS_ADMIN(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_56

    .line 701
    const-string v6, "NFC"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "response_code="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",response_text="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/privilege/activity/CampaignListActivity$PostNFCEncyptListener;->this$0:Lcom/samsung/privilege/activity/CampaignListActivity;

    invoke-virtual {v8}, Lcom/samsung/privilege/activity/CampaignListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/samsung/privilege/AppSetting;->LOG(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 704
    :cond_56
    const/16 v6, 0xc8

    if-ne p1, v6, :cond_105

    .line 706
    :try_start_5a
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 708
    .local v1, "jsonRoot":Lorg/json/JSONObject;
    iget-object v6, p0, Lcom/samsung/privilege/activity/CampaignListActivity$PostNFCEncyptListener;->this$0:Lcom/samsung/privilege/activity/CampaignListActivity;

    new-instance v7, Lcom/samsung/privilege/bean/NFCResult;

    invoke-direct {v7, v1}, Lcom/samsung/privilege/bean/NFCResult;-><init>(Lorg/json/JSONObject;)V

    invoke-static {v6, v7}, Lcom/samsung/privilege/activity/CampaignListActivity;->access$3(Lcom/samsung/privilege/activity/CampaignListActivity;Lcom/samsung/privilege/bean/NFCResult;)V

    .line 710
    iget-object v6, p0, Lcom/samsung/privilege/activity/CampaignListActivity$PostNFCEncyptListener;->this$0:Lcom/samsung/privilege/activity/CampaignListActivity;

    const v7, 0x7f090350

    invoke-virtual {v6, v7}, Lcom/samsung/privilege/activity/CampaignListActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 711
    .local v4, "message":Ljava/lang/String;
    iget-object v6, p0, Lcom/samsung/privilege/activity/CampaignListActivity$PostNFCEncyptListener;->this$0:Lcom/samsung/privilege/activity/CampaignListActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignListActivity;->gNfcResult:Lcom/samsung/privilege/bean/NFCResult;
    invoke-static {v6}, Lcom/samsung/privilege/activity/CampaignListActivity;->access$4(Lcom/samsung/privilege/activity/CampaignListActivity;)Lcom/samsung/privilege/bean/NFCResult;

    move-result-object v6

    iget-object v6, v6, Lcom/samsung/privilege/bean/NFCResult;->alert_no_plan:Ljava/lang/String;

    if-eqz v6, :cond_94

    iget-object v6, p0, Lcom/samsung/privilege/activity/CampaignListActivity$PostNFCEncyptListener;->this$0:Lcom/samsung/privilege/activity/CampaignListActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignListActivity;->gNfcResult:Lcom/samsung/privilege/bean/NFCResult;
    invoke-static {v6}, Lcom/samsung/privilege/activity/CampaignListActivity;->access$4(Lcom/samsung/privilege/activity/CampaignListActivity;)Lcom/samsung/privilege/bean/NFCResult;

    move-result-object v6

    iget-object v6, v6, Lcom/samsung/privilege/bean/NFCResult;->alert_no_plan:Ljava/lang/String;

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_94

    .line 712
    iget-object v6, p0, Lcom/samsung/privilege/activity/CampaignListActivity$PostNFCEncyptListener;->this$0:Lcom/samsung/privilege/activity/CampaignListActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignListActivity;->gNfcResult:Lcom/samsung/privilege/bean/NFCResult;
    invoke-static {v6}, Lcom/samsung/privilege/activity/CampaignListActivity;->access$4(Lcom/samsung/privilege/activity/CampaignListActivity;)Lcom/samsung/privilege/bean/NFCResult;

    move-result-object v6

    iget-object v4, v6, Lcom/samsung/privilege/bean/NFCResult;->alert_no_plan:Ljava/lang/String;

    .line 714
    :cond_94
    move-object v5, v4

    .line 716
    .local v5, "message_final":Ljava/lang/String;
    iget-object v6, p0, Lcom/samsung/privilege/activity/CampaignListActivity$PostNFCEncyptListener;->this$0:Lcom/samsung/privilege/activity/CampaignListActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignListActivity;->gNfcResult:Lcom/samsung/privilege/bean/NFCResult;
    invoke-static {v6}, Lcom/samsung/privilege/activity/CampaignListActivity;->access$4(Lcom/samsung/privilege/activity/CampaignListActivity;)Lcom/samsung/privilege/bean/NFCResult;

    move-result-object v6

    iget-object v6, v6, Lcom/samsung/privilege/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_c6

    iget-object v6, p0, Lcom/samsung/privilege/activity/CampaignListActivity$PostNFCEncyptListener;->this$0:Lcom/samsung/privilege/activity/CampaignListActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignListActivity;->gNfcResult:Lcom/samsung/privilege/bean/NFCResult;
    invoke-static {v6}, Lcom/samsung/privilege/activity/CampaignListActivity;->access$4(Lcom/samsung/privilege/activity/CampaignListActivity;)Lcom/samsung/privilege/bean/NFCResult;

    move-result-object v6

    iget-object v6, v6, Lcom/samsung/privilege/bean/NFCResult;->planes_action:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_c6

    .line 717
    iget-object v6, p0, Lcom/samsung/privilege/activity/CampaignListActivity$PostNFCEncyptListener;->this$0:Lcom/samsung/privilege/activity/CampaignListActivity;

    new-instance v7, Lcom/samsung/privilege/activity/CampaignListActivity$PostNFCEncyptListener$1;

    invoke-direct {v7, p0, v5}, Lcom/samsung/privilege/activity/CampaignListActivity$PostNFCEncyptListener$1;-><init>(Lcom/samsung/privilege/activity/CampaignListActivity$PostNFCEncyptListener;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Lcom/samsung/privilege/activity/CampaignListActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 738
    :goto_bb
    iget-object v6, p0, Lcom/samsung/privilege/activity/CampaignListActivity$PostNFCEncyptListener;->this$0:Lcom/samsung/privilege/activity/CampaignListActivity;

    new-instance v7, Lcom/samsung/privilege/activity/CampaignListActivity$PostNFCEncyptListener$4;

    invoke-direct {v7, p0}, Lcom/samsung/privilege/activity/CampaignListActivity$PostNFCEncyptListener$4;-><init>(Lcom/samsung/privilege/activity/CampaignListActivity$PostNFCEncyptListener;)V

    invoke-virtual {v6, v7}, Lcom/samsung/privilege/activity/CampaignListActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 780
    .end local v1    # "jsonRoot":Lorg/json/JSONObject;
    .end local v4    # "message":Ljava/lang/String;
    .end local v5    # "message_final":Ljava/lang/String;
    :cond_c5
    :goto_c5
    return-void

    .line 722
    .restart local v1    # "jsonRoot":Lorg/json/JSONObject;
    .restart local v4    # "message":Ljava/lang/String;
    .restart local v5    # "message_final":Ljava/lang/String;
    :cond_c6
    iget-object v6, p0, Lcom/samsung/privilege/activity/CampaignListActivity$PostNFCEncyptListener;->this$0:Lcom/samsung/privilege/activity/CampaignListActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignListActivity;->gNfcResult:Lcom/samsung/privilege/bean/NFCResult;
    invoke-static {v6}, Lcom/samsung/privilege/activity/CampaignListActivity;->access$4(Lcom/samsung/privilege/activity/CampaignListActivity;)Lcom/samsung/privilege/bean/NFCResult;

    move-result-object v6

    iget-object v6, v6, Lcom/samsung/privilege/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_fa

    .line 723
    iget-object v6, p0, Lcom/samsung/privilege/activity/CampaignListActivity$PostNFCEncyptListener;->this$0:Lcom/samsung/privilege/activity/CampaignListActivity;

    new-instance v7, Lcom/samsung/privilege/activity/CampaignListActivity$PostNFCEncyptListener$2;

    invoke-direct {v7, p0}, Lcom/samsung/privilege/activity/CampaignListActivity$PostNFCEncyptListener$2;-><init>(Lcom/samsung/privilege/activity/CampaignListActivity$PostNFCEncyptListener;)V

    invoke-virtual {v6, v7}, Lcom/samsung/privilege/activity/CampaignListActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_df
    .catch Lorg/json/JSONException; {:try_start_5a .. :try_end_df} :catch_e0

    goto :goto_bb

    .line 745
    .end local v1    # "jsonRoot":Lorg/json/JSONObject;
    .end local v4    # "message":Ljava/lang/String;
    .end local v5    # "message_final":Ljava/lang/String;
    :catch_e0
    move-exception v0

    .line 746
    .local v0, "e":Lorg/json/JSONException;
    const-string v6, "CampaignListActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "(PostNFCEncyptListener|onComplete|JSONException):"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/privilege/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c5

    .line 729
    .end local v0    # "e":Lorg/json/JSONException;
    .restart local v1    # "jsonRoot":Lorg/json/JSONObject;
    .restart local v4    # "message":Ljava/lang/String;
    .restart local v5    # "message_final":Ljava/lang/String;
    :cond_fa
    :try_start_fa
    iget-object v6, p0, Lcom/samsung/privilege/activity/CampaignListActivity$PostNFCEncyptListener;->this$0:Lcom/samsung/privilege/activity/CampaignListActivity;

    new-instance v7, Lcom/samsung/privilege/activity/CampaignListActivity$PostNFCEncyptListener$3;

    invoke-direct {v7, p0}, Lcom/samsung/privilege/activity/CampaignListActivity$PostNFCEncyptListener$3;-><init>(Lcom/samsung/privilege/activity/CampaignListActivity$PostNFCEncyptListener;)V

    invoke-virtual {v6, v7}, Lcom/samsung/privilege/activity/CampaignListActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_104
    .catch Lorg/json/JSONException; {:try_start_fa .. :try_end_104} :catch_e0

    goto :goto_bb

    .line 748
    .end local v1    # "jsonRoot":Lorg/json/JSONObject;
    .end local v4    # "message":Ljava/lang/String;
    .end local v5    # "message_final":Ljava/lang/String;
    :cond_105
    if-gez p1, :cond_142

    .line 749
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "code:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\r\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 750
    .restart local v4    # "message":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/samsung/privilege/activity/CampaignListActivity$PostNFCEncyptListener;->this$0:Lcom/samsung/privilege/activity/CampaignListActivity;

    const v8, 0x7f090349

    invoke-virtual {v7, v8}, Lcom/samsung/privilege/activity/CampaignListActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 752
    move-object v5, v4

    .line 753
    .restart local v5    # "message_final":Ljava/lang/String;
    iget-object v6, p0, Lcom/samsung/privilege/activity/CampaignListActivity$PostNFCEncyptListener;->this$0:Lcom/samsung/privilege/activity/CampaignListActivity;

    new-instance v7, Lcom/samsung/privilege/activity/CampaignListActivity$PostNFCEncyptListener$5;

    invoke-direct {v7, p0, v5}, Lcom/samsung/privilege/activity/CampaignListActivity$PostNFCEncyptListener$5;-><init>(Lcom/samsung/privilege/activity/CampaignListActivity$PostNFCEncyptListener;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Lcom/samsung/privilege/activity/CampaignListActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_c5

    .line 759
    .end local v4    # "message":Ljava/lang/String;
    .end local v5    # "message_final":Ljava/lang/String;
    :cond_142
    const-string v4, ""

    .line 761
    .restart local v4    # "message":Ljava/lang/String;
    :try_start_144
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 762
    .local v3, "json_result":Lorg/json/JSONObject;
    const-string v6, "error"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 763
    .local v2, "json_error":Lorg/json/JSONObject;
    const-string v6, "message"

    invoke-static {v2, v6}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    :try_end_154
    .catch Ljava/lang/Exception; {:try_start_144 .. :try_end_154} :catch_16b

    move-result-object v4

    .line 768
    .end local v2    # "json_error":Lorg/json/JSONObject;
    .end local v3    # "json_result":Lorg/json/JSONObject;
    :goto_155
    const-string v6, ""

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15e

    .line 769
    move-object v4, p2

    .line 772
    :cond_15e
    move-object v5, v4

    .line 773
    .restart local v5    # "message_final":Ljava/lang/String;
    iget-object v6, p0, Lcom/samsung/privilege/activity/CampaignListActivity$PostNFCEncyptListener;->this$0:Lcom/samsung/privilege/activity/CampaignListActivity;

    new-instance v7, Lcom/samsung/privilege/activity/CampaignListActivity$PostNFCEncyptListener$6;

    invoke-direct {v7, p0, v5}, Lcom/samsung/privilege/activity/CampaignListActivity$PostNFCEncyptListener$6;-><init>(Lcom/samsung/privilege/activity/CampaignListActivity$PostNFCEncyptListener;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Lcom/samsung/privilege/activity/CampaignListActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_c5

    .line 764
    .end local v5    # "message_final":Ljava/lang/String;
    :catch_16b
    move-exception v0

    .line 765
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    goto :goto_155
.end method
