.class final Lcom/facebook/share/internal/VideoUploader$1;
.super Lcom/facebook/AccessTokenTracker;
.source "VideoUploader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/share/internal/VideoUploader;->registerAccessTokenTracker()V
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 257
    invoke-direct {p0}, Lcom/facebook/AccessTokenTracker;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCurrentAccessTokenChanged(Lcom/facebook/AccessToken;Lcom/facebook/AccessToken;)V
    .registers 5

    .prologue
    .line 262
    if-nez p1, :cond_3

    .line 274
    :cond_2
    :goto_2
    return-void

    .line 267
    :cond_3
    if-eqz p2, :cond_13

    .line 269
    invoke-virtual {p2}, Lcom/facebook/AccessToken;->getUserId()Ljava/lang/String;

    move-result-object v0

    .line 270
    invoke-virtual {p1}, Lcom/facebook/AccessToken;->getUserId()Ljava/lang/String;

    move-result-object v1

    .line 268
    invoke-static {v0, v1}, Lcom/facebook/internal/Utility;->areObjectsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 272
    :cond_13
    # invokes: Lcom/facebook/share/internal/VideoUploader;->cancelAllRequests()V
    invoke-static {}, Lcom/facebook/share/internal/VideoUploader;->access$200()V

    goto :goto_2
.end method
