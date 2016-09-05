.class final Lcom/facebook/share/internal/ShareInternalUtility$1;
.super Lcom/facebook/share/internal/ResultProcessor;
.source "ShareInternalUtility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/share/internal/ShareInternalUtility;->getShareResultProcessor(Lcom/facebook/FacebookCallback;)Lcom/facebook/share/internal/ResultProcessor;
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/facebook/FacebookCallback;


# direct methods
.method constructor <init>(Lcom/facebook/FacebookCallback;Lcom/facebook/FacebookCallback;)V
    .registers 3

    .prologue
    .line 183
    iput-object p2, p0, Lcom/facebook/share/internal/ShareInternalUtility$1;->val$callback:Lcom/facebook/FacebookCallback;

    invoke-direct {p0, p1}, Lcom/facebook/share/internal/ResultProcessor;-><init>(Lcom/facebook/FacebookCallback;)V

    return-void
.end method


# virtual methods
.method public onCancel(Lcom/facebook/internal/AppCall;)V
    .registers 3

    .prologue
    .line 203
    iget-object v0, p0, Lcom/facebook/share/internal/ShareInternalUtility$1;->val$callback:Lcom/facebook/FacebookCallback;

    invoke-static {v0}, Lcom/facebook/share/internal/ShareInternalUtility;->invokeOnCancelCallback(Lcom/facebook/FacebookCallback;)V

    .line 204
    return-void
.end method

.method public onError(Lcom/facebook/internal/AppCall;Lcom/facebook/FacebookException;)V
    .registers 4

    .prologue
    .line 208
    iget-object v0, p0, Lcom/facebook/share/internal/ShareInternalUtility$1;->val$callback:Lcom/facebook/FacebookCallback;

    invoke-static {v0, p2}, Lcom/facebook/share/internal/ShareInternalUtility;->invokeOnErrorCallback(Lcom/facebook/FacebookCallback;Lcom/facebook/FacebookException;)V

    .line 209
    return-void
.end method

.method public onSuccess(Lcom/facebook/internal/AppCall;Landroid/os/Bundle;)V
    .registers 6

    .prologue
    .line 186
    if-eqz p2, :cond_1a

    .line 187
    invoke-static {p2}, Lcom/facebook/share/internal/ShareInternalUtility;->getNativeDialogCompletionGesture(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    .line 188
    if-eqz v0, :cond_11

    const-string/jumbo v1, "post"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 189
    :cond_11
    invoke-static {p2}, Lcom/facebook/share/internal/ShareInternalUtility;->getShareDialogPostId(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    .line 190
    iget-object v1, p0, Lcom/facebook/share/internal/ShareInternalUtility$1;->val$callback:Lcom/facebook/FacebookCallback;

    invoke-static {v1, v0}, Lcom/facebook/share/internal/ShareInternalUtility;->invokeOnSuccessCallback(Lcom/facebook/FacebookCallback;Ljava/lang/String;)V

    .line 199
    :cond_1a
    :goto_1a
    return-void

    .line 191
    :cond_1b
    const-string/jumbo v1, "cancel"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 192
    iget-object v0, p0, Lcom/facebook/share/internal/ShareInternalUtility$1;->val$callback:Lcom/facebook/FacebookCallback;

    invoke-static {v0}, Lcom/facebook/share/internal/ShareInternalUtility;->invokeOnCancelCallback(Lcom/facebook/FacebookCallback;)V

    goto :goto_1a

    .line 194
    :cond_2a
    iget-object v0, p0, Lcom/facebook/share/internal/ShareInternalUtility$1;->val$callback:Lcom/facebook/FacebookCallback;

    new-instance v1, Lcom/facebook/FacebookException;

    const-string/jumbo v2, "UnknownError"

    invoke-direct {v1, v2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/facebook/share/internal/ShareInternalUtility;->invokeOnErrorCallback(Lcom/facebook/FacebookCallback;Lcom/facebook/FacebookException;)V

    goto :goto_1a
.end method
