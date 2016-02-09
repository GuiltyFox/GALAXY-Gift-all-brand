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

    .line 385
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
    .line 389
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    :try_start_0
    iget-object v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$4;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gAdapter:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter;
    invoke-static {v3}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->access$28(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;)Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter;

    move-result-object v3

    invoke-virtual {v3, p3}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter;->getItem(I)Lic/buzzebeeslib/bean/Campaign;

    move-result-object v0

    .line 391
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

    if-eqz v3, :cond_51

    .line 392
    :cond_1e
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$4;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    invoke-virtual {v3}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 393
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "campaign"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 394
    iget-object v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$4;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    iget-object v4, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$4;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->RC_MARKET_DETAIL:I
    invoke-static {v4}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->access$29(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;)I

    move-result v4

    invoke-virtual {v3, v2, v4}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3b} :catch_6f

    .line 402
    :goto_3b
    :try_start_3b
    iget-object v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$4;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->mGaTracker:Lcom/google/analytics/tracking/android/Tracker;
    invoke-static {v3}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->access$8(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;)Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v3

    const-string v4, "Marketplace"

    const-string v5, "View SKU Detail"

    iget-object v6, v0, Lic/buzzebeeslib/bean/Campaign;->Name:Ljava/lang/String;

    const-wide/16 v7, 0x1

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/google/analytics/tracking/android/Tracker;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_50} :catch_89

    .line 409
    .end local v0    # "campaign":Lic/buzzebeeslib/bean/Campaign;
    .end local v2    # "intent":Landroid/content/Intent;
    :goto_50
    return-void

    .line 396
    .restart local v0    # "campaign":Lic/buzzebeeslib/bean/Campaign;
    :cond_51
    :try_start_51
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$4;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    invoke-virtual {v3}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 397
    .restart local v2    # "intent":Landroid/content/Intent;
    const-string v3, "campaign"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 398
    iget-object v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$4;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    iget-object v4, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$4;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->RC_MARKET_DETAIL:I
    invoke-static {v4}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->access$29(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;)I

    move-result v4

    invoke-virtual {v3, v2, v4}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_6e} :catch_6f

    goto :goto_3b

    .line 406
    .end local v0    # "campaign":Lic/buzzebeeslib/bean/Campaign;
    .end local v2    # "intent":Landroid/content/Intent;
    :catch_6f
    move-exception v1

    .line 407
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

    goto :goto_50

    .line 403
    .end local v1    # "ex":Ljava/lang/Exception;
    .restart local v0    # "campaign":Lic/buzzebeeslib/bean/Campaign;
    .restart local v2    # "intent":Landroid/content/Intent;
    :catch_89
    move-exception v3

    goto :goto_50
.end method
