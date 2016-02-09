.class Lic/buzzebeeslib/activity/HelpCenterListActivity$5;
.super Ljava/lang/Object;
.source "HelpCenterListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/HelpCenterListActivity;->initialLayout()V
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
.field final synthetic this$0:Lic/buzzebeeslib/activity/HelpCenterListActivity;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/HelpCenterListActivity;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$5;->this$0:Lic/buzzebeeslib/activity/HelpCenterListActivity;

    .line 544
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 10
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
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
    .line 548
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$5;->this$0:Lic/buzzebeeslib/activity/HelpCenterListActivity;

    # getter for: Lic/buzzebeeslib/activity/HelpCenterListActivity;->gMarketReviews:Ljava/util/ArrayList;
    invoke-static {v2}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->access$3(Lic/buzzebeeslib/activity/HelpCenterListActivity;)Ljava/util/ArrayList;

    move-result-object v2

    add-int/lit8 v3, p3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lic/buzzebeeslib/bean/CampaignReview;

    .line 550
    .local v1, "review":Lic/buzzebeeslib/bean/CampaignReview;
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$5;->this$0:Lic/buzzebeeslib/activity/HelpCenterListActivity;

    invoke-virtual {v2}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 551
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "Campaign"

    iget-object v3, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$5;->this$0:Lic/buzzebeeslib/activity/HelpCenterListActivity;

    # getter for: Lic/buzzebeeslib/activity/HelpCenterListActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;
    invoke-static {v3}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->access$27(Lic/buzzebeeslib/activity/HelpCenterListActivity;)Lic/buzzebeeslib/bean/Campaign;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 552
    const-string v2, "MarketReview"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 553
    const-string v2, "type"

    iget-object v3, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$5;->this$0:Lic/buzzebeeslib/activity/HelpCenterListActivity;

    iget-object v3, v3, Lic/buzzebeeslib/activity/HelpCenterListActivity;->strType:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 554
    iget-object v2, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$5;->this$0:Lic/buzzebeeslib/activity/HelpCenterListActivity;

    iget-object v3, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$5;->this$0:Lic/buzzebeeslib/activity/HelpCenterListActivity;

    # getter for: Lic/buzzebeeslib/activity/HelpCenterListActivity;->RC_REVIEW_OF_REVIEW:I
    invoke-static {v3}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->access$28(Lic/buzzebeeslib/activity/HelpCenterListActivity;)I

    move-result v3

    invoke-virtual {v2, v0, v3}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 555
    return-void
.end method
