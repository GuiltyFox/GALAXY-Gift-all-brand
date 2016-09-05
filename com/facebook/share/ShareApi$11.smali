.class Lcom/facebook/share/ShareApi$11;
.super Ljava/lang/Object;
.source "ShareApi.java"

# interfaces
.implements Lcom/facebook/internal/CollectionMapper$OnMapperCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/share/ShareApi;->stageOpenGraphObject(Lcom/facebook/share/model/ShareOpenGraphObject;Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;)V
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/share/ShareApi;

.field final synthetic val$ogType:Ljava/lang/String;

.field final synthetic val$onOpenGraphObjectStagedListener:Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;

.field final synthetic val$requestCallback:Lcom/facebook/GraphRequest$Callback;

.field final synthetic val$stagedObject:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/facebook/share/ShareApi;Lorg/json/JSONObject;Ljava/lang/String;Lcom/facebook/GraphRequest$Callback;Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;)V
    .registers 6

    .prologue
    .line 608
    iput-object p1, p0, Lcom/facebook/share/ShareApi$11;->this$0:Lcom/facebook/share/ShareApi;

    iput-object p2, p0, Lcom/facebook/share/ShareApi$11;->val$stagedObject:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/facebook/share/ShareApi$11;->val$ogType:Ljava/lang/String;

    iput-object p4, p0, Lcom/facebook/share/ShareApi$11;->val$requestCallback:Lcom/facebook/GraphRequest$Callback;

    iput-object p5, p0, Lcom/facebook/share/ShareApi$11;->val$onOpenGraphObjectStagedListener:Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .registers 8

    .prologue
    .line 611
    iget-object v0, p0, Lcom/facebook/share/ShareApi$11;->val$stagedObject:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 612
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 613
    const-string/jumbo v1, "object"

    invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    :try_start_11
    new-instance v0, Lcom/facebook/GraphRequest;

    .line 616
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/share/ShareApi$11;->this$0:Lcom/facebook/share/ShareApi;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "objects/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/facebook/share/ShareApi$11;->val$ogType:Ljava/lang/String;

    const-string/jumbo v6, "UTF-8"

    .line 619
    invoke-static {v5, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 617
    # invokes: Lcom/facebook/share/ShareApi;->getGraphPath(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v4}, Lcom/facebook/share/ShareApi;->access$100(Lcom/facebook/share/ShareApi;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/facebook/HttpMethod;->POST:Lcom/facebook/HttpMethod;

    iget-object v5, p0, Lcom/facebook/share/ShareApi$11;->val$requestCallback:Lcom/facebook/GraphRequest$Callback;

    invoke-direct/range {v0 .. v5}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/GraphRequest$Callback;)V

    .line 622
    invoke-virtual {v0}, Lcom/facebook/GraphRequest;->executeAsync()Lcom/facebook/GraphRequestAsyncTask;
    :try_end_44
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_11 .. :try_end_44} :catch_45

    .line 630
    :goto_44
    return-void

    .line 623
    :catch_45
    move-exception v0

    .line 624
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    .line 625
    if-nez v0, :cond_4f

    .line 626
    const-string/jumbo v0, "Error staging Open Graph object."

    .line 628
    :cond_4f
    iget-object v1, p0, Lcom/facebook/share/ShareApi$11;->val$onOpenGraphObjectStagedListener:Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;

    new-instance v2, Lcom/facebook/FacebookException;

    invoke-direct {v2, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;->onError(Lcom/facebook/FacebookException;)V

    goto :goto_44
.end method

.method public onError(Lcom/facebook/FacebookException;)V
    .registers 3

    .prologue
    .line 634
    iget-object v0, p0, Lcom/facebook/share/ShareApi$11;->val$onOpenGraphObjectStagedListener:Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;

    invoke-interface {v0, p1}, Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;->onError(Lcom/facebook/FacebookException;)V

    .line 635
    return-void
.end method
