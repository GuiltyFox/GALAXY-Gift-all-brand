.class Lcom/samsung/privilege/activity/CampaignListActivity$GetPointsListener$1;
.super Ljava/lang/Object;
.source "CampaignListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/CampaignListActivity$GetPointsListener;->onComplete(ILjava/lang/String;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/privilege/activity/CampaignListActivity$GetPointsListener;

.field private final synthetic val$strPoints:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/CampaignListActivity$GetPointsListener;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignListActivity$GetPointsListener$1;->this$1:Lcom/samsung/privilege/activity/CampaignListActivity$GetPointsListener;

    iput-object p2, p0, Lcom/samsung/privilege/activity/CampaignListActivity$GetPointsListener$1;->val$strPoints:Ljava/lang/String;

    .line 1947
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 1949
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity$GetPointsListener$1;->this$1:Lcom/samsung/privilege/activity/CampaignListActivity$GetPointsListener;

    # getter for: Lcom/samsung/privilege/activity/CampaignListActivity$GetPointsListener;->this$0:Lcom/samsung/privilege/activity/CampaignListActivity;
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignListActivity$GetPointsListener;->access$0(Lcom/samsung/privilege/activity/CampaignListActivity$GetPointsListener;)Lcom/samsung/privilege/activity/CampaignListActivity;

    move-result-object v0

    # getter for: Lcom/samsung/privilege/activity/CampaignListActivity;->gTvPoint:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignListActivity;->access$7(Lcom/samsung/privilege/activity/CampaignListActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignListActivity$GetPointsListener$1;->val$strPoints:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1950
    return-void
.end method
