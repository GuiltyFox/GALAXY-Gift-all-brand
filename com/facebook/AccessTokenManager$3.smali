.class Lcom/facebook/AccessTokenManager$3;
.super Ljava/lang/Object;
.source "AccessTokenManager.java"

# interfaces
.implements Lcom/facebook/GraphRequest$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/AccessTokenManager;->refreshCurrentAccessTokenImpl()V
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/AccessTokenManager;

.field final synthetic val$refreshResult:Lcom/facebook/AccessTokenManager$RefreshResult;


# direct methods
.method constructor <init>(Lcom/facebook/AccessTokenManager;Lcom/facebook/AccessTokenManager$RefreshResult;)V
    .registers 3

    .prologue
    .line 263
    iput-object p1, p0, Lcom/facebook/AccessTokenManager$3;->this$0:Lcom/facebook/AccessTokenManager;

    iput-object p2, p0, Lcom/facebook/AccessTokenManager$3;->val$refreshResult:Lcom/facebook/AccessTokenManager$RefreshResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/facebook/GraphResponse;)V
    .registers 5

    .prologue
    .line 266
    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    .line 267
    if-nez v0, :cond_7

    .line 272
    :goto_6
    return-void

    .line 270
    :cond_7
    iget-object v1, p0, Lcom/facebook/AccessTokenManager$3;->val$refreshResult:Lcom/facebook/AccessTokenManager$RefreshResult;

    const-string/jumbo v2, "access_token"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/facebook/AccessTokenManager$RefreshResult;->accessToken:Ljava/lang/String;

    .line 271
    iget-object v1, p0, Lcom/facebook/AccessTokenManager$3;->val$refreshResult:Lcom/facebook/AccessTokenManager$RefreshResult;

    const-string/jumbo v2, "expires_at"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/facebook/AccessTokenManager$RefreshResult;->expiresAt:I

    goto :goto_6
.end method
