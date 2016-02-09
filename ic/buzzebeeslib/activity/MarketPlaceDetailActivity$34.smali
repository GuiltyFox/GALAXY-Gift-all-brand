.class Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$34;
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


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$34;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    .line 4711
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 11
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v8, 0x0

    .line 4713
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 4714
    iget-object v5, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$34;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->_fileLoader:Lic/buzzebeeslib/util/AsyncFileLoader;
    invoke-static {v5}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$83(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)Lic/buzzebeeslib/util/AsyncFileLoader;

    move-result-object v5

    invoke-virtual {v5}, Lic/buzzebeeslib/util/AsyncFileLoader;->isCancelled()Z

    move-result v5

    if-eqz v5, :cond_32

    .line 4715
    iget-object v5, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$34;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->_progressDialogDownload:Landroid/app/ProgressDialog;
    invoke-static {v5}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$84(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)Landroid/app/ProgressDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->dismiss()V

    .line 4716
    iget-object v5, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$34;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->TAG:Ljava/lang/String;
    invoke-static {v5}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$0(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "load canceled | msg "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lic/buzzebeeslib/util/LogUtil;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 4759
    :cond_31
    :goto_31
    return-void

    .line 4717
    :cond_32
    iget-object v5, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$34;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->_fileLoader:Lic/buzzebeeslib/util/AsyncFileLoader;
    invoke-static {v5}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$83(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)Lic/buzzebeeslib/util/AsyncFileLoader;

    move-result-object v5

    invoke-virtual {v5}, Lic/buzzebeeslib/util/AsyncFileLoader;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v5

    sget-object v6, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-ne v5, v6, :cond_140

    .line 4721
    iget-object v5, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$34;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;
    invoke-static {v5}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$2(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)Lic/buzzebeeslib/bean/Campaign;

    move-result-object v5

    iget-object v5, v5, Lic/buzzebeeslib/bean/Campaign;->campaignExtra:Lic/buzzebeeslib/bean/CampaignExtra;

    iget-object v5, v5, Lic/buzzebeeslib/bean/CampaignExtra;->campaignExtraAd:Lic/buzzebeeslib/bean/CampaignExtraAd;

    iget-object v5, v5, Lic/buzzebeeslib/bean/CampaignExtraAd;->ArrayCampaignExtraAdItems:Ljava/util/ArrayList;

    iget-object v6, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$34;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gCurrentDownloadImageIndex:I
    invoke-static {v6}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$89(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lic/buzzebeeslib/bean/CampaignExtraAdItem;

    iget-object v3, v5, Lic/buzzebeeslib/bean/CampaignExtraAdItem;->Src:Ljava/lang/String;

    .line 4722
    .local v3, "strSrc":Ljava/lang/String;
    iget-object v5, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$34;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    # invokes: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getOutputFilePIC(Ljava/lang/String;)Ljava/io/File;
    invoke-static {v5, v3}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$90(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lic/buzzebeeslib/util/image/Utils;->showImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 4723
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v5, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$34;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;
    invoke-static {v5}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$16(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)Lcom/bitmapfun/util/ImageFetcher;

    move-result-object v5

    invoke-virtual {v5, v3, v0}, Lcom/bitmapfun/util/ImageFetcher;->addBitmapToCacheByHack(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 4725
    iget-object v5, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$34;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    # invokes: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->IsAllLoadFromCache()Z
    invoke-static {v5}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$91(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)Z

    move-result v5

    if-eqz v5, :cond_cf

    iget-object v5, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$34;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gIsShow:Z
    invoke-static {v5}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$92(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)Z

    move-result v5

    if-nez v5, :cond_cf

    .line 4727
    iget-object v5, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$34;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$93(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;Z)V

    .line 4729
    iget-object v5, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$34;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->TAG:Ljava/lang/String;
    invoke-static {v5}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$0(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "CampaignDetailAdBuzzActivity"

    invoke-static {v5, v6}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 4731
    iget-object v5, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$34;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->_progressDialogDownload:Landroid/app/ProgressDialog;
    invoke-static {v5}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$84(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)Landroid/app/ProgressDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->dismiss()V

    .line 4732
    iget-object v5, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$34;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    iget-object v6, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$34;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;
    invoke-static {v6}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$2(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)Lic/buzzebeeslib/bean/Campaign;

    move-result-object v6

    iget-object v6, v6, Lic/buzzebeeslib/bean/Campaign;->ID:Ljava/lang/String;

    invoke-static {v6}, Lic/buzzebeeslib/util/BBUtil;->CTypeInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    # invokes: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getCampaign(I)V
    invoke-static {v5, v6}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$15(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;I)V

    .line 4733
    new-instance v2, Landroid/content/Intent;

    iget-object v5, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$34;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    invoke-virtual {v5}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-class v6, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;

    invoke-direct {v2, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4734
    .local v2, "intent":Landroid/content/Intent;
    const-string v5, "campaign"

    iget-object v6, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$34;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;
    invoke-static {v6}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$2(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)Lic/buzzebeeslib/bean/Campaign;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 4735
    iget-object v5, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$34;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    invoke-virtual {v5, v2}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_31

    .line 4737
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_cf
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_d0
    iget-object v5, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$34;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;
    invoke-static {v5}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$2(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)Lic/buzzebeeslib/bean/Campaign;

    move-result-object v5

    iget-object v5, v5, Lic/buzzebeeslib/bean/Campaign;->campaignExtra:Lic/buzzebeeslib/bean/CampaignExtra;

    iget-object v5, v5, Lic/buzzebeeslib/bean/CampaignExtra;->campaignExtraAd:Lic/buzzebeeslib/bean/CampaignExtraAd;

    iget-object v5, v5, Lic/buzzebeeslib/bean/CampaignExtraAd;->ArrayCampaignExtraAdItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_31

    .line 4738
    iget-object v5, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$34;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;
    invoke-static {v5}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$2(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)Lic/buzzebeeslib/bean/Campaign;

    move-result-object v5

    iget-object v5, v5, Lic/buzzebeeslib/bean/Campaign;->campaignExtra:Lic/buzzebeeslib/bean/CampaignExtra;

    iget-object v5, v5, Lic/buzzebeeslib/bean/CampaignExtra;->campaignExtraAd:Lic/buzzebeeslib/bean/CampaignExtraAd;

    iget-object v5, v5, Lic/buzzebeeslib/bean/CampaignExtraAd;->ArrayCampaignExtraAdItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lic/buzzebeeslib/bean/CampaignExtraAdItem;

    iget-object v4, v5, Lic/buzzebeeslib/bean/CampaignExtraAdItem;->Src:Ljava/lang/String;

    .line 4739
    .local v4, "strUrl":Ljava/lang/String;
    iget-object v5, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$34;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;
    invoke-static {v5}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$16(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)Lcom/bitmapfun/util/ImageFetcher;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/bitmapfun/util/ImageFetcher;->isHasBitmapFromDiskCache(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_12f

    .line 4742
    iget-object v5, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$34;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->cd:Lic/buzzebeeslib/util/ConnectionDetector;
    invoke-static {v5}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$94(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)Lic/buzzebeeslib/util/ConnectionDetector;

    move-result-object v5

    invoke-virtual {v5}, Lic/buzzebeeslib/util/ConnectionDetector;->isConnectingToInternet()Z

    move-result v5

    if-eqz v5, :cond_132

    .line 4743
    iget-object v5, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$34;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    invoke-static {v5, v1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$95(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;I)V

    .line 4744
    iget-object v5, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$34;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    # invokes: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->initFileLoaderPIC(Ljava/lang/String;)V
    invoke-static {v5, v4}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$96(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;Ljava/lang/String;)V

    .line 4745
    iget-object v5, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$34;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    invoke-virtual {v5, v8}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->showDialog(I)V

    .line 4746
    iget-object v5, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$34;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->_progressDialogDownload:Landroid/app/ProgressDialog;
    invoke-static {v5}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$84(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)Landroid/app/ProgressDialog;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 4747
    iget-object v5, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$34;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->_progressHandler:Landroid/os/Handler;
    invoke-static {v5}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$88(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 4737
    :cond_12f
    :goto_12f
    add-int/lit8 v1, v1, 0x1

    goto :goto_d0

    .line 4749
    :cond_132
    iget-object v5, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$34;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    iget-object v6, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$34;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    sget v7, Lic/buzzebeeslib/R$string;->message_error_connection:I

    invoke-virtual {v6, v7}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    # invokes: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->showToast(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$8(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;Ljava/lang/String;)V

    goto :goto_12f

    .line 4756
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "i":I
    .end local v3    # "strSrc":Ljava/lang/String;
    .end local v4    # "strUrl":Ljava/lang/String;
    :cond_140
    iget-object v5, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$34;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->_progressDialogDownload:Landroid/app/ProgressDialog;
    invoke-static {v5}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$84(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)Landroid/app/ProgressDialog;

    move-result-object v5

    iget-object v6, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$34;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->_fileLoader:Lic/buzzebeeslib/util/AsyncFileLoader;
    invoke-static {v6}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$83(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)Lic/buzzebeeslib/util/AsyncFileLoader;

    move-result-object v6

    invoke-virtual {v6}, Lic/buzzebeeslib/util/AsyncFileLoader;->getLoadedBytePercent()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 4757
    iget-object v5, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$34;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->_progressHandler:Landroid/os/Handler;
    invoke-static {v5}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$88(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)Landroid/os/Handler;

    move-result-object v5

    const-wide/16 v6, 0x64

    invoke-virtual {v5, v8, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_31
.end method
