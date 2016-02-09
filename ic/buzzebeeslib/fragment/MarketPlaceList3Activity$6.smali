.class Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$6;
.super Ljava/lang/Object;
.source "MarketPlaceList3Activity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

.field private final synthetic val$listFilter:Landroid/widget/ListView;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;Landroid/widget/ListView;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$6;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    iput-object p2, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$6;->val$listFilter:Landroid/widget/ListView;

    .line 505
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 15
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 509
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    :try_start_0
    iget-object v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$6;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    const-string v4, ""

    iput-object v4, v3, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->strHashtag:Ljava/lang/String;

    .line 510
    iget-object v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$6;->val$listFilter:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketFilterAdapter;

    .line 511
    .local v0, "adapter":Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketFilterAdapter;
    invoke-virtual {v0, p3}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketFilterAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lic/buzzebeeslib/bean/CampaignCategory;

    .line 513
    .local v2, "objCampaignCategory":Lic/buzzebeeslib/bean/CampaignCategory;
    iget-object v3, v2, Lic/buzzebeeslib/bean/CampaignCategory;->Mode:Ljava/lang/String;

    const-string v4, "type"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7d

    .line 514
    iget-object v3, v2, Lic/buzzebeeslib/bean/CampaignCategory;->Name:Ljava/lang/String;

    const-string v4, "All"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_43

    .line 515
    iget-object v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$6;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    invoke-virtual {v3}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->doFilterAll()V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2d} :catch_53

    .line 526
    :cond_2d
    :goto_2d
    :try_start_2d
    iget-object v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$6;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->mGaTracker:Lcom/google/analytics/tracking/android/Tracker;
    invoke-static {v3}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->access$8(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;)Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v3

    const-string v4, "Marketplace Category"

    const-string v5, "Category Click"

    iget-object v6, v2, Lic/buzzebeeslib/bean/CampaignCategory;->Name_En:Ljava/lang/String;

    const-wide/16 v7, 0x1

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/google/analytics/tracking/android/Tracker;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_42} :catch_86

    .line 533
    .end local v0    # "adapter":Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketFilterAdapter;
    .end local v2    # "objCampaignCategory":Lic/buzzebeeslib/bean/CampaignCategory;
    :goto_42
    return-void

    .line 516
    .restart local v0    # "adapter":Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketFilterAdapter;
    .restart local v2    # "objCampaignCategory":Lic/buzzebeeslib/bean/CampaignCategory;
    :cond_43
    :try_start_43
    iget-object v3, v2, Lic/buzzebeeslib/bean/CampaignCategory;->Name:Ljava/lang/String;

    const-string v4, "Free"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6d

    .line 517
    iget-object v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$6;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    invoke-virtual {v3}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->doFilterFree()V
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_52} :catch_53

    goto :goto_2d

    .line 530
    .end local v0    # "adapter":Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketFilterAdapter;
    .end local v2    # "objCampaignCategory":Lic/buzzebeeslib/bean/CampaignCategory;
    :catch_53
    move-exception v1

    .line 531
    .local v1, "ex":Ljava/lang/Exception;
    iget-object v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$6;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "ex "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->showToast(Ljava/lang/String;)V

    goto :goto_42

    .line 518
    .end local v1    # "ex":Ljava/lang/Exception;
    .restart local v0    # "adapter":Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketFilterAdapter;
    .restart local v2    # "objCampaignCategory":Lic/buzzebeeslib/bean/CampaignCategory;
    :cond_6d
    :try_start_6d
    iget-object v3, v2, Lic/buzzebeeslib/bean/CampaignCategory;->Name:Ljava/lang/String;

    const-string v4, "Deal"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 519
    iget-object v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$6;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    invoke-virtual {v3}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->doFilterDeal()V

    goto :goto_2d

    .line 522
    :cond_7d
    iget-object v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$6;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    iget-object v4, v2, Lic/buzzebeeslib/bean/CampaignCategory;->Cat:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->doFilterCat(Ljava/lang/String;Z)V
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_85} :catch_53

    goto :goto_2d

    .line 527
    :catch_86
    move-exception v3

    goto :goto_42
.end method
