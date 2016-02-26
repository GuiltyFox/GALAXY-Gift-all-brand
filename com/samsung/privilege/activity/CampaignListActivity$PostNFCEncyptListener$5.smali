.class Lcom/samsung/privilege/activity/CampaignListActivity$PostNFCEncyptListener$5;
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

.field private final synthetic val$message_final:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/CampaignListActivity$PostNFCEncyptListener;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignListActivity$PostNFCEncyptListener$5;->this$1:Lcom/samsung/privilege/activity/CampaignListActivity$PostNFCEncyptListener;

    iput-object p2, p0, Lcom/samsung/privilege/activity/CampaignListActivity$PostNFCEncyptListener$5;->val$message_final:Ljava/lang/String;

    .line 753
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 755
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity$PostNFCEncyptListener$5;->this$1:Lcom/samsung/privilege/activity/CampaignListActivity$PostNFCEncyptListener;

    # getter for: Lcom/samsung/privilege/activity/CampaignListActivity$PostNFCEncyptListener;->this$0:Lcom/samsung/privilege/activity/CampaignListActivity;
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignListActivity$PostNFCEncyptListener;->access$0(Lcom/samsung/privilege/activity/CampaignListActivity$PostNFCEncyptListener;)Lcom/samsung/privilege/activity/CampaignListActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignListActivity$PostNFCEncyptListener$5;->val$message_final:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/DialogUtil;->showDialogMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 756
    return-void
.end method
