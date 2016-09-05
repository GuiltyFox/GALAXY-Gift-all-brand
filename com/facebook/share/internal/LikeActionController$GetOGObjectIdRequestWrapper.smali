.class Lcom/facebook/share/internal/LikeActionController$GetOGObjectIdRequestWrapper;
.super Lcom/facebook/share/internal/LikeActionController$AbstractRequestWrapper;
.source "LikeActionController.java"


# instance fields
.field final synthetic this$0:Lcom/facebook/share/internal/LikeActionController;

.field verifiedObjectId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/facebook/share/internal/LikeActionController;Ljava/lang/String;Lcom/facebook/share/widget/LikeView$ObjectType;)V
    .registers 9

    .prologue
    .line 1293
    iput-object p1, p0, Lcom/facebook/share/internal/LikeActionController$GetOGObjectIdRequestWrapper;->this$0:Lcom/facebook/share/internal/LikeActionController;

    .line 1294
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/share/internal/LikeActionController$AbstractRequestWrapper;-><init>(Lcom/facebook/share/internal/LikeActionController;Ljava/lang/String;Lcom/facebook/share/widget/LikeView$ObjectType;)V

    .line 1296
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1297
    const-string/jumbo v1, "fields"

    const-string/jumbo v2, "og_object.fields(id)"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1298
    const-string/jumbo v1, "ids"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1300
    new-instance v1, Lcom/facebook/GraphRequest;

    .line 1301
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v2

    const-string/jumbo v3, ""

    sget-object v4, Lcom/facebook/HttpMethod;->GET:Lcom/facebook/HttpMethod;

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;)V

    .line 1300
    invoke-virtual {p0, v1}, Lcom/facebook/share/internal/LikeActionController$GetOGObjectIdRequestWrapper;->setRequest(Lcom/facebook/GraphRequest;)V

    .line 1305
    return-void
.end method


# virtual methods
.method protected processError(Lcom/facebook/FacebookRequestError;)V
    .registers 8

    .prologue
    .line 1311
    invoke-virtual {p1}, Lcom/facebook/FacebookRequestError;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "og_object"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1312
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/share/internal/LikeActionController$GetOGObjectIdRequestWrapper;->error:Lcom/facebook/FacebookRequestError;

    .line 1321
    :goto_10
    return-void

    .line 1314
    :cond_11
    sget-object v0, Lcom/facebook/LoggingBehavior;->REQUESTS:Lcom/facebook/LoggingBehavior;

    .line 1315
    # getter for: Lcom/facebook/share/internal/LikeActionController;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/facebook/share/internal/LikeActionController;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Error getting the FB id for object \'%s\' with type \'%s\' : %s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/facebook/share/internal/LikeActionController$GetOGObjectIdRequestWrapper;->objectId:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/facebook/share/internal/LikeActionController$GetOGObjectIdRequestWrapper;->objectType:Lcom/facebook/share/widget/LikeView$ObjectType;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object p1, v3, v4

    .line 1314
    invoke-static {v0, v1, v2, v3}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_10
.end method

.method protected processSuccess(Lcom/facebook/GraphResponse;)V
    .registers 4

    .prologue
    .line 1325
    .line 1326
    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/share/internal/LikeActionController$GetOGObjectIdRequestWrapper;->objectId:Ljava/lang/String;

    .line 1325
    invoke-static {v0, v1}, Lcom/facebook/internal/Utility;->tryGetJSONObjectFromResponse(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1328
    if-eqz v0, :cond_1e

    .line 1330
    const-string/jumbo v1, "og_object"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1331
    if-eqz v0, :cond_1e

    .line 1332
    const-string/jumbo v1, "id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/internal/LikeActionController$GetOGObjectIdRequestWrapper;->verifiedObjectId:Ljava/lang/String;

    .line 1335
    :cond_1e
    return-void
.end method
