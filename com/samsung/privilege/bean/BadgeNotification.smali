.class public Lcom/samsung/privilege/bean/BadgeNotification;
.super Ljava/lang/Object;
.source "BadgeNotification.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public id:Ljava/lang/String;

.field public level:I

.field public name:Ljava/lang/String;

.field public points:I

.field public unlocked_by_others:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 3
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-string v0, "id"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/bean/BadgeNotification;->id:Ljava/lang/String;

    .line 23
    const-string v0, "name"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/bean/BadgeNotification;->name:Ljava/lang/String;

    .line 24
    const-string v0, "level"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/privilege/bean/BadgeNotification;->level:I

    .line 25
    const-string v0, "points"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/privilege/bean/BadgeNotification;->points:I

    .line 26
    const-string v0, "unlocked_by_others"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/privilege/bean/BadgeNotification;->unlocked_by_others:Z

    .line 28
    return-void
.end method
