.class Lcom/samsung/privilege/activity/RequestHelpPostActivity$PostReviewListener;
.super Lcom/samsung/privilege/util/http/HttpRQListener;
.source "RequestHelpPostActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/privilege/activity/RequestHelpPostActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PostReviewListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/RequestHelpPostActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/RequestHelpPostActivity;)V
    .registers 2

    .prologue
    .line 579
    iput-object p1, p0, Lcom/samsung/privilege/activity/RequestHelpPostActivity$PostReviewListener;->this$0:Lcom/samsung/privilege/activity/RequestHelpPostActivity;

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
    .line 582
    # getter for: Lcom/samsung/privilege/activity/RequestHelpPostActivity;->LOGCAT:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->access$0()Ljava/lang/String;

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

    .line 583
    const/16 v2, 0xc8

    if-ne p1, v2, :cond_63

    .line 584
    iget-object v2, p0, Lcom/samsung/privilege/activity/RequestHelpPostActivity$PostReviewListener;->this$0:Lcom/samsung/privilege/activity/RequestHelpPostActivity;

    iget-object v3, p0, Lcom/samsung/privilege/activity/RequestHelpPostActivity$PostReviewListener;->this$0:Lcom/samsung/privilege/activity/RequestHelpPostActivity;

    const v4, 0x7f090105

    invoke-virtual {v3, v4}, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/samsung/privilege/activity/RequestHelpPostActivity;->showToast(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->access$2(Lcom/samsung/privilege/activity/RequestHelpPostActivity;Ljava/lang/String;)V

    .line 586
    const-string v2, "content://someURI"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 587
    .local v1, "uri":Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 588
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "response_code"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 589
    const-string v2, "response_text"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 590
    iget-object v2, p0, Lcom/samsung/privilege/activity/RequestHelpPostActivity$PostReviewListener;->this$0:Lcom/samsung/privilege/activity/RequestHelpPostActivity;

    const/4 v3, -0x1

    invoke-virtual {v2, v3, v0}, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->setResult(ILandroid/content/Intent;)V

    .line 592
    iget-object v2, p0, Lcom/samsung/privilege/activity/RequestHelpPostActivity$PostReviewListener;->this$0:Lcom/samsung/privilege/activity/RequestHelpPostActivity;

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->finish()V

    .line 597
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "uri":Landroid/net/Uri;
    :goto_53
    iget-object v2, p0, Lcom/samsung/privilege/activity/RequestHelpPostActivity$PostReviewListener;->this$0:Lcom/samsung/privilege/activity/RequestHelpPostActivity;

    # getter for: Lcom/samsung/privilege/activity/RequestHelpPostActivity;->gDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->access$3(Lcom/samsung/privilege/activity/RequestHelpPostActivity;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 598
    iget-object v2, p0, Lcom/samsung/privilege/activity/RequestHelpPostActivity$PostReviewListener;->this$0:Lcom/samsung/privilege/activity/RequestHelpPostActivity;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->access$4(Lcom/samsung/privilege/activity/RequestHelpPostActivity;Z)V

    .line 599
    return-void

    .line 594
    :cond_63
    iget-object v2, p0, Lcom/samsung/privilege/activity/RequestHelpPostActivity$PostReviewListener;->this$0:Lcom/samsung/privilege/activity/RequestHelpPostActivity;

    iget-object v3, p0, Lcom/samsung/privilege/activity/RequestHelpPostActivity$PostReviewListener;->this$0:Lcom/samsung/privilege/activity/RequestHelpPostActivity;

    const v4, 0x7f0900f4

    invoke-virtual {v3, v4}, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/samsung/privilege/activity/RequestHelpPostActivity;->showToast(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->access$2(Lcom/samsung/privilege/activity/RequestHelpPostActivity;Ljava/lang/String;)V

    goto :goto_53
.end method

.method public onFileNotFoundException(Ljava/io/FileNotFoundException;Ljava/lang/Object;)V
    .registers 6
    .param p1, "e"    # Ljava/io/FileNotFoundException;
    .param p2, "state"    # Ljava/lang/Object;

    .prologue
    .line 603
    invoke-super {p0, p1, p2}, Lcom/samsung/privilege/util/http/HttpRQListener;->onFileNotFoundException(Ljava/io/FileNotFoundException;Ljava/lang/Object;)V

    .line 604
    # getter for: Lcom/samsung/privilege/activity/RequestHelpPostActivity;->LOGCAT:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->access$0()Ljava/lang/String;

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

    .line 605
    iget-object v0, p0, Lcom/samsung/privilege/activity/RequestHelpPostActivity$PostReviewListener;->this$0:Lcom/samsung/privilege/activity/RequestHelpPostActivity;

    iget-object v1, p0, Lcom/samsung/privilege/activity/RequestHelpPostActivity$PostReviewListener;->this$0:Lcom/samsung/privilege/activity/RequestHelpPostActivity;

    const v2, 0x7f0900f4

    invoke-virtual {v1, v2}, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/samsung/privilege/activity/RequestHelpPostActivity;->showToast(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->access$2(Lcom/samsung/privilege/activity/RequestHelpPostActivity;Ljava/lang/String;)V

    .line 606
    iget-object v0, p0, Lcom/samsung/privilege/activity/RequestHelpPostActivity$PostReviewListener;->this$0:Lcom/samsung/privilege/activity/RequestHelpPostActivity;

    # getter for: Lcom/samsung/privilege/activity/RequestHelpPostActivity;->gDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->access$3(Lcom/samsung/privilege/activity/RequestHelpPostActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 607
    iget-object v0, p0, Lcom/samsung/privilege/activity/RequestHelpPostActivity$PostReviewListener;->this$0:Lcom/samsung/privilege/activity/RequestHelpPostActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->access$4(Lcom/samsung/privilege/activity/RequestHelpPostActivity;Z)V

    .line 608
    return-void
.end method

.method public onIOException(Ljava/io/IOException;Ljava/lang/Object;)V
    .registers 6
    .param p1, "e"    # Ljava/io/IOException;
    .param p2, "state"    # Ljava/lang/Object;

    .prologue
    .line 612
    invoke-super {p0, p1, p2}, Lcom/samsung/privilege/util/http/HttpRQListener;->onIOException(Ljava/io/IOException;Ljava/lang/Object;)V

    .line 613
    # getter for: Lcom/samsung/privilege/activity/RequestHelpPostActivity;->LOGCAT:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->access$0()Ljava/lang/String;

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

    .line 614
    iget-object v0, p0, Lcom/samsung/privilege/activity/RequestHelpPostActivity$PostReviewListener;->this$0:Lcom/samsung/privilege/activity/RequestHelpPostActivity;

    iget-object v1, p0, Lcom/samsung/privilege/activity/RequestHelpPostActivity$PostReviewListener;->this$0:Lcom/samsung/privilege/activity/RequestHelpPostActivity;

    const v2, 0x7f0900f4

    invoke-virtual {v1, v2}, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/samsung/privilege/activity/RequestHelpPostActivity;->showToast(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->access$2(Lcom/samsung/privilege/activity/RequestHelpPostActivity;Ljava/lang/String;)V

    .line 615
    iget-object v0, p0, Lcom/samsung/privilege/activity/RequestHelpPostActivity$PostReviewListener;->this$0:Lcom/samsung/privilege/activity/RequestHelpPostActivity;

    # getter for: Lcom/samsung/privilege/activity/RequestHelpPostActivity;->gDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->access$3(Lcom/samsung/privilege/activity/RequestHelpPostActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 616
    iget-object v0, p0, Lcom/samsung/privilege/activity/RequestHelpPostActivity$PostReviewListener;->this$0:Lcom/samsung/privilege/activity/RequestHelpPostActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->access$4(Lcom/samsung/privilege/activity/RequestHelpPostActivity;Z)V

    .line 617
    return-void
.end method

.method public onMalformedURLException(Ljava/net/MalformedURLException;Ljava/lang/Object;)V
    .registers 6
    .param p1, "e"    # Ljava/net/MalformedURLException;
    .param p2, "state"    # Ljava/lang/Object;

    .prologue
    .line 621
    invoke-super {p0, p1, p2}, Lcom/samsung/privilege/util/http/HttpRQListener;->onMalformedURLException(Ljava/net/MalformedURLException;Ljava/lang/Object;)V

    .line 622
    # getter for: Lcom/samsung/privilege/activity/RequestHelpPostActivity;->LOGCAT:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->access$0()Ljava/lang/String;

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

    .line 623
    iget-object v0, p0, Lcom/samsung/privilege/activity/RequestHelpPostActivity$PostReviewListener;->this$0:Lcom/samsung/privilege/activity/RequestHelpPostActivity;

    iget-object v1, p0, Lcom/samsung/privilege/activity/RequestHelpPostActivity$PostReviewListener;->this$0:Lcom/samsung/privilege/activity/RequestHelpPostActivity;

    const v2, 0x7f0900f4

    invoke-virtual {v1, v2}, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/samsung/privilege/activity/RequestHelpPostActivity;->showToast(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->access$2(Lcom/samsung/privilege/activity/RequestHelpPostActivity;Ljava/lang/String;)V

    .line 624
    iget-object v0, p0, Lcom/samsung/privilege/activity/RequestHelpPostActivity$PostReviewListener;->this$0:Lcom/samsung/privilege/activity/RequestHelpPostActivity;

    # getter for: Lcom/samsung/privilege/activity/RequestHelpPostActivity;->gDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->access$3(Lcom/samsung/privilege/activity/RequestHelpPostActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 625
    iget-object v0, p0, Lcom/samsung/privilege/activity/RequestHelpPostActivity$PostReviewListener;->this$0:Lcom/samsung/privilege/activity/RequestHelpPostActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->access$4(Lcom/samsung/privilege/activity/RequestHelpPostActivity;Z)V

    .line 626
    return-void
.end method
