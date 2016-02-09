.class Lcom/samsung/privilege/activity/CampaignListActivity$PostNFCEncyptListener$2;
.super Ljava/lang/Object;
.source "CampaignListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/CampaignListActivity$PostNFCEncyptListener;->onComplete(ILjava/lang/String;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/privilege/activity/CampaignListActivity$PostNFCEncyptListener;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/CampaignListActivity$PostNFCEncyptListener;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignListActivity$PostNFCEncyptListener$2;->this$1:Lcom/samsung/privilege/activity/CampaignListActivity$PostNFCEncyptListener;

    .line 709
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 711
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity$PostNFCEncyptListener$2;->this$1:Lcom/samsung/privilege/activity/CampaignListActivity$PostNFCEncyptListener;

    # getter for: Lcom/samsung/privilege/activity/CampaignListActivity$PostNFCEncyptListener;->this$0:Lcom/samsung/privilege/activity/CampaignListActivity;
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignListActivity$PostNFCEncyptListener;->access$0(Lcom/samsung/privilege/activity/CampaignListActivity$PostNFCEncyptListener;)Lcom/samsung/privilege/activity/CampaignListActivity;

    move-result-object v1

    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity$PostNFCEncyptListener$2;->this$1:Lcom/samsung/privilege/activity/CampaignListActivity$PostNFCEncyptListener;

    # getter for: Lcom/samsung/privilege/activity/CampaignListActivity$PostNFCEncyptListener;->this$0:Lcom/samsung/privilege/activity/CampaignListActivity;
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignListActivity$PostNFCEncyptListener;->access$0(Lcom/samsung/privilege/activity/CampaignListActivity$PostNFCEncyptListener;)Lcom/samsung/privilege/activity/CampaignListActivity;

    move-result-object v0

    # getter for: Lcom/samsung/privilege/activity/CampaignListActivity;->gNfcResult:Lcom/samsung/privilege/bean/NFCResult;
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignListActivity;->access$4(Lcom/samsung/privilege/activity/CampaignListActivity;)Lcom/samsung/privilege/bean/NFCResult;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/privilege/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/privilege/bean/NFCPlan;

    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignListActivity$PostNFCEncyptListener$2;->this$1:Lcom/samsung/privilege/activity/CampaignListActivity$PostNFCEncyptListener;

    # getter for: Lcom/samsung/privilege/activity/CampaignListActivity$PostNFCEncyptListener;->this$0:Lcom/samsung/privilege/activity/CampaignListActivity;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignListActivity$PostNFCEncyptListener;->access$0(Lcom/samsung/privilege/activity/CampaignListActivity$PostNFCEncyptListener;)Lcom/samsung/privilege/activity/CampaignListActivity;

    move-result-object v2

    # getter for: Lcom/samsung/privilege/activity/CampaignListActivity;->gNfcResult:Lcom/samsung/privilege/bean/NFCResult;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignListActivity;->access$4(Lcom/samsung/privilege/activity/CampaignListActivity;)Lcom/samsung/privilege/bean/NFCResult;

    move-result-object v2

    # invokes: Lcom/samsung/privilege/activity/CampaignListActivity;->doActionNFC(Lcom/samsung/privilege/bean/NFCPlan;Lcom/samsung/privilege/bean/NFCResult;)V
    invoke-static {v1, v0, v2}, Lcom/samsung/privilege/activity/CampaignListActivity;->access$5(Lcom/samsung/privilege/activity/CampaignListActivity;Lcom/samsung/privilege/bean/NFCPlan;Lcom/samsung/privilege/bean/NFCResult;)V

    .line 712
    return-void
.end method
