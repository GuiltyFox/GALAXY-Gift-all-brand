.class Lcom/samsung/privilege/activity/AdminCampaignActivity$GetCampaignListener$1;
.super Ljava/lang/Object;
.source "AdminCampaignActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/AdminCampaignActivity$GetCampaignListener;->onComplete(ILjava/lang/String;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/privilege/activity/AdminCampaignActivity$GetCampaignListener;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/AdminCampaignActivity$GetCampaignListener;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/AdminCampaignActivity$GetCampaignListener$1;->this$1:Lcom/samsung/privilege/activity/AdminCampaignActivity$GetCampaignListener;

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 154
    iget-object v1, p0, Lcom/samsung/privilege/activity/AdminCampaignActivity$GetCampaignListener$1;->this$1:Lcom/samsung/privilege/activity/AdminCampaignActivity$GetCampaignListener;

    # getter for: Lcom/samsung/privilege/activity/AdminCampaignActivity$GetCampaignListener;->this$0:Lcom/samsung/privilege/activity/AdminCampaignActivity;
    invoke-static {v1}, Lcom/samsung/privilege/activity/AdminCampaignActivity$GetCampaignListener;->access$0(Lcom/samsung/privilege/activity/AdminCampaignActivity$GetCampaignListener;)Lcom/samsung/privilege/activity/AdminCampaignActivity;

    move-result-object v1

    const v2, 0x7f07005f

    invoke-virtual {v1, v2}, Lcom/samsung/privilege/activity/AdminCampaignActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 155
    .local v0, "listCampaign":Landroid/widget/ListView;
    iget-object v1, p0, Lcom/samsung/privilege/activity/AdminCampaignActivity$GetCampaignListener$1;->this$1:Lcom/samsung/privilege/activity/AdminCampaignActivity$GetCampaignListener;

    # getter for: Lcom/samsung/privilege/activity/AdminCampaignActivity$GetCampaignListener;->this$0:Lcom/samsung/privilege/activity/AdminCampaignActivity;
    invoke-static {v1}, Lcom/samsung/privilege/activity/AdminCampaignActivity$GetCampaignListener;->access$0(Lcom/samsung/privilege/activity/AdminCampaignActivity$GetCampaignListener;)Lcom/samsung/privilege/activity/AdminCampaignActivity;

    move-result-object v1

    new-instance v2, Lcom/samsung/privilege/activity/AdminCampaignActivity$CampaignListAdapter;

    iget-object v3, p0, Lcom/samsung/privilege/activity/AdminCampaignActivity$GetCampaignListener$1;->this$1:Lcom/samsung/privilege/activity/AdminCampaignActivity$GetCampaignListener;

    # getter for: Lcom/samsung/privilege/activity/AdminCampaignActivity$GetCampaignListener;->this$0:Lcom/samsung/privilege/activity/AdminCampaignActivity;
    invoke-static {v3}, Lcom/samsung/privilege/activity/AdminCampaignActivity$GetCampaignListener;->access$0(Lcom/samsung/privilege/activity/AdminCampaignActivity$GetCampaignListener;)Lcom/samsung/privilege/activity/AdminCampaignActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/privilege/activity/AdminCampaignActivity$GetCampaignListener$1;->this$1:Lcom/samsung/privilege/activity/AdminCampaignActivity$GetCampaignListener;

    # getter for: Lcom/samsung/privilege/activity/AdminCampaignActivity$GetCampaignListener;->this$0:Lcom/samsung/privilege/activity/AdminCampaignActivity;
    invoke-static {v4}, Lcom/samsung/privilege/activity/AdminCampaignActivity$GetCampaignListener;->access$0(Lcom/samsung/privilege/activity/AdminCampaignActivity$GetCampaignListener;)Lcom/samsung/privilege/activity/AdminCampaignActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/privilege/activity/AdminCampaignActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/privilege/activity/AdminCampaignActivity$GetCampaignListener$1;->this$1:Lcom/samsung/privilege/activity/AdminCampaignActivity$GetCampaignListener;

    # getter for: Lcom/samsung/privilege/activity/AdminCampaignActivity$GetCampaignListener;->this$0:Lcom/samsung/privilege/activity/AdminCampaignActivity;
    invoke-static {v5}, Lcom/samsung/privilege/activity/AdminCampaignActivity$GetCampaignListener;->access$0(Lcom/samsung/privilege/activity/AdminCampaignActivity$GetCampaignListener;)Lcom/samsung/privilege/activity/AdminCampaignActivity;

    move-result-object v5

    # getter for: Lcom/samsung/privilege/activity/AdminCampaignActivity;->gCampaignViews:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/samsung/privilege/activity/AdminCampaignActivity;->access$1(Lcom/samsung/privilege/activity/AdminCampaignActivity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/privilege/activity/AdminCampaignActivity$CampaignListAdapter;-><init>(Lcom/samsung/privilege/activity/AdminCampaignActivity;Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-static {v1, v2}, Lcom/samsung/privilege/activity/AdminCampaignActivity;->access$2(Lcom/samsung/privilege/activity/AdminCampaignActivity;Lcom/samsung/privilege/activity/AdminCampaignActivity$CampaignListAdapter;)V

    .line 156
    iget-object v1, p0, Lcom/samsung/privilege/activity/AdminCampaignActivity$GetCampaignListener$1;->this$1:Lcom/samsung/privilege/activity/AdminCampaignActivity$GetCampaignListener;

    # getter for: Lcom/samsung/privilege/activity/AdminCampaignActivity$GetCampaignListener;->this$0:Lcom/samsung/privilege/activity/AdminCampaignActivity;
    invoke-static {v1}, Lcom/samsung/privilege/activity/AdminCampaignActivity$GetCampaignListener;->access$0(Lcom/samsung/privilege/activity/AdminCampaignActivity$GetCampaignListener;)Lcom/samsung/privilege/activity/AdminCampaignActivity;

    move-result-object v1

    # getter for: Lcom/samsung/privilege/activity/AdminCampaignActivity;->gCampaignViews:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/samsung/privilege/activity/AdminCampaignActivity;->access$1(Lcom/samsung/privilege/activity/AdminCampaignActivity;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_61

    iget-object v1, p0, Lcom/samsung/privilege/activity/AdminCampaignActivity$GetCampaignListener$1;->this$1:Lcom/samsung/privilege/activity/AdminCampaignActivity$GetCampaignListener;

    # getter for: Lcom/samsung/privilege/activity/AdminCampaignActivity$GetCampaignListener;->this$0:Lcom/samsung/privilege/activity/AdminCampaignActivity;
    invoke-static {v1}, Lcom/samsung/privilege/activity/AdminCampaignActivity$GetCampaignListener;->access$0(Lcom/samsung/privilege/activity/AdminCampaignActivity$GetCampaignListener;)Lcom/samsung/privilege/activity/AdminCampaignActivity;

    move-result-object v1

    # getter for: Lcom/samsung/privilege/activity/AdminCampaignActivity;->gCampaignViews:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/samsung/privilege/activity/AdminCampaignActivity;->access$1(Lcom/samsung/privilege/activity/AdminCampaignActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_61

    .line 157
    iget-object v1, p0, Lcom/samsung/privilege/activity/AdminCampaignActivity$GetCampaignListener$1;->this$1:Lcom/samsung/privilege/activity/AdminCampaignActivity$GetCampaignListener;

    # getter for: Lcom/samsung/privilege/activity/AdminCampaignActivity$GetCampaignListener;->this$0:Lcom/samsung/privilege/activity/AdminCampaignActivity;
    invoke-static {v1}, Lcom/samsung/privilege/activity/AdminCampaignActivity$GetCampaignListener;->access$0(Lcom/samsung/privilege/activity/AdminCampaignActivity$GetCampaignListener;)Lcom/samsung/privilege/activity/AdminCampaignActivity;

    move-result-object v1

    # getter for: Lcom/samsung/privilege/activity/AdminCampaignActivity;->gAdapter:Lcom/samsung/privilege/activity/AdminCampaignActivity$CampaignListAdapter;
    invoke-static {v1}, Lcom/samsung/privilege/activity/AdminCampaignActivity;->access$3(Lcom/samsung/privilege/activity/AdminCampaignActivity;)Lcom/samsung/privilege/activity/AdminCampaignActivity$CampaignListAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 161
    :goto_60
    return-void

    .line 159
    :cond_61
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_60
.end method
