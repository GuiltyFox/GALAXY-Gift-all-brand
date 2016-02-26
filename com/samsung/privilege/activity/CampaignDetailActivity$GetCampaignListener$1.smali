.class Lcom/samsung/privilege/activity/CampaignDetailActivity$GetCampaignListener$1;
.super Ljava/lang/Object;
.source "CampaignDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/CampaignDetailActivity$GetCampaignListener;->onComplete(ILjava/lang/String;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/privilege/activity/CampaignDetailActivity$GetCampaignListener;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/CampaignDetailActivity$GetCampaignListener;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$GetCampaignListener$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailActivity$GetCampaignListener;

    .line 3864
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 3866
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$GetCampaignListener$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailActivity$GetCampaignListener;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity$GetCampaignListener;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignDetailActivity$GetCampaignListener;->access$1(Lcom/samsung/privilege/activity/CampaignDetailActivity$GetCampaignListener;)Lcom/samsung/privilege/activity/CampaignDetailActivity;

    move-result-object v0

    const/4 v1, 0x0

    # invokes: Lcom/samsung/privilege/activity/CampaignDetailActivity;->initialLayout(Z)V
    invoke-static {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->access$29(Lcom/samsung/privilege/activity/CampaignDetailActivity;Z)V

    .line 3867
    return-void
.end method
