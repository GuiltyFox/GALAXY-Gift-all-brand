.class Lcom/samsung/privilege/util/PostAsyncUtil$PostCommentListener$4;
.super Ljava/lang/Object;
.source "PostAsyncUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/util/PostAsyncUtil$PostCommentListener;->onIOException(Ljava/io/IOException;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/privilege/util/PostAsyncUtil$PostCommentListener;

.field private final synthetic val$e:Ljava/io/IOException;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/util/PostAsyncUtil$PostCommentListener;Ljava/io/IOException;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/util/PostAsyncUtil$PostCommentListener$4;->this$1:Lcom/samsung/privilege/util/PostAsyncUtil$PostCommentListener;

    iput-object p2, p0, Lcom/samsung/privilege/util/PostAsyncUtil$PostCommentListener$4;->val$e:Ljava/io/IOException;

    .line 1746
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    .line 1749
    const-string v7, ""

    .line 1753
    .local v7, "strError":Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/privilege/util/PostAsyncUtil$PostCommentListener$4;->val$e:Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    .line 1757
    :try_start_8
    iget-object v0, p0, Lcom/samsung/privilege/util/PostAsyncUtil$PostCommentListener$4;->this$1:Lcom/samsung/privilege/util/PostAsyncUtil$PostCommentListener;

    iget-object v0, v0, Lcom/samsung/privilege/util/PostAsyncUtil$PostCommentListener;->StrPageHeader:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/privilege/util/PostAsyncUtil$PostCommentListener$4;->this$1:Lcom/samsung/privilege/util/PostAsyncUtil$PostCommentListener;

    iget-object v1, v1, Lcom/samsung/privilege/util/PostAsyncUtil$PostCommentListener;->StrMessage:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/privilege/util/PostAsyncUtil$PostCommentListener$4;->this$1:Lcom/samsung/privilege/util/PostAsyncUtil$PostCommentListener;

    iget v2, v2, Lcom/samsung/privilege/util/PostAsyncUtil$PostCommentListener;->IntPAGE_MODE:I

    iget-object v3, p0, Lcom/samsung/privilege/util/PostAsyncUtil$PostCommentListener$4;->this$1:Lcom/samsung/privilege/util/PostAsyncUtil$PostCommentListener;

    iget v3, v3, Lcom/samsung/privilege/util/PostAsyncUtil$PostCommentListener;->IntNotification_posting_number:I

    iget-object v4, p0, Lcom/samsung/privilege/util/PostAsyncUtil$PostCommentListener$4;->this$1:Lcom/samsung/privilege/util/PostAsyncUtil$PostCommentListener;

    iget-object v4, v4, Lcom/samsung/privilege/util/PostAsyncUtil$PostCommentListener;->notificationManager:Landroid/app/NotificationManager;

    iget-object v5, p0, Lcom/samsung/privilege/util/PostAsyncUtil$PostCommentListener$4;->this$1:Lcom/samsung/privilege/util/PostAsyncUtil$PostCommentListener;

    iget-object v5, v5, Lcom/samsung/privilege/util/PostAsyncUtil$PostCommentListener;->filepath:Ljava/lang/String;

    # invokes: Lcom/samsung/privilege/util/PostAsyncUtil;->notificationFail(Ljava/lang/String;Ljava/lang/String;IILandroid/app/NotificationManager;Ljava/lang/String;)V
    invoke-static/range {v0 .. v5}, Lcom/samsung/privilege/util/PostAsyncUtil;->access$7(Ljava/lang/String;Ljava/lang/String;IILandroid/app/NotificationManager;Ljava/lang/String;)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_23} :catch_37

    .line 1763
    :goto_23
    iget-object v0, p0, Lcom/samsung/privilege/util/PostAsyncUtil$PostCommentListener$4;->this$1:Lcom/samsung/privilege/util/PostAsyncUtil$PostCommentListener;

    iget-object v0, v0, Lcom/samsung/privilege/util/PostAsyncUtil$PostCommentListener;->filepath:Ljava/lang/String;

    const/4 v1, 0x2

    # invokes: Lcom/samsung/privilege/util/PostAsyncUtil;->MoveFileAndPhoto(Ljava/lang/String;I)V
    invoke-static {v0, v1}, Lcom/samsung/privilege/util/PostAsyncUtil;->access$6(Ljava/lang/String;I)V

    .line 1764
    iget-object v0, p0, Lcom/samsung/privilege/util/PostAsyncUtil$PostCommentListener$4;->this$1:Lcom/samsung/privilege/util/PostAsyncUtil$PostCommentListener;

    iget-object v0, v0, Lcom/samsung/privilege/util/PostAsyncUtil$PostCommentListener;->filepath:Ljava/lang/String;

    invoke-static {v0, v7}, Lcom/samsung/privilege/util/PostAsyncUtil;->saveMessageErrorToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 1767
    const/4 v0, 0x0

    invoke-static {v7, v0}, Lcom/facebook/android/PostEvents;->onPostError(Ljava/lang/String;Lcom/samsung/privilege/PostData;)V

    .line 1769
    return-void

    .line 1758
    :catch_37
    move-exception v6

    .line 1759
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

    goto :goto_23
.end method
