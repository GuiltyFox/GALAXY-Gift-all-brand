.class Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$28;
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


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$28;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    .line 3658
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 11
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v8, 0x0

    .line 3660
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 3661
    iget-object v5, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$28;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->_fileLoader:Lic/buzzebeeslib/util/AsyncFileLoader;
    invoke-static {v5}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$61(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)Lic/buzzebeeslib/util/AsyncFileLoader;

    move-result-object v5

    invoke-virtual {v5}, Lic/buzzebeeslib/util/AsyncFileLoader;->isCancelled()Z

    move-result v5

    if-eqz v5, :cond_32

    .line 3662
    iget-object v5, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$28;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->_progressDialogDownload:Landroid/app/ProgressDialog;
    invoke-static {v5}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$62(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)Landroid/app/ProgressDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->dismiss()V

    .line 3663
    iget-object v5, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$28;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->TAG:Ljava/lang/String;
    invoke-static {v5}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$1(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "load canceled | msg "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lic/buzzebeeslib/util/LogUtil;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 3706
    :cond_31
    :goto_31
    return-void

    .line 3664
    :cond_32
    iget-object v5, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$28;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->_fileLoader:Lic/buzzebeeslib/util/AsyncFileLoader;
    invoke-static {v5}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$61(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)Lic/buzzebeeslib/util/AsyncFileLoader;

    move-result-object v5

    invoke-virtual {v5}, Lic/buzzebeeslib/util/AsyncFileLoader;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v5

    sget-object v6, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-ne v5, v6, :cond_140

    .line 3668
    iget-object v5, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$28;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;
    invoke-static {v5}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$3(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)Lic/buzzebeeslib/bean/Campaign;

    move-result-object v5

    iget-object v5, v5, Lic/buzzebeeslib/bean/Campaign;->campaignExtra:Lic/buzzebeeslib/bean/CampaignExtra;

    iget-object v5, v5, Lic/buzzebeeslib/bean/CampaignExtra;->campaignExtraAd:Lic/buzzebeeslib/bean/CampaignExtraAd;

    iget-object v5, v5, Lic/buzzebeeslib/bean/CampaignExtraAd;->ArrayCampaignExtraAdItems:Ljava/util/ArrayList;

    iget-object v6, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$28;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gCurrentDownloadImageIndex:I
    invoke-static {v6}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$67(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lic/buzzebeeslib/bean/CampaignExtraAdItem;

    iget-object v3, v5, Lic/buzzebeeslib/bean/CampaignExtraAdItem;->Src:Ljava/lang/String;

    .line 3669
    .local v3, "strSrc":Ljava/lang/String;
    iget-object v5, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$28;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    # invokes: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getOutputFilePIC(Ljava/lang/String;)Ljava/io/File;
    invoke-static {v5, v3}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$68(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lic/buzzebeeslib/util/image/Utils;->showImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3670
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v5, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$28;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;
    invoke-static {v5}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$16(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)Lcom/bitmapfun/util/ImageFetcher;

    move-result-object v5

    invoke-virtual {v5, v3, v0}, Lcom/bitmapfun/util/ImageFetcher;->addBitmapToCacheByHack(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 3672
    iget-object v5, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$28;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    # invokes: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->IsAllLoadFromCache()Z
    invoke-static {v5}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$69(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)Z

    move-result v5

    if-eqz v5, :cond_cf

    iget-object v5, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$28;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gIsShow:Z
    invoke-static {v5}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$70(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)Z

    move-result v5

    if-nez v5, :cond_cf

    .line 3674
    iget-object v5, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$28;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$71(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;Z)V

    .line 3676
    iget-object v5, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$28;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->TAG:Ljava/lang/String;
    invoke-static {v5}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$1(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "CampaignDetailAdBuzzActivity"

    invoke-static {v5, v6}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 3678
    iget-object v5, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$28;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->_progressDialogDownload:Landroid/app/ProgressDialog;
    invoke-static {v5}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$62(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)Landroid/app/ProgressDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->dismiss()V

    .line 3679
    iget-object v5, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$28;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    iget-object v6, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$28;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;
    invoke-static {v6}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$3(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)Lic/buzzebeeslib/bean/Campaign;

    move-result-object v6

    iget-object v6, v6, Lic/buzzebeeslib/bean/Campaign;->ID:Ljava/lang/String;

    invoke-static {v6}, Lic/buzzebeeslib/util/BBUtil;->CTypeInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    # invokes: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getCampaign(I)V
    invoke-static {v5, v6}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$15(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;I)V

    .line 3680
    new-instance v2, Landroid/content/Intent;

    iget-object v5, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$28;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    invoke-virtual {v5}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-class v6, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;

    invoke-direct {v2, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3681
    .local v2, "intent":Landroid/content/Intent;
    const-string v5, "campaign"

    iget-object v6, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$28;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;
    invoke-static {v6}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$3(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)Lic/buzzebeeslib/bean/Campaign;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 3682
    iget-object v5, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$28;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    invoke-virtual {v5, v2}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_31

    .line 3684
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_cf
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_d0
    iget-object v5, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$28;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;
    invoke-static {v5}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$3(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)Lic/buzzebeeslib/bean/Campaign;

    move-result-object v5

    iget-object v5, v5, Lic/buzzebeeslib/bean/Campaign;->campaignExtra:Lic/buzzebeeslib/bean/CampaignExtra;

    iget-object v5, v5, Lic/buzzebeeslib/bean/CampaignExtra;->campaignExtraAd:Lic/buzzebeeslib/bean/CampaignExtraAd;

    iget-object v5, v5, Lic/buzzebeeslib/bean/CampaignExtraAd;->ArrayCampaignExtraAdItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_31

    .line 3685
    iget-object v5, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$28;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;
    invoke-static {v5}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$3(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)Lic/buzzebeeslib/bean/Campaign;

    move-result-object v5

    iget-object v5, v5, Lic/buzzebeeslib/bean/Campaign;->campaignExtra:Lic/buzzebeeslib/bean/CampaignExtra;

    iget-object v5, v5, Lic/buzzebeeslib/bean/CampaignExtra;->campaignExtraAd:Lic/buzzebeeslib/bean/CampaignExtraAd;

    iget-object v5, v5, Lic/buzzebeeslib/bean/CampaignExtraAd;->ArrayCampaignExtraAdItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lic/buzzebeeslib/bean/CampaignExtraAdItem;

    iget-object v4, v5, Lic/buzzebeeslib/bean/CampaignExtraAdItem;->Src:Ljava/lang/String;

    .line 3686
    .local v4, "strUrl":Ljava/lang/String;
    iget-object v5, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$28;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;
    invoke-static {v5}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$16(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)Lcom/bitmapfun/util/ImageFetcher;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/bitmapfun/util/ImageFetcher;->isHasBitmapFromDiskCache(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_12f

    .line 3689
    iget-object v5, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$28;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->cd:Lic/buzzebeeslib/util/ConnectionDetector;
    invoke-static {v5}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$72(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)Lic/buzzebeeslib/util/ConnectionDetector;

    move-result-object v5

    invoke-virtual {v5}, Lic/buzzebeeslib/util/ConnectionDetector;->isConnectingToInternet()Z

    move-result v5

    if-eqz v5, :cond_132

    .line 3690
    iget-object v5, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$28;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    invoke-static {v5, v1}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$73(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;I)V

    .line 3691
    iget-object v5, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$28;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    # invokes: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->initFileLoaderPIC(Ljava/lang/String;)V
    invoke-static {v5, v4}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$74(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;Ljava/lang/String;)V

    .line 3692
    iget-object v5, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$28;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    invoke-virtual {v5, v8}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->showDialog(I)V

    .line 3693
    iget-object v5, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$28;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->_progressDialogDownload:Landroid/app/ProgressDialog;
    invoke-static {v5}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$62(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)Landroid/app/ProgressDialog;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 3694
    iget-object v5, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$28;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->_progressHandler:Landroid/os/Handler;
    invoke-static {v5}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$66(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3684
    :cond_12f
    :goto_12f
    add-int/lit8 v1, v1, 0x1

    goto :goto_d0

    .line 3696
    :cond_132
    iget-object v5, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$28;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    iget-object v6, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$28;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    sget v7, Lic/buzzebeeslib/R$string;->message_error_connection:I

    invoke-virtual {v6, v7}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    # invokes: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->showToast(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$8(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;Ljava/lang/String;)V

    goto :goto_12f

    .line 3703
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "i":I
    .end local v3    # "strSrc":Ljava/lang/String;
    .end local v4    # "strUrl":Ljava/lang/String;
    :cond_140
    iget-object v5, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$28;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->_progressDialogDownload:Landroid/app/ProgressDialog;
    invoke-static {v5}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$62(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)Landroid/app/ProgressDialog;

    move-result-object v5

    iget-object v6, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$28;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->_fileLoader:Lic/buzzebeeslib/util/AsyncFileLoader;
    invoke-static {v6}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$61(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)Lic/buzzebeeslib/util/AsyncFileLoader;

    move-result-object v6

    invoke-virtual {v6}, Lic/buzzebeeslib/util/AsyncFileLoader;->getLoadedBytePercent()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 3704
    iget-object v5, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$28;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->_progressHandler:Landroid/os/Handler;
    invoke-static {v5}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$66(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)Landroid/os/Handler;

    move-result-object v5

    const-wide/16 v6, 0x64

    invoke-virtual {v5, v8, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_31
.end method
