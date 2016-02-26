.class Lcom/samsung/privilege/activity/CampaignPostActivity$PostReviewListener;
.super Lcom/samsung/privilege/util/http/HttpRQListener;
.source "CampaignPostActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/privilege/activity/CampaignPostActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PostReviewListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/CampaignPostActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/CampaignPostActivity;)V
    .registers 2

    .prologue
    .line 592
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignPostActivity$PostReviewListener;->this$0:Lcom/samsung/privilege/activity/CampaignPostActivity;

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
    .line 595
    # getter for: Lcom/samsung/privilege/activity/CampaignPostActivity;->LOGCAT:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/privilege/activity/CampaignPostActivity;->access$0()Ljava/lang/String;

    move-result-object v2

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

    .line 596
    const/16 v2, 0xc8

    if-ne p1, v2, :cond_63

    .line 597
    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignPostActivity$PostReviewListener;->this$0:Lcom/samsung/privilege/activity/CampaignPostActivity;

    iget-object v3, p0, Lcom/samsung/privilege/activity/CampaignPostActivity$PostReviewListener;->this$0:Lcom/samsung/privilege/activity/CampaignPostActivity;

    const v4, 0x7f090105

    invoke-virtual {v3, v4}, Lcom/samsung/privilege/activity/CampaignPostActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/samsung/privilege/activity/CampaignPostActivity;->showToast(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/samsung/privilege/activity/CampaignPostActivity;->access$1(Lcom/samsung/privilege/activity/CampaignPostActivity;Ljava/lang/String;)V

    .line 599
    const-string v2, "content://someURI"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 600
    .local v1, "uri":Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 601
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "response_code"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 602
    const-string v2, "response_text"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 603
    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignPostActivity$PostReviewListener;->this$0:Lcom/samsung/privilege/activity/CampaignPostActivity;

    const/4 v3, -0x1

    invoke-virtual {v2, v3, v0}, Lcom/samsung/privilege/activity/CampaignPostActivity;->setResult(ILandroid/content/Intent;)V

    .line 605
    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignPostActivity$PostReviewListener;->this$0:Lcom/samsung/privilege/activity/CampaignPostActivity;

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/CampaignPostActivity;->finish()V

    .line 610
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "uri":Landroid/net/Uri;
    :goto_53
    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignPostActivity$PostReviewListener;->this$0:Lcom/samsung/privilege/activity/CampaignPostActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignPostActivity;->gDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignPostActivity;->access$2(Lcom/samsung/privilege/activity/CampaignPostActivity;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 611
    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignPostActivity$PostReviewListener;->this$0:Lcom/samsung/privilege/activity/CampaignPostActivity;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/samsung/privilege/activity/CampaignPostActivity;->access$3(Lcom/samsung/privilege/activity/CampaignPostActivity;Z)V

    .line 612
    return-void

    .line 607
    :cond_63
    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignPostActivity$PostReviewListener;->this$0:Lcom/samsung/privilege/activity/CampaignPostActivity;

    iget-object v3, p0, Lcom/samsung/privilege/activity/CampaignPostActivity$PostReviewListener;->this$0:Lcom/samsung/privilege/activity/CampaignPostActivity;

    const v4, 0x7f0900f4

    invoke-virtual {v3, v4}, Lcom/samsung/privilege/activity/CampaignPostActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/samsung/privilege/activity/CampaignPostActivity;->showToast(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/samsung/privilege/activity/CampaignPostActivity;->access$1(Lcom/samsung/privilege/activity/CampaignPostActivity;Ljava/lang/String;)V

    goto :goto_53
.end method

.method public onFileNotFoundException(Ljava/io/FileNotFoundException;Ljava/lang/Object;)V
    .registers 6
    .param p1, "e"    # Ljava/io/FileNotFoundException;
    .param p2, "state"    # Ljava/lang/Object;

    .prologue
    .line 616
    invoke-super {p0, p1, p2}, Lcom/samsung/privilege/util/http/HttpRQListener;->onFileNotFoundException(Ljava/io/FileNotFoundException;Ljava/lang/Object;)V

    .line 617
    # getter for: Lcom/samsung/privilege/activity/CampaignPostActivity;->LOGCAT:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/privilege/activity/CampaignPostActivity;->access$0()Ljava/lang/String;

    move-result-object v0

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

    .line 618
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignPostActivity$PostReviewListener;->this$0:Lcom/samsung/privilege/activity/CampaignPostActivity;

    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignPostActivity$PostReviewListener;->this$0:Lcom/samsung/privilege/activity/CampaignPostActivity;

    const v2, 0x7f0900f4

    invoke-virtual {v1, v2}, Lcom/samsung/privilege/activity/CampaignPostActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/samsung/privilege/activity/CampaignPostActivity;->showToast(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/samsung/privilege/activity/CampaignPostActivity;->access$1(Lcom/samsung/privilege/activity/CampaignPostActivity;Ljava/lang/String;)V

    .line 619
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignPostActivity$PostReviewListener;->this$0:Lcom/samsung/privilege/activity/CampaignPostActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignPostActivity;->gDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignPostActivity;->access$2(Lcom/samsung/privilege/activity/CampaignPostActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 620
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignPostActivity$PostReviewListener;->this$0:Lcom/samsung/privilege/activity/CampaignPostActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/privilege/activity/CampaignPostActivity;->access$3(Lcom/samsung/privilege/activity/CampaignPostActivity;Z)V

    .line 621
    return-void
.end method

.method public onIOException(Ljava/io/IOException;Ljava/lang/Object;)V
    .registers 6
    .param p1, "e"    # Ljava/io/IOException;
    .param p2, "state"    # Ljava/lang/Object;

    .prologue
    .line 625
    invoke-super {p0, p1, p2}, Lcom/samsung/privilege/util/http/HttpRQListener;->onIOException(Ljava/io/IOException;Ljava/lang/Object;)V

    .line 626
    # getter for: Lcom/samsung/privilege/activity/CampaignPostActivity;->LOGCAT:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/privilege/activity/CampaignPostActivity;->access$0()Ljava/lang/String;

    move-result-object v0

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

    .line 627
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignPostActivity$PostReviewListener;->this$0:Lcom/samsung/privilege/activity/CampaignPostActivity;

    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignPostActivity$PostReviewListener;->this$0:Lcom/samsung/privilege/activity/CampaignPostActivity;

    const v2, 0x7f0900f4

    invoke-virtual {v1, v2}, Lcom/samsung/privilege/activity/CampaignPostActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/samsung/privilege/activity/CampaignPostActivity;->showToast(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/samsung/privilege/activity/CampaignPostActivity;->access$1(Lcom/samsung/privilege/activity/CampaignPostActivity;Ljava/lang/String;)V

    .line 628
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignPostActivity$PostReviewListener;->this$0:Lcom/samsung/privilege/activity/CampaignPostActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignPostActivity;->gDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignPostActivity;->access$2(Lcom/samsung/privilege/activity/CampaignPostActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 629
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignPostActivity$PostReviewListener;->this$0:Lcom/samsung/privilege/activity/CampaignPostActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/privilege/activity/CampaignPostActivity;->access$3(Lcom/samsung/privilege/activity/CampaignPostActivity;Z)V

    .line 630
    return-void
.end method

.method public onMalformedURLException(Ljava/net/MalformedURLException;Ljava/lang/Object;)V
    .registers 6
    .param p1, "e"    # Ljava/net/MalformedURLException;
    .param p2, "state"    # Ljava/lang/Object;

    .prologue
    .line 634
    invoke-super {p0, p1, p2}, Lcom/samsung/privilege/util/http/HttpRQListener;->onMalformedURLException(Ljava/net/MalformedURLException;Ljava/lang/Object;)V

    .line 635
    # getter for: Lcom/samsung/privilege/activity/CampaignPostActivity;->LOGCAT:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/privilege/activity/CampaignPostActivity;->access$0()Ljava/lang/String;

    move-result-object v0

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

    .line 636
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignPostActivity$PostReviewListener;->this$0:Lcom/samsung/privilege/activity/CampaignPostActivity;

    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignPostActivity$PostReviewListener;->this$0:Lcom/samsung/privilege/activity/CampaignPostActivity;

    const v2, 0x7f0900f4

    invoke-virtual {v1, v2}, Lcom/samsung/privilege/activity/CampaignPostActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/samsung/privilege/activity/CampaignPostActivity;->showToast(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/samsung/privilege/activity/CampaignPostActivity;->access$1(Lcom/samsung/privilege/activity/CampaignPostActivity;Ljava/lang/String;)V

    .line 637
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignPostActivity$PostReviewListener;->this$0:Lcom/samsung/privilege/activity/CampaignPostActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignPostActivity;->gDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignPostActivity;->access$2(Lcom/samsung/privilege/activity/CampaignPostActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 638
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignPostActivity$PostReviewListener;->this$0:Lcom/samsung/privilege/activity/CampaignPostActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/privilege/activity/CampaignPostActivity;->access$3(Lcom/samsung/privilege/activity/CampaignPostActivity;Z)V

    .line 639
    return-void
.end method
