.class Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$9;
.super Ljava/lang/Object;
.source "MarketPlaceList2Fragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->ProcessJsonCampaign(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;

.field private final synthetic val$response_text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$9;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;

    iput-object p2, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$9;->val$response_text:Ljava/lang/String;

    .line 908
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    const/4 v7, 0x1

    .line 911
    :try_start_1
    new-instance v3, Lorg/json/JSONArray;

    iget-object v5, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$9;->val$response_text:Ljava/lang/String;

    invoke-direct {v3, v5}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 913
    .local v3, "jsonArray":Lorg/json/JSONArray;
    iget-object v5, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$9;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gCampaignViews:Ljava/util/ArrayList;
    invoke-static {v5}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->access$6(Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;)Ljava/util/ArrayList;

    move-result-object v5

    if-nez v5, :cond_1a

    .line 914
    iget-object v5, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$9;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v5, v6}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->access$9(Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;Ljava/util/ArrayList;)V

    .line 917
    :cond_1a
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lez v5, :cond_2b

    .line 918
    iget-object v5, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$9;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gSumListPerPage:I
    invoke-static {v5}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->access$38(Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;)I

    move-result v6

    add-int/lit8 v6, v6, 0x19

    invoke-static {v5, v6}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->access$8(Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;I)V

    .line 921
    :cond_2b
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-le v5, v7, :cond_60

    .line 922
    iget-object v5, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$9;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->access$39(Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;Z)V

    .line 927
    :goto_37
    iget-object v5, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$9;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gCampaignViews:Ljava/util/ArrayList;
    invoke-static {v5}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->access$6(Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;)Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_46

    .line 928
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_40
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lt v2, v5, :cond_8f

    .line 938
    .end local v2    # "i":I
    :cond_46
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    .line 941
    .local v0, "count_item":I
    if-eqz v0, :cond_50

    const/16 v5, 0x19

    if-ge v0, v5, :cond_be

    .line 942
    :cond_50
    iget-object v5, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$9;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gContentFooter:Landroid/widget/LinearLayout;
    invoke-static {v5}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->access$22(Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;)Landroid/widget/LinearLayout;

    move-result-object v5

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 947
    :goto_5a
    iget-object v5, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$9;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;

    # invokes: Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->setCampaignUI()V
    invoke-static {v5}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->access$40(Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;)V

    .line 963
    .end local v0    # "count_item":I
    .end local v3    # "jsonArray":Lorg/json/JSONArray;
    :goto_5f
    return-void

    .line 924
    .restart local v3    # "jsonArray":Lorg/json/JSONArray;
    :cond_60
    iget-object v5, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$9;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->access$39(Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;Z)V
    :try_end_66
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_66} :catch_67

    goto :goto_37

    .line 953
    .end local v3    # "jsonArray":Lorg/json/JSONArray;
    :catch_67
    move-exception v1

    .line 954
    .local v1, "e":Lorg/json/JSONException;
    const-string v5, "buzzebees.markets"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "(GetCampaignListener|onComplete|JSONException):"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 955
    iget-object v5, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$9;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;

    invoke-virtual {v5}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    new-instance v6, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$9$1;

    invoke-direct {v6, p0}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$9$1;-><init>(Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$9;)V

    invoke-virtual {v5, v6}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_5f

    .line 930
    .end local v1    # "e":Lorg/json/JSONException;
    .restart local v2    # "i":I
    .restart local v3    # "jsonArray":Lorg/json/JSONArray;
    :cond_8f
    :try_start_8f
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 931
    .local v4, "json_campaign":Lorg/json/JSONObject;
    iget-object v5, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$9;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gCampaignViews:Ljava/util/ArrayList;
    invoke-static {v5}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->access$6(Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;)Ljava/util/ArrayList;

    move-result-object v5

    new-instance v6, Lic/buzzebeeslib/bean/Campaign;

    invoke-direct {v6, v4}, Lic/buzzebeeslib/bean/Campaign;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_a1
    .catch Lorg/json/JSONException; {:try_start_8f .. :try_end_a1} :catch_a4

    .line 928
    .end local v4    # "json_campaign":Lorg/json/JSONObject;
    :goto_a1
    add-int/lit8 v2, v2, 0x1

    goto :goto_40

    .line 932
    :catch_a4
    move-exception v1

    .line 933
    .restart local v1    # "e":Lorg/json/JSONException;
    :try_start_a5
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

    goto :goto_a1

    .line 944
    .end local v1    # "e":Lorg/json/JSONException;
    .end local v2    # "i":I
    .restart local v0    # "count_item":I
    :cond_be
    iget-object v5, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$9;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gContentFooter:Landroid/widget/LinearLayout;
    invoke-static {v5}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->access$22(Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;)Landroid/widget/LinearLayout;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V
    :try_end_c8
    .catch Lorg/json/JSONException; {:try_start_a5 .. :try_end_c8} :catch_67

    goto :goto_5a
.end method
