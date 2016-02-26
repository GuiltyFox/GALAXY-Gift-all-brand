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

    .line 513
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 16
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
    .line 517
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    :try_start_0
    iget-object v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$6;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    const-string v4, ""

    iput-object v4, v3, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->strHashtag:Ljava/lang/String;

    .line 518
    iget-object v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$6;->val$listFilter:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketFilterAdapter;

    .line 519
    .local v0, "adapter":Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketFilterAdapter;
    invoke-virtual {v0, p3}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketFilterAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lic/buzzebeeslib/bean/CampaignCategory;

    .line 521
    .local v2, "objCampaignCategory":Lic/buzzebeeslib/bean/CampaignCategory;
    iget-object v3, v2, Lic/buzzebeeslib/bean/CampaignCategory;->Mode:Ljava/lang/String;

    const-string v4, "type"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c8

    .line 522
    iget-object v3, v2, Lic/buzzebeeslib/bean/CampaignCategory;->Name:Ljava/lang/String;

    const-string v4, "All"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4e

    .line 523
    iget-object v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$6;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    invoke-virtual {v3}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->doFilterAll()V

    .line 525
    iget-object v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$6;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    const-string v4, "All"

    invoke-static {v3, v4}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->access$33(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;Ljava/lang/String;)V

    .line 526
    iget-object v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$6;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->mGaTracker:Lcom/google/analytics/tracking/android/Tracker;
    invoke-static {v3}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->access$9(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;)Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v3

    const-string v4, "BZB Marketplace"

    const-string v5, "Click BZB Category"

    iget-object v6, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$6;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gCurrentFilterCatName:Ljava/lang/String;
    invoke-static {v6}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->access$8(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;)Ljava/lang/String;

    move-result-object v6

    const-wide/16 v8, 0x1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/google/analytics/tracking/android/Tracker;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 553
    .end local v0    # "adapter":Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketFilterAdapter;
    .end local v2    # "objCampaignCategory":Lic/buzzebeeslib/bean/CampaignCategory;
    :cond_4d
    :goto_4d
    return-void

    .line 527
    .restart local v0    # "adapter":Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketFilterAdapter;
    .restart local v2    # "objCampaignCategory":Lic/buzzebeeslib/bean/CampaignCategory;
    :cond_4e
    iget-object v3, v2, Lic/buzzebeeslib/bean/CampaignCategory;->Name:Ljava/lang/String;

    const-string v4, "Free"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_98

    .line 528
    iget-object v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$6;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    invoke-virtual {v3}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->doFilterFree()V

    .line 530
    iget-object v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$6;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    const-string v4, "Free"

    invoke-static {v3, v4}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->access$33(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;Ljava/lang/String;)V

    .line 531
    iget-object v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$6;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->mGaTracker:Lcom/google/analytics/tracking/android/Tracker;
    invoke-static {v3}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->access$9(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;)Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v3

    const-string v4, "BZB Marketplace"

    const-string v5, "Click BZB Category"

    iget-object v6, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$6;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gCurrentFilterCatName:Ljava/lang/String;
    invoke-static {v6}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->access$8(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;)Ljava/lang/String;

    move-result-object v6

    const-wide/16 v8, 0x1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/google/analytics/tracking/android/Tracker;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7d} :catch_7e

    goto :goto_4d

    .line 550
    .end local v0    # "adapter":Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketFilterAdapter;
    .end local v2    # "objCampaignCategory":Lic/buzzebeeslib/bean/CampaignCategory;
    :catch_7e
    move-exception v1

    .line 551
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

    goto :goto_4d

    .line 532
    .end local v1    # "ex":Ljava/lang/Exception;
    .restart local v0    # "adapter":Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketFilterAdapter;
    .restart local v2    # "objCampaignCategory":Lic/buzzebeeslib/bean/CampaignCategory;
    :cond_98
    :try_start_98
    iget-object v3, v2, Lic/buzzebeeslib/bean/CampaignCategory;->Name:Ljava/lang/String;

    const-string v4, "Deal"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4d

    .line 533
    iget-object v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$6;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    invoke-virtual {v3}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->doFilterDeal()V

    .line 535
    iget-object v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$6;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    const-string v4, "Deal"

    invoke-static {v3, v4}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->access$33(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;Ljava/lang/String;)V

    .line 536
    iget-object v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$6;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->mGaTracker:Lcom/google/analytics/tracking/android/Tracker;
    invoke-static {v3}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->access$9(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;)Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v3

    const-string v4, "BZB Marketplace"

    const-string v5, "Click BZB Category"

    iget-object v6, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$6;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gCurrentFilterCatName:Ljava/lang/String;
    invoke-static {v6}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->access$8(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;)Ljava/lang/String;

    move-result-object v6

    const-wide/16 v8, 0x1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/google/analytics/tracking/android/Tracker;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_4d

    .line 539
    :cond_c8
    iget-object v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$6;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    iget-object v4, v2, Lic/buzzebeeslib/bean/CampaignCategory;->Cat:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->doFilterCat(Ljava/lang/String;Z)V

    .line 541
    iget-object v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$6;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    iget-object v4, v2, Lic/buzzebeeslib/bean/CampaignCategory;->Name_En:Ljava/lang/String;

    invoke-static {v3, v4}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->access$33(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;Ljava/lang/String;)V

    .line 542
    iget-object v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$6;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->mGaTracker:Lcom/google/analytics/tracking/android/Tracker;
    invoke-static {v3}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->access$9(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;)Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v3

    const-string v4, "BZB Marketplace"

    const-string v5, "Click BZB Category"

    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v7, v2, Lic/buzzebeeslib/bean/CampaignCategory;->Cat:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "|"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v2, Lic/buzzebeeslib/bean/CampaignCategory;->Name_En:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-wide/16 v8, 0x1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/google/analytics/tracking/android/Tracker;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_105
    .catch Ljava/lang/Exception; {:try_start_98 .. :try_end_105} :catch_7e

    goto/16 :goto_4d
.end method
