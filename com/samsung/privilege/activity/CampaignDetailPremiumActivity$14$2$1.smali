.class Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$14$2$1;
.super Ljava/lang/Object;
.source "CampaignDetailPremiumActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$14$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$14$2;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$14$2;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$14$2$1;->this$2:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$14$2;

    .line 2174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 2177
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$14$2$1;->this$2:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$14$2;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$14$2;->this$1:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$14;
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$14$2;->access$0(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$14$2;)Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$14;

    move-result-object v0

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$14;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$14;->access$0(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$14;)Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getLocationByGPS()V

    .line 2178
    return-void
.end method
