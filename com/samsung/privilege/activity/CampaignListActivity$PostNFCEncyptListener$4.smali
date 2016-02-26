.class Lcom/samsung/privilege/activity/CampaignListActivity$PostNFCEncyptListener$4;
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
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignListActivity$PostNFCEncyptListener$4;->this$1:Lcom/samsung/privilege/activity/CampaignListActivity$PostNFCEncyptListener;

    .line 738
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 740
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignListActivity$PostNFCEncyptListener$4;->this$1:Lcom/samsung/privilege/activity/CampaignListActivity$PostNFCEncyptListener;

    # getter for: Lcom/samsung/privilege/activity/CampaignListActivity$PostNFCEncyptListener;->this$0:Lcom/samsung/privilege/activity/CampaignListActivity;
    invoke-static {v1}, Lcom/samsung/privilege/activity/CampaignListActivity$PostNFCEncyptListener;->access$0(Lcom/samsung/privilege/activity/CampaignListActivity$PostNFCEncyptListener;)Lcom/samsung/privilege/activity/CampaignListActivity;

    move-result-object v1

    # getter for: Lcom/samsung/privilege/activity/CampaignListActivity;->gNfcResult:Lcom/samsung/privilege/bean/NFCResult;
    invoke-static {v1}, Lcom/samsung/privilege/activity/CampaignListActivity;->access$4(Lcom/samsung/privilege/activity/CampaignListActivity;)Lcom/samsung/privilege/bean/NFCResult;

    move-result-object v1

    iget-object v1, v1, Lcom/samsung/privilege/bean/NFCResult;->planes_action:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_14

    .line 743
    return-void

    .line 741
    :cond_14
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignListActivity$PostNFCEncyptListener$4;->this$1:Lcom/samsung/privilege/activity/CampaignListActivity$PostNFCEncyptListener;

    # getter for: Lcom/samsung/privilege/activity/CampaignListActivity$PostNFCEncyptListener;->this$0:Lcom/samsung/privilege/activity/CampaignListActivity;
    invoke-static {v1}, Lcom/samsung/privilege/activity/CampaignListActivity$PostNFCEncyptListener;->access$0(Lcom/samsung/privilege/activity/CampaignListActivity$PostNFCEncyptListener;)Lcom/samsung/privilege/activity/CampaignListActivity;

    move-result-object v2

    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignListActivity$PostNFCEncyptListener$4;->this$1:Lcom/samsung/privilege/activity/CampaignListActivity$PostNFCEncyptListener;

    # getter for: Lcom/samsung/privilege/activity/CampaignListActivity$PostNFCEncyptListener;->this$0:Lcom/samsung/privilege/activity/CampaignListActivity;
    invoke-static {v1}, Lcom/samsung/privilege/activity/CampaignListActivity$PostNFCEncyptListener;->access$0(Lcom/samsung/privilege/activity/CampaignListActivity$PostNFCEncyptListener;)Lcom/samsung/privilege/activity/CampaignListActivity;

    move-result-object v1

    # getter for: Lcom/samsung/privilege/activity/CampaignListActivity;->gNfcResult:Lcom/samsung/privilege/bean/NFCResult;
    invoke-static {v1}, Lcom/samsung/privilege/activity/CampaignListActivity;->access$4(Lcom/samsung/privilege/activity/CampaignListActivity;)Lcom/samsung/privilege/bean/NFCResult;

    move-result-object v1

    iget-object v1, v1, Lcom/samsung/privilege/bean/NFCResult;->planes_action:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/privilege/bean/NFCPlan;

    iget-object v3, p0, Lcom/samsung/privilege/activity/CampaignListActivity$PostNFCEncyptListener$4;->this$1:Lcom/samsung/privilege/activity/CampaignListActivity$PostNFCEncyptListener;

    # getter for: Lcom/samsung/privilege/activity/CampaignListActivity$PostNFCEncyptListener;->this$0:Lcom/samsung/privilege/activity/CampaignListActivity;
    invoke-static {v3}, Lcom/samsung/privilege/activity/CampaignListActivity$PostNFCEncyptListener;->access$0(Lcom/samsung/privilege/activity/CampaignListActivity$PostNFCEncyptListener;)Lcom/samsung/privilege/activity/CampaignListActivity;

    move-result-object v3

    # getter for: Lcom/samsung/privilege/activity/CampaignListActivity;->gNfcResult:Lcom/samsung/privilege/bean/NFCResult;
    invoke-static {v3}, Lcom/samsung/privilege/activity/CampaignListActivity;->access$4(Lcom/samsung/privilege/activity/CampaignListActivity;)Lcom/samsung/privilege/bean/NFCResult;

    move-result-object v3

    # invokes: Lcom/samsung/privilege/activity/CampaignListActivity;->doActionNFC(Lcom/samsung/privilege/bean/NFCPlan;Lcom/samsung/privilege/bean/NFCResult;)V
    invoke-static {v2, v1, v3}, Lcom/samsung/privilege/activity/CampaignListActivity;->access$5(Lcom/samsung/privilege/activity/CampaignListActivity;Lcom/samsung/privilege/bean/NFCPlan;Lcom/samsung/privilege/bean/NFCResult;)V

    .line 740
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
