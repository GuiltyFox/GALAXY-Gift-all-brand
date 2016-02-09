.class Lcom/samsung/privilege/activity/CampaignListActivity$3;
.super Ljava/lang/Object;
.source "CampaignListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/CampaignListActivity;->gotoProfileSetting()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/CampaignListActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/CampaignListActivity;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignListActivity$3;->this$0:Lcom/samsung/privilege/activity/CampaignListActivity;

    .line 923
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 926
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignListActivity$3;->this$0:Lcom/samsung/privilege/activity/CampaignListActivity;

    invoke-virtual {v1}, Lcom/samsung/privilege/activity/CampaignListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/samsung/privilege/activity/ProfileSettingActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 927
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignListActivity$3;->this$0:Lcom/samsung/privilege/activity/CampaignListActivity;

    invoke-virtual {v1, v0}, Lcom/samsung/privilege/activity/CampaignListActivity;->startActivity(Landroid/content/Intent;)V

    .line 928
    return-void
.end method
