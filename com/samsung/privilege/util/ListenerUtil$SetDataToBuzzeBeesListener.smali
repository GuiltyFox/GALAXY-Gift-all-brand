.class public Lcom/samsung/privilege/util/ListenerUtil$SetDataToBuzzeBeesListener;
.super Lcom/samsung/privilege/util/http/HttpRQListener;
.source "ListenerUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/privilege/util/ListenerUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SetDataToBuzzeBeesListener"
.end annotation


# instance fields
.field gActivityContext:Landroid/content/Context;

.field gHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 3
    .param p1, "objActivityContext"    # Landroid/content/Context;
    .param p2, "objHandler"    # Landroid/os/Handler;

    .prologue
    .line 289
    invoke-direct {p0}, Lcom/samsung/privilege/util/http/HttpRQListener;-><init>()V

    .line 290
    iput-object p1, p0, Lcom/samsung/privilege/util/ListenerUtil$SetDataToBuzzeBeesListener;->gActivityContext:Landroid/content/Context;

    .line 291
    iput-object p2, p0, Lcom/samsung/privilege/util/ListenerUtil$SetDataToBuzzeBeesListener;->gHandler:Landroid/os/Handler;

    .line 292
    return-void
.end method


# virtual methods
.method public onComplete(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 12
    .param p1, "response_code"    # I
    .param p2, "response_text"    # Ljava/lang/String;
    .param p3, "state"    # Ljava/lang/Object;

    .prologue
    .line 296
    const-string v5, "ListenerUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "(SetDataToBuzzeBeesListener|onComplete)response={"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "}:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    const/16 v5, 0xc8

    if-ne p1, v5, :cond_5a

    .line 300
    :try_start_22
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_27} :catch_58

    .line 301
    .local v1, "jsonRoot":Lorg/json/JSONObject;
    const/4 v3, 0x0

    .line 303
    .local v3, "points":I
    :try_start_28
    const-string v5, "buzzebees"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 304
    .local v2, "json_buzzebees":Lorg/json/JSONObject;
    const-string v5, "points"

    invoke-static {v2, v5}, Lcom/samsung/privilege/util/JsonUtil;->getInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v3

    .line 305
    if-lez v3, :cond_41

    .line 306
    const-string v4, "share"

    .line 307
    .local v4, "strFrom":Ljava/lang/String;
    iget-object v6, p0, Lcom/samsung/privilege/util/ListenerUtil$SetDataToBuzzeBeesListener;->gHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/samsung/privilege/util/ListenerUtil$SetDataToBuzzeBeesListener;->gActivityContext:Landroid/content/Context;

    check-cast v5, Landroid/app/Activity;

    invoke-static {v3, v4, v6, v5}, Lic/buzzebeeslib/util/AnimationPoint;->showToastPointsGift(ILjava/lang/String;Landroid/os/Handler;Landroid/app/Activity;)V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_41} :catch_42

    .line 319
    .end local v1    # "jsonRoot":Lorg/json/JSONObject;
    .end local v2    # "json_buzzebees":Lorg/json/JSONObject;
    .end local v3    # "points":I
    .end local v4    # "strFrom":Ljava/lang/String;
    :cond_41
    :goto_41
    return-void

    .line 309
    .restart local v1    # "jsonRoot":Lorg/json/JSONObject;
    .restart local v3    # "points":I
    :catch_42
    move-exception v0

    .line 310
    .local v0, "e":Ljava/lang/Exception;
    :try_start_43
    const-string v5, "ListenerUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "ExceptionLike= "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/privilege/util/LogUtil;->LogW(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_57} :catch_58

    goto :goto_41

    .line 312
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "jsonRoot":Lorg/json/JSONObject;
    .end local v3    # "points":I
    :catch_58
    move-exception v5

    goto :goto_41

    .line 316
    :cond_5a
    const-string v5, "ListenerUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "error : response_code := "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " response_text := "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_41
.end method
