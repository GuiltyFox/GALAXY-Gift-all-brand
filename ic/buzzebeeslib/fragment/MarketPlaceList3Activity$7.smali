.class Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$7;
.super Ljava/lang/Object;
.source "MarketPlaceList3Activity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->ProcessJsonCampaign(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

.field private final synthetic val$response_text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$7;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    iput-object p2, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$7;->val$response_text:Ljava/lang/String;

    .line 896
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    const/4 v7, 0x1

    .line 899
    :try_start_1
    new-instance v3, Lorg/json/JSONArray;

    iget-object v5, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$7;->val$response_text:Ljava/lang/String;

    invoke-direct {v3, v5}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 901
    .local v3, "jsonArray":Lorg/json/JSONArray;
    iget-object v5, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$7;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gCampaignViews:Ljava/util/ArrayList;
    invoke-static {v5}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->access$6(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;)Ljava/util/ArrayList;

    move-result-object v5

    if-nez v5, :cond_1a

    .line 902
    iget-object v5, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$7;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v5, v6}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->access$11(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;Ljava/util/ArrayList;)V

    .line 905
    :cond_1a
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lez v5, :cond_2b

    .line 906
    iget-object v5, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$7;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gSumListPerPage:I
    invoke-static {v5}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->access$32(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;)I

    move-result v6

    add-int/lit8 v6, v6, 0x19

    invoke-static {v5, v6}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->access$10(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;I)V

    .line 909
    :cond_2b
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-le v5, v7, :cond_60

    .line 910
    iget-object v5, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$7;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->access$33(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;Z)V

    .line 915
    :goto_37
    iget-object v5, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$7;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gCampaignViews:Ljava/util/ArrayList;
    invoke-static {v5}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->access$6(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;)Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_46

    .line 916
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_40
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lt v2, v5, :cond_8b

    .line 926
    .end local v2    # "i":I
    :cond_46
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    .line 930
    .local v0, "count_item":I
    if-eqz v0, :cond_50

    const/16 v5, 0x19

    if-ge v0, v5, :cond_ba

    .line 931
    :cond_50
    iget-object v5, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$7;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gContentFooter:Landroid/widget/LinearLayout;
    invoke-static {v5}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->access$24(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;)Landroid/widget/LinearLayout;

    move-result-object v5

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 936
    :goto_5a
    iget-object v5, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$7;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    # invokes: Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->setCampaignUI()V
    invoke-static {v5}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->access$34(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;)V

    .line 952
    .end local v0    # "count_item":I
    .end local v3    # "jsonArray":Lorg/json/JSONArray;
    :goto_5f
    return-void

    .line 912
    .restart local v3    # "jsonArray":Lorg/json/JSONArray;
    :cond_60
    iget-object v5, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$7;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->access$33(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;Z)V
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_66} :catch_67

    goto :goto_37

    .line 942
    .end local v3    # "jsonArray":Lorg/json/JSONArray;
    :catch_67
    move-exception v1

    .line 943
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "buzzebees.markets"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "(GetCampaignListener|onComplete|Exception):"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 944
    iget-object v5, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$7;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    new-instance v6, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$7$1;

    invoke-direct {v6, p0}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$7$1;-><init>(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$7;)V

    invoke-virtual {v5, v6}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_5f

    .line 918
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "i":I
    .restart local v3    # "jsonArray":Lorg/json/JSONArray;
    :cond_8b
    :try_start_8b
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 919
    .local v4, "json_campaign":Lorg/json/JSONObject;
    iget-object v5, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$7;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gCampaignViews:Ljava/util/ArrayList;
    invoke-static {v5}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->access$6(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;)Ljava/util/ArrayList;

    move-result-object v5

    new-instance v6, Lic/buzzebeeslib/bean/Campaign;

    invoke-direct {v6, v4}, Lic/buzzebeeslib/bean/Campaign;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_9d
    .catch Lorg/json/JSONException; {:try_start_8b .. :try_end_9d} :catch_a0
    .catch Ljava/lang/Exception; {:try_start_8b .. :try_end_9d} :catch_67

    .line 916
    .end local v4    # "json_campaign":Lorg/json/JSONObject;
    :goto_9d
    add-int/lit8 v2, v2, 0x1

    goto :goto_40

    .line 920
    :catch_a0
    move-exception v1

    .line 921
    .local v1, "e":Lorg/json/JSONException;
    :try_start_a1
    const-string v5, "buzzebees.markets"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "(GetCampaignListener|onComplete|for|JSONException):"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9d

    .line 933
    .end local v1    # "e":Lorg/json/JSONException;
    .end local v2    # "i":I
    .restart local v0    # "count_item":I
    :cond_ba
    iget-object v5, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$7;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gContentFooter:Landroid/widget/LinearLayout;
    invoke-static {v5}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->access$24(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;)Landroid/widget/LinearLayout;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V
    :try_end_c4
    .catch Ljava/lang/Exception; {:try_start_a1 .. :try_end_c4} :catch_67

    goto :goto_5a
.end method
