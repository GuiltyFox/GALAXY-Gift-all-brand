.class Lic/buzzebeeslib/activity/CampaignDetailAdActivity$16;
.super Ljava/lang/Object;
.source "CampaignDetailAdActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->updateItemView(Lic/buzzebeeslib/control/download/DownloadRequest;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

.field private final synthetic val$request:Lic/buzzebeeslib/control/download/DownloadRequest;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;Lic/buzzebeeslib/control/download/DownloadRequest;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$16;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    iput-object p2, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$16;->val$request:Lic/buzzebeeslib/control/download/DownloadRequest;

    .line 1385
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lic/buzzebeeslib/activity/CampaignDetailAdActivity$16;)Lic/buzzebeeslib/activity/CampaignDetailAdActivity;
    .registers 2

    .prologue
    .line 1385
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$16;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 11
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v8, 0x0

    .line 1388
    iget-object v5, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$16;->val$request:Lic/buzzebeeslib/control/download/DownloadRequest;

    invoke-virtual {v5}, Lic/buzzebeeslib/control/download/DownloadRequest;->getDownloadStatus()Ljava/lang/String;

    move-result-object v5

    const-string v6, "status_start"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_39

    .line 1389
    iget-object v5, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$16;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->TAG:Ljava/lang/String;
    invoke-static {v5}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->access$3(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "onClick pause status = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$16;->val$request:Lic/buzzebeeslib/control/download/DownloadRequest;

    invoke-virtual {v7}, Lic/buzzebeeslib/control/download/DownloadRequest;->getDownloadStatus()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1390
    iget-object v5, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$16;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->mDownloadManager:Lic/buzzebeeslib/control/download/DownloadManager;
    invoke-static {v5}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->access$26(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;)Lic/buzzebeeslib/control/download/DownloadManager;

    move-result-object v5

    iget-object v6, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$16;->val$request:Lic/buzzebeeslib/control/download/DownloadRequest;

    invoke-virtual {v5, v6}, Lic/buzzebeeslib/control/download/DownloadManager;->pause(Lic/buzzebeeslib/control/download/DownloadRequest;)V

    .line 1425
    :cond_38
    :goto_38
    return-void

    .line 1391
    :cond_39
    iget-object v5, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$16;->val$request:Lic/buzzebeeslib/control/download/DownloadRequest;

    invoke-virtual {v5}, Lic/buzzebeeslib/control/download/DownloadRequest;->getDownloadStatus()Ljava/lang/String;

    move-result-object v5

    const-string v6, "status_complete"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_38

    .line 1392
    iget-object v5, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$16;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->TAG:Ljava/lang/String;
    invoke-static {v5}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->access$3(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "onClick enqueue status = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$16;->val$request:Lic/buzzebeeslib/control/download/DownloadRequest;

    invoke-virtual {v7}, Lic/buzzebeeslib/control/download/DownloadRequest;->getDownloadStatus()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1393
    iget-object v5, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$16;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->cd:Lic/buzzebeeslib/util/ConnectionDetector;
    invoke-static {v5}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->access$20(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;)Lic/buzzebeeslib/util/ConnectionDetector;

    move-result-object v5

    invoke-virtual {v5}, Lic/buzzebeeslib/util/ConnectionDetector;->isConnectingToInternet()Z

    move-result v5

    if-eqz v5, :cond_107

    .line 1394
    iget-object v5, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$16;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;
    invoke-static {v5}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->access$7(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;)Lic/buzzebeeslib/bean/Campaign;

    move-result-object v5

    iget-object v5, v5, Lic/buzzebeeslib/bean/Campaign;->campaignExtra:Lic/buzzebeeslib/bean/CampaignExtra;

    iget-object v5, v5, Lic/buzzebeeslib/bean/CampaignExtra;->campaignExtraAd:Lic/buzzebeeslib/bean/CampaignExtraAd;

    iget-object v5, v5, Lic/buzzebeeslib/bean/CampaignExtraAd;->ArrayCampaignExtraAdItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lic/buzzebeeslib/bean/CampaignExtraAdItem;

    iget-object v5, v5, Lic/buzzebeeslib/bean/CampaignExtraAdItem;->Size:Ljava/lang/String;

    invoke-static {v5}, Lic/buzzebeeslib/util/BBUtil;->CTypeLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 1395
    .local v2, "lgFileSize":J
    iget-object v5, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$16;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    const-string v6, "wifi"

    invoke-virtual {v5, v6}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiManager;

    .line 1396
    .local v4, "wManager":Landroid/net/wifi/WifiManager;
    const-wide/32 v5, 0xa00000

    cmp-long v5, v2, v5

    if-lez v5, :cond_e9

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v5

    if-nez v5, :cond_e9

    .line 1397
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$16;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    invoke-direct {v1, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1398
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v5, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$16;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    sget v6, Lic/buzzebeeslib/R$string;->dialog_message_alert_wifi:I

    invoke-virtual {v5, v6}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    iget-object v6, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$16;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    sget v7, Lic/buzzebeeslib/R$string;->yes:I

    invoke-virtual {v6, v7}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$16$1;

    iget-object v8, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$16;->val$request:Lic/buzzebeeslib/control/download/DownloadRequest;

    invoke-direct {v7, p0, v4, v8}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$16$1;-><init>(Lic/buzzebeeslib/activity/CampaignDetailAdActivity$16;Landroid/net/wifi/WifiManager;Lic/buzzebeeslib/control/download/DownloadRequest;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 1406
    iget-object v6, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$16;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    sget v7, Lic/buzzebeeslib/R$string;->no:I

    invoke-virtual {v6, v7}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$16$2;

    iget-object v8, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$16;->val$request:Lic/buzzebeeslib/control/download/DownloadRequest;

    invoke-direct {v7, p0, v8}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$16$2;-><init>(Lic/buzzebeeslib/activity/CampaignDetailAdActivity$16;Lic/buzzebeeslib/control/download/DownloadRequest;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1415
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1416
    .local v0, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_38

    .line 1418
    .end local v0    # "alert":Landroid/app/AlertDialog;
    .end local v1    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_e9
    iget-object v5, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$16;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->mDownloadManager:Lic/buzzebeeslib/control/download/DownloadManager;
    invoke-static {v5}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->access$26(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;)Lic/buzzebeeslib/control/download/DownloadManager;

    move-result-object v5

    iget-object v6, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$16;->val$request:Lic/buzzebeeslib/control/download/DownloadRequest;

    invoke-virtual {v5, v6}, Lic/buzzebeeslib/control/download/DownloadManager;->enqueue(Lic/buzzebeeslib/control/download/DownloadRequest;)V

    .line 1419
    iget-object v5, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$16;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->btnWatchLoad:Landroid/widget/Button;
    invoke-static {v5}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->access$0(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;)Landroid/widget/Button;

    move-result-object v5

    iget-object v6, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$16;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    sget v7, Lic/buzzebeeslib/R$string;->campaign_detail_ad_download_watch_ad:I

    invoke-virtual {v6, v7}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_38

    .line 1422
    .end local v2    # "lgFileSize":J
    .end local v4    # "wManager":Landroid/net/wifi/WifiManager;
    :cond_107
    iget-object v5, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$16;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    iget-object v6, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$16;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    sget v7, Lic/buzzebeeslib/R$string;->message_error_connection:I

    invoke-virtual {v6, v7}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    # invokes: Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->showToast(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->access$5(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;Ljava/lang/String;)V

    goto/16 :goto_38
.end method
