.class Lcom/facebook/GraphRequest$4;
.super Ljava/lang/Object;
.source "GraphRequest.java"

# interfaces
.implements Lcom/facebook/GraphRequest$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/GraphRequest;->setCallback(Lcom/facebook/GraphRequest$Callback;)V
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/GraphRequest;

.field final synthetic val$callback:Lcom/facebook/GraphRequest$Callback;


# direct methods
.method constructor <init>(Lcom/facebook/GraphRequest;Lcom/facebook/GraphRequest$Callback;)V
    .registers 3

    .prologue
    .line 900
    iput-object p1, p0, Lcom/facebook/GraphRequest$4;->this$0:Lcom/facebook/GraphRequest;

    iput-object p2, p0, Lcom/facebook/GraphRequest$4;->val$callback:Lcom/facebook/GraphRequest$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/facebook/GraphResponse;)V
    .registers 10

    .prologue
    const/4 v4, 0x0

    .line 903
    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    .line 904
    if-eqz v0, :cond_79

    const-string/jumbo v1, "__debug__"

    .line 905
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 906
    :goto_e
    if-eqz v0, :cond_7b

    const-string/jumbo v1, "messages"

    .line 907
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    move-object v6, v0

    .line 908
    :goto_18
    if-eqz v6, :cond_83

    .line 909
    const/4 v0, 0x0

    :goto_1b
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_83

    .line 910
    invoke-virtual {v6, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 911
    if-eqz v3, :cond_7d

    const-string/jumbo v1, "message"

    .line 912
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 914
    :goto_2e
    if-eqz v3, :cond_7f

    const-string/jumbo v1, "type"

    .line 915
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v5, v1

    .line 917
    :goto_38
    if-eqz v3, :cond_81

    const-string/jumbo v1, "link"

    .line 918
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    .line 920
    :goto_42
    if-eqz v2, :cond_76

    if-eqz v5, :cond_76

    .line 921
    sget-object v1, Lcom/facebook/LoggingBehavior;->GRAPH_API_DEBUG_INFO:Lcom/facebook/LoggingBehavior;

    .line 922
    const-string/jumbo v7, "warning"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_53

    .line 923
    sget-object v1, Lcom/facebook/LoggingBehavior;->GRAPH_API_DEBUG_WARNING:Lcom/facebook/LoggingBehavior;

    .line 925
    :cond_53
    invoke-static {v3}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_71

    .line 926
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, " Link: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 928
    :cond_71
    sget-object v3, Lcom/facebook/GraphRequest;->TAG:Ljava/lang/String;

    invoke-static {v1, v3, v2}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;)V

    .line 909
    :cond_76
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    :cond_79
    move-object v0, v4

    .line 905
    goto :goto_e

    :cond_7b
    move-object v6, v4

    .line 907
    goto :goto_18

    :cond_7d
    move-object v2, v4

    .line 912
    goto :goto_2e

    :cond_7f
    move-object v5, v4

    .line 915
    goto :goto_38

    :cond_81
    move-object v3, v4

    .line 918
    goto :goto_42

    .line 932
    :cond_83
    iget-object v0, p0, Lcom/facebook/GraphRequest$4;->val$callback:Lcom/facebook/GraphRequest$Callback;

    if-eqz v0, :cond_8c

    .line 933
    iget-object v0, p0, Lcom/facebook/GraphRequest$4;->val$callback:Lcom/facebook/GraphRequest$Callback;

    invoke-interface {v0, p1}, Lcom/facebook/GraphRequest$Callback;->onCompleted(Lcom/facebook/GraphResponse;)V

    .line 935
    :cond_8c
    return-void
.end method
