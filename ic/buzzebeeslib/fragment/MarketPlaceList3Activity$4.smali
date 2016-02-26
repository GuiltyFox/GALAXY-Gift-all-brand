.class Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$4;
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


# direct methods
.method constructor <init>(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$4;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    .line 388
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
    .line 392
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    :try_start_0
    iget-object v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$4;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gAdapter:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter;
    invoke-static {v3}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->access$29(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;)Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter;

    move-result-object v3

    invoke-virtual {v3, p3}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter;->getItem(I)Lic/buzzebeeslib/bean/Campaign;

    move-result-object v0

    .line 394
    .local v0, "campaign":Lic/buzzebeeslib/bean/Campaign;
    iget-object v3, v0, Lic/buzzebeeslib/bean/Campaign;->Type:Ljava/lang/String;

    const-string v4, "5"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1e

    iget-object v3, v0, Lic/buzzebeeslib/bean/Campaign;->Type:Ljava/lang/String;

    const-string v4, "6"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_78

    .line 395
    :cond_1e
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$4;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    invoke-virtual {v3}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 396
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "campaign"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 397
    iget-object v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$4;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    iget-object v4, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$4;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->RC_MARKET_DETAIL:I
    invoke-static {v4}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->access$30(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;)I

    move-result v4

    invoke-virtual {v3, v2, v4}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3b} :catch_96

    .line 406
    :goto_3b
    :try_start_3b
    iget-object v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$4;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gCurrentFilterCatName:Ljava/lang/String;
    invoke-static {v3}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->access$8(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "All"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b0

    .line 407
    iget-object v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$4;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->mGaTracker:Lcom/google/analytics/tracking/android/Tracker;
    invoke-static {v3}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->access$9(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;)Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v3

    const-string v4, "BZB Marketplace"

    const-string v5, "Click BZB Campaign Banner"

    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v7, v0, Lic/buzzebeeslib/bean/Campaign;->ID:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "|"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lic/buzzebeeslib/bean/Campaign;->Name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-wide/16 v8, 0x1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/google/analytics/tracking/android/Tracker;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_77} :catch_f2

    .line 417
    .end local v0    # "campaign":Lic/buzzebeeslib/bean/Campaign;
    .end local v2    # "intent":Landroid/content/Intent;
    :goto_77
    return-void

    .line 399
    .restart local v0    # "campaign":Lic/buzzebeeslib/bean/Campaign;
    :cond_78
    :try_start_78
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$4;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    invoke-virtual {v3}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 400
    .restart local v2    # "intent":Landroid/content/Intent;
    const-string v3, "campaign"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 401
    iget-object v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$4;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    iget-object v4, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$4;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->RC_MARKET_DETAIL:I
    invoke-static {v4}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->access$30(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;)I

    move-result v4

    invoke-virtual {v3, v2, v4}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_95
    .catch Ljava/lang/Exception; {:try_start_78 .. :try_end_95} :catch_96

    goto :goto_3b

    .line 414
    .end local v0    # "campaign":Lic/buzzebeeslib/bean/Campaign;
    .end local v2    # "intent":Landroid/content/Intent;
    :catch_96
    move-exception v1

    .line 415
    .local v1, "ex":Ljava/lang/Exception;
    iget-object v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$4;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

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

    goto :goto_77

    .line 409
    .end local v1    # "ex":Ljava/lang/Exception;
    .restart local v0    # "campaign":Lic/buzzebeeslib/bean/Campaign;
    .restart local v2    # "intent":Landroid/content/Intent;
    :cond_b0
    :try_start_b0
    iget-object v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$4;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->mGaTracker:Lcom/google/analytics/tracking/android/Tracker;
    invoke-static {v3}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->access$9(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;)Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "BZB Category-"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$4;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gCurrentFilterCatName:Ljava/lang/String;
    invoke-static {v5}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->access$8(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Click BZB Campaign Banner"

    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v7, v0, Lic/buzzebeeslib/bean/Campaign;->ID:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "|"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lic/buzzebeeslib/bean/Campaign;->Name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-wide/16 v8, 0x1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/google/analytics/tracking/android/Tracker;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_f1
    .catch Ljava/lang/Exception; {:try_start_b0 .. :try_end_f1} :catch_f2

    goto :goto_77

    .line 411
    :catch_f2
    move-exception v3

    goto :goto_77
.end method
