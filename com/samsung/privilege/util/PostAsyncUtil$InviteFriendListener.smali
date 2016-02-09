.class public Lcom/samsung/privilege/util/PostAsyncUtil$InviteFriendListener;
.super Lcom/samsung/privilege/util/http/HttpRQListener;
.source "PostAsyncUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/privilege/util/PostAsyncUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InviteFriendListener"
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
    .line 1816
    invoke-direct {p0}, Lcom/samsung/privilege/util/http/HttpRQListener;-><init>()V

    .line 1809
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/util/PostAsyncUtil$InviteFriendListener;->StrPageHeader:Ljava/lang/String;

    .line 1810
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/util/PostAsyncUtil$InviteFriendListener;->StrMessage:Ljava/lang/String;

    .line 1814
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/util/PostAsyncUtil$InviteFriendListener;->filepath:Ljava/lang/String;

    .line 1817
    iput-object p1, p0, Lcom/samsung/privilege/util/PostAsyncUtil$InviteFriendListener;->StrPageHeader:Ljava/lang/String;

    .line 1818
    iput-object p2, p0, Lcom/samsung/privilege/util/PostAsyncUtil$InviteFriendListener;->StrMessage:Ljava/lang/String;

    .line 1819
    iput p3, p0, Lcom/samsung/privilege/util/PostAsyncUtil$InviteFriendListener;->IntPAGE_MODE:I

    .line 1820
    iput p4, p0, Lcom/samsung/privilege/util/PostAsyncUtil$InviteFriendListener;->IntNotification_posting_number:I

    .line 1821
    iput-object p5, p0, Lcom/samsung/privilege/util/PostAsyncUtil$InviteFriendListener;->notificationManager:Landroid/app/NotificationManager;

    .line 1822
    iput-object p6, p0, Lcom/samsung/privilege/util/PostAsyncUtil$InviteFriendListener;->filepath:Ljava/lang/String;

    .line 1823
    return-void
.end method


# virtual methods
.method public onComplete(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 13
    .param p1, "response_code"    # I
    .param p2, "response_text"    # Ljava/lang/String;
    .param p3, "state"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    .line 1827
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "InviteFriendListener:{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/samsung/privilege/util/PostAsyncUtil;->LOGCONSOLE(Ljava/lang/String;Z)V

    .line 1828
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "finish:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/privilege/util/PostAsyncUtil$InviteFriendListener;->filepath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/samsung/privilege/util/PostAsyncUtil;->LOGCONSOLE(Ljava/lang/String;Z)V

    .line 1834
    const/16 v0, 0xc8

    if-ne p1, v0, :cond_7d

    .line 1837
    :try_start_35
    iget-object v0, p0, Lcom/samsung/privilege/util/PostAsyncUtil$InviteFriendListener;->notificationManager:Landroid/app/NotificationManager;

    iget v1, p0, Lcom/samsung/privilege/util/PostAsyncUtil$InviteFriendListener;->IntNotification_posting_number:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_3c} :catch_65

    .line 1844
    :goto_3c
    const-string v0, ""

    const/4 v1, 0x0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/facebook/android/PostEvents;->onPostSuccess(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 1848
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/privilege/util/PostAsyncUtil$InviteFriendListener;->filepath:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "_photo.jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/samsung/privilege/util/PostAsyncUtil;->DeleteFile(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/samsung/privilege/util/PostAsyncUtil;->access$5(Ljava/lang/String;)V

    .line 1849
    iget-object v0, p0, Lcom/samsung/privilege/util/PostAsyncUtil$InviteFriendListener;->filepath:Ljava/lang/String;

    # invokes: Lcom/samsung/privilege/util/PostAsyncUtil;->MoveFileAndPhoto(Ljava/lang/String;I)V
    invoke-static {v0, v3}, Lcom/samsung/privilege/util/PostAsyncUtil;->access$6(Ljava/lang/String;I)V

    .line 1880
    :goto_64
    return-void

    .line 1839
    :catch_65
    move-exception v6

    .line 1840
    .local v6, "e":Ljava/lang/Exception;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "StatusPostListener:cancel notification:exception:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/samsung/privilege/util/PostAsyncUtil;->LOGCONSOLE(Ljava/lang/String;Z)V

    goto :goto_3c

    .line 1858
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_7d
    const-string v8, " Can not invite, please try again later."

    .line 1861
    .local v8, "strError":Ljava/lang/String;
    :try_start_7f
    iget-object v0, p0, Lcom/samsung/privilege/util/PostAsyncUtil$InviteFriendListener;->StrPageHeader:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/privilege/util/PostAsyncUtil$InviteFriendListener;->StrMessage:Ljava/lang/String;

    iget v2, p0, Lcom/samsung/privilege/util/PostAsyncUtil$InviteFriendListener;->IntPAGE_MODE:I

    iget v3, p0, Lcom/samsung/privilege/util/PostAsyncUtil$InviteFriendListener;->IntNotification_posting_number:I

    iget-object v4, p0, Lcom/samsung/privilege/util/PostAsyncUtil$InviteFriendListener;->notificationManager:Landroid/app/NotificationManager;

    iget-object v5, p0, Lcom/samsung/privilege/util/PostAsyncUtil$InviteFriendListener;->filepath:Ljava/lang/String;

    # invokes: Lcom/samsung/privilege/util/PostAsyncUtil;->notificationFail(Ljava/lang/String;Ljava/lang/String;IILandroid/app/NotificationManager;Ljava/lang/String;)V
    invoke-static/range {v0 .. v5}, Lcom/samsung/privilege/util/PostAsyncUtil;->access$7(Ljava/lang/String;Ljava/lang/String;IILandroid/app/NotificationManager;Ljava/lang/String;)V
    :try_end_8e
    .catch Ljava/lang/Exception; {:try_start_7f .. :try_end_8e} :catch_9e

    .line 1873
    :goto_8e
    iget-object v0, p0, Lcom/samsung/privilege/util/PostAsyncUtil$InviteFriendListener;->filepath:Ljava/lang/String;

    const/4 v1, 0x2

    # invokes: Lcom/samsung/privilege/util/PostAsyncUtil;->MoveFileAndPhoto(Ljava/lang/String;I)V
    invoke-static {v0, v1}, Lcom/samsung/privilege/util/PostAsyncUtil;->access$6(Ljava/lang/String;I)V

    .line 1874
    iget-object v0, p0, Lcom/samsung/privilege/util/PostAsyncUtil$InviteFriendListener;->filepath:Ljava/lang/String;

    invoke-static {v0, v8}, Lcom/samsung/privilege/util/PostAsyncUtil;->saveMessageErrorToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 1877
    const/4 v0, 0x0

    invoke-static {v8, v0}, Lcom/facebook/android/PostEvents;->onPostError(Ljava/lang/String;Lcom/samsung/privilege/PostData;)V

    goto :goto_64

    .line 1862
    :catch_9e
    move-exception v7

    .line 1867
    .local v7, "e2":Ljava/lang/Exception;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_8e
.end method

.method public onFileNotFoundException(Ljava/io/FileNotFoundException;Ljava/lang/Object;)V
    .registers 11
    .param p1, "e"    # Ljava/io/FileNotFoundException;
    .param p2, "state"    # Ljava/lang/Object;

    .prologue
    .line 1884
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onFileNotFoundException:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/privilege/util/PostAsyncUtil$InviteFriendListener;->filepath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/PostAsyncUtil;->LOGCONSOLE(Ljava/lang/String;Z)V

    .line 1886
    const-string v7, ""

    .line 1891
    .local v7, "strError":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v7

    .line 1895
    :try_start_1b
    iget-object v0, p0, Lcom/samsung/privilege/util/PostAsyncUtil$InviteFriendListener;->StrPageHeader:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/privilege/util/PostAsyncUtil$InviteFriendListener;->StrMessage:Ljava/lang/String;

    iget v2, p0, Lcom/samsung/privilege/util/PostAsyncUtil$InviteFriendListener;->IntPAGE_MODE:I

    iget v3, p0, Lcom/samsung/privilege/util/PostAsyncUtil$InviteFriendListener;->IntNotification_posting_number:I

    iget-object v4, p0, Lcom/samsung/privilege/util/PostAsyncUtil$InviteFriendListener;->notificationManager:Landroid/app/NotificationManager;

    iget-object v5, p0, Lcom/samsung/privilege/util/PostAsyncUtil$InviteFriendListener;->filepath:Ljava/lang/String;

    # invokes: Lcom/samsung/privilege/util/PostAsyncUtil;->notificationFail(Ljava/lang/String;Ljava/lang/String;IILandroid/app/NotificationManager;Ljava/lang/String;)V
    invoke-static/range {v0 .. v5}, Lcom/samsung/privilege/util/PostAsyncUtil;->access$7(Ljava/lang/String;Ljava/lang/String;IILandroid/app/NotificationManager;Ljava/lang/String;)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_2a} :catch_3a

    .line 1901
    :goto_2a
    iget-object v0, p0, Lcom/samsung/privilege/util/PostAsyncUtil$InviteFriendListener;->filepath:Ljava/lang/String;

    const/4 v1, 0x2

    # invokes: Lcom/samsung/privilege/util/PostAsyncUtil;->MoveFileAndPhoto(Ljava/lang/String;I)V
    invoke-static {v0, v1}, Lcom/samsung/privilege/util/PostAsyncUtil;->access$6(Ljava/lang/String;I)V

    .line 1902
    iget-object v0, p0, Lcom/samsung/privilege/util/PostAsyncUtil$InviteFriendListener;->filepath:Ljava/lang/String;

    invoke-static {v0, v7}, Lcom/samsung/privilege/util/PostAsyncUtil;->saveMessageErrorToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 1905
    const/4 v0, 0x0

    invoke-static {v7, v0}, Lcom/facebook/android/PostEvents;->onPostError(Ljava/lang/String;Lcom/samsung/privilege/PostData;)V

    .line 1907
    return-void

    .line 1896
    :catch_3a
    move-exception v6

    .line 1897
    .local v6, "e2":Ljava/lang/Exception;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

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

    move-result-object v7

    goto :goto_2a
.end method

.method public onIOException(Ljava/io/IOException;Ljava/lang/Object;)V
    .registers 11
    .param p1, "e"    # Ljava/io/IOException;
    .param p2, "state"    # Ljava/lang/Object;

    .prologue
    .line 1911
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onIOException:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/privilege/util/PostAsyncUtil$InviteFriendListener;->filepath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/PostAsyncUtil;->LOGCONSOLE(Ljava/lang/String;Z)V

    .line 1913
    const-string v7, ""

    .line 1917
    .local v7, "strError":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    .line 1921
    :try_start_1b
    iget-object v0, p0, Lcom/samsung/privilege/util/PostAsyncUtil$InviteFriendListener;->StrPageHeader:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/privilege/util/PostAsyncUtil$InviteFriendListener;->StrMessage:Ljava/lang/String;

    iget v2, p0, Lcom/samsung/privilege/util/PostAsyncUtil$InviteFriendListener;->IntPAGE_MODE:I

    iget v3, p0, Lcom/samsung/privilege/util/PostAsyncUtil$InviteFriendListener;->IntNotification_posting_number:I

    iget-object v4, p0, Lcom/samsung/privilege/util/PostAsyncUtil$InviteFriendListener;->notificationManager:Landroid/app/NotificationManager;

    iget-object v5, p0, Lcom/samsung/privilege/util/PostAsyncUtil$InviteFriendListener;->filepath:Ljava/lang/String;

    # invokes: Lcom/samsung/privilege/util/PostAsyncUtil;->notificationFail(Ljava/lang/String;Ljava/lang/String;IILandroid/app/NotificationManager;Ljava/lang/String;)V
    invoke-static/range {v0 .. v5}, Lcom/samsung/privilege/util/PostAsyncUtil;->access$7(Ljava/lang/String;Ljava/lang/String;IILandroid/app/NotificationManager;Ljava/lang/String;)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_2a} :catch_3a

    .line 1933
    :goto_2a
    iget-object v0, p0, Lcom/samsung/privilege/util/PostAsyncUtil$InviteFriendListener;->filepath:Ljava/lang/String;

    const/4 v1, 0x2

    # invokes: Lcom/samsung/privilege/util/PostAsyncUtil;->MoveFileAndPhoto(Ljava/lang/String;I)V
    invoke-static {v0, v1}, Lcom/samsung/privilege/util/PostAsyncUtil;->access$6(Ljava/lang/String;I)V

    .line 1934
    iget-object v0, p0, Lcom/samsung/privilege/util/PostAsyncUtil$InviteFriendListener;->filepath:Ljava/lang/String;

    invoke-static {v0, v7}, Lcom/samsung/privilege/util/PostAsyncUtil;->saveMessageErrorToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 1937
    const/4 v0, 0x0

    invoke-static {v7, v0}, Lcom/facebook/android/PostEvents;->onPostError(Ljava/lang/String;Lcom/samsung/privilege/PostData;)V

    .line 1938
    return-void

    .line 1922
    :catch_3a
    move-exception v6

    .line 1927
    .local v6, "e2":Ljava/lang/Exception;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

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

    move-result-object v7

    goto :goto_2a
.end method

.method public onMalformedURLException(Ljava/net/MalformedURLException;Ljava/lang/Object;)V
    .registers 11
    .param p1, "e"    # Ljava/net/MalformedURLException;
    .param p2, "state"    # Ljava/lang/Object;

    .prologue
    .line 1942
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onMalformedURLException:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/privilege/util/PostAsyncUtil$InviteFriendListener;->filepath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/PostAsyncUtil;->LOGCONSOLE(Ljava/lang/String;Z)V

    .line 1944
    const-string v7, ""

    .line 1948
    .local v7, "strError":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v7

    .line 1952
    :try_start_1b
    iget-object v0, p0, Lcom/samsung/privilege/util/PostAsyncUtil$InviteFriendListener;->StrPageHeader:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/privilege/util/PostAsyncUtil$InviteFriendListener;->StrMessage:Ljava/lang/String;

    iget v2, p0, Lcom/samsung/privilege/util/PostAsyncUtil$InviteFriendListener;->IntPAGE_MODE:I

    iget v3, p0, Lcom/samsung/privilege/util/PostAsyncUtil$InviteFriendListener;->IntNotification_posting_number:I

    iget-object v4, p0, Lcom/samsung/privilege/util/PostAsyncUtil$InviteFriendListener;->notificationManager:Landroid/app/NotificationManager;

    iget-object v5, p0, Lcom/samsung/privilege/util/PostAsyncUtil$InviteFriendListener;->filepath:Ljava/lang/String;

    # invokes: Lcom/samsung/privilege/util/PostAsyncUtil;->notificationFail(Ljava/lang/String;Ljava/lang/String;IILandroid/app/NotificationManager;Ljava/lang/String;)V
    invoke-static/range {v0 .. v5}, Lcom/samsung/privilege/util/PostAsyncUtil;->access$7(Ljava/lang/String;Ljava/lang/String;IILandroid/app/NotificationManager;Ljava/lang/String;)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_2a} :catch_3a

    .line 1964
    :goto_2a
    iget-object v0, p0, Lcom/samsung/privilege/util/PostAsyncUtil$InviteFriendListener;->filepath:Ljava/lang/String;

    const/4 v1, 0x2

    # invokes: Lcom/samsung/privilege/util/PostAsyncUtil;->MoveFileAndPhoto(Ljava/lang/String;I)V
    invoke-static {v0, v1}, Lcom/samsung/privilege/util/PostAsyncUtil;->access$6(Ljava/lang/String;I)V

    .line 1965
    iget-object v0, p0, Lcom/samsung/privilege/util/PostAsyncUtil$InviteFriendListener;->filepath:Ljava/lang/String;

    invoke-static {v0, v7}, Lcom/samsung/privilege/util/PostAsyncUtil;->saveMessageErrorToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 1968
    const/4 v0, 0x0

    invoke-static {v7, v0}, Lcom/facebook/android/PostEvents;->onPostError(Ljava/lang/String;Lcom/samsung/privilege/PostData;)V

    .line 1969
    return-void

    .line 1953
    :catch_3a
    move-exception v6

    .line 1958
    .local v6, "e2":Ljava/lang/Exception;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

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

    move-result-object v7

    goto :goto_2a
.end method
