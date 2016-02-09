.class Lic/buzzebeeslib/activity/PurchasingListActivity$4;
.super Ljava/lang/Object;
.source "PurchasingListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/PurchasingListActivity;->ProcessJsonPurchasing(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;

.field private final synthetic val$response_text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/PurchasingListActivity;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$4;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;

    iput-object p2, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$4;->val$response_text:Ljava/lang/String;

    .line 636
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lic/buzzebeeslib/activity/PurchasingListActivity$4;)Lic/buzzebeeslib/activity/PurchasingListActivity;
    .registers 2

    .prologue
    .line 636
    iget-object v0, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$4;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    .line 639
    :try_start_0
    new-instance v3, Lorg/json/JSONArray;

    iget-object v5, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$4;->val$response_text:Ljava/lang/String;

    invoke-direct {v3, v5}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 641
    .local v3, "jsonArray":Lorg/json/JSONArray;
    iget-object v5, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$4;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;

    # getter for: Lic/buzzebeeslib/activity/PurchasingListActivity;->gArrayListPurchasing:Ljava/util/ArrayList;
    invoke-static {v5}, Lic/buzzebeeslib/activity/PurchasingListActivity;->access$25(Lic/buzzebeeslib/activity/PurchasingListActivity;)Ljava/util/ArrayList;

    move-result-object v5

    if-nez v5, :cond_19

    .line 642
    iget-object v5, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$4;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v5, v6}, Lic/buzzebeeslib/activity/PurchasingListActivity;->access$4(Lic/buzzebeeslib/activity/PurchasingListActivity;Ljava/util/ArrayList;)V

    .line 645
    :cond_19
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lez v5, :cond_2a

    .line 646
    iget-object v5, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$4;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;

    iget v6, v5, Lic/buzzebeeslib/activity/PurchasingListActivity;->gSumListPerPage:I

    iget-object v7, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$4;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;

    iget v7, v7, Lic/buzzebeeslib/activity/PurchasingListActivity;->gListPerPage:I

    add-int/2addr v6, v7

    iput v6, v5, Lic/buzzebeeslib/activity/PurchasingListActivity;->gSumListPerPage:I

    .line 649
    :cond_2a
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lez v5, :cond_71

    .line 650
    iget-object v5, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$4;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lic/buzzebeeslib/activity/PurchasingListActivity;->access$41(Lic/buzzebeeslib/activity/PurchasingListActivity;Z)V

    .line 655
    :goto_36
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_37
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lt v2, v5, :cond_96

    .line 666
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    .line 668
    .local v0, "count_item":I
    iget-object v5, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$4;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;

    # getter for: Lic/buzzebeeslib/activity/PurchasingListActivity;->gSDK_INT:I
    invoke-static {v5}, Lic/buzzebeeslib/activity/PurchasingListActivity;->access$42(Lic/buzzebeeslib/activity/PurchasingListActivity;)I
    :try_end_46
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_46} :catch_78

    move-result v5

    const/16 v6, 0xb

    if-lt v5, v6, :cond_10d

    .line 670
    if-eqz v0, :cond_53

    :try_start_4d
    iget-object v5, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$4;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;

    iget v5, v5, Lic/buzzebeeslib/activity/PurchasingListActivity;->gListPerPage:I

    if-ge v0, v5, :cond_d1

    .line 671
    :cond_53
    iget-object v5, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$4;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;

    # getter for: Lic/buzzebeeslib/activity/PurchasingListActivity;->gListAward:Lic/buzzebeeslib/control/PullToRefreshListView;
    invoke-static {v5}, Lic/buzzebeeslib/activity/PurchasingListActivity;->access$7(Lic/buzzebeeslib/activity/PurchasingListActivity;)Lic/buzzebeeslib/control/PullToRefreshListView;

    move-result-object v5

    iget-object v6, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$4;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;

    # getter for: Lic/buzzebeeslib/activity/PurchasingListActivity;->footerListView:Landroid/view/View;
    invoke-static {v6}, Lic/buzzebeeslib/activity/PurchasingListActivity;->access$34(Lic/buzzebeeslib/activity/PurchasingListActivity;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v5, v6}, Lic/buzzebeeslib/control/PullToRefreshListView;->removeFooterView(Landroid/view/View;)Z
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_62} :catch_ee
    .catch Lorg/json/JSONException; {:try_start_4d .. :try_end_62} :catch_78

    .line 719
    :cond_62
    :goto_62
    :try_start_62
    iget-object v5, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$4;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;

    # getter for: Lic/buzzebeeslib/activity/PurchasingListActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lic/buzzebeeslib/activity/PurchasingListActivity;->access$43(Lic/buzzebeeslib/activity/PurchasingListActivity;)Landroid/os/Handler;

    move-result-object v5

    new-instance v6, Lic/buzzebeeslib/activity/PurchasingListActivity$4$1;

    invoke-direct {v6, p0}, Lic/buzzebeeslib/activity/PurchasingListActivity$4$1;-><init>(Lic/buzzebeeslib/activity/PurchasingListActivity$4;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 734
    .end local v0    # "count_item":I
    .end local v2    # "i":I
    .end local v3    # "jsonArray":Lorg/json/JSONArray;
    :goto_70
    return-void

    .line 652
    .restart local v3    # "jsonArray":Lorg/json/JSONArray;
    :cond_71
    iget-object v5, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$4;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lic/buzzebeeslib/activity/PurchasingListActivity;->access$41(Lic/buzzebeeslib/activity/PurchasingListActivity;Z)V
    :try_end_77
    .catch Lorg/json/JSONException; {:try_start_62 .. :try_end_77} :catch_78

    goto :goto_36

    .line 731
    .end local v3    # "jsonArray":Lorg/json/JSONArray;
    :catch_78
    move-exception v1

    .line 732
    .local v1, "e":Lorg/json/JSONException;
    iget-object v5, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$4;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;

    # getter for: Lic/buzzebeeslib/activity/PurchasingListActivity;->TAG:Ljava/lang/String;
    invoke-static {v5}, Lic/buzzebeeslib/activity/PurchasingListActivity;->access$0(Lic/buzzebeeslib/activity/PurchasingListActivity;)Ljava/lang/String;

    move-result-object v5

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

    goto :goto_70

    .line 657
    .end local v1    # "e":Lorg/json/JSONException;
    .restart local v2    # "i":I
    .restart local v3    # "jsonArray":Lorg/json/JSONArray;
    :cond_96
    :try_start_96
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 658
    .local v4, "json_campaign":Lorg/json/JSONObject;
    iget-object v5, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$4;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;

    # getter for: Lic/buzzebeeslib/activity/PurchasingListActivity;->gArrayListPurchasing:Ljava/util/ArrayList;
    invoke-static {v5}, Lic/buzzebeeslib/activity/PurchasingListActivity;->access$25(Lic/buzzebeeslib/activity/PurchasingListActivity;)Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_b0

    .line 659
    iget-object v5, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$4;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;

    # getter for: Lic/buzzebeeslib/activity/PurchasingListActivity;->gArrayListPurchasing:Ljava/util/ArrayList;
    invoke-static {v5}, Lic/buzzebeeslib/activity/PurchasingListActivity;->access$25(Lic/buzzebeeslib/activity/PurchasingListActivity;)Ljava/util/ArrayList;

    move-result-object v5

    new-instance v6, Lic/buzzebeeslib/bean/Purchasing;

    invoke-direct {v6, v4}, Lic/buzzebeeslib/bean/Purchasing;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_b0
    .catch Lorg/json/JSONException; {:try_start_96 .. :try_end_b0} :catch_b3

    .line 655
    .end local v4    # "json_campaign":Lorg/json/JSONObject;
    :cond_b0
    :goto_b0
    add-int/lit8 v2, v2, 0x1

    goto :goto_37

    .line 661
    :catch_b3
    move-exception v1

    .line 662
    .restart local v1    # "e":Lorg/json/JSONException;
    :try_start_b4
    iget-object v5, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$4;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;

    # getter for: Lic/buzzebeeslib/activity/PurchasingListActivity;->TAG:Ljava/lang/String;
    invoke-static {v5}, Lic/buzzebeeslib/activity/PurchasingListActivity;->access$0(Lic/buzzebeeslib/activity/PurchasingListActivity;)Ljava/lang/String;

    move-result-object v5

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
    :try_end_d0
    .catch Lorg/json/JSONException; {:try_start_b4 .. :try_end_d0} :catch_78

    goto :goto_b0

    .line 673
    .end local v1    # "e":Lorg/json/JSONException;
    .restart local v0    # "count_item":I
    :cond_d1
    :try_start_d1
    iget-object v5, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$4;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;

    # getter for: Lic/buzzebeeslib/activity/PurchasingListActivity;->gListAward:Lic/buzzebeeslib/control/PullToRefreshListView;
    invoke-static {v5}, Lic/buzzebeeslib/activity/PurchasingListActivity;->access$7(Lic/buzzebeeslib/activity/PurchasingListActivity;)Lic/buzzebeeslib/control/PullToRefreshListView;

    move-result-object v5

    invoke-virtual {v5}, Lic/buzzebeeslib/control/PullToRefreshListView;->getFooterViewsCount()I

    move-result v5

    if-nez v5, :cond_62

    .line 674
    iget-object v5, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$4;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;

    # getter for: Lic/buzzebeeslib/activity/PurchasingListActivity;->gListAward:Lic/buzzebeeslib/control/PullToRefreshListView;
    invoke-static {v5}, Lic/buzzebeeslib/activity/PurchasingListActivity;->access$7(Lic/buzzebeeslib/activity/PurchasingListActivity;)Lic/buzzebeeslib/control/PullToRefreshListView;

    move-result-object v5

    iget-object v6, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$4;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;

    # getter for: Lic/buzzebeeslib/activity/PurchasingListActivity;->footerListView:Landroid/view/View;
    invoke-static {v6}, Lic/buzzebeeslib/activity/PurchasingListActivity;->access$34(Lic/buzzebeeslib/activity/PurchasingListActivity;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v5, v6}, Lic/buzzebeeslib/control/PullToRefreshListView;->addFooterView(Landroid/view/View;)V
    :try_end_ec
    .catch Ljava/lang/Exception; {:try_start_d1 .. :try_end_ec} :catch_ee
    .catch Lorg/json/JSONException; {:try_start_d1 .. :try_end_ec} :catch_78

    goto/16 :goto_62

    .line 677
    :catch_ee
    move-exception v1

    .line 678
    .local v1, "e":Ljava/lang/Exception;
    :try_start_ef
    iget-object v5, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$4;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;

    # getter for: Lic/buzzebeeslib/activity/PurchasingListActivity;->TAG:Ljava/lang/String;
    invoke-static {v5}, Lic/buzzebeeslib/activity/PurchasingListActivity;->access$0(Lic/buzzebeeslib/activity/PurchasingListActivity;)Ljava/lang/String;

    move-result-object v5

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
    :try_end_10b
    .catch Lorg/json/JSONException; {:try_start_ef .. :try_end_10b} :catch_78

    goto/16 :goto_62

    .line 682
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_10d
    if-eqz v0, :cond_115

    :try_start_10f
    iget-object v5, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$4;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;

    iget v5, v5, Lic/buzzebeeslib/activity/PurchasingListActivity;->gListPerPage:I

    if-ge v0, v5, :cond_147

    .line 683
    :cond_115
    iget-object v5, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$4;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;

    # getter for: Lic/buzzebeeslib/activity/PurchasingListActivity;->footerListView:Landroid/view/View;
    invoke-static {v5}, Lic/buzzebeeslib/activity/PurchasingListActivity;->access$34(Lic/buzzebeeslib/activity/PurchasingListActivity;)Landroid/view/View;

    move-result-object v5

    sget v6, Lic/buzzebeeslib/R$idWallListFooter;->layoutRoot:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V
    :try_end_126
    .catch Ljava/lang/Exception; {:try_start_10f .. :try_end_126} :catch_128
    .catch Lorg/json/JSONException; {:try_start_10f .. :try_end_126} :catch_78

    goto/16 :goto_62

    .line 689
    :catch_128
    move-exception v1

    .line 690
    .restart local v1    # "e":Ljava/lang/Exception;
    :try_start_129
    iget-object v5, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$4;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;

    # getter for: Lic/buzzebeeslib/activity/PurchasingListActivity;->TAG:Ljava/lang/String;
    invoke-static {v5}, Lic/buzzebeeslib/activity/PurchasingListActivity;->access$0(Lic/buzzebeeslib/activity/PurchasingListActivity;)Ljava/lang/String;

    move-result-object v5

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
    :try_end_145
    .catch Lorg/json/JSONException; {:try_start_129 .. :try_end_145} :catch_78

    goto/16 :goto_62

    .line 685
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_147
    :try_start_147
    iget-object v5, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$4;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;

    # getter for: Lic/buzzebeeslib/activity/PurchasingListActivity;->gListAward:Lic/buzzebeeslib/control/PullToRefreshListView;
    invoke-static {v5}, Lic/buzzebeeslib/activity/PurchasingListActivity;->access$7(Lic/buzzebeeslib/activity/PurchasingListActivity;)Lic/buzzebeeslib/control/PullToRefreshListView;

    move-result-object v5

    invoke-virtual {v5}, Lic/buzzebeeslib/control/PullToRefreshListView;->getFooterViewsCount()I

    move-result v5

    if-nez v5, :cond_62

    .line 686
    iget-object v5, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$4;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;

    # getter for: Lic/buzzebeeslib/activity/PurchasingListActivity;->footerListView:Landroid/view/View;
    invoke-static {v5}, Lic/buzzebeeslib/activity/PurchasingListActivity;->access$34(Lic/buzzebeeslib/activity/PurchasingListActivity;)Landroid/view/View;

    move-result-object v5

    sget v6, Lic/buzzebeeslib/R$idWallListFooter;->layoutRoot:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V
    :try_end_163
    .catch Ljava/lang/Exception; {:try_start_147 .. :try_end_163} :catch_128
    .catch Lorg/json/JSONException; {:try_start_147 .. :try_end_163} :catch_78

    goto/16 :goto_62
.end method
