.class Lic/buzzebeeslib/fragment/MarketPlaceListFragment$6;
.super Ljava/lang/Object;
.source "MarketPlaceListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->ProcessJsonCampaign(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

.field private final synthetic val$response_text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/fragment/MarketPlaceListFragment;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$6;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    iput-object p2, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$6;->val$response_text:Ljava/lang/String;

    .line 882
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .prologue
    const/16 v8, 0x19

    const/4 v7, 0x1

    .line 885
    :try_start_3
    new-instance v3, Lorg/json/JSONArray;

    iget-object v5, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$6;->val$response_text:Ljava/lang/String;

    invoke-direct {v3, v5}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 887
    .local v3, "jsonArray":Lorg/json/JSONArray;
    iget-object v5, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$6;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gCampaignViews:Ljava/util/ArrayList;
    invoke-static {v5}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->access$6(Lic/buzzebeeslib/fragment/MarketPlaceListFragment;)Ljava/util/ArrayList;

    move-result-object v5

    if-nez v5, :cond_1c

    .line 888
    iget-object v5, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$6;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v5, v6}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->access$10(Lic/buzzebeeslib/fragment/MarketPlaceListFragment;Ljava/util/ArrayList;)V

    .line 891
    :cond_1c
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lez v5, :cond_2d

    .line 892
    iget-object v5, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$6;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gSumListPerPage:I
    invoke-static {v5}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->access$37(Lic/buzzebeeslib/fragment/MarketPlaceListFragment;)I

    move-result v6

    add-int/lit8 v6, v6, 0x19

    invoke-static {v5, v6}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->access$9(Lic/buzzebeeslib/fragment/MarketPlaceListFragment;I)V

    .line 895
    :cond_2d
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-le v5, v7, :cond_6f

    .line 896
    iget-object v5, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$6;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->access$38(Lic/buzzebeeslib/fragment/MarketPlaceListFragment;Z)V

    .line 901
    :goto_39
    iget-object v5, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$6;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gCampaignViews:Ljava/util/ArrayList;
    invoke-static {v5}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->access$6(Lic/buzzebeeslib/fragment/MarketPlaceListFragment;)Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_48

    .line 902
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_42
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lt v2, v5, :cond_9e

    .line 912
    .end local v2    # "i":I
    :cond_48
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    .line 915
    .local v0, "count_item":I
    iget-object v5, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$6;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gSDK_INT:I
    invoke-static {v5}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->access$39(Lic/buzzebeeslib/fragment/MarketPlaceListFragment;)I
    :try_end_51
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_51} :catch_76

    move-result v5

    const/16 v6, 0xb

    if-lt v5, v6, :cond_104

    .line 917
    if-eqz v0, :cond_5a

    if-ge v0, v8, :cond_cd

    .line 918
    :cond_5a
    :try_start_5a
    iget-object v5, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$6;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gListAward:Lic/buzzebeeslib/control/PullToRefreshListView;
    invoke-static {v5}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->access$2(Lic/buzzebeeslib/fragment/MarketPlaceListFragment;)Lic/buzzebeeslib/control/PullToRefreshListView;

    move-result-object v5

    iget-object v6, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$6;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->footerListView:Landroid/view/View;
    invoke-static {v6}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->access$28(Lic/buzzebeeslib/fragment/MarketPlaceListFragment;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v5, v6}, Lic/buzzebeeslib/control/PullToRefreshListView;->removeFooterView(Landroid/view/View;)Z
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_69} :catch_e9
    .catch Lorg/json/JSONException; {:try_start_5a .. :try_end_69} :catch_76

    .line 941
    :cond_69
    :goto_69
    :try_start_69
    iget-object v5, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$6;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    # invokes: Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->setCampaignUI()V
    invoke-static {v5}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->access$40(Lic/buzzebeeslib/fragment/MarketPlaceListFragment;)V

    .line 957
    .end local v0    # "count_item":I
    .end local v3    # "jsonArray":Lorg/json/JSONArray;
    :goto_6e
    return-void

    .line 898
    .restart local v3    # "jsonArray":Lorg/json/JSONArray;
    :cond_6f
    iget-object v5, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$6;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->access$38(Lic/buzzebeeslib/fragment/MarketPlaceListFragment;Z)V
    :try_end_75
    .catch Lorg/json/JSONException; {:try_start_69 .. :try_end_75} :catch_76

    goto :goto_39

    .line 947
    .end local v3    # "jsonArray":Lorg/json/JSONArray;
    :catch_76
    move-exception v1

    .line 948
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

    .line 949
    iget-object v5, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$6;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    invoke-virtual {v5}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    new-instance v6, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$6$1;

    invoke-direct {v6, p0}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$6$1;-><init>(Lic/buzzebeeslib/fragment/MarketPlaceListFragment$6;)V

    invoke-virtual {v5, v6}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_6e

    .line 904
    .end local v1    # "e":Lorg/json/JSONException;
    .restart local v2    # "i":I
    .restart local v3    # "jsonArray":Lorg/json/JSONArray;
    :cond_9e
    :try_start_9e
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 905
    .local v4, "json_campaign":Lorg/json/JSONObject;
    iget-object v5, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$6;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gCampaignViews:Ljava/util/ArrayList;
    invoke-static {v5}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->access$6(Lic/buzzebeeslib/fragment/MarketPlaceListFragment;)Ljava/util/ArrayList;

    move-result-object v5

    new-instance v6, Lic/buzzebeeslib/bean/Campaign;

    invoke-direct {v6, v4}, Lic/buzzebeeslib/bean/Campaign;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_b0
    .catch Lorg/json/JSONException; {:try_start_9e .. :try_end_b0} :catch_b3

    .line 902
    .end local v4    # "json_campaign":Lorg/json/JSONObject;
    :goto_b0
    add-int/lit8 v2, v2, 0x1

    goto :goto_42

    .line 906
    :catch_b3
    move-exception v1

    .line 907
    .restart local v1    # "e":Lorg/json/JSONException;
    :try_start_b4
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
    :try_end_cc
    .catch Lorg/json/JSONException; {:try_start_b4 .. :try_end_cc} :catch_76

    goto :goto_b0

    .line 920
    .end local v1    # "e":Lorg/json/JSONException;
    .end local v2    # "i":I
    .restart local v0    # "count_item":I
    :cond_cd
    :try_start_cd
    iget-object v5, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$6;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gListAward:Lic/buzzebeeslib/control/PullToRefreshListView;
    invoke-static {v5}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->access$2(Lic/buzzebeeslib/fragment/MarketPlaceListFragment;)Lic/buzzebeeslib/control/PullToRefreshListView;

    move-result-object v5

    invoke-virtual {v5}, Lic/buzzebeeslib/control/PullToRefreshListView;->getFooterViewsCount()I

    move-result v5

    if-nez v5, :cond_69

    .line 921
    iget-object v5, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$6;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gListAward:Lic/buzzebeeslib/control/PullToRefreshListView;
    invoke-static {v5}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->access$2(Lic/buzzebeeslib/fragment/MarketPlaceListFragment;)Lic/buzzebeeslib/control/PullToRefreshListView;

    move-result-object v5

    iget-object v6, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$6;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->footerListView:Landroid/view/View;
    invoke-static {v6}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->access$28(Lic/buzzebeeslib/fragment/MarketPlaceListFragment;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v5, v6}, Lic/buzzebeeslib/control/PullToRefreshListView;->addFooterView(Landroid/view/View;)V
    :try_end_e8
    .catch Ljava/lang/Exception; {:try_start_cd .. :try_end_e8} :catch_e9
    .catch Lorg/json/JSONException; {:try_start_cd .. :try_end_e8} :catch_76

    goto :goto_69

    .line 924
    :catch_e9
    move-exception v1

    .line 925
    .local v1, "e":Ljava/lang/Exception;
    :try_start_ea
    const-string v5, "buzzebees.marketlist.fragment"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "ProcessJsonCampaign|error := "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_102
    .catch Lorg/json/JSONException; {:try_start_ea .. :try_end_102} :catch_76

    goto/16 :goto_69

    .line 929
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_104
    if-eqz v0, :cond_108

    if-ge v0, v8, :cond_136

    .line 930
    :cond_108
    :try_start_108
    iget-object v5, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$6;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->footerListView:Landroid/view/View;
    invoke-static {v5}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->access$28(Lic/buzzebeeslib/fragment/MarketPlaceListFragment;)Landroid/view/View;

    move-result-object v5

    sget v6, Lic/buzzebeeslib/R$idWallListFooter;->layoutRoot:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V
    :try_end_119
    .catch Ljava/lang/Exception; {:try_start_108 .. :try_end_119} :catch_11b
    .catch Lorg/json/JSONException; {:try_start_108 .. :try_end_119} :catch_76

    goto/16 :goto_69

    .line 936
    :catch_11b
    move-exception v1

    .line 937
    .restart local v1    # "e":Ljava/lang/Exception;
    :try_start_11c
    const-string v5, "buzzebees.marketlist.fragment"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "ProcessJsonCampaign|error := "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_134
    .catch Lorg/json/JSONException; {:try_start_11c .. :try_end_134} :catch_76

    goto/16 :goto_69

    .line 932
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_136
    :try_start_136
    iget-object v5, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$6;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gListAward:Lic/buzzebeeslib/control/PullToRefreshListView;
    invoke-static {v5}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->access$2(Lic/buzzebeeslib/fragment/MarketPlaceListFragment;)Lic/buzzebeeslib/control/PullToRefreshListView;

    move-result-object v5

    invoke-virtual {v5}, Lic/buzzebeeslib/control/PullToRefreshListView;->getFooterViewsCount()I

    move-result v5

    if-nez v5, :cond_69

    .line 933
    iget-object v5, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$6;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->footerListView:Landroid/view/View;
    invoke-static {v5}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->access$28(Lic/buzzebeeslib/fragment/MarketPlaceListFragment;)Landroid/view/View;

    move-result-object v5

    sget v6, Lic/buzzebeeslib/R$idWallListFooter;->layoutRoot:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V
    :try_end_152
    .catch Ljava/lang/Exception; {:try_start_136 .. :try_end_152} :catch_11b
    .catch Lorg/json/JSONException; {:try_start_136 .. :try_end_152} :catch_76

    goto/16 :goto_69
.end method
