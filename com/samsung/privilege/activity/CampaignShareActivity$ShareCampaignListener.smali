.class Lcom/samsung/privilege/activity/CampaignShareActivity$ShareCampaignListener;
.super Lcom/samsung/privilege/util/http/HttpRQListener;
.source "CampaignShareActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/privilege/activity/CampaignShareActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ShareCampaignListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/CampaignShareActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/CampaignShareActivity;)V
    .registers 2

    .prologue
    .line 257
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignShareActivity$ShareCampaignListener;->this$0:Lcom/samsung/privilege/activity/CampaignShareActivity;

    invoke-direct {p0}, Lcom/samsung/privilege/util/http/HttpRQListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 9
    .param p1, "response_code"    # I
    .param p2, "response_text"    # Ljava/lang/String;
    .param p3, "state"    # Ljava/lang/Object;

    .prologue
    .line 260
    const-string v2, "CampaignShareActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "(PostReviewListener|onComplete)response={"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "}:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    const/16 v2, 0xc8

    if-ne p1, v2, :cond_61

    .line 262
    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignShareActivity$ShareCampaignListener;->this$0:Lcom/samsung/privilege/activity/CampaignShareActivity;

    iget-object v3, p0, Lcom/samsung/privilege/activity/CampaignShareActivity$ShareCampaignListener;->this$0:Lcom/samsung/privilege/activity/CampaignShareActivity;

    const v4, 0x7f0a0105

    invoke-virtual {v3, v4}, Lcom/samsung/privilege/activity/CampaignShareActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/privilege/activity/CampaignShareActivity;->showToast(Ljava/lang/String;)V

    .line 264
    const-string v2, "content://someURI"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 265
    .local v1, "uri":Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 266
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "response_code"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 267
    const-string v2, "response_text"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 268
    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignShareActivity$ShareCampaignListener;->this$0:Lcom/samsung/privilege/activity/CampaignShareActivity;

    const/4 v3, -0x1

    invoke-virtual {v2, v3, v0}, Lcom/samsung/privilege/activity/CampaignShareActivity;->setResult(ILandroid/content/Intent;)V

    .line 270
    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignShareActivity$ShareCampaignListener;->this$0:Lcom/samsung/privilege/activity/CampaignShareActivity;

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/CampaignShareActivity;->finish()V

    .line 275
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "uri":Landroid/net/Uri;
    :goto_51
    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignShareActivity$ShareCampaignListener;->this$0:Lcom/samsung/privilege/activity/CampaignShareActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignShareActivity;->gDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignShareActivity;->access$0(Lcom/samsung/privilege/activity/CampaignShareActivity;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 276
    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignShareActivity$ShareCampaignListener;->this$0:Lcom/samsung/privilege/activity/CampaignShareActivity;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/samsung/privilege/activity/CampaignShareActivity;->access$1(Lcom/samsung/privilege/activity/CampaignShareActivity;Z)V

    .line 277
    return-void

    .line 272
    :cond_61
    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignShareActivity$ShareCampaignListener;->this$0:Lcom/samsung/privilege/activity/CampaignShareActivity;

    iget-object v3, p0, Lcom/samsung/privilege/activity/CampaignShareActivity$ShareCampaignListener;->this$0:Lcom/samsung/privilege/activity/CampaignShareActivity;

    const v4, 0x7f0a00f4

    invoke-virtual {v3, v4}, Lcom/samsung/privilege/activity/CampaignShareActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/privilege/activity/CampaignShareActivity;->showToast(Ljava/lang/String;)V

    goto :goto_51
.end method

.method public onFileNotFoundException(Ljava/io/FileNotFoundException;Ljava/lang/Object;)V
    .registers 6
    .param p1, "e"    # Ljava/io/FileNotFoundException;
    .param p2, "state"    # Ljava/lang/Object;

    .prologue
    .line 281
    invoke-super {p0, p1, p2}, Lcom/samsung/privilege/util/http/HttpRQListener;->onFileNotFoundException(Ljava/io/FileNotFoundException;Ljava/lang/Object;)V

    .line 282
    const-string v0, "CampaignShareActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "(onFileNotFoundException|PostReviewListener):"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignShareActivity$ShareCampaignListener;->this$0:Lcom/samsung/privilege/activity/CampaignShareActivity;

    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignShareActivity$ShareCampaignListener;->this$0:Lcom/samsung/privilege/activity/CampaignShareActivity;

    const v2, 0x7f0a00f4

    invoke-virtual {v1, v2}, Lcom/samsung/privilege/activity/CampaignShareActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignShareActivity;->showToast(Ljava/lang/String;)V

    .line 284
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignShareActivity$ShareCampaignListener;->this$0:Lcom/samsung/privilege/activity/CampaignShareActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignShareActivity;->gDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignShareActivity;->access$0(Lcom/samsung/privilege/activity/CampaignShareActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 285
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignShareActivity$ShareCampaignListener;->this$0:Lcom/samsung/privilege/activity/CampaignShareActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/privilege/activity/CampaignShareActivity;->access$1(Lcom/samsung/privilege/activity/CampaignShareActivity;Z)V

    .line 286
    return-void
.end method

.method public onIOException(Ljava/io/IOException;Ljava/lang/Object;)V
    .registers 6
    .param p1, "e"    # Ljava/io/IOException;
    .param p2, "state"    # Ljava/lang/Object;

    .prologue
    .line 290
    invoke-super {p0, p1, p2}, Lcom/samsung/privilege/util/http/HttpRQListener;->onIOException(Ljava/io/IOException;Ljava/lang/Object;)V

    .line 291
    const-string v0, "CampaignShareActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "(onIOException|PostReviewListener):"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignShareActivity$ShareCampaignListener;->this$0:Lcom/samsung/privilege/activity/CampaignShareActivity;

    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignShareActivity$ShareCampaignListener;->this$0:Lcom/samsung/privilege/activity/CampaignShareActivity;

    const v2, 0x7f0a00f4

    invoke-virtual {v1, v2}, Lcom/samsung/privilege/activity/CampaignShareActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignShareActivity;->showToast(Ljava/lang/String;)V

    .line 293
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignShareActivity$ShareCampaignListener;->this$0:Lcom/samsung/privilege/activity/CampaignShareActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignShareActivity;->gDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignShareActivity;->access$0(Lcom/samsung/privilege/activity/CampaignShareActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 294
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignShareActivity$ShareCampaignListener;->this$0:Lcom/samsung/privilege/activity/CampaignShareActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/privilege/activity/CampaignShareActivity;->access$1(Lcom/samsung/privilege/activity/CampaignShareActivity;Z)V

    .line 295
    return-void
.end method

.method public onMalformedURLException(Ljava/net/MalformedURLException;Ljava/lang/Object;)V
    .registers 6
    .param p1, "e"    # Ljava/net/MalformedURLException;
    .param p2, "state"    # Ljava/lang/Object;

    .prologue
    .line 299
    invoke-super {p0, p1, p2}, Lcom/samsung/privilege/util/http/HttpRQListener;->onMalformedURLException(Ljava/net/MalformedURLException;Ljava/lang/Object;)V

    .line 300
    const-string v0, "CampaignShareActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "(onMalformedURLException|PostReviewListener):"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignShareActivity$ShareCampaignListener;->this$0:Lcom/samsung/privilege/activity/CampaignShareActivity;

    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignShareActivity$ShareCampaignListener;->this$0:Lcom/samsung/privilege/activity/CampaignShareActivity;

    const v2, 0x7f0a00f4

    invoke-virtual {v1, v2}, Lcom/samsung/privilege/activity/CampaignShareActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignShareActivity;->showToast(Ljava/lang/String;)V

    .line 302
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignShareActivity$ShareCampaignListener;->this$0:Lcom/samsung/privilege/activity/CampaignShareActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignShareActivity;->gDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignShareActivity;->access$0(Lcom/samsung/privilege/activity/CampaignShareActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 303
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignShareActivity$ShareCampaignListener;->this$0:Lcom/samsung/privilege/activity/CampaignShareActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/privilege/activity/CampaignShareActivity;->access$1(Lcom/samsung/privilege/activity/CampaignShareActivity;Z)V

    .line 304
    return-void
.end method
