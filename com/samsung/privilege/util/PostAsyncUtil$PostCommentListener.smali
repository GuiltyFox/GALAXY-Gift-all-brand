.class public Lcom/samsung/privilege/util/PostAsyncUtil$PostCommentListener;
.super Lcom/facebook/android/BaseRequestListener;
.source "PostAsyncUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/privilege/util/PostAsyncUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PostCommentListener"
.end annotation


# instance fields
.field IntNotification_posting_number:I

.field IntPAGE_MODE:I

.field StrMessage:Ljava/lang/String;

.field StrPageHeader:Ljava/lang/String;

.field filepath:Ljava/lang/String;

.field notificationManager:Landroid/app/NotificationManager;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IILandroid/app/NotificationManager;Ljava/lang/String;)V
    .registers 8
    .param p1, "pStrPageHeader"    # Ljava/lang/String;
    .param p2, "pStrMessage"    # Ljava/lang/String;
    .param p3, "pIntPAGE_MODE"    # I
    .param p4, "pIntNotification_posting_number"    # I
    .param p5, "pNotificationManager"    # Landroid/app/NotificationManager;
    .param p6, "pfilepath"    # Ljava/lang/String;

    .prologue
    .line 1564
    invoke-direct {p0}, Lcom/facebook/android/BaseRequestListener;-><init>()V

    .line 1557
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/util/PostAsyncUtil$PostCommentListener;->StrPageHeader:Ljava/lang/String;

    .line 1558
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/util/PostAsyncUtil$PostCommentListener;->StrMessage:Ljava/lang/String;

    .line 1562
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/util/PostAsyncUtil$PostCommentListener;->filepath:Ljava/lang/String;

    .line 1565
    iput-object p1, p0, Lcom/samsung/privilege/util/PostAsyncUtil$PostCommentListener;->StrPageHeader:Ljava/lang/String;

    .line 1566
    iput-object p2, p0, Lcom/samsung/privilege/util/PostAsyncUtil$PostCommentListener;->StrMessage:Ljava/lang/String;

    .line 1567
    iput p3, p0, Lcom/samsung/privilege/util/PostAsyncUtil$PostCommentListener;->IntPAGE_MODE:I

    .line 1568
    iput p4, p0, Lcom/samsung/privilege/util/PostAsyncUtil$PostCommentListener;->IntNotification_posting_number:I

    .line 1569
    iput-object p5, p0, Lcom/samsung/privilege/util/PostAsyncUtil$PostCommentListener;->notificationManager:Landroid/app/NotificationManager;

    .line 1570
    iput-object p6, p0, Lcom/samsung/privilege/util/PostAsyncUtil$PostCommentListener;->filepath:Ljava/lang/String;

    .line 1571
    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 12
    .param p1, "response"    # Ljava/lang/String;
    .param p2, "state"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    .line 1574
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PostCommentListener:response:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/samsung/privilege/util/PostAsyncUtil;->LOGCONSOLE(Ljava/lang/String;Z)V

    .line 1575
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "finish:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/privilege/util/PostAsyncUtil$PostCommentListener;->filepath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/samsung/privilege/util/PostAsyncUtil;->LOGCONSOLE(Ljava/lang/String;Z)V

    .line 1577
    new-instance v7, Lcom/samsung/privilege/bean/FBError;

    invoke-direct {v7, p1}, Lcom/samsung/privilege/bean/FBError;-><init>(Ljava/lang/String;)V

    .line 1583
    .local v7, "error":Lcom/samsung/privilege/bean/FBError;
    iget-boolean v0, v7, Lcom/samsung/privilege/bean/FBError;->is_error:Z

    if-nez v0, :cond_3d

    .line 1584
    # getter for: Lcom/samsung/privilege/util/PostAsyncUtil;->gHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/samsung/privilege/util/PostAsyncUtil;->access$4()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/util/PostAsyncUtil$PostCommentListener$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/privilege/util/PostAsyncUtil$PostCommentListener$1;-><init>(Lcom/samsung/privilege/util/PostAsyncUtil$PostCommentListener;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1678
    :goto_3c
    return-void

    .line 1657
    :cond_3d
    const-string v8, ""

    .line 1659
    .local v8, "strError":Ljava/lang/String;
    const-string v0, "OAuthException"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_63

    .line 1660
    const-string v8, "You don\'t have permission to comment this post."

    .line 1666
    :goto_49
    :try_start_49
    iget-object v0, p0, Lcom/samsung/privilege/util/PostAsyncUtil$PostCommentListener;->StrPageHeader:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/privilege/util/PostAsyncUtil$PostCommentListener;->StrMessage:Ljava/lang/String;

    iget v2, p0, Lcom/samsung/privilege/util/PostAsyncUtil$PostCommentListener;->IntPAGE_MODE:I

    iget v3, p0, Lcom/samsung/privilege/util/PostAsyncUtil$PostCommentListener;->IntNotification_posting_number:I

    iget-object v4, p0, Lcom/samsung/privilege/util/PostAsyncUtil$PostCommentListener;->notificationManager:Landroid/app/NotificationManager;

    iget-object v5, p0, Lcom/samsung/privilege/util/PostAsyncUtil$PostCommentListener;->filepath:Ljava/lang/String;

    # invokes: Lcom/samsung/privilege/util/PostAsyncUtil;->notificationFail(Ljava/lang/String;Ljava/lang/String;IILandroid/app/NotificationManager;Ljava/lang/String;)V
    invoke-static/range {v0 .. v5}, Lcom/samsung/privilege/util/PostAsyncUtil;->access$7(Ljava/lang/String;Ljava/lang/String;IILandroid/app/NotificationManager;Ljava/lang/String;)V
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_58} :catch_66

    .line 1672
    :goto_58
    iget-object v0, p0, Lcom/samsung/privilege/util/PostAsyncUtil$PostCommentListener;->filepath:Ljava/lang/String;

    const/4 v1, 0x2

    # invokes: Lcom/samsung/privilege/util/PostAsyncUtil;->MoveFileAndPhoto(Ljava/lang/String;I)V
    invoke-static {v0, v1}, Lcom/samsung/privilege/util/PostAsyncUtil;->access$6(Ljava/lang/String;I)V

    .line 1675
    const/4 v0, 0x0

    invoke-static {v8, v0}, Lcom/facebook/android/PostEvents;->onPostError(Ljava/lang/String;Lcom/samsung/privilege/PostData;)V

    goto :goto_3c

    .line 1662
    :cond_63
    const-string v8, "Can not comment this post."

    goto :goto_49

    .line 1667
    :catch_66
    move-exception v6

    .line 1668
    .local v6, "e2":Ljava/lang/Exception;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_58
.end method

.method public onFacebookError(Lcom/facebook/android/FacebookError;Ljava/lang/Object;)V
    .registers 5
    .param p1, "e"    # Lcom/facebook/android/FacebookError;
    .param p2, "state"    # Ljava/lang/Object;

    .prologue
    .line 1682
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onFacebookError:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/privilege/util/PostAsyncUtil$PostCommentListener;->filepath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/PostAsyncUtil;->LOGCONSOLE(Ljava/lang/String;Z)V

    .line 1684
    # getter for: Lcom/samsung/privilege/util/PostAsyncUtil;->gHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/samsung/privilege/util/PostAsyncUtil;->access$4()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/util/PostAsyncUtil$PostCommentListener$2;

    invoke-direct {v1, p0, p1}, Lcom/samsung/privilege/util/PostAsyncUtil$PostCommentListener$2;-><init>(Lcom/samsung/privilege/util/PostAsyncUtil$PostCommentListener;Lcom/facebook/android/FacebookError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1709
    return-void
.end method

.method public onFileNotFoundException(Ljava/io/FileNotFoundException;Ljava/lang/Object;)V
    .registers 5
    .param p1, "e"    # Ljava/io/FileNotFoundException;
    .param p2, "state"    # Ljava/lang/Object;

    .prologue
    .line 1713
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onFileNotFoundException:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/privilege/util/PostAsyncUtil$PostCommentListener;->filepath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/PostAsyncUtil;->LOGCONSOLE(Ljava/lang/String;Z)V

    .line 1715
    # getter for: Lcom/samsung/privilege/util/PostAsyncUtil;->gHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/samsung/privilege/util/PostAsyncUtil;->access$4()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/util/PostAsyncUtil$PostCommentListener$3;

    invoke-direct {v1, p0, p1}, Lcom/samsung/privilege/util/PostAsyncUtil$PostCommentListener$3;-><init>(Lcom/samsung/privilege/util/PostAsyncUtil$PostCommentListener;Ljava/io/FileNotFoundException;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1740
    return-void
.end method

.method public onIOException(Ljava/io/IOException;Ljava/lang/Object;)V
    .registers 5
    .param p1, "e"    # Ljava/io/IOException;
    .param p2, "state"    # Ljava/lang/Object;

    .prologue
    .line 1744
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onIOException:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/privilege/util/PostAsyncUtil$PostCommentListener;->filepath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/PostAsyncUtil;->LOGCONSOLE(Ljava/lang/String;Z)V

    .line 1746
    # getter for: Lcom/samsung/privilege/util/PostAsyncUtil;->gHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/samsung/privilege/util/PostAsyncUtil;->access$4()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/util/PostAsyncUtil$PostCommentListener$4;

    invoke-direct {v1, p0, p1}, Lcom/samsung/privilege/util/PostAsyncUtil$PostCommentListener$4;-><init>(Lcom/samsung/privilege/util/PostAsyncUtil$PostCommentListener;Ljava/io/IOException;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1772
    return-void
.end method

.method public onMalformedURLException(Ljava/net/MalformedURLException;Ljava/lang/Object;)V
    .registers 5
    .param p1, "e"    # Ljava/net/MalformedURLException;
    .param p2, "state"    # Ljava/lang/Object;

    .prologue
    .line 1776
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onMalformedURLException:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/privilege/util/PostAsyncUtil$PostCommentListener;->filepath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/PostAsyncUtil;->LOGCONSOLE(Ljava/lang/String;Z)V

    .line 1778
    # getter for: Lcom/samsung/privilege/util/PostAsyncUtil;->gHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/samsung/privilege/util/PostAsyncUtil;->access$4()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/util/PostAsyncUtil$PostCommentListener$5;

    invoke-direct {v1, p0, p1}, Lcom/samsung/privilege/util/PostAsyncUtil$PostCommentListener$5;-><init>(Lcom/samsung/privilege/util/PostAsyncUtil$PostCommentListener;Ljava/net/MalformedURLException;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1805
    return-void
.end method
