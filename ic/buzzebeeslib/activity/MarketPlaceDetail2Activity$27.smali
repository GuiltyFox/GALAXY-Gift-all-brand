.class Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$27;
.super Landroid/os/Handler;
.source "MarketPlaceDetail2Activity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->doWatchAdd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

.field private final synthetic val$lgFileSize:J


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;J)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$27;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    iput-wide p2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$27;->val$lgFileSize:J

    .line 3600
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 3602
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 3603
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$27;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->_fileLoader:Lic/buzzebeeslib/util/AsyncFileLoader;
    invoke-static {v1}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$61(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)Lic/buzzebeeslib/util/AsyncFileLoader;

    move-result-object v1

    invoke-virtual {v1}, Lic/buzzebeeslib/util/AsyncFileLoader;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 3604
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$27;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->_progressDialogDownload:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$62(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 3605
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$27;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$1(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "load canceled | msg "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lic/buzzebeeslib/util/LogUtil;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 3627
    :goto_30
    return-void

    .line 3606
    :cond_31
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$27;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->_fileLoader:Lic/buzzebeeslib/util/AsyncFileLoader;
    invoke-static {v1}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$61(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)Lic/buzzebeeslib/util/AsyncFileLoader;

    move-result-object v1

    invoke-virtual {v1}, Lic/buzzebeeslib/util/AsyncFileLoader;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    sget-object v2, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-ne v1, v2, :cond_d0

    .line 3607
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$27;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->_progressDialogDownload:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$62(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 3608
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$27;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    # invokes: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getOutputFile()Ljava/io/File;
    invoke-static {v1}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$63(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_c3

    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$27;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    # invokes: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getOutputFile()Ljava/io/File;
    invoke-static {v1}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$63(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_c3

    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$27;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    # invokes: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getOutputFile()Ljava/io/File;
    invoke-static {v1}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$63(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    iget-wide v4, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$27;->val$lgFileSize:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_c3

    .line 3609
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$27;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$27;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;
    invoke-static {v2}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$3(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)Lic/buzzebeeslib/bean/Campaign;

    move-result-object v2

    iget-object v2, v2, Lic/buzzebeeslib/bean/Campaign;->ID:Ljava/lang/String;

    invoke-static {v2}, Lic/buzzebeeslib/util/BBUtil;->CTypeInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    # invokes: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getCampaign(I)V
    invoke-static {v1, v2}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$15(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;I)V

    .line 3610
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$27;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    invoke-virtual {v1}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3611
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$27;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;
    invoke-static {v1}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$3(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)Lic/buzzebeeslib/bean/Campaign;

    move-result-object v1

    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$27;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    # invokes: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getPathOutputFile()Ljava/lang/String;
    invoke-static {v2}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$64(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lic/buzzebeeslib/bean/Campaign;->campaignExtra_video_download_uri:Ljava/lang/String;

    .line 3614
    const-string v1, "campaign"

    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$27;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;
    invoke-static {v2}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$3(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)Lic/buzzebeeslib/bean/Campaign;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 3615
    const-string v1, "IsConditionPass"

    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$27;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;
    invoke-static {v2}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$3(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)Lic/buzzebeeslib/bean/Campaign;

    move-result-object v2

    iget-boolean v2, v2, Lic/buzzebeeslib/bean/Campaign;->IsConditionPass:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3616
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$27;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    invoke-virtual {v1, v0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_30

    .line 3618
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_c3
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$27;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    # invokes: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->cancelLoad()V
    invoke-static {v1}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$65(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)V

    .line 3619
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$27;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->showDialog(I)V

    goto/16 :goto_30

    .line 3624
    :cond_d0
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$27;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->_progressDialogDownload:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$62(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)Landroid/app/ProgressDialog;

    move-result-object v1

    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$27;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->_fileLoader:Lic/buzzebeeslib/util/AsyncFileLoader;
    invoke-static {v2}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$61(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)Lic/buzzebeeslib/util/AsyncFileLoader;

    move-result-object v2

    invoke-virtual {v2}, Lic/buzzebeeslib/util/AsyncFileLoader;->getLoadedBytePercent()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 3625
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$27;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->_progressHandler:Landroid/os/Handler;
    invoke-static {v1}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$66(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x0

    const-wide/16 v4, 0x64

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_30
.end method
