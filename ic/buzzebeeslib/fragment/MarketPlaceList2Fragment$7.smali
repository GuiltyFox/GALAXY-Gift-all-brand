.class Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$7;
.super Ljava/lang/Object;
.source "MarketPlaceList2Fragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->onActivityCreated(Landroid/os/Bundle;)V
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
.field final synthetic this$0:Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$7;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;

    .line 446
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 12
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
    .line 450
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$7;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;

    invoke-virtual {v3}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    if-eqz v3, :cond_4d

    iget-object v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$7;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;

    invoke-virtual {v3}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_4d

    .line 452
    :try_start_14
    iget-object v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$7;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gAdapter:Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$MarketPlace3Adapter;
    invoke-static {v3}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->access$33(Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;)Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$MarketPlace3Adapter;

    move-result-object v3

    invoke-virtual {v3, p3}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$MarketPlace3Adapter;->getItem(I)Lic/buzzebeeslib/bean/Campaign;

    move-result-object v0

    .line 454
    .local v0, "campaign":Lic/buzzebeeslib/bean/Campaign;
    iget-object v3, v0, Lic/buzzebeeslib/bean/Campaign;->Type:Ljava/lang/String;

    const-string v4, "5"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_32

    iget-object v3, v0, Lic/buzzebeeslib/bean/Campaign;->Type:Ljava/lang/String;

    const-string v4, "6"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4e

    .line 455
    :cond_32
    new-instance v2, Landroid/content/Intent;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gContext:Landroid/content/Context;
    invoke-static {}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->access$34()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 456
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "campaign"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 457
    iget-object v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$7;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;

    iget-object v4, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$7;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->RC_MARKET_DETAIL:I
    invoke-static {v4}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->access$35(Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;)I

    move-result v4

    invoke-virtual {v3, v2, v4}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 468
    .end local v0    # "campaign":Lic/buzzebeeslib/bean/Campaign;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_4d
    :goto_4d
    return-void

    .line 459
    .restart local v0    # "campaign":Lic/buzzebeeslib/bean/Campaign;
    :cond_4e
    new-instance v2, Landroid/content/Intent;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gContext:Landroid/content/Context;
    invoke-static {}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->access$34()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 460
    .restart local v2    # "intent":Landroid/content/Intent;
    const-string v3, "campaign"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 461
    iget-object v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$7;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;

    iget-object v4, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$7;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->RC_MARKET_DETAIL:I
    invoke-static {v4}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->access$35(Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;)I

    move-result v4

    invoke-virtual {v3, v2, v4}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_69} :catch_6a

    goto :goto_4d

    .line 463
    .end local v0    # "campaign":Lic/buzzebeeslib/bean/Campaign;
    .end local v2    # "intent":Landroid/content/Intent;
    :catch_6a
    move-exception v1

    .line 464
    .local v1, "ex":Ljava/lang/Exception;
    iget-object v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$7;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "ex "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->showToast(Ljava/lang/String;)V

    goto :goto_4d
.end method
