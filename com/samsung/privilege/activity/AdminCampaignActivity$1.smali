.class Lcom/samsung/privilege/activity/AdminCampaignActivity$1;
.super Ljava/lang/Object;
.source "AdminCampaignActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/AdminCampaignActivity;->onCreate(Landroid/os/Bundle;)V
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
.field final synthetic this$0:Lcom/samsung/privilege/activity/AdminCampaignActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/AdminCampaignActivity;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/AdminCampaignActivity$1;->this$0:Lcom/samsung/privilege/activity/AdminCampaignActivity;

    .line 86
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
    .line 90
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    :try_start_0
    iget-object v3, p0, Lcom/samsung/privilege/activity/AdminCampaignActivity$1;->this$0:Lcom/samsung/privilege/activity/AdminCampaignActivity;

    # getter for: Lcom/samsung/privilege/activity/AdminCampaignActivity;->gCampaignViews:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/samsung/privilege/activity/AdminCampaignActivity;->access$1(Lcom/samsung/privilege/activity/AdminCampaignActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/privilege/bean/CampaignView;

    .line 91
    .local v0, "campaign":Lcom/samsung/privilege/bean/CampaignView;
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/samsung/privilege/activity/AdminCampaignActivity$1;->this$0:Lcom/samsung/privilege/activity/AdminCampaignActivity;

    invoke-virtual {v3}, Lcom/samsung/privilege/activity/AdminCampaignActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/samsung/privilege/activity/CampaignDetailActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 92
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "campaign"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 93
    iget-object v3, p0, Lcom/samsung/privilege/activity/AdminCampaignActivity$1;->this$0:Lcom/samsung/privilege/activity/AdminCampaignActivity;

    invoke-virtual {v3, v2}, Lcom/samsung/privilege/activity/AdminCampaignActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_23} :catch_24

    .line 97
    .end local v0    # "campaign":Lcom/samsung/privilege/bean/CampaignView;
    .end local v2    # "intent":Landroid/content/Intent;
    :goto_23
    return-void

    .line 94
    :catch_24
    move-exception v1

    .line 95
    .local v1, "ex":Ljava/lang/Exception;
    const-string v3, "AdminCampaignActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "listCampaign.setOnItemClickListener:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_23
.end method
