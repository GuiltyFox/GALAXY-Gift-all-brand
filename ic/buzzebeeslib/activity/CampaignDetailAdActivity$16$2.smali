.class Lic/buzzebeeslib/activity/CampaignDetailAdActivity$16$2;
.super Ljava/lang/Object;
.source "CampaignDetailAdActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/CampaignDetailAdActivity$16;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lic/buzzebeeslib/activity/CampaignDetailAdActivity$16;

.field private final synthetic val$request:Lic/buzzebeeslib/control/download/DownloadRequest;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/CampaignDetailAdActivity$16;Lic/buzzebeeslib/control/download/DownloadRequest;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$16$2;->this$1:Lic/buzzebeeslib/activity/CampaignDetailAdActivity$16;

    iput-object p2, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$16$2;->val$request:Lic/buzzebeeslib/control/download/DownloadRequest;

    .line 1406
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .param p1, "p_dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1410
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 1411
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$16$2;->this$1:Lic/buzzebeeslib/activity/CampaignDetailAdActivity$16;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdActivity$16;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;
    invoke-static {v0}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$16;->access$0(Lic/buzzebeeslib/activity/CampaignDetailAdActivity$16;)Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    move-result-object v0

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->mDownloadManager:Lic/buzzebeeslib/control/download/DownloadManager;
    invoke-static {v0}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->access$26(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;)Lic/buzzebeeslib/control/download/DownloadManager;

    move-result-object v0

    iget-object v1, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$16$2;->val$request:Lic/buzzebeeslib/control/download/DownloadRequest;

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/control/download/DownloadManager;->enqueue(Lic/buzzebeeslib/control/download/DownloadRequest;)V

    .line 1412
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$16$2;->this$1:Lic/buzzebeeslib/activity/CampaignDetailAdActivity$16;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdActivity$16;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;
    invoke-static {v0}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$16;->access$0(Lic/buzzebeeslib/activity/CampaignDetailAdActivity$16;)Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    move-result-object v0

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->btnWatchLoad:Landroid/widget/Button;
    invoke-static {v0}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->access$0(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$16$2;->this$1:Lic/buzzebeeslib/activity/CampaignDetailAdActivity$16;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdActivity$16;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;
    invoke-static {v1}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$16;->access$0(Lic/buzzebeeslib/activity/CampaignDetailAdActivity$16;)Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    move-result-object v1

    sget v2, Lic/buzzebeeslib/R$string;->campaign_detail_ad_download_watch_ad:I

    invoke-virtual {v1, v2}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1413
    return-void
.end method
