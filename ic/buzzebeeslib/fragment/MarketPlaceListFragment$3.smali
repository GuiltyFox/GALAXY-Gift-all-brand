.class Lic/buzzebeeslib/fragment/MarketPlaceListFragment$3;
.super Ljava/lang/Object;
.source "MarketPlaceListFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->onActivityCreated(Landroid/os/Bundle;)V
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
.field final synthetic this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/fragment/MarketPlaceListFragment;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$3;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    .line 381
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
    .line 385
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$3;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    invoke-virtual {v3}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    if-eqz v3, :cond_4f

    iget-object v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$3;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    invoke-virtual {v3}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_4f

    .line 387
    :try_start_14
    iget-object v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$3;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gAdapter:Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter;
    invoke-static {v3}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->access$32(Lic/buzzebeeslib/fragment/MarketPlaceListFragment;)Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter;

    move-result-object v3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {v3, v4}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter;->getItem(I)Lic/buzzebeeslib/bean/Campaign;

    move-result-object v0

    .line 389
    .local v0, "campaign":Lic/buzzebeeslib/bean/Campaign;
    iget-object v3, v0, Lic/buzzebeeslib/bean/Campaign;->Type:Ljava/lang/String;

    const-string v4, "5"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_34

    iget-object v3, v0, Lic/buzzebeeslib/bean/Campaign;->Type:Ljava/lang/String;

    const-string v4, "6"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_50

    .line 390
    :cond_34
    new-instance v2, Landroid/content/Intent;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gContext:Landroid/content/Context;
    invoke-static {}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->access$33()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 391
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "campaign"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 392
    iget-object v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$3;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    iget-object v4, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$3;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->RC_MARKET_DETAIL:I
    invoke-static {v4}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->access$34(Lic/buzzebeeslib/fragment/MarketPlaceListFragment;)I

    move-result v4

    invoke-virtual {v3, v2, v4}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 403
    .end local v0    # "campaign":Lic/buzzebeeslib/bean/Campaign;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_4f
    :goto_4f
    return-void

    .line 394
    .restart local v0    # "campaign":Lic/buzzebeeslib/bean/Campaign;
    :cond_50
    new-instance v2, Landroid/content/Intent;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gContext:Landroid/content/Context;
    invoke-static {}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->access$33()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 395
    .restart local v2    # "intent":Landroid/content/Intent;
    const-string v3, "campaign"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 396
    iget-object v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$3;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    iget-object v4, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$3;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->RC_MARKET_DETAIL:I
    invoke-static {v4}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->access$34(Lic/buzzebeeslib/fragment/MarketPlaceListFragment;)I

    move-result v4

    invoke-virtual {v3, v2, v4}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_6b} :catch_6c

    goto :goto_4f

    .line 398
    .end local v0    # "campaign":Lic/buzzebeeslib/bean/Campaign;
    .end local v2    # "intent":Landroid/content/Intent;
    :catch_6c
    move-exception v1

    .line 399
    .local v1, "ex":Ljava/lang/Exception;
    iget-object v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$3;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "ex "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->showToast(Ljava/lang/String;)V

    goto :goto_4f
.end method
