.class public Lcom/samsung/privilege/bean/FacebookGroup;
.super Ljava/lang/Object;
.source "FacebookGroup.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public Name:Ljava/lang/String;

.field public UserId:Ljava/lang/String;

.field public pic_square:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 3
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-string v0, "name"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/bean/FacebookGroup;->Name:Ljava/lang/String;

    .line 21
    const-string v0, "id"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/bean/FacebookGroup;->UserId:Ljava/lang/String;

    .line 22
    const-string v0, "pic_square"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/bean/FacebookGroup;->pic_square:Ljava/lang/String;

    .line 23
    return-void
.end method
