.class Lcom/samsung/privilege/activity/CampaignListActivity$PostNFCEncyptListener$3;
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
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignListActivity$PostNFCEncyptListener$3;->this$1:Lcom/samsung/privilege/activity/CampaignListActivity$PostNFCEncyptListener;

    .line 715
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 717
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity$PostNFCEncyptListener$3;->this$1:Lcom/samsung/privilege/activity/CampaignListActivity$PostNFCEncyptListener;

    # getter for: Lcom/samsung/privilege/activity/CampaignListActivity$PostNFCEncyptListener;->this$0:Lcom/samsung/privilege/activity/CampaignListActivity;
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignListActivity$PostNFCEncyptListener;->access$0(Lcom/samsung/privilege/activity/CampaignListActivity$PostNFCEncyptListener;)Lcom/samsung/privilege/activity/CampaignListActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignListActivity$PostNFCEncyptListener$3;->this$1:Lcom/samsung/privilege/activity/CampaignListActivity$PostNFCEncyptListener;

    # getter for: Lcom/samsung/privilege/activity/CampaignListActivity$PostNFCEncyptListener;->this$0:Lcom/samsung/privilege/activity/CampaignListActivity;
    invoke-static {v1}, Lcom/samsung/privilege/activity/CampaignListActivity$PostNFCEncyptListener;->access$0(Lcom/samsung/privilege/activity/CampaignListActivity$PostNFCEncyptListener;)Lcom/samsung/privilege/activity/CampaignListActivity;

    move-result-object v1

    # getter for: Lcom/samsung/privilege/activity/CampaignListActivity;->gLayoutMyPoint:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/samsung/privilege/activity/CampaignListActivity;->access$6(Lcom/samsung/privilege/activity/CampaignListActivity;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignListActivity;->registerForContextMenu(Landroid/view/View;)V

    .line 718
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity$PostNFCEncyptListener$3;->this$1:Lcom/samsung/privilege/activity/CampaignListActivity$PostNFCEncyptListener;

    # getter for: Lcom/samsung/privilege/activity/CampaignListActivity$PostNFCEncyptListener;->this$0:Lcom/samsung/privilege/activity/CampaignListActivity;
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignListActivity$PostNFCEncyptListener;->access$0(Lcom/samsung/privilege/activity/CampaignListActivity$PostNFCEncyptListener;)Lcom/samsung/privilege/activity/CampaignListActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignListActivity$PostNFCEncyptListener$3;->this$1:Lcom/samsung/privilege/activity/CampaignListActivity$PostNFCEncyptListener;

    # getter for: Lcom/samsung/privilege/activity/CampaignListActivity$PostNFCEncyptListener;->this$0:Lcom/samsung/privilege/activity/CampaignListActivity;
    invoke-static {v1}, Lcom/samsung/privilege/activity/CampaignListActivity$PostNFCEncyptListener;->access$0(Lcom/samsung/privilege/activity/CampaignListActivity$PostNFCEncyptListener;)Lcom/samsung/privilege/activity/CampaignListActivity;

    move-result-object v1

    # getter for: Lcom/samsung/privilege/activity/CampaignListActivity;->gLayoutMyPoint:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/samsung/privilege/activity/CampaignListActivity;->access$6(Lcom/samsung/privilege/activity/CampaignListActivity;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignListActivity;->openContextMenu(Landroid/view/View;)V

    .line 719
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity$PostNFCEncyptListener$3;->this$1:Lcom/samsung/privilege/activity/CampaignListActivity$PostNFCEncyptListener;

    # getter for: Lcom/samsung/privilege/activity/CampaignListActivity$PostNFCEncyptListener;->this$0:Lcom/samsung/privilege/activity/CampaignListActivity;
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignListActivity$PostNFCEncyptListener;->access$0(Lcom/samsung/privilege/activity/CampaignListActivity$PostNFCEncyptListener;)Lcom/samsung/privilege/activity/CampaignListActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignListActivity$PostNFCEncyptListener$3;->this$1:Lcom/samsung/privilege/activity/CampaignListActivity$PostNFCEncyptListener;

    # getter for: Lcom/samsung/privilege/activity/CampaignListActivity$PostNFCEncyptListener;->this$0:Lcom/samsung/privilege/activity/CampaignListActivity;
    invoke-static {v1}, Lcom/samsung/privilege/activity/CampaignListActivity$PostNFCEncyptListener;->access$0(Lcom/samsung/privilege/activity/CampaignListActivity$PostNFCEncyptListener;)Lcom/samsung/privilege/activity/CampaignListActivity;

    move-result-object v1

    # getter for: Lcom/samsung/privilege/activity/CampaignListActivity;->gLayoutMyPoint:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/samsung/privilege/activity/CampaignListActivity;->access$6(Lcom/samsung/privilege/activity/CampaignListActivity;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignListActivity;->unregisterForContextMenu(Landroid/view/View;)V

    .line 720
    return-void
.end method
