.class Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$33;
.super Landroid/os/Handler;
.source "MarketPlaceDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->doWatchAdd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

.field private final synthetic val$lgFileSize:J


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;J)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$33;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    iput-wide p2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$33;->val$lgFileSize:J

    .line 4653
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 4655
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 4656
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$33;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->_fileLoader:Lic/buzzebeeslib/util/AsyncFileLoader;
    invoke-static {v1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$83(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)Lic/buzzebeeslib/util/AsyncFileLoader;

    move-result-object v1

    invoke-virtual {v1}, Lic/buzzebeeslib/util/AsyncFileLoader;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 4657
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$33;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->_progressDialogDownload:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$84(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 4658
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$33;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$0(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "load canceled | msg "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lic/buzzebeeslib/util/LogUtil;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 4680
    :goto_30
    return-void

    .line 4659
    :cond_31
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$33;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->_fileLoader:Lic/buzzebeeslib/util/AsyncFileLoader;
    invoke-static {v1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$83(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)Lic/buzzebeeslib/util/AsyncFileLoader;

    move-result-object v1

    invoke-virtual {v1}, Lic/buzzebeeslib/util/AsyncFileLoader;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    sget-object v2, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-ne v1, v2, :cond_d0

    .line 4660
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$33;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->_progressDialogDownload:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$84(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 4661
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$33;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    # invokes: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getOutputFile()Ljava/io/File;
    invoke-static {v1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$85(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_c3

    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$33;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    # invokes: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getOutputFile()Ljava/io/File;
    invoke-static {v1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$85(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_c3

    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$33;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    # invokes: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getOutputFile()Ljava/io/File;
    invoke-static {v1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$85(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    iget-wide v3, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$33;->val$lgFileSize:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_c3

    .line 4662
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$33;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$33;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;
    invoke-static {v2}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$2(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)Lic/buzzebeeslib/bean/Campaign;

    move-result-object v2

    iget-object v2, v2, Lic/buzzebeeslib/bean/Campaign;->ID:Ljava/lang/String;

    invoke-static {v2}, Lic/buzzebeeslib/util/BBUtil;->CTypeInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    # invokes: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getCampaign(I)V
    invoke-static {v1, v2}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$15(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;I)V

    .line 4663
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$33;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    invoke-virtual {v1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4664
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$33;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;
    invoke-static {v1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$2(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)Lic/buzzebeeslib/bean/Campaign;

    move-result-object v1

    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$33;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    # invokes: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getPathOutputFile()Ljava/lang/String;
    invoke-static {v2}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$86(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lic/buzzebeeslib/bean/Campaign;->campaignExtra_video_download_uri:Ljava/lang/String;

    .line 4667
    const-string v1, "campaign"

    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$33;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;
    invoke-static {v2}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$2(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)Lic/buzzebeeslib/bean/Campaign;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 4668
    const-string v1, "IsConditionPass"

    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$33;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;
    invoke-static {v2}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$2(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)Lic/buzzebeeslib/bean/Campaign;

    move-result-object v2

    iget-boolean v2, v2, Lic/buzzebeeslib/bean/Campaign;->IsConditionPass:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4669
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$33;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    invoke-virtual {v1, v0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_30

    .line 4671
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_c3
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$33;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    # invokes: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->cancelLoad()V
    invoke-static {v1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$87(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)V

    .line 4672
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$33;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->showDialog(I)V

    goto/16 :goto_30

    .line 4677
    :cond_d0
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$33;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->_progressDialogDownload:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$84(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$33;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->_fileLoader:Lic/buzzebeeslib/util/AsyncFileLoader;
    invoke-static {v2}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$83(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)Lic/buzzebeeslib/util/AsyncFileLoader;

    move-result-object v2

    invoke-virtual {v2}, Lic/buzzebeeslib/util/AsyncFileLoader;->getLoadedBytePercent()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 4678
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$33;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->_progressHandler:Landroid/os/Handler;
    invoke-static {v1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$88(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x0

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_30
.end method
