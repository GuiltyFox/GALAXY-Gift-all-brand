.class Lic/buzzebeeslib/activity/CampaignDetailAdActivity$8;
.super Landroid/os/Handler;
.source "CampaignDetailAdActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->doWatchAdd(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$8;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    .line 711
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lic/buzzebeeslib/activity/CampaignDetailAdActivity$8;)Lic/buzzebeeslib/activity/CampaignDetailAdActivity;
    .registers 2

    .prologue
    .line 711
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$8;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 13
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v10, 0x0

    .line 713
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 714
    iget-object v7, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$8;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->_fileLoader:Lic/buzzebeeslib/util/AsyncFileLoader;
    invoke-static {v7}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->access$12(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;)Lic/buzzebeeslib/util/AsyncFileLoader;

    move-result-object v7

    invoke-virtual {v7}, Lic/buzzebeeslib/util/AsyncFileLoader;->isCancelled()Z

    move-result v7

    if-eqz v7, :cond_2e

    .line 715
    iget-object v7, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$8;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->_progressDialogDownload:Landroid/app/ProgressDialog;
    invoke-static {v7}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->access$13(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;)Landroid/app/ProgressDialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/ProgressDialog;->dismiss()V

    .line 716
    const-string v7, "campaign.ad"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "load canceled | msg "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lic/buzzebeeslib/util/LogUtil;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 811
    :cond_2d
    :goto_2d
    return-void

    .line 717
    :cond_2e
    iget-object v7, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$8;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->_fileLoader:Lic/buzzebeeslib/util/AsyncFileLoader;
    invoke-static {v7}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->access$12(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;)Lic/buzzebeeslib/util/AsyncFileLoader;

    move-result-object v7

    invoke-virtual {v7}, Lic/buzzebeeslib/util/AsyncFileLoader;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v7

    sget-object v8, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-ne v7, v8, :cond_207

    .line 721
    iget-object v7, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$8;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;
    invoke-static {v7}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->access$7(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;)Lic/buzzebeeslib/bean/Campaign;

    move-result-object v7

    iget-object v7, v7, Lic/buzzebeeslib/bean/Campaign;->campaignExtra:Lic/buzzebeeslib/bean/CampaignExtra;

    iget-object v7, v7, Lic/buzzebeeslib/bean/CampaignExtra;->campaignExtraAd:Lic/buzzebeeslib/bean/CampaignExtraAd;

    iget-object v7, v7, Lic/buzzebeeslib/bean/CampaignExtraAd;->ArrayCampaignExtraAdItems:Ljava/util/ArrayList;

    iget-object v8, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$8;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->gCurrentDownloadImageIndex:I
    invoke-static {v8}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->access$14(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lic/buzzebeeslib/bean/CampaignExtraAdItem;

    iget-object v5, v7, Lic/buzzebeeslib/bean/CampaignExtraAdItem;->Src:Ljava/lang/String;

    .line 722
    .local v5, "strSrc":Ljava/lang/String;
    iget-object v7, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$8;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    # invokes: Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->getOutputFilePIC(Ljava/lang/String;)Ljava/io/File;
    invoke-static {v7, v5}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->access$15(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lic/buzzebeeslib/util/image/Utils;->showImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 723
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    iget-object v7, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$8;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;
    invoke-static {v7}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->access$16(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;)Lcom/bitmapfun/util/ImageFetcher;

    move-result-object v7

    invoke-virtual {v7, v5, v1}, Lcom/bitmapfun/util/ImageFetcher;->addBitmapToCacheByHack(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 725
    iget-object v7, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$8;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    # invokes: Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->IsAllLoadFromCache()Z
    invoke-static {v7}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->access$17(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;)Z

    move-result v7

    if-eqz v7, :cond_196

    iget-object v7, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$8;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->gIsShow:Z
    invoke-static {v7}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->access$18(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;)Z

    move-result v7

    if-nez v7, :cond_196

    .line 727
    iget-object v7, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$8;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    const/4 v8, 0x1

    invoke-static {v7, v8}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->access$19(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;Z)V

    .line 729
    iget-object v7, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$8;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->TAG:Ljava/lang/String;
    invoke-static {v7}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->access$3(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "CampaignDetailAdBuzzActivity"

    invoke-static {v7, v8}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 731
    iget-object v7, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$8;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->_progressDialogDownload:Landroid/app/ProgressDialog;
    invoke-static {v7}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->access$13(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;)Landroid/app/ProgressDialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/ProgressDialog;->dismiss()V

    .line 733
    iget-object v7, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$8;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;
    invoke-static {v7}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->access$7(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;)Lic/buzzebeeslib/bean/Campaign;

    move-result-object v7

    iget-object v7, v7, Lic/buzzebeeslib/bean/Campaign;->Delivered:Ljava/lang/String;

    invoke-static {v7}, Lic/buzzebeeslib/util/BBUtil;->CtypeBoolean(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_177

    .line 734
    iget-object v7, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$8;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    invoke-virtual {v7}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lic/buzzebeeslib/LibUserLogin;->GetFirstName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_10b

    iget-object v7, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$8;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    invoke-virtual {v7}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lic/buzzebeeslib/LibUserLogin;->GetFirstName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_10b

    iget-object v7, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$8;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    invoke-virtual {v7}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lic/buzzebeeslib/LibUserLogin;->GetLastName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_10b

    iget-object v7, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$8;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    invoke-virtual {v7}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lic/buzzebeeslib/LibUserLogin;->GetLastName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_10b

    iget-object v7, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$8;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    invoke-virtual {v7}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lic/buzzebeeslib/LibUserLogin;->GetAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_10b

    iget-object v7, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$8;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    invoke-virtual {v7}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lic/buzzebeeslib/LibUserLogin;->GetAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_158

    .line 735
    :cond_10b
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$8;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    invoke-direct {v2, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 736
    .local v2, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v7, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$8;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    sget v8, Lic/buzzebeeslib/R$string;->dialog_title_address:I

    invoke-virtual {v7, v8}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    iget-object v8, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$8;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    sget v9, Lic/buzzebeeslib/R$string;->dialog_msg_address:I

    invoke-virtual {v8, v9}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    iget-object v8, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$8;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    sget v9, Lic/buzzebeeslib/R$string;->yes:I

    invoke-virtual {v8, v9}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$8$1;

    invoke-direct {v9, p0}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$8$1;-><init>(Lic/buzzebeeslib/activity/CampaignDetailAdActivity$8;)V

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    .line 742
    iget-object v8, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$8;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    sget v9, Lic/buzzebeeslib/R$string;->no:I

    invoke-virtual {v8, v9}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$8$2;

    invoke-direct {v9, p0}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$8$2;-><init>(Lic/buzzebeeslib/activity/CampaignDetailAdActivity$8;)V

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 747
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 748
    .local v0, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_2d

    .line 750
    .end local v0    # "alert":Landroid/app/AlertDialog;
    .end local v2    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_158
    new-instance v4, Landroid/content/Intent;

    iget-object v7, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$8;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    invoke-virtual {v7}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const-class v8, Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    invoke-direct {v4, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 751
    .local v4, "intent":Landroid/content/Intent;
    const-string v7, "campaign"

    iget-object v8, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$8;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;
    invoke-static {v8}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->access$7(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;)Lic/buzzebeeslib/bean/Campaign;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 752
    iget-object v7, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$8;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    invoke-virtual {v7, v4}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_2d

    .line 755
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_177
    new-instance v4, Landroid/content/Intent;

    iget-object v7, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$8;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    invoke-virtual {v7}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const-class v8, Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    invoke-direct {v4, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 756
    .restart local v4    # "intent":Landroid/content/Intent;
    const-string v7, "campaign"

    iget-object v8, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$8;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;
    invoke-static {v8}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->access$7(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;)Lic/buzzebeeslib/bean/Campaign;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 757
    iget-object v7, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$8;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    invoke-virtual {v7, v4}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_2d

    .line 760
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_196
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_197
    iget-object v7, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$8;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;
    invoke-static {v7}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->access$7(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;)Lic/buzzebeeslib/bean/Campaign;

    move-result-object v7

    iget-object v7, v7, Lic/buzzebeeslib/bean/Campaign;->campaignExtra:Lic/buzzebeeslib/bean/CampaignExtra;

    iget-object v7, v7, Lic/buzzebeeslib/bean/CampaignExtra;->campaignExtraAd:Lic/buzzebeeslib/bean/CampaignExtraAd;

    iget-object v7, v7, Lic/buzzebeeslib/bean/CampaignExtraAd;->ArrayCampaignExtraAdItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v3, v7, :cond_2d

    .line 761
    iget-object v7, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$8;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;
    invoke-static {v7}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->access$7(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;)Lic/buzzebeeslib/bean/Campaign;

    move-result-object v7

    iget-object v7, v7, Lic/buzzebeeslib/bean/Campaign;->campaignExtra:Lic/buzzebeeslib/bean/CampaignExtra;

    iget-object v7, v7, Lic/buzzebeeslib/bean/CampaignExtra;->campaignExtraAd:Lic/buzzebeeslib/bean/CampaignExtraAd;

    iget-object v7, v7, Lic/buzzebeeslib/bean/CampaignExtraAd;->ArrayCampaignExtraAdItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lic/buzzebeeslib/bean/CampaignExtraAdItem;

    iget-object v6, v7, Lic/buzzebeeslib/bean/CampaignExtraAdItem;->Src:Ljava/lang/String;

    .line 762
    .local v6, "strUrl":Ljava/lang/String;
    iget-object v7, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$8;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;
    invoke-static {v7}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->access$16(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;)Lcom/bitmapfun/util/ImageFetcher;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/bitmapfun/util/ImageFetcher;->isHasBitmapFromDiskCache(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1f6

    .line 765
    iget-object v7, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$8;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->cd:Lic/buzzebeeslib/util/ConnectionDetector;
    invoke-static {v7}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->access$20(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;)Lic/buzzebeeslib/util/ConnectionDetector;

    move-result-object v7

    invoke-virtual {v7}, Lic/buzzebeeslib/util/ConnectionDetector;->isConnectingToInternet()Z

    move-result v7

    if-eqz v7, :cond_1f9

    .line 766
    iget-object v7, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$8;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    invoke-static {v7, v3}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->access$21(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;I)V

    .line 767
    iget-object v7, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$8;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    # invokes: Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->initFileLoaderPIC(Ljava/lang/String;)V
    invoke-static {v7, v6}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->access$22(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;Ljava/lang/String;)V

    .line 768
    iget-object v7, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$8;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    invoke-virtual {v7, v10}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->showDialog(I)V

    .line 769
    iget-object v7, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$8;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->_progressDialogDownload:Landroid/app/ProgressDialog;
    invoke-static {v7}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->access$13(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;)Landroid/app/ProgressDialog;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 770
    iget-object v7, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$8;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->_progressHandler:Landroid/os/Handler;
    invoke-static {v7}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->access$23(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;)Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 760
    :cond_1f6
    :goto_1f6
    add-int/lit8 v3, v3, 0x1

    goto :goto_197

    .line 772
    :cond_1f9
    iget-object v7, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$8;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    iget-object v8, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$8;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    sget v9, Lic/buzzebeeslib/R$string;->message_error_connection:I

    invoke-virtual {v8, v9}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    # invokes: Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->showToast(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->access$5(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;Ljava/lang/String;)V

    goto :goto_1f6

    .line 808
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .end local v3    # "i":I
    .end local v5    # "strSrc":Ljava/lang/String;
    .end local v6    # "strUrl":Ljava/lang/String;
    :cond_207
    iget-object v7, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$8;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->_progressDialogDownload:Landroid/app/ProgressDialog;
    invoke-static {v7}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->access$13(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;)Landroid/app/ProgressDialog;

    move-result-object v7

    iget-object v8, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$8;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->_fileLoader:Lic/buzzebeeslib/util/AsyncFileLoader;
    invoke-static {v8}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->access$12(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;)Lic/buzzebeeslib/util/AsyncFileLoader;

    move-result-object v8

    invoke-virtual {v8}, Lic/buzzebeeslib/util/AsyncFileLoader;->getLoadedBytePercent()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 809
    iget-object v7, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$8;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->_progressHandler:Landroid/os/Handler;
    invoke-static {v7}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->access$23(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;)Landroid/os/Handler;

    move-result-object v7

    const-wide/16 v8, 0x64

    invoke-virtual {v7, v10, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_2d
.end method
