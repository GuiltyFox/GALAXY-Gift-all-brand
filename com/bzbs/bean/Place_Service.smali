.class public Lcom/bzbs/bean/Place_Service;
.super Ljava/lang/Object;
.source "Place_Service.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# instance fields
.field public id:Ljava/lang/String;

.field public name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 3

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-string/jumbo v0, "id"

    invoke-static {p1, v0}, Lcom/bzbs/lib/survey/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/Place_Service;->id:Ljava/lang/String;

    .line 22
    const-string/jumbo v0, "name"

    invoke-static {p1, v0}, Lcom/bzbs/lib/survey/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/Place_Service;->name:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public static GetArrayList(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bzbs/bean/Place_Service;",
            ">;"
        }
    .end annotation

    .prologue
    .line 26
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 27
    const/4 v0, 0x0

    :goto_6
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_1b

    .line 29
    :try_start_c
    new-instance v2, Lcom/bzbs/bean/Place_Service;

    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/bzbs/bean/Place_Service;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_18} :catch_1c

    .line 27
    :goto_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 34
    :cond_1b
    return-object v1

    .line 30
    :catch_1c
    move-exception v2

    goto :goto_18
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 17
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
