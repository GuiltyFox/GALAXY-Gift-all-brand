.class Lcom/samsung/privilege/activity/CampaignDetailActivity$placesRequestListener$3;
.super Ljava/lang/Object;
.source "CampaignDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/CampaignDetailActivity$placesRequestListener;->onComplete(ILjava/lang/String;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/privilege/activity/CampaignDetailActivity$placesRequestListener;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/CampaignDetailActivity$placesRequestListener;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$placesRequestListener$3;->this$1:Lcom/samsung/privilege/activity/CampaignDetailActivity$placesRequestListener;

    .line 3480
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 3483
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$placesRequestListener$3;->this$1:Lcom/samsung/privilege/activity/CampaignDetailActivity$placesRequestListener;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity$placesRequestListener;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignDetailActivity$placesRequestListener;->access$1(Lcom/samsung/privilege/activity/CampaignDetailActivity$placesRequestListener;)Lcom/samsung/privilege/activity/CampaignDetailActivity;

    move-result-object v0

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity;->gListBranch:Lcom/samsung/privilege/control/PullToRefreshListView;
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->access$22(Lcom/samsung/privilege/activity/CampaignDetailActivity;)Lcom/samsung/privilege/control/PullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/privilege/control/PullToRefreshListView;->onRefreshComplete()V

    .line 3484
    return-void
.end method
