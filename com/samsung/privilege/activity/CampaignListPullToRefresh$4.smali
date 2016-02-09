.class Lcom/samsung/privilege/activity/CampaignListPullToRefresh$4;
.super Ljava/lang/Object;
.source "CampaignListPullToRefresh.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/CampaignListPullToRefresh;

.field private final synthetic val$savedInstanceState:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/CampaignListPullToRefresh;Landroid/os/Bundle;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$4;->this$0:Lcom/samsung/privilege/activity/CampaignListPullToRefresh;

    iput-object p2, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$4;->val$savedInstanceState:Landroid/os/Bundle;

    .line 362
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 365
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$4;->this$0:Lcom/samsung/privilege/activity/CampaignListPullToRefresh;

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_33

    .line 366
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$4;->val$savedInstanceState:Landroid/os/Bundle;

    if-nez v0, :cond_34

    .line 367
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$4;->this$0:Lcom/samsung/privilege/activity/CampaignListPullToRefresh;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->access$17(Lcom/samsung/privilege/activity/CampaignListPullToRefresh;I)V

    .line 368
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$4;->this$0:Lcom/samsung/privilege/activity/CampaignListPullToRefresh;

    invoke-static {v0, v2}, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->access$1(Lcom/samsung/privilege/activity/CampaignListPullToRefresh;Ljava/util/ArrayList;)V

    .line 369
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$4;->this$0:Lcom/samsung/privilege/activity/CampaignListPullToRefresh;

    invoke-static {v0, v2}, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->access$18(Lcom/samsung/privilege/activity/CampaignListPullToRefresh;Lcom/samsung/privilege/activity/CampaignListPullToRefresh$CampaignListAdapter;)V

    .line 395
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$4;->this$0:Lcom/samsung/privilege/activity/CampaignListPullToRefresh;

    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$4;->this$0:Lcom/samsung/privilege/activity/CampaignListPullToRefresh;

    # getter for: Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->mCategoryCode:Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->access$30(Lcom/samsung/privilege/activity/CampaignListPullToRefresh;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->access$31(Lcom/samsung/privilege/activity/CampaignListPullToRefresh;Ljava/lang/String;)V

    .line 396
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$4;->this$0:Lcom/samsung/privilege/activity/CampaignListPullToRefresh;

    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$4;->this$0:Lcom/samsung/privilege/activity/CampaignListPullToRefresh;

    # getter for: Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->gCurrentFilterCategory:Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->access$19(Lcom/samsung/privilege/activity/CampaignListPullToRefresh;)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->loadCampaignByCatch(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->access$32(Lcom/samsung/privilege/activity/CampaignListPullToRefresh;Ljava/lang/String;)V

    .line 401
    :cond_33
    :goto_33
    return-void

    .line 398
    :cond_34
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$4;->this$0:Lcom/samsung/privilege/activity/CampaignListPullToRefresh;

    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$4;->val$savedInstanceState:Landroid/os/Bundle;

    # invokes: Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->restoreInstanceState(Landroid/os/Bundle;)V
    invoke-static {v0, v1}, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->access$33(Lcom/samsung/privilege/activity/CampaignListPullToRefresh;Landroid/os/Bundle;)V

    goto :goto_33
.end method
