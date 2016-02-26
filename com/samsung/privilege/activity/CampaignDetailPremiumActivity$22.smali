.class Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$22;
.super Ljava/lang/Object;
.source "CampaignDetailPremiumActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getCampaignFromCatch(ILcom/samsung/privilege/bean/NFCTag;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$22;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    .line 2707
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 2709
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$22;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    const/4 v1, 0x1

    # invokes: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->initialLayout(Z)V
    invoke-static {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->access$27(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;Z)V

    .line 2710
    return-void
.end method
