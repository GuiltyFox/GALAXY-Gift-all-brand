.class Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$GetPointsListener$1;
.super Ljava/lang/Object;
.source "CampaignDetailPremiumActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$GetPointsListener;->onComplete(ILjava/lang/String;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$GetPointsListener;

.field private final synthetic val$strPoints:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$GetPointsListener;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$GetPointsListener$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$GetPointsListener;

    iput-object p2, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$GetPointsListener$1;->val$strPoints:Ljava/lang/String;

    .line 915
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 917
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$GetPointsListener$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$GetPointsListener;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$GetPointsListener;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$GetPointsListener;->access$0(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$GetPointsListener;)Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    move-result-object v0

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gTvPoint:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->access$0(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$GetPointsListener$1;->val$strPoints:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 918
    return-void
.end method
